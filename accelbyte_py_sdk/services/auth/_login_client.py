# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Dict, Optional

from ...core import (
    SDK,
    AccelByteSDK,
    HttpResponse,
    create_basic_authentication,
)

from ...api import iam
from ...api.iam.operations import o_auth2_0 as oauth2

from ._login_const import LOGIN_TYPE_CLIENT


def login_client_internal(
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    if not client_id and client_secret:
        return None, HttpResponse.create_error(400, "Invalid client ID.")

    if not client_id:
        client_auth, error = sdk.get_client_auth()
        if error:
            return None, error
        client_id, config_client_secret = client_auth
        if not client_secret:
            client_secret = config_client_secret

    if not client_secret:
        sdk.logger.warning(
            "The use of a Public OAuth Client is highly discouraged for this use case."
        )

    x_additional_headers = x_additional_headers or {}
    x_additional_headers["Authorization"] = create_basic_authentication(
        username=client_id,
        password=client_secret,
    )

    token, error = iam.token_grant_v3(
        grant_type=oauth2.TokenGrantV3GrantTypeEnum.CLIENT_CREDENTIALS,
        x_additional_headers=x_additional_headers,
        sdk=sdk,
        **kwargs,
    )
    if error:
        return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=LOGIN_TYPE_CLIENT)
    if error:
        return None, error

    return token, None


async def login_client_async_internal(
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    sdk: Optional[AccelByteSDK] = None,
    **kwargs,
):
    sdk = sdk or SDK

    if not client_id and client_secret:
        return None, HttpResponse.create_error(400, "Invalid client ID.")

    if not client_id:
        client_auth, error = sdk.get_client_auth()
        if error:
            return None, error
        client_id, config_client_secret = client_auth
        if not client_secret:
            client_secret = config_client_secret

    if not client_secret:
        sdk.logger.warning(
            "The use of a Public OAuth Client is highly discouraged for this use case."
        )

    x_additional_headers = x_additional_headers or {}
    x_additional_headers["Authorization"] = create_basic_authentication(
        username=client_id,
        password=client_secret,
    )

    token, error = await iam.token_grant_v3_async(
        grant_type=oauth2.TokenGrantV3GrantTypeEnum.CLIENT_CREDENTIALS,
        x_additional_headers=x_additional_headers,
        sdk=sdk,
        **kwargs,
    )
    if error:
        return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=LOGIN_TYPE_CLIENT)
    if error:
        return None, error

    return token, None


__all__ = [
    "login_client_internal",
    "login_client_async_internal",
]
