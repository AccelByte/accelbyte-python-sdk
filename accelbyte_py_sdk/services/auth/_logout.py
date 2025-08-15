# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Dict, Optional

from ...core import (
    SDK,
    AccelByteSDK,
    create_basic_authentication,
)

from ...api import iam


def logout_internal(
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    access_token, error = sdk.get_access_token()
    if error:
        return None, error

    client_auth, error = sdk.get_client_auth()
    if error:
        return None, error

    x_additional_headers = x_additional_headers or {}
    x_additional_headers["Authorization"] = create_basic_authentication(*client_auth)

    _, error = iam.token_revocation_v3(
        token=access_token,
        x_additional_headers=x_additional_headers,
        sdk=sdk,
        **kwargs,
    )
    if error:
        return None, error

    _, error = sdk.remove_token()
    if error:
        return None, error

    return None, None


async def logout_async_internal(
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    access_token, error = sdk.get_access_token()
    if error:
        return None, error

    client_auth, error = sdk.get_client_auth()
    if error:
        return None, error

    x_additional_headers = x_additional_headers or {}
    x_additional_headers["Authorization"] = create_basic_authentication(*client_auth)

    _, error = await iam.token_revocation_v3_async(
        token=access_token,
        x_additional_headers=x_additional_headers,
        sdk=sdk,
        **kwargs,
    )
    if error:
        return None, error

    _, error = sdk.remove_token()
    if error:
        return None, error

    return None, None


__all__ = [
    "logout_internal",
    "logout_async_internal",
]
