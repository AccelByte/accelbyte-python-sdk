from typing import Any, Dict, List, Optional, Tuple, Union

import jwt

import accelbyte_py_sdk.services.auth as auth_service
from accelbyte_py_sdk import AccelByteSDK

from ._cache_types import (
    JWKSCache,
    JWTClaims,
    NamespaceContextCache,
    RevocationListCache,
    RolesCache,
)
from ._ctypes import (
    InsufficientPermissionsError,
    TokenRevokedError,
    UserRevokedError,
)
from ._ctypes import (
    PermissionAction,
    PermissionStruct,
    create_permission_struct,
)
from ._utils import (
    replace_resource,
)
from ._validation import validate_permission


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
        revocation_list_refresh_interval: Union[int, float] = 3600,
        role_cache_time: Union[int, float] = 3600,
        namespace_context_cache_time: Union[int, float] = 3600,
        raise_on_error: bool = False,
        update_on_init: bool = False,
        **kwargs,
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

        self.jwks_cache = JWKSCache(
            sdk,
            jwks_refresh_interval,
            raise_on_error=raise_on_error,
        )
        self.revocation_list_cache = RevocationListCache(
            sdk,
            revocation_list_refresh_interval,
            raise_on_error=raise_on_error,
        )
        self.roles_cache = RolesCache(
            sdk,
            role_cache_time,
            raise_on_error=raise_on_error,
        )
        self.namespace_context_cache = NamespaceContextCache(
            sdk,
            namespace_context_cache_time,
            raise_on_error=raise_on_error,
        )

        if update_on_init:
            self.jwks_cache.update()
            self.revocation_list_cache.update()
            self.roles_cache.update()
            self.namespace_context_cache.update()

    def has_valid_permissions(
        self,
        claims: JWTClaims,
        permission: PermissionStruct,
        namespace: Optional[str] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> bool:
        claims_namespace = claims.get("namespace", None)
        user_id = claims.get("user_id", user_id)

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
        claims_permissions = claims.get("permissions", None) or []
        claims_permissions = [
            create_permission_struct(action=p.get("Action"), resource=p.get("Resource"))
            for p in claims_permissions
        ]
        if claims_permissions and validate_permission(
            target=target,
            permissions=claims_permissions,
            namespace_context_cache=self.namespace_context_cache,
            **kwargs,
        ):
            return True

        # Check claim.namespace_roles
        claims_namespace_roles = claims.get("namespace_roles", None) or []
        if user_id and claims_namespace_roles:
            nr_permissions = []
            for nr in claims_namespace_roles:
                nr_permissions.extend(
                    self.roles_cache.get_modified_role_permissions2(
                        namespace_role=nr, user_id=user_id, **kwargs
                    )
                )
            if nr_permissions and validate_permission(
                target=target,
                permissions=nr_permissions,
                namespace_context_cache=self.namespace_context_cache,
                **kwargs,
            ):
                return True

        # Check claim.roles
        claims_roles = claims.get("roles", None) or []
        if claims_roles:
            r_permissions = []
            for r in claims_roles:
                r_permissions.extend(
                    self.roles_cache.get_modified_role_permissions(
                        role_id=r, namespace=namespace, user_id=user_id, **kwargs
                    )
                )
            if r_permissions and validate_permission(
                target=target,
                permissions=r_permissions,
                namespace_context_cache=self.namespace_context_cache,
                **kwargs,
            ):
                return True

        return False

    def validate_token(
        self,
        token: str,
        resource: Optional[str] = None,
        action: Optional[PermissionAction] = None,
        namespace: Optional[str] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> Optional[Exception]:
        # Check if token was revoked.
        if self.revocation_list_cache.is_token_revoked(token=token):
            return TokenRevokedError("token was already revoked")

        claims, error = self._decode(token=token, **kwargs)
        if error:
            return error

        # Check if user was revoked.
        if claims_user_id := claims.get("user_id", user_id):
            if self.revocation_list_cache.is_user_revoked(
                user_id=claims_user_id, issued_at=claims.get("iat")
            ):
                return UserRevokedError("user was already revoked")

        # Check if the claims has valid permissions.
        if (
            resource is not None
            and action is not None
            and not self.has_valid_permissions(
                claims=claims,
                permission=create_permission_struct(action, resource),
                namespace=namespace,
                user_id=user_id,
                **kwargs,
            )
        ):
            return InsufficientPermissionsError(
                f"insufficient permission: resource: {resource}, action: {action}"
            )

        return None

    def decode(
        self,
        token: str,
        algorithms: Optional[List[str]] = None,
        options: Optional[Dict[str, Any]] = None,
        **kwargs,
    ) -> Tuple[Optional[JWTClaims], Optional[Exception]]:
        return self._decode(token, algorithms=algorithms, options=options, **kwargs)

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

        if not (key := self.jwks_cache.get_key(kid, **kwargs)):
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
