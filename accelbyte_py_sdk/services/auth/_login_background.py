# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from dataclasses import dataclass
from logging import Logger
from typing import Optional, Union

from ...core import (
    SDK,
    AccelByteSDK,
    Timer,
)

from ._login_const import (
    DEFAULT_TIMER_INTERVAL,
    DEFAULT_TIMER_REPEATS,
    DEFAULT_TIMER_REPEAT_ON_EXCEPTION,
    DEFAULT_TIMER_AUTOSTART,
    AUTH_SERVICE_LOGGER,
)

from ._refresher import (
    TokenRefresher,
    TokenRefresherOptions,
)

DEFAULT_BACKGROUND_KEY: str = "background_refresh"


@dataclass
class BackgroundOptions(TokenRefresherOptions):
    interval: int = 10


class BackgroundLogin(Timer):
    def __init__(
        self,
        refresher: TokenRefresher,
        /,
        *,
        interval: Optional[Union[int, float]] = None,
        repeats: Optional[int] = None,
        repeat_on_exception: Optional[bool] = None,
        autostart: Optional[bool] = None,
        sdk: Optional[AccelByteSDK] = None,
        logger: Optional[Logger] = None,
        **kwargs,
    ) -> None:
        interval = interval if interval is not None else DEFAULT_TIMER_INTERVAL
        repeats = repeats if repeats is not None else DEFAULT_TIMER_REPEATS
        repeat_on_exception = (
            repeat_on_exception
            if repeat_on_exception is not None
            else DEFAULT_TIMER_REPEAT_ON_EXCEPTION
        )
        autostart = autostart if autostart is not None else DEFAULT_TIMER_AUTOSTART

        sdk = sdk or SDK
        logger = logger or AUTH_SERVICE_LOGGER

        self.refresher = refresher
        self.sdk = sdk
        self.logger = logger

        super().__init__(
            interval,
            self.run,
            daemon=True,
            repeats=repeats,
            autostart=autostart,
            repeat_on_exception=repeat_on_exception,
            logger=self.logger,
        )

    def run(self):
        self.refresher.refresh(sdk=self.sdk)

    async def run_async(self):
        await self.refresher.refresh_async(sdk=self.sdk)


def enable_background_refresh(
    sdk: AccelByteSDK,
    options: Optional[BackgroundOptions] = None,
    key: str = DEFAULT_BACKGROUND_KEY,
    **kwargs,
) -> None:
    options = options or BackgroundOptions()
    refresher = TokenRefresher(options=options)
    background = BackgroundLogin(
        refresher,
        interval=options.interval,
        repeats=-1,
        repeat_on_exception=True,
        autostart=True,
        sdk=sdk,
    )

    disable_background_refresh(sdk=sdk, key=key, **kwargs)

    setattr(sdk, key, background)


def disable_background_refresh(
    sdk: AccelByteSDK, key: str = DEFAULT_BACKGROUND_KEY, **kwargs
) -> None:
    if existing := getattr(sdk, key, None):
        if existing_cancel := getattr(existing, "cancel", None):
            if callable(existing_cancel):
                existing_cancel()


__all__ = [
    "BackgroundLogin",
    "BackgroundOptions",
    "enable_background_refresh",
    "disable_background_refresh",
]
