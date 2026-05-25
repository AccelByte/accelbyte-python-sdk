import logging
import os
from threading import Event, RLock
from typing import Any, Dict, List, Optional, Tuple, Union

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

logger = logging.getLogger(__name__)

PublicPrivateKey = Any
JWTClaims = Dict[str, Any]
JWKSet = Dict[str, PublicPrivateKey]
NamespaceContext = basic_models.NamespaceContext
NamespaceRole = Dict[str, str]
Role = iam_models.ModelRolePermissionResponseV3


class _InflightFetch:
    """Single-flight coordination record: one fetcher per key; others wait on the event.

    `error` holds either a service-layer error object (returned from the
    (result, error) tuple) or a raised BaseException. Waiters distinguish the
    two and re-raise exceptions to preserve the original traceback.
    """

    __slots__ = ("event", "error")

    def __init__(self) -> None:
        self.event: Event = Event()
        # None = no error; BaseException subtype = raised exception captured by
        # the fetcher; otherwise a service-layer error tuple value. Typed as
        # Optional[Any] because Union[BaseException, Any] collapses to Any.
        self.error: Optional[Any] = None


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
    ENV_VAR_FALLBACK: str = "AB_NAMESPACE_CONTEXT_FALLBACK"

    def __init__(
        self,
        sdk: AccelByteSDK,
        interval: Optional[Union[int, float]] = None,
        raise_on_error: bool = True,
        namespace_context_fallback: Optional[bool] = None,
        **kwargs,
    ):
        self.sdk = sdk
        self._namespace_contexts: Dict[str, Any] = {}
        self._inflight: Dict[str, _InflightFetch] = {}
        self._lock = RLock()
        self._raise_on_error = raise_on_error
        self._generation: int = 0

        if namespace_context_fallback is not None:
            self._namespace_context_fallback = namespace_context_fallback
        else:
            env_val = (
                os.environ.get(NamespaceContextCache.ENV_VAR_FALLBACK, "")
                .strip()
                .lower()
            )
            self._namespace_context_fallback = (
                env_val not in ("0", "false", "no", "off", "disabled")
                if env_val
                else True
            )

        if interval is not None:
            Timer.__init__(
                self,
                interval,
                self.refresh,
                daemon=True,
                repeats=-1,
                autostart=True,
                repeat_on_exception=True,
            )

    def clear(self):
        """Drop all cached entries and pending single-flight coordinators.

        Bumps the generation counter so any concurrent refresh() aborts before
        re-populating the cleared cache. Signals waiters on outstanding
        coordinators before discarding them so no thread blocks indefinitely.
        Waiters woken this way observe inflight.error == None (the fetch had
        not yet completed) and surface a transient None / 401 to callers --
        the expected semantic for a deliberately invalidated cache.

        The fetcher's finally block may call event.set() again on a coordinator
        already signalled here; threading.Event.set() is idempotent.
        """
        with self._lock:
            self._generation += 1
            for fetch in self._inflight.values():
                fetch.event.set()
            self._namespace_contexts = {}
            self._inflight = {}

    def update(self, **kwargs):
        pass

    def refresh(self, **kwargs):
        """Re-fetch every currently-cached namespace context in place.

        On per-key failure the prior entry is retained (serve-stale), so a transient
        IAM outage cannot empty the cache and cascade into permission denials.

        Invoked by the background Timer with no kwargs, so x_additional_headers is
        not propagated during automatic refreshes; auth flows through sdk=self.sdk.
        Live callers entering get_namespace_context for a refreshed key hit the
        cached entry before the single-flight gate, so they never block on the
        in-progress refresh. Aborts immediately if clear() bumps the generation
        counter mid-loop, so external invalidation is not silently undone.
        Keys currently in-flight (in _inflight but not yet in _namespace_contexts)
        are not included in the snapshot; they will be picked up next cycle.
        """
        with self._lock:
            gen = self._generation
            namespaces = list(self._namespace_contexts.keys())
        for namespace in namespaces:
            with self._lock:
                if self._generation != gen:
                    return
            try:
                error = self.cache_namespace_context(namespace=namespace, **kwargs)
            except Exception as exc:
                logger.debug(
                    "namespace context refresh raised for '%s': %s; keeping stale entry",
                    namespace,
                    exc,
                )
                continue
            if error:
                logger.debug(
                    "namespace context refresh failed for '%s': %s; keeping stale entry",
                    namespace,
                    error,
                )
                continue
            # If clear() ran during the fetch, undo the spurious write so the
            # invalidation is not silently defeated by this refresh cycle.
            with self._lock:
                if self._generation != gen:
                    self._namespace_contexts.pop(namespace, None)
                    return

    def cache_namespace_context(self, namespace: str, **kwargs) -> Any:
        with self._lock:
            inflight = self._inflight.get(namespace)
            if inflight is None:
                inflight = _InflightFetch()
                self._inflight[namespace] = inflight
                is_fetcher = True
            else:
                is_fetcher = False

        if not is_fetcher:
            logger.debug("cache waiter: namespace=%s, waiting for in-flight fetch",
                         namespace)
            inflight.event.wait()
            err = inflight.error
            logger.debug("cache waiter: namespace=%s, unblocked, error=%r",
                         namespace, err)
            if isinstance(err, BaseException):
                raise err
            return err

        try:
            try:
                namespace_context, error = basic_service.get_namespace_context(
                    namespace=namespace,
                    x_additional_headers=kwargs.get("x_additional_headers", None),
                    sdk=self.sdk,
                )
            except BaseException as exc:
                inflight.error = exc
                raise
            if error:
                inflight.error = error
                return error
            with self._lock:
                self._namespace_contexts[namespace] = namespace_context
            return None
        finally:
            with self._lock:
                self._inflight.pop(namespace, None)
                inflight.event.set()

    def get_namespace_context(
        self, namespace: str, **kwargs
    ) -> Optional[NamespaceContext]:
        with self._lock:
            namespace_context = self._namespace_contexts.get(namespace, None)
            if namespace_context:
                return namespace_context

        # Lock released; concurrent callers for the same namespace are coalesced
        # inside cache_namespace_context via _InflightFetch. Do not remove that
        # coordination without also re-acquiring the lock around the fetch.
        error = self.cache_namespace_context(namespace=namespace, **kwargs)
        if error:
            if self._namespace_context_fallback:
                logger.debug(
                    "namespace context fetch failed for '%s': %s; attempting fallback",
                    namespace,
                    error,
                )
                derived = self._derive_namespace_context_from_app_ns(
                    namespace=namespace, **kwargs
                )
                if derived is not None:
                    return derived
            if self._raise_on_error:
                raise FetchNamespaceContextError(f"namespace context: {namespace}")
            return None

        with self._lock:
            return self._namespace_contexts.get(namespace, None)

    def _derive_namespace_context_from_app_ns(
        self, namespace: str, **kwargs
    ) -> Optional[NamespaceContext]:
        """Fallback for when the app lacks permission to query a parent namespace.

        Fetches the app's own game namespace context (from the SDK config) and derives
        studio/publisher namespace contexts from it, populating the cache so that
        permission validation can proceed without a 403.
        """
        app_namespace, error = self.sdk.get_namespace()
        if error or not app_namespace or app_namespace == namespace:
            return None

        with self._lock:
            app_context = self._namespace_contexts.get(app_namespace, None)

        if app_context is None:
            error = self.cache_namespace_context(namespace=app_namespace, **kwargs)
            if error:
                return None
            with self._lock:
                app_context = self._namespace_contexts.get(app_namespace, None)

        if app_context is None or getattr(app_context, "type_", None) != "Game":
            return None

        studio_ns = getattr(app_context, "studio_namespace", None)
        publisher_ns = getattr(app_context, "publisher_namespace", None)

        with self._lock:
            if studio_ns:
                self._namespace_contexts.setdefault(
                    studio_ns,
                    NamespaceContext.create(
                        namespace=studio_ns,
                        type_="Studio",
                        studio_namespace=studio_ns,
                        publisher_namespace=publisher_ns,
                    ),
                )
            if publisher_ns:
                self._namespace_contexts.setdefault(
                    publisher_ns,
                    NamespaceContext.create(
                        namespace=publisher_ns,
                        type_="Publisher",
                        publisher_namespace=publisher_ns,
                    ),
                )
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
        interval: Optional[Union[int, float]] = None,
        raise_on_error: bool = True,
        **kwargs,
    ):
        self.sdk = sdk
        self._roles: Dict[Tuple[str, Optional[str]], Any] = {}
        self._inflight: Dict[Tuple[str, Optional[str]], _InflightFetch] = {}
        self._lock = RLock()
        self._raise_on_error = raise_on_error
        self._generation: int = 0
        if interval is not None:
            Timer.__init__(
                self,
                interval,
                self.refresh,
                daemon=True,
                repeats=-1,
                autostart=True,
                repeat_on_exception=True,
            )

    def clear(self):
        """Drop all cached entries and pending single-flight coordinators.

        Bumps the generation counter so any concurrent refresh() aborts before
        re-populating the cleared cache. Signals waiters on outstanding
        coordinators before discarding them so no thread blocks indefinitely.
        Waiters woken this way observe inflight.error == None (the fetch had
        not yet completed) and surface a transient None / 401 to callers --
        the expected semantic for a deliberately invalidated cache.

        The fetcher's finally block may call event.set() again on a coordinator
        already signalled here; threading.Event.set() is idempotent.
        """
        with self._lock:
            self._generation += 1
            for fetch in self._inflight.values():
                fetch.event.set()
            self._roles = {}
            self._inflight = {}

    def update(self, **kwargs):
        pass

    def refresh(self, **kwargs):
        """Re-fetch every currently-cached role in place.

        On per-key failure the prior entry is retained (serve-stale), so a transient
        IAM outage cannot empty the cache and cascade into 401 InsufficientPermissions.

        Invoked by the background Timer with no kwargs, so x_additional_headers is
        not propagated during automatic refreshes; auth flows through sdk=self.sdk.
        Live callers entering get_role for a refreshed key hit the cached entry
        before the single-flight gate, so they never block on the in-progress
        refresh. Aborts immediately if clear() bumps the generation counter
        mid-loop, so external invalidation is not silently undone. Keys
        currently in-flight (in _inflight but not yet in _roles) are not
        included in the snapshot; they will be picked up next cycle.
        """
        with self._lock:
            gen = self._generation
            keys = list(self._roles.keys())
        for role_id, namespace in keys:
            with self._lock:
                if self._generation != gen:
                    return
            try:
                error = self.cache_role(role_id=role_id, namespace=namespace, **kwargs)
            except Exception as exc:
                logger.debug(
                    "role refresh raised for (%s, %s): %s; keeping stale entry",
                    role_id,
                    namespace,
                    exc,
                )
                continue
            if error:
                logger.debug(
                    "role refresh failed for (%s, %s): %s; keeping stale entry",
                    role_id,
                    namespace,
                    error,
                )
                continue
            # If clear() ran during the fetch, undo the spurious write so the
            # invalidation is not silently defeated by this refresh cycle.
            with self._lock:
                if self._generation != gen:
                    self._roles.pop((role_id, namespace), None)
                    return

    def cache_role(
        self, role_id: str, namespace: Optional[str] = None, **kwargs
    ) -> Any:
        cache_key = (role_id, namespace)

        with self._lock:
            inflight = self._inflight.get(cache_key)
            if inflight is None:
                inflight = _InflightFetch()
                self._inflight[cache_key] = inflight
                is_fetcher = True
            else:
                is_fetcher = False

        if not is_fetcher:
            logger.debug("cache waiter: role=%s namespace=%s, waiting for in-flight fetch",
                         role_id, namespace)
            inflight.event.wait()
            err = inflight.error
            logger.debug("cache waiter: role=%s namespace=%s, unblocked, error=%r",
                         role_id, namespace, err)
            if isinstance(err, BaseException):
                raise err
            return err

        try:
            try:
                role, error = iam_service.admin_get_role_namespace_permission_v3(
                    role_id=role_id,
                    namespace=namespace,
                    x_additional_headers=kwargs.get("x_additional_headers", None),
                    sdk=self.sdk,
                )
            except BaseException as exc:
                inflight.error = exc
                raise
            if error:
                inflight.error = error
                return error
            with self._lock:
                self._roles[cache_key] = role
            return None
        finally:
            with self._lock:
                self._inflight.pop(cache_key, None)
                inflight.event.set()

    def get_role(
        self, role_id: str, namespace: Optional[str] = None, **kwargs
    ) -> Optional[Role]:
        cache_key = (role_id, namespace)
        with self._lock:
            role = self._roles.get(cache_key, None)
            if role:
                return role

        # Lock released; concurrent callers for the same key are coalesced inside
        # cache_role via _InflightFetch. Do not remove that coordination without
        # also re-acquiring the lock around the fetch.
        error = self.cache_role(role_id=role_id, namespace=namespace, **kwargs)
        if error:
            if self._raise_on_error:
                raise FetchRoleError(f"failed to get role with ID: {role_id}")
            return None

        with self._lock:
            return self._roles.get(cache_key, None)

    def get_role_permissions(
        self, role_id: str, namespace: Optional[str] = None, **kwargs
    ) -> List[PermissionStruct]:
        role = self.get_role(role_id=role_id, namespace=namespace, **kwargs)
        role_permissions = getattr(role, "permissions", []) if role is not None else []
        return role_permissions

    def get_modified_role_permissions(
        self,
        role_id: str,
        namespace: str,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> List[PermissionStruct]:
        role_permissions = self.get_role_permissions(
            role_id=role_id, namespace=namespace, **kwargs
        )
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
