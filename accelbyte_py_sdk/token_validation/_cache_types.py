from threading import RLock
from typing import Any, Dict, List, Optional, Union

import jwt

import accelbyte_py_sdk.api.basic as basic_service
import accelbyte_py_sdk.api.basic.models as basic_models
import accelbyte_py_sdk.api.iam as iam_service
import accelbyte_py_sdk.api.iam.models as iam_models
from accelbyte_py_sdk.core import AccelByteSDK, Timer

from ._bloom_filter import BloomFilter
from ._ctypes import (
    FetchNamespaceContextError,
    FetchRoleError,
    PermissionStruct,
    create_permission_struct,
)
from ._utils import replace_resource, str2datetime

PublicPrivateKey = Any
JWTClaims = Dict[str, Any]
JWKSet = Dict[str, PublicPrivateKey]
NamespaceContext = basic_models.NamespaceContext
NamespaceRole = Dict[str, str]
Role = iam_models.ModelRolePermissionResponseV3


class JWKSCache(Timer):
    JWKS_KEYS_KEY: str = "keys"

    def __init__(
        self,
        sdk: AccelByteSDK,
        interval: Optional[Union[int, float]] = None,
        raise_on_error: bool = False,
        **kwargs,
    ):
        self.sdk = sdk
        self._jwks: Dict[str, PublicPrivateKey] = {}
        self._lock = RLock()
        self._raise_on_error = raise_on_error
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

    def update(self, **kwargs):
        result, error = iam_service.get_jwksv3(
            x_additional_headers=kwargs.get("x_additional_headers", None),
            sdk=self.sdk,
        )
        if error:
            if self._raise_on_error:
                raise Exception(error)
            return

        with self._lock:
            keys = result.to_dict().get(JWKSCache.JWKS_KEYS_KEY, [])
            jwks = jwt.PyJWKSet(keys)
            for jwk in jwks.keys:
                self._jwks[jwk.key_id] = jwk.key

    def get_key_from_cache(self, key_id: str, **kwargs) -> Optional[PublicPrivateKey]:
        with self._lock:
            return self._jwks.get(key_id, None)

    def get_key(self, key_id: str, **kwargs) -> Optional[PublicPrivateKey]:
        key = self.get_key_from_cache(key_id)
        if key is not None:
            return key

        self.update(**kwargs)

        return self.get_key_from_cache(key_id)


class NamespaceContextCache(Timer):
    def __init__(
        self,
        sdk: AccelByteSDK,
        interval: Union[int, float],
        raise_on_error: bool = True,
        **kwargs,
    ):
        self.sdk = sdk
        self._namespace_contexts: Dict[str, Any] = {}
        self._lock = RLock()
        self._raise_on_error = raise_on_error
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
            self._namespace_contexts = {}

    def update(self, **kwargs):
        pass

    def cache_namespace_context(self, namespace: str, **kwargs) -> Any:
        namespace_context, error = basic_service.get_namespace_context(
            namespace=namespace,
            x_additional_headers=kwargs.get("x_additional_headers", None),
            sdk=self.sdk,
        )
        if error:
            return error
        with self._lock:
            self._namespace_contexts[namespace] = namespace_context
        return None

    def get_namespace_context(
        self, namespace: str, **kwargs
    ) -> Optional[NamespaceContext]:
        with self._lock:
            namespace_context = self._namespace_contexts.get(namespace, None)
            if namespace_context:
                return namespace_context

        error = self.cache_namespace_context(namespace=namespace, **kwargs)
        if error:
            if self._raise_on_error:
                raise FetchNamespaceContextError(f"namespace context: {namespace}")
            return None

        return self._namespace_contexts.get(namespace, None)


class RevocationListCache(Timer):
    def __init__(
        self,
        sdk: AccelByteSDK,
        interval: Union[int, float],
        raise_on_error: bool = True,
        **kwargs,
    ):
        self.sdk = sdk
        self._revoked_token_filter: Optional[BloomFilter] = None
        self._revoked_users: Dict[str, float] = {}
        self._lock = RLock()
        self._raise_on_error = raise_on_error
        Timer.__init__(
            self,
            interval,
            self.update,
            daemon=True,
            repeats=-1,
            autostart=True,
            repeat_on_exception=True,
        )

    def update(self, **kwargs):
        result, error = iam_service.get_revocation_list_v3(
            x_additional_headers=kwargs.get("x_additional_headers", None),
            sdk=self.sdk,
        )
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

    def is_token_revoked(self, token: str, **kwargs) -> bool:
        with self._lock:
            if self._revoked_token_filter:
                return self._revoked_token_filter.might_contains(key=token)
            else:
                return False

    def is_user_revoked(self, user_id: str, issued_at: int, **kwargs) -> bool:
        with self._lock:
            revoked_at = self._revoked_users.get(user_id, None)
            if revoked_at is not None:
                return revoked_at >= issued_at
        return False


class RolesCache(Timer):
    def __init__(
        self,
        sdk: AccelByteSDK,
        interval: Union[int, float],
        raise_on_error: bool = True,
        **kwargs,
    ):
        self.sdk = sdk
        self._roles: Dict[str, Any] = {}
        self._lock = RLock()
        self._raise_on_error = raise_on_error
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

    def update(self, **kwargs):
        pass

    def cache_role(self, role_id: str, **kwargs) -> Any:
        role, error = iam_service.admin_get_role_namespace_permission_v3(
            role_id=role_id,
            x_additional_headers=kwargs.get("x_additional_headers", None),
            sdk=self.sdk,
        )
        if error:
            return error
        with self._lock:
            self._roles[role_id] = role
        return None

    def get_role(self, role_id: str, **kwargs) -> Optional[Role]:
        with self._lock:
            role = self._roles.get(role_id, None)
            if role:
                return role

        error = self.cache_role(role_id=role_id, **kwargs)
        if error:
            if self._raise_on_error:
                raise FetchRoleError(f"failed to get role with ID: {role_id}")
            return None

        return self._roles.get(role_id, None)

    def get_role_permissions(self, role_id: str, **kwargs) -> List[PermissionStruct]:
        role = self.get_role(role_id=role_id, **kwargs)
        role_permissions = getattr(role, "permissions", []) if role is not None else []
        return role_permissions

    def get_modified_role_permissions(
        self,
        role_id: str,
        namespace: str,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> List[PermissionStruct]:
        role_permissions = self.get_role_permissions(role_id=role_id, **kwargs)
        modified_role_permissions = []
        for permission in role_permissions:
            action = getattr(permission, "action", None)
            resource = getattr(permission, "resource", None)
            if action is not None and resource is not None:
                permission_struct = create_permission_struct(
                    action=action,
                    resource=replace_resource(
                        resource=resource,
                        namespace=namespace,
                        user_id=user_id,
                    ),
                )
                modified_role_permissions.append(permission_struct)
        return modified_role_permissions

    def get_modified_role_permissions2(
        self,
        namespace_role: NamespaceRole,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> List[PermissionStruct]:
        role_id = namespace_role.get("roleId", None)
        return (
            self.get_modified_role_permissions(
                role_id=role_id,
                namespace=namespace_role.get("namespace", None),
                user_id=user_id,
                **kwargs,
            )
            if role_id is not None
            else []
        )


__all__ = [
    # Type Aliases
    "JWTClaims",
    "JWKSet",
    "NamespaceContext",
    "NamespaceRole",
    "PublicPrivateKey",
    "Role",
    # Cache Types
    "JWKSCache",
    "NamespaceContextCache",
    "RevocationListCache",
    "RolesCache",
]
