# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from abc import ABC, abstractmethod
from dataclasses import dataclass
from threading import RLock
from typing import Callable, Optional, Tuple

from ...core import (
    AccelByteSDK,
    HttpResponse,
)

from ._login_const import (
    LOGIN_TYPE_CLIENT,
    LOGIN_TYPE_PLATFORM,
    LOGIN_TYPE_USER,
    LOGIN_TYPE_REFRESHABLE,
    DEFAULT_MAX_RETRY,
    DEFAULT_REFRESH_RATE,
    REFRESH_KWARGS,
)

from ._login_refresh import (
    try_refresh_login_internal,
    try_refresh_login_async_internal,
)

from .v2 import (
    login_client,
    login_client_async,
)


TokenRefresherResult = Tuple[bool, Optional[HttpResponse]]
TokenRefresherFailureFunc = Optional[Callable[[HttpResponse], None]]


@dataclass
class TokenRefresherOptions:
    enabled: bool = False
    max_retry: int = DEFAULT_MAX_RETRY
    refresh_rate: float = DEFAULT_REFRESH_RATE


class TokenRefresherBase(ABC):
    def __init__(
        self, *args, options: Optional[TokenRefresherOptions] = None, **kwargs
    ) -> None:
        self._lock: RLock = RLock()
        self._options: TokenRefresherOptions = options or TokenRefresherOptions()
        self._on_failure: TokenRefresherFailureFunc = None

    @abstractmethod
    def refresh(self, sdk: AccelByteSDK) -> TokenRefresherResult:
        pass

    @abstractmethod
    async def refresh_async(self, sdk: AccelByteSDK) -> TokenRefresherResult:
        pass


class TokenRefresher(TokenRefresherBase):
    def refresh(self, sdk: AccelByteSDK) -> TokenRefresherResult:
        if not self._options.enabled:
            return False, None

        token_repo = sdk.get_token_repository(raise_when_none=False)
        if not token_repo:
            return HttpResponse.create_token_repo_not_found_error()

        if not token_repo.has_token():
            return HttpResponse.create_token_not_found_error()

        with self._lock:
            token_type = token_repo.get_token_type()
            refresh_token = token_repo.get_refresh_token()
            refresh_rate: float = self._options.refresh_rate
            is_token_expired: bool = token_repo.has_token_expired(
                multiplier=refresh_rate
            )
            if not is_token_expired:
                return False, None

            number_of_attempts: int = 0
            max_retry: int = self._options.max_retry
            error: Optional[HttpResponse] = None

            while True:
                # noinspection PyBroadException
                try:
                    if token_type == LOGIN_TYPE_CLIENT:
                        _, error = login_client(sdk=sdk, **REFRESH_KWARGS)
                        if not error:
                            return True, None
                    elif token_type in (
                        LOGIN_TYPE_PLATFORM,
                        LOGIN_TYPE_USER,
                        LOGIN_TYPE_REFRESHABLE,
                    ):
                        _, error = try_refresh_login_internal(
                            refresh_rate=refresh_rate, sdk=sdk, **REFRESH_KWARGS
                        )
                        if not error:
                            return True, None
                except Exception as exception:
                    error = HttpResponse.create_error(code=500, error=str(exception))

                number_of_attempts += 1
                if number_of_attempts >= max_retry:
                    break

        if self._on_failure:
            # pylint: disable=not-callable
            self._on_failure(error)

        return False, error

    async def refresh_async(self, sdk: AccelByteSDK) -> TokenRefresherResult:
        if not self._options.enabled:
            return False, None

        token_repo = sdk.get_token_repository(raise_when_none=False)
        if not token_repo:
            return HttpResponse.create_token_repo_not_found_error()

        if not token_repo.has_token():
            return HttpResponse.create_token_not_found_error()

        with self._lock:
            token_type = token_repo.get_token_type()
            refresh_token = token_repo.get_refresh_token()
            refresh_rate: float = self._options.refresh_rate
            is_token_expired: bool = token_repo.has_token_expired(
                multiplier=refresh_rate
            )
            if not is_token_expired:
                return False, None

            number_of_attempts: int = 0
            max_retry: int = self._options.max_retry
            error: Optional[HttpResponse] = None

            while True:
                # noinspection PyBroadException
                try:
                    if token_type == LOGIN_TYPE_CLIENT:
                        _, error = await login_client_async(sdk=sdk, **REFRESH_KWARGS)
                        if not error:
                            return True, None
                    elif token_type in (
                        LOGIN_TYPE_PLATFORM,
                        LOGIN_TYPE_USER,
                        LOGIN_TYPE_REFRESHABLE,
                    ):
                        _, error = await try_refresh_login_async_internal(
                            refresh_rate=refresh_rate,
                            sdk=sdk,
                            **REFRESH_KWARGS,
                        )
                        if not error:
                            return True, None
                except Exception as exception:
                    error = HttpResponse.create_error(code=500, error=str(exception))

                number_of_attempts += 1
                if number_of_attempts >= max_retry:
                    break

        if self._on_failure:
            # pylint: disable=not-callable
            self._on_failure(error)

        return False, error


__all__ = [
    "TokenRefresherBase",
    "TokenRefresher",
    "TokenRefresherOptions",
]
