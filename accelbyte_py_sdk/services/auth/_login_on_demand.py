# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from dataclasses import dataclass
from typing import Optional, Tuple

from ...core import (
    SDK,
    AccelByteSDK,
    HttpResponse,
    Operation,
    ProtoHttpRequest,
    RequestPreprocessor,
)

from ._refresher import (
    TokenRefresher,
    TokenRefresherOptions,
)

DEFAULT_ON_DEMAND_KEY: str = "on_demand_refresh"


@dataclass
class OnDemandOptions(TokenRefresherOptions):
    pass


class OnDemandLogin:
    def __init__(
        self,
        refresher: TokenRefresher,
        /,
        sdk: Optional[AccelByteSDK] = None,
        **kwargs,
    ) -> None:
        sdk = sdk or SDK

        self.refresher = refresher
        self.sdk = sdk

    def __call__(
        self,
        proto: ProtoHttpRequest,
        operation: Operation,
        sdk: AccelByteSDK,
        *args,
        **kwargs,
    ) -> Tuple[ProtoHttpRequest, Optional[HttpResponse]]:
        token_repo = sdk.get_token_repository(raise_when_none=False)
        if token_repo is None:
            return proto, HttpResponse.create_token_repo_not_found_error()

        self.run()

        return proto, None

    def run(self):
        self.refresher.refresh(sdk=self.sdk)


assert issubclass(OnDemandLogin, RequestPreprocessor)


def enable_on_demand_refresh(
    sdk: AccelByteSDK,
    options: Optional[OnDemandOptions] = None,
    key: str = DEFAULT_ON_DEMAND_KEY,
    **kwargs,
) -> None:
    options = options or OnDemandOptions()
    refresher = TokenRefresher(options=options)
    on_demand = OnDemandLogin(refresher, sdk=sdk)

    disable_on_demand_refresh(sdk=sdk, key=key, **kwargs)

    sdk.request_preprocessors[key] = on_demand


def disable_on_demand_refresh(
    sdk: AccelByteSDK, key: str = DEFAULT_ON_DEMAND_KEY, **kwargs
) -> None:
    sdk.request_preprocessors.pop(key, None)


__all__ = [
    "OnDemandLogin",
    "OnDemandOptions",
    "enable_on_demand_refresh",
    "disable_on_demand_refresh",
]
