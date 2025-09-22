# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Dict, Optional

from ...core import (
    SDK,
    AccelByteSDK,
)

from ...api import iam

from ._login_const import (
    DEFAULT_REFRESH_RATE,
    LOGIN_TYPE_PLATFORM,
)

from ._login_refresh import (
    try_refresh_login_internal,
    try_refresh_login_async_internal,
)


def login_platform_internal(
    platform_id: str,
    platform_token: str,
    refresh_if_possible: bool = False,
    refresh_rate: float = DEFAULT_REFRESH_RATE,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    token: Optional[str] = None
    if refresh_if_possible:
        token = try_refresh_login_internal(
            refresh_rate=refresh_rate,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )

    if not token:
        token, error = iam.platform_token_grant_v3(
            platform_id=platform_id,
            platform_token=platform_token,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=LOGIN_TYPE_PLATFORM)
    if error:
        return None, error

    return token, None


async def login_platform_async_internal(
    platform_id: str,
    platform_token: str,
    refresh_if_possible: bool = False,
    refresh_rate: float = DEFAULT_REFRESH_RATE,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    token: Optional[str] = None
    if refresh_if_possible:
        token = await try_refresh_login_async_internal(
            refresh_rate=refresh_rate,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )

    if not token:
        token, error = await iam.platform_token_grant_v3_async(
            platform_id=platform_id,
            platform_token=platform_token,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=LOGIN_TYPE_PLATFORM)
    if error:
        return None, error

    return token, None


__all__ = [
    "login_platform_internal",
    "login_platform_async_internal",
]
