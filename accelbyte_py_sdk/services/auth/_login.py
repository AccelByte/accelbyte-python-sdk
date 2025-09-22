# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations

import threading

from abc import ABC, abstractmethod
from typing import Dict, List, Optional, Tuple, Union

from ...core import (
    SDK,
    AccelByteSDK,
    HttpResponse,
    Operation,
    Timer,
    TimerStatus,
    TokenRepository,
    deprecated,
)

from ._login_const import (
    DEFAULT_REFRESH_RATE,
    DEFAULT_AUTO_REFRESH,
    DEFAULT_TIMER_INTERVAL,
    DEFAULT_TIMER_REFRESH_RATE,
    DEFAULT_TIMER_REPEAT_ON_EXCEPTION,
    AUTH_SERVICE_LOGGER,
    REFRESH_KWARGS,
)
from ._login_client import login_client_internal, login_client_async_internal
from ._login_platform import login_platform_internal, login_platform_async_internal
from ._login_user import login_user_internal, login_user_async_internal
from ._login_refresh import (
    login_refresh_internal,
    login_refresh_async_internal,
    try_refresh_login_internal,
    try_refresh_login_async_internal,
)
from ._logout import logout_internal, logout_async_internal


# region v1


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.login_client",
)
def login_client(
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    token, error = login_client_internal(
        client_id=client_id,
        client_secret=client_secret,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)
    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginClientTimer(
                    0,
                    client_id=client_id,
                    client_secret=client_secret,
                    x_additional_headers=x_additional_headers,
                    **kwargs,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, error


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.login_client_async",
)
async def login_client_async(
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    token, error = await login_client_async_internal(
        client_id=client_id,
        client_secret=client_secret,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)
    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginClientTimer(
                    0,
                    client_id=client_id,
                    client_secret=client_secret,
                    x_additional_headers=x_additional_headers,
                    **kwargs,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, error


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.login_platform",
)
def login_platform(
    platform_id: str,
    platform_token: str,
    refresh_if_possible: bool = False,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    token, error = login_platform_internal(
        platform_id=platform_id,
        platform_token=platform_token,
        refresh_if_possible=refresh_if_possible,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)
    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginPlatformTimer(
                    0,
                    platform_id=platform_id,
                    platform_token=platform_token,
                    x_additional_headers=x_additional_headers,
                    **kwargs,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.login_platform_async",
)
async def login_platform_async(
    platform_id: str,
    platform_token: str,
    refresh_if_possible: bool = False,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    token, error = await login_platform_async_internal(
        platform_id=platform_id,
        platform_token=platform_token,
        refresh_if_possible=refresh_if_possible,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)
    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginPlatformTimer(
                    0,
                    platform_id=platform_id,
                    platform_token=platform_token,
                    x_additional_headers=x_additional_headers,
                    **kwargs,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.login_user",
)
def login_user(
    username: str,
    password: str,
    scope: Optional[Union[str, List[str]]] = None,
    refresh_if_possible: bool = False,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    token, error = login_user_internal(
        username=username,
        password=password,
        scope=scope,
        refresh_if_possible=refresh_if_possible,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)
    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginUserTimer(
                    0,
                    username=username,
                    password=password,
                    scope=scope,
                    x_additional_headers=x_additional_headers,
                    **kwargs,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.login_user_async",
)
async def login_user_async(
    username: str,
    password: str,
    scope: Optional[Union[str, List[str]]] = None,
    refresh_if_possible: bool = False,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    token, error = await login_user_async_internal(
        username=username,
        password=password,
        scope=scope,
        refresh_if_possible=refresh_if_possible,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)
    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginUserTimer(
                    0,
                    username=username,
                    password=password,
                    scope=scope,
                    x_additional_headers=x_additional_headers,
                    **kwargs,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.logout",
)
def logout(
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    _, error = logout_internal(
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    token_refresher = unset_on_demand_token_refresher(reset=True, **kwargs)

    return None, None


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.logout_async",
)
async def logout_async(
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    _, error = await logout_async_internal(
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    token_refresher = unset_on_demand_token_refresher(reset=True, **kwargs)

    return None, None


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.refresh_login",
)
def refresh_login(
    refresh_token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    return login_refresh_internal(
        refresh_token=refresh_token, x_additional_headers=x_additional_headers, **kwargs
    )


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.refresh_login_async",
)
async def refresh_login_async(
    refresh_token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    return await login_refresh_async_internal(
        refresh_token=refresh_token, x_additional_headers=x_additional_headers, **kwargs
    )


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.try_refresh_login",
)
def try_refresh_login(
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
) -> Optional[str]:
    return try_refresh_login_internal(
        x_additional_headers=x_additional_headers, **kwargs
    )


@deprecated(
    message="2025-08-15 - This method is obsolete.",
    replacement="accelbyte_py_sdk.services.auth.v2.try_refresh_login_async",
)
async def try_refresh_login_async(
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
) -> Optional[str]:
    return await try_refresh_login_async_internal(
        x_additional_headers=x_additional_headers, **kwargs
    )


login = login_user
login_async = login_user_async

# endregion v1


# region repeating


class LoginTimerBase(ABC, Timer):
    @abstractmethod
    def run(self):
        pass

    @abstractmethod
    async def run_async(self):
        pass


class LoginClientTimer(LoginTimerBase):
    def __init__(
        self,
        interval: Union[int, float],
        /,
        *,
        client_id: Optional[str] = None,
        client_secret: Optional[str] = None,
        x_additional_headers: Optional[Dict[str, str]] = None,
        refresh_rate: Optional[float] = None,
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = DEFAULT_TIMER_REPEAT_ON_EXCEPTION,
        **kwargs,
    ) -> None:
        logger = kwargs.get("logger", AUTH_SERVICE_LOGGER)

        self.refresh_rate = refresh_rate
        self.sdk = kwargs.get("sdk", None)
        self.kwargs = {
            "client_id": client_id,
            "client_secret": client_secret,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **REFRESH_KWARGS,
        }

        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
            logger=logger,
        )

    def run(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return login_client(**self.kwargs)

    async def run_async(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return await login_client_async(**self.kwargs)


class LoginPlatformTimer(LoginTimerBase):
    def __init__(
        self,
        interval: Union[int, float],
        /,
        *,
        platform_id: str,
        platform_token: str,
        x_additional_headers: Optional[Dict[str, str]] = None,
        refresh_rate: Optional[float] = None,
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = DEFAULT_TIMER_REPEAT_ON_EXCEPTION,
        **kwargs,
    ) -> None:
        logger = kwargs.get("logger", AUTH_SERVICE_LOGGER)

        self.refresh_rate = refresh_rate
        self.sdk = kwargs.get("sdk", None)
        self.kwargs = {
            "platform_id": platform_id,
            "platform_token": platform_token,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **REFRESH_KWARGS,
        }

        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
            logger=logger,
        )

    def run(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return login_platform(**self.kwargs)

    async def run_async(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return await login_platform_async(**self.kwargs)


class LoginUserTimer(LoginTimerBase):
    def __init__(
        self,
        interval: Union[int, float],
        /,
        *,
        username: str,
        password: str,
        scope: Optional[Union[str, List[str]]] = None,
        x_additional_headers: Optional[Dict[str, str]] = None,
        refresh_rate: Optional[float] = None,
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = DEFAULT_TIMER_REPEAT_ON_EXCEPTION,
        **kwargs,
    ) -> None:
        logger = kwargs.get("logger", AUTH_SERVICE_LOGGER)

        self.refresh_rate = refresh_rate
        self.sdk = kwargs.get("sdk", None)
        self.kwargs = {
            "username": username,
            "password": password,
            "scope": scope,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **REFRESH_KWARGS,
        }

        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
            logger=logger,
        )

    def run(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return login_user(**self.kwargs)

    async def run_async(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return await login_user_async(**self.kwargs)


class RefreshLoginTimer(LoginTimerBase):
    def __init__(
        self,
        interval: Union[int, float],
        /,
        *,
        refresh_token: str,
        x_additional_headers: Optional[Dict[str, str]] = None,
        refresh_rate: Optional[float] = None,
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = DEFAULT_TIMER_REPEAT_ON_EXCEPTION,
        **kwargs,
    ) -> None:
        logger = kwargs.get("logger", AUTH_SERVICE_LOGGER)

        self.refresh_rate = refresh_rate
        self.sdk = kwargs.get("sdk", None)
        self.kwargs = {
            "refresh_token": refresh_token,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **REFRESH_KWARGS,
        }

        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
            logger=logger,
        )

    def run(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return refresh_login(**self.kwargs)

    async def run_async(self):
        if self.refresh_rate is not None:
            sdk = self.sdk or SDK
            if sdk is not None:
                token_repository = sdk.get_token_repository(raise_when_none=False)
                if token_repository is not None:
                    needs_refresh = token_repository.has_token_expired(
                        multiplier=self.refresh_rate
                    )
                    if not needs_refresh:
                        token = token_repository.get_token()
                        return token, None

        return await refresh_login_async(**self.kwargs)


def set_on_demand_token_refresher(token_refresher: OnDemandTokenRefresher, **kwargs):
    key = "OnDemandTokenRefresher"
    sdk = kwargs.get("sdk", SDK)
    if existing := sdk.operation_preprocessors.pop(key, None):
        existing.reset()
    sdk.operation_preprocessors[key] = token_refresher


def unset_on_demand_token_refresher(reset: bool = True, **kwargs):
    key = "OnDemandTokenRefresher"
    sdk = kwargs.get("sdk", SDK)
    if existing := sdk.operation_preprocessors.pop(key, None):
        if not isinstance(existing, OnDemandTokenRefresher):
            raise TypeError(existing)
        if reset:
            existing.reset()
        return existing
    return None


class OnDemandTokenRefresher:
    def __init__(
        self, refresher: LoginTimerBase, refresh_rate: float = DEFAULT_REFRESH_RATE
    ):
        self._refresher = refresher
        self._refresh_rate = refresh_rate

        self._lock = threading.RLock()
        self._active_refresher: Optional[LoginTimerBase] = None

    def __call__(
        self, operation: Operation, sdk: AccelByteSDK, *args, **kwargs
    ) -> Tuple[Optional[Operation], Optional[HttpResponse]]:
        token_repo = sdk.get_token_repository(raise_when_none=False)
        if token_repo is None:
            return None, HttpResponse.create_token_repo_not_found_error()

        with self._lock:
            needs_refresh = token_repo.has_token() and token_repo.has_token_expired(
                multiplier=self._refresh_rate
            )
            if not needs_refresh:
                return operation, None
            if self._active_refresher is not None:
                if self._active_refresher.status == TimerStatus.RUNNING:
                    return operation, None
                elif self._active_refresher.status == TimerStatus.FINISHED:
                    self._active_refresher = None
                else:
                    raise NotImplementedError()
            self.refresh(token_repo=token_repo)

        return operation, None

    @property
    def status(self) -> TimerStatus:
        if self._active_refresher is None:
            return TimerStatus.IDLE
        return self._active_refresher.status

    def refresh(self, token_repo: TokenRepository):
        if refresh_token := token_repo.get_refresh_token():
            self._active_refresher = RefreshLoginTimer(
                0, refresh_token=refresh_token, autostart=True
            )
        else:
            self._active_refresher = self._refresher.clone(
                interval=0, repeats=None, autostart=True
            )

    def reset(self):
        if self._active_refresher is not None:
            self._active_refresher.cancel()


def enable_login_client_timer(
    sdk: AccelByteSDK,
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    cancel_existing: bool = True,
    **kwargs,
) -> bool:
    interval: int = kwargs.pop("interval", DEFAULT_TIMER_INTERVAL)
    refresh_rate: float = kwargs.pop("refresh_rate", DEFAULT_TIMER_REFRESH_RATE)
    repeats: int = kwargs.pop("repeats", -1)
    autostart: bool = kwargs.pop("autostart", True)
    repeat_on_exception: bool = kwargs.pop(
        "repeat_on_exception", DEFAULT_TIMER_REPEAT_ON_EXCEPTION
    )

    if existing_timer := getattr(sdk, "timer", None):
        if not cancel_existing:
            return False
        cancel_method = getattr(existing_timer, "cancel", None)
        if callable(cancel_method):
            cancel_method()

    sdk.timer = LoginClientTimer(
        interval,
        client_id=client_id,
        client_secret=client_secret,
        x_additional_headers=x_additional_headers,
        refresh_rate=refresh_rate,
        repeats=repeats,
        autostart=autostart,
        repeat_on_exception=repeat_on_exception,
        sdk=sdk,
    )

    return True


def enable_login_platform_timer(
    sdk: AccelByteSDK,
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    cancel_existing: bool = True,
    **kwargs,
) -> bool:
    interval: int = kwargs.pop("interval", DEFAULT_TIMER_INTERVAL)
    refresh_rate: float = kwargs.pop("refresh_rate", DEFAULT_TIMER_REFRESH_RATE)
    repeats: int = kwargs.pop("repeats", -1)
    autostart: bool = kwargs.pop("autostart", True)
    repeat_on_exception: bool = kwargs.pop(
        "repeat_on_exception", DEFAULT_TIMER_REPEAT_ON_EXCEPTION
    )

    if existing_timer := getattr(sdk, "timer", None):
        if not cancel_existing:
            return False
        cancel_method = getattr(existing_timer, "cancel", None)
        if callable(cancel_method):
            cancel_method()

    sdk.timer = LoginPlatformTimer(
        interval,
        platform_id=platform_id,
        platform_token=platform_token,
        x_additional_headers=x_additional_headers,
        refresh_rate=refresh_rate,
        repeats=repeats,
        autostart=autostart,
        repeat_on_exception=repeat_on_exception,
        sdk=sdk,
    )

    return True


def enable_login_user_timer(
    sdk: AccelByteSDK,
    username: str,
    password: str,
    scope: Optional[Union[str, List[str]]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    cancel_existing: bool = True,
    **kwargs,
) -> bool:
    interval: int = kwargs.pop("interval", DEFAULT_TIMER_INTERVAL)
    refresh_rate: float = kwargs.pop("refresh_rate", DEFAULT_TIMER_REFRESH_RATE)
    repeats: int = kwargs.pop("repeats", -1)
    autostart: bool = kwargs.pop("autostart", True)
    repeat_on_exception: bool = kwargs.pop(
        "repeat_on_exception", DEFAULT_TIMER_REPEAT_ON_EXCEPTION
    )

    if existing_timer := getattr(sdk, "timer", None):
        if not cancel_existing:
            return False
        cancel_method = getattr(existing_timer, "cancel", None)
        if callable(cancel_method):
            cancel_method()

    sdk.timer = LoginUserTimer(
        interval,
        username=username,
        password=password,
        scope=scope,
        x_additional_headers=x_additional_headers,
        refresh_rate=refresh_rate,
        repeats=repeats,
        autostart=autostart,
        repeat_on_exception=repeat_on_exception,
        sdk=sdk,
    )

    return True


# endregion repeating
