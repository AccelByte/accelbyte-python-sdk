# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from __future__ import annotations

import threading

from abc import ABC, abstractmethod
from typing import Dict, List, Optional, Tuple, Union

from ...core import SDK

from ...core import create_basic_authentication
from ...core import create_pkce_verifier_and_challenge_s256
from ...core import get_access_token
from ...core import get_client_auth
from ...core import get_client_id
from ...core import remove_token
from ...core import set_token

from ...core import AccelByteSDK
from ...core import HttpResponse
from ...core import NoHttpBackoffPolicy, NoHttpRetryPolicy
from ...core import Operation
from ...core import Timer, TimerStatus
from ...core import TokenRepository

from ...api.iam import authorize_v3
from ...api.iam import platform_token_grant_v3
from ...api.iam import token_grant_v3
from ...api.iam import token_revocation_v3
from ...api.iam import user_authentication_v3

from ...api.iam import authorize_v3_async
from ...api.iam import platform_token_grant_v3_async
from ...api.iam import token_grant_v3_async
from ...api.iam import token_revocation_v3_async
from ...api.iam import user_authentication_v3_async

from ...api.iam.operations.o_auth2_0 import AuthorizeV3ResponseTypeEnum
from ...api.iam.operations.o_auth2_0 import TokenGrantV3GrantTypeEnum


# region constants

DEFAULT_AUTO_REFRESH: bool = False
DEFAULT_REFRESH_RATE: float = 0.8

# endregion constants


# region sync


def login_client(
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)

    if client_id is not None and client_secret is not None:
        x_additional_headers = x_additional_headers or {}
        x_additional_headers["Authorization"] = create_basic_authentication(
            client_id, client_secret
        )

    token, error = token_grant_v3(
        grant_type=TokenGrantV3GrantTypeEnum.CLIENT_CREDENTIALS,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginClientTimer(
                    0,
                    client_id=client_id,
                    client_secret=client_secret,
                    x_additional_headers=x_additional_headers,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


def login_platform(
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)

    token, error = platform_token_grant_v3(
        platform_id=platform_id,
        platform_token=platform_token,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error is None:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginPlatformTimer(
                    0,
                    platform_id=platform_id,
                    platform_token=platform_token,
                    x_additional_headers=x_additional_headers,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


def login_user(
    username: str,
    password: str,
    scope: Optional[Union[str, List[str]]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)

    (
        code_verifier,
        code_challenge,
        code_challenge_method,
    ) = create_pkce_verifier_and_challenge_s256()

    if scope is None:
        scope = [
            "commerce",
            "account",
            "social",
            "publishing",
            "analytics",
        ]
    if isinstance(scope, list):
        scope = " ".join(scope)

    client_id, error = get_client_id(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    request_id, error = authorize_v3(
        client_id=client_id,
        response_type=AuthorizeV3ResponseTypeEnum.CODE,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        scope=scope,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    code, error = user_authentication_v3(
        password=password,
        request_id=request_id,
        user_name=username,
        client_id=client_id,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    token, error = token_grant_v3(
        grant_type=TokenGrantV3GrantTypeEnum.AUTHORIZATION_CODE,
        code=code,
        code_verifier=code_verifier,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginUserTimer(
                    0,
                    username=username,
                    password=password,
                    scope=scope,
                    x_additional_headers=x_additional_headers,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


def logout(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    access_token, error = get_access_token(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    client_auth, error = get_client_auth(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    basic_auth = create_basic_authentication(*client_auth)
    x_additional_headers = x_additional_headers or {}
    x_additional_headers["Authorization"] = basic_auth

    token_refresher = unset_on_demand_token_refresher(reset=False, **kwargs)

    _, error = token_revocation_v3(
        token=access_token, x_additional_headers=x_additional_headers, **kwargs
    )
    if error:
        if token_refresher is not None:
            set_on_demand_token_refresher(token_refresher=token_refresher, **kwargs)
        return None, error

    _, error = remove_token(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if token_refresher is not None:
        token_refresher.reset()

    return None, None


def refresh_login(
    refresh_token, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    token, error = token_grant_v3(
        grant_type=TokenGrantV3GrantTypeEnum.REFRESH_TOKEN,
        refresh_token=refresh_token,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    return token, None


login = login_user


# endregion sync


# region async


async def login_client_async(
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)

    if client_id is not None and client_secret is not None:
        x_additional_headers = x_additional_headers or {}
        x_additional_headers["Authorization"] = create_basic_authentication(
            client_id, client_secret
        )

    token, error = await token_grant_v3_async(
        grant_type=TokenGrantV3GrantTypeEnum.CLIENT_CREDENTIALS,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginClientTimer(
                    0,
                    client_id=client_id,
                    client_secret=client_secret,
                    x_additional_headers=x_additional_headers,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


async def login_platform_async(
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)

    token, error = await platform_token_grant_v3_async(
        platform_id=platform_id,
        platform_token=platform_token,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error is None:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginPlatformTimer(
                    0,
                    platform_id=platform_id,
                    platform_token=platform_token,
                    x_additional_headers=x_additional_headers,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


async def login_user_async(
    username: str,
    password: str,
    scope: Optional[Union[str, List[str]]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs,
):
    auto_refresh = kwargs.pop("auto_refresh", DEFAULT_AUTO_REFRESH)
    refresh_rate = kwargs.pop("refresh_rate", DEFAULT_REFRESH_RATE)

    (
        code_verifier,
        code_challenge,
        code_challenge_method,
    ) = create_pkce_verifier_and_challenge_s256()

    if scope is None:
        scope = [
            "commerce",
            "account",
            "social",
            "publishing",
            "analytics",
        ]
    if isinstance(scope, list):
        scope = " ".join(scope)

    client_id, error = get_client_id(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    request_id, error = await authorize_v3_async(
        client_id=client_id,
        response_type=AuthorizeV3ResponseTypeEnum.CODE,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        scope=scope,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    code, error = await user_authentication_v3_async(
        password=password,
        request_id=request_id,
        user_name=username,
        client_id=client_id,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    token, error = await token_grant_v3_async(
        grant_type=TokenGrantV3GrantTypeEnum.AUTHORIZATION_CODE,
        code=code,
        code_verifier=code_verifier,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if auto_refresh:
        set_on_demand_token_refresher(
            token_refresher=OnDemandTokenRefresher(
                refresher=LoginUserTimer(
                    0,
                    username=username,
                    password=password,
                    scope=scope,
                    x_additional_headers=x_additional_headers,
                ),
                refresh_rate=refresh_rate,
            ),
            **kwargs,
        )

    return token, None


async def logout_async(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    access_token, error = get_access_token(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    client_auth, error = get_client_auth(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    basic_auth = create_basic_authentication(*client_auth)
    x_additional_headers = x_additional_headers or {}
    x_additional_headers["Authorization"] = basic_auth

    token_refresher = unset_on_demand_token_refresher(reset=False, **kwargs)

    _, error = await token_revocation_v3_async(
        token=access_token, x_additional_headers=x_additional_headers, **kwargs
    )
    if error:
        if token_refresher is not None:
            set_on_demand_token_refresher(token_refresher=token_refresher, **kwargs)
        return None, error

    _, error = remove_token(sdk=kwargs.get("sdk"))
    if error:
        return None, error

    if token_refresher is not None:
        token_refresher.reset()

    return None, None


async def refresh_login_async(
    refresh_token, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    token, error = await token_grant_v3_async(
        grant_type=TokenGrantV3GrantTypeEnum.REFRESH_TOKEN,
        refresh_token=refresh_token,
        x_additional_headers=x_additional_headers,
        **kwargs,
    )
    if error:
        return None, error

    _, error = set_token(token=token, sdk=kwargs.get("sdk"))
    if error:
        return None, error

    return token, None


login_async = login_user_async


# endregion async


# region repeating


TIMER_KWARGS = {
    "retry_policy": NoHttpRetryPolicy(),
    "backoff_policy": NoHttpBackoffPolicy(),
}


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
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = False,
        **kwargs,
    ) -> None:
        self.kwargs = {
            "client_id": client_id,
            "client_secret": client_secret,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **TIMER_KWARGS,
        }
        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
        )

    def run(self):
        return login_client(**self.kwargs)

    async def run_async(self):
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
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = False,
        **kwargs,
    ) -> None:
        self.kwargs = {
            "platform_id": platform_id,
            "platform_token": platform_token,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **TIMER_KWARGS,
        }
        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
        )

    def run(self):
        return login_platform(**self.kwargs)

    async def run_async(self):
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
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = False,
        **kwargs,
    ) -> None:
        self.kwargs = {
            "username": username,
            "password": password,
            "scope": scope,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **TIMER_KWARGS,
        }
        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
        )

    def run(self):
        return login_user(**self.kwargs)

    async def run_async(self):
        return await login_user_async(**self.kwargs)


class RefreshLoginTimer(LoginTimerBase):
    def __init__(
        self,
        interval: Union[int, float],
        /,
        *,
        refresh_token: str,
        x_additional_headers: Optional[Dict[str, str]] = None,
        repeats: Optional[int] = None,
        autostart: bool = False,
        repeat_on_exception: bool = False,
        **kwargs,
    ) -> None:
        self.kwargs = {
            "refresh_token": refresh_token,
            "x_additional_headers": x_additional_headers,
            **kwargs,
            **TIMER_KWARGS,
        }
        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
        )

    def run(self):
        return refresh_login(**self.kwargs)

    async def run_async(self):
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
    def __init__(self, refresher: LoginTimerBase, refresh_rate: float = 0.8):
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


# endregion repeating
