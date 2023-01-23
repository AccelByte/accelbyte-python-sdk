from datetime import datetime
from threading import RLock
from typing import Any, Dict, List, Optional, Protocol, Tuple, Union

import jwt

import accelbyte_py_sdk.api.iam as iam_service
import accelbyte_py_sdk.api.iam.models as iam_models
import accelbyte_py_sdk.services.auth as auth_service
from accelbyte_py_sdk import AccelByteSDK
from accelbyte_py_sdk.core import Timer

from ._bloom_filter import BloomFilter
from ._ctypes import PermissionAction, create_permission_struct
from ._ctypes import FetchValidationDataError, FetchRoleError
from ._ctypes import (
    TokenValidationError,
    InsufficientPermissionsError,
    TokenRevokedError,
    UserRevokedError,
)
from ._ctypes import PermissionAction, PermissionStruct, create_permission_struct
from ._utils import replace_resource, validate_permission

PublicPrivateKey = Any
JWKSet = Dict[str, PublicPrivateKey]
JWTClaims = Dict[str, Any]
Role = iam_models.ModelRoleResponseV3
NamespaceRole = Dict[str, str]


def str2datetime(s: str) -> datetime:
    # from: 'YYYY-mm-ddTHH:MM:SS.fffffffffZ'
    # to:   'YYYY-mm-ddTHH:MM:SS.fffZ+0000'
    tz = "Z+0000" if s.endswith("Z") else ""  # Add explicit UTC timezone.
    s = s[0:23] + tz
    return datetime.strptime(s, "%Y-%m-%dT%H:%M:%S.%fZ%z")


class JWKSCache(Timer):
    JWKS_KEYS_KEY: str = "keys"

    def __init__(self, sdk: AccelByteSDK, interval: Optional[Union[int, float]] = None):
        self.sdk = sdk
        self._jwks: Dict[str, PublicPrivateKey] = {}
        self._lock = RLock()
        if interval is not None:
            Timer.__init__(
                self,
                interval,
                self.update,
                daemon=True,
                repeats=-1,
                autostart=True,
                repeat_on_exception=True,
            )

    def update(self):
        result, error = iam_service.get_jwksv3(sdk=self.sdk)
        if error:
            return

        with self._lock:
            keys = result.to_dict().get(JWKSCache.JWKS_KEYS_KEY, [])
            jwks = jwt.PyJWKSet(keys)
            for jwk in jwks.keys:
                self._jwks[jwk.key_id] = jwk.key

    def get_key_from_cache(self, key_id: str) -> Optional[PublicPrivateKey]:
        with self._lock:
            return self._jwks.get(key_id, None)

    def get_key(self, key_id: str) -> Optional[PublicPrivateKey]:
        key = self.get_key_from_cache(key_id)
        if key is not None:
            return key

        self.update()

        return self.get_key_from_cache(key_id)


class RevocationListCache(Timer):
    def __init__(self, sdk: AccelByteSDK, interval: Union[int, float]):
        self.sdk = sdk
        self._revoked_token_filter: Optional[BloomFilter] = None
        self._revoked_users: Dict[str, float] = {}
        self._lock = RLock()
        Timer.__init__(
            self,
            interval,
            self.update,
            daemon=True,
            repeats=-1,
            autostart=True,
            repeat_on_exception=True,
        )

    def update(self):
        result, error = iam_service.get_revocation_list_v3(sdk=self.sdk)
        if error:
            return

        with self._lock:
            # Revoked Tokens
            revoked_tokens = result.revoked_tokens
            self._revoked_token_filter = BloomFilter.create_from_bits(
                bits=revoked_tokens.bits, k=revoked_tokens.k, m=revoked_tokens.m
            )
            # Revoked Users
            revoked_users = result.revoked_users
            self._revoked_users = {}
            for user in revoked_users:
                if user.id_ and user.revoked_at:
                    revoked_at = str2datetime(user.revoked_at).timestamp()
                    self._revoked_users[user.id_] = revoked_at

    def is_token_revoked(self, token: str) -> bool:
        with self._lock:
            return self._revoked_token_filter.might_contains(key=token)

    def is_user_revoked(self, user_id: str, issued_at: int) -> bool:
        with self._lock:
            revoked_at = self._revoked_users.get(user_id)
            if revoked_at:
                return revoked_at >= issued_at
        return False


class RolesCache(Timer):
    def __init__(self, sdk: AccelByteSDK, interval: Union[int, float]):
        self.sdk = sdk
        self._roles: Dict[str, Any] = {}
        self._lock = RLock()
        Timer.__init__(
            self,
            interval,
            self.clear,
            daemon=True,
            repeats=-1,
            autostart=True,
            repeat_on_exception=True,
        )

    def clear(self):
        with self._lock:
            self._roles = {}

    def update(self):
        pass

    def cache_role(self, role_id: str) -> Any:
        role, error = iam_service.admin_get_role_v3(role_id=role_id, sdk=self.sdk)
        if error:
            return error
        with self._lock:
            self._roles[role_id] = role
        return None

    def get_role(self, role_id: str) -> Optional[Role]:
        with self._lock:
            role = self._roles.get(role_id, None)
            if role:
                return role

        error = self.cache_role(role_id=role_id)
        if error:
            raise FetchRoleError(f"role ID: {role_id}")

        return self._roles.get(role_id)

    def get_role_permissions(self, role_id: str) -> List[PermissionStruct]:
        role = self.get_role(role_id=role_id)
        return role.permissions

    def get_modified_role_permissions(
        self, role_id: str, namespace: str, user_id: Optional[str] = None
    ) -> List[PermissionStruct]:
        permissions = self.get_role_permissions(role_id=role_id)
        return [
            create_permission_struct(
                action=p.action,
                resource=replace_resource(
                    resource=p.resource,
                    namespace=namespace,
                    user_id=user_id,
                ),
            )
            for p in permissions
        ]

    def get_modified_role_permissions2(
        self, namespace_role: NamespaceRole, user_id: Optional[str] = None
    ) -> List[PermissionStruct]:
        return self.get_modified_role_permissions(
            role_id=namespace_role.get("roleId"),
            namespace=namespace_role.get("namespace"),
            user_id=user_id,
        )


class CachingTokenValidator:
    DEFAULT_DECODE_ALGORITHMS: List[str] = ["RS256"]
    DEFAULT_DECODE_OPTIONS: Dict[str, Any] = {"verify_aud": False, "verify_exp": True}
    JWS_HEADER_PARAM_KEY_ID_KEY: str = "kid"

    def __init__(
        self,
        sdk: AccelByteSDK,
        algorithms: Optional[List[str]] = None,
        options: Optional[Dict[str, Any]] = None,
        publisher_namespace: Optional[str] = None,
        token_refresh_interval: Optional[Union[int, float]] = None,
        jwks_refresh_interval: Optional[Union[int, float]] = None,
        revocation_list_refresh_interval: Union[int, float] = 60,
        role_cache_time: Union[int, float] = 60,
    ) -> None:
        self.algorithms = (
            algorithms
            if algorithms is not None
            else CachingTokenValidator.DEFAULT_DECODE_ALGORITHMS
        )
        self.options = (
            options
            if options is not None
            else CachingTokenValidator.DEFAULT_DECODE_OPTIONS
        )
        self.publisher_namespace = publisher_namespace

        if token_refresh_interval is not None:
            auth_service.LoginClientTimer(
                token_refresh_interval,
                repeats=-1,
                autostart=True,
                repeat_on_exception=True,
                sdk=sdk,
            )

        self.jwks_cache = JWKSCache(sdk, jwks_refresh_interval)
        self.revocation_list_cache = RevocationListCache(
            sdk, revocation_list_refresh_interval
        )
        self.roles_cache = RolesCache(sdk, role_cache_time)

        self.jwks_cache.update()
        self.revocation_list_cache.update()
        self.roles_cache.update()

    def has_valid_permissions(
        self,
        claims: JWTClaims,
        permission: PermissionStruct,
        namespace: Optional[str] = None,
    ) -> bool:
        claims_namespace = claims.get("namespace", None)
        user_id = claims.get("user_id", None)

        target = create_permission_struct(
            action=permission.action,
            resource=replace_resource(
                resource=permission.resource,
                namespace=namespace,
                token_namespace=claims_namespace,
                publisher_namespace=self.publisher_namespace,
                user_id=user_id,
            ),
        )

        # Check claims.permissions
        claims_permissions = [
            create_permission_struct(action=p.get("Action"), resource=p.get("Resource"))
            for p in claims.get("permissions", [])
        ]
        if claims_permissions and validate_permission(
            target=target,
            permissions=claims_permissions,
        ):
            return True

        # Check claim.namespace_roles
        claims_namespace_roles = claims.get("namespace_roles", [])
        if user_id and claims_namespace_roles:
            nr_permissions = []
            for nr in claims_namespace_roles:
                nr_permissions.extend(
                    self.roles_cache.get_modified_role_permissions2(
                        namespace_role=nr, user_id=user_id
                    )
                )
            if nr_permissions and validate_permission(
                target=target,
                permissions=nr_permissions,
            ):
                return True

        # Check claim.roles
        claims_roles = claims.get("roles", [])
        if claims_roles:
            r_permissions = []
            for r in claims_roles:
                r_permissions.extend(
                    self.roles_cache.get_modified_role_permissions(
                        role_id=r, namespace=namespace, user_id=user_id
                    )
                )
            if r_permissions and validate_permission(
                target=target,
                permissions=r_permissions,
            ):
                return True

        return False

    def validate_token(
        self,
        token: str,
        resource: Optional[str] = None,
        action: Optional[PermissionAction] = None,
        namespace: Optional[str] = None,
        **kwargs,
    ) -> Optional[Exception]:
        # Check if token was revoked.
        if self.revocation_list_cache.is_token_revoked(token=token):
            return TokenRevokedError()

        claims, error = self._decode(token=token, **kwargs)
        if error:
            return error

        # Check if user was revoked.
        if claims_user_id := claims.get("user_id"):
            if self.revocation_list_cache.is_user_revoked(
                user_id=claims_user_id, issued_at=claims.get("iat")
            ):
                return UserRevokedError()

        # Check if the claims has valid permissions.
        if (
            resource is not None
            and action is not None
            and not self.has_valid_permissions(
                claims=claims,
                permission=create_permission_struct(action, resource),
                namespace=namespace,
            )
        ):
            return InsufficientPermissionsError()

        return None

    def _decode(
        self,
        token: str,
        algorithms: Optional[List[str]] = None,
        options: Optional[Dict[str, Any]] = None,
        **kwargs,
    ) -> Tuple[Optional[JWTClaims], Optional[Exception]]:
        algorithms = algorithms if algorithms is not None else self.algorithms
        options = options if options is not None else self.options

        header_params = jwt.get_unverified_header(jwt=token)
        if not (
            kid := header_params.get(CachingTokenValidator.JWS_HEADER_PARAM_KEY_ID_KEY)
        ):
            return None, KeyError(CachingTokenValidator.JWS_HEADER_PARAM_KEY_ID_KEY)

        if not (key := self.jwks_cache.get_key(kid)):
            return None, KeyError(kid)

        claims = jwt.decode(
            jwt=token,
            key=key,
            algorithms=algorithms,
            options=options,
        )

        if "user_id" not in claims and (sub := claims.get("sub")):
            claims["user_id"] = sub

        return claims, None


__all__ = [
    "CachingTokenValidator",
]
