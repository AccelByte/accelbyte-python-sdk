# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Any, Dict, Optional

from ...core import (
    SDK,
    AccelByteSDK,
)

from ...api import iam
from ...api.iam.operations import o_auth2_0 as oauth2

from ._login_const import DEFAULT_REFRESH_RATE


def login_refresh_internal(
    refresh_token: str,
    token_type: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    token, error = iam.token_grant_v3(
        grant_type=oauth2.TokenGrantV3GrantTypeEnum.REFRESH_TOKEN,
        refresh_token=refresh_token,
        x_additional_headers=x_additional_headers,
        sdk=sdk,
        **kwargs,
    )
    if error:
        return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=token_type)
    if error:
        return None, error

    return token, None


async def login_refresh_async_internal(
    refresh_token: str,
    token_type: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    token, error = await iam.token_grant_v3_async(
        grant_type=oauth2.TokenGrantV3GrantTypeEnum.REFRESH_TOKEN,
        refresh_token=refresh_token,
        x_additional_headers=x_additional_headers,
        sdk=sdk,
        **kwargs,
    )
    if error:
        return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=token_type)
    if error:
        return None, error

    return token, None


def try_refresh_login_internal(
    refresh_rate: float = DEFAULT_REFRESH_RATE,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    token_repo = sdk.get_token_repository(raise_when_none=False)
    if token_repo is None:
        return None

    if token_repo.has_token_expired(multiplier=refresh_rate):
        refresh_token = token_repo.get_refresh_token()
        if not refresh_token:
            return None

        new_token, error = login_refresh_internal(
            refresh_token=refresh_token,
            token_type=token_repo.get_token_type(),
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None
        assert new_token, "Token value missing!"
        return new_token
    else:
        token = token_repo.get_token()


async def try_refresh_login_async_internal(
    refresh_rate: float = DEFAULT_REFRESH_RATE,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    token_repo = sdk.get_token_repository(raise_when_none=False)
    if token_repo is None:
        return None

    if token_repo.has_token_expired(multiplier=refresh_rate):
        refresh_token = token_repo.get_refresh_token()
        if not refresh_token:
            return None

        new_token, error = await login_refresh_async_internal(
            refresh_token=refresh_token,
            token_type=token_repo.get_token_type(),
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None
        assert new_token, "Token value missing!"
        return new_token
    else:
        return None


__all__ = [
    "login_refresh_internal",
    "login_refresh_async_internal",
    "try_refresh_login_internal",
    "try_refresh_login_async_internal",
]
