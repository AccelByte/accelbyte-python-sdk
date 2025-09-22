# Copyright (c) 2025 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Dict, List, Optional, Union

from ...core import (
    SDK,
    AccelByteSDK,
    create_pkce_verifier_and_challenge_s256,
)

from ...api import iam
from ...api.iam.operations import o_auth2_0 as oauth2

from ._login_const import (
    DEFAULT_SCOPE,
    DEFAULT_REFRESH_RATE,
    LOGIN_TYPE_USER,
)

from ._login_refresh import (
    try_refresh_login_internal,
    try_refresh_login_async_internal,
)


def login_user_internal(
    username: str,
    password: str,
    scope: Optional[Union[str, List[str]]] = None,
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
        (
            code_verifier,
            code_challenge,
            code_challenge_method,
        ) = create_pkce_verifier_and_challenge_s256()

        if scope is None:
            scope = DEFAULT_SCOPE
        if isinstance(scope, list):
            scope = " ".join(scope)

        client_id, error = sdk.get_client_id()
        if error:
            return None, error

        authorization_request_id, error = iam.authorize_v3(
            client_id=client_id,
            response_type=oauth2.AuthorizeV3ResponseTypeEnum.CODE,
            code_challenge=code_challenge,
            code_challenge_method=code_challenge_method,
            scope=scope,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

        authorization_code, error = iam.user_authentication_v3(
            user_name=username,
            password=password,
            request_id=authorization_request_id,
            client_id=client_id,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

        token, error = iam.token_grant_v3(
            grant_type=oauth2.TokenGrantV3GrantTypeEnum.AUTHORIZATION_CODE,
            code=authorization_code,
            code_verifier=code_verifier,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=LOGIN_TYPE_USER)
    if error:
        return None, error

    return token, None


async def login_user_async_internal(
    username: str,
    password: str,
    scope: Optional[Union[str, List[str]]] = None,
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
        (
            code_verifier,
            code_challenge,
            code_challenge_method,
        ) = create_pkce_verifier_and_challenge_s256()

        if scope is None:
            scope = DEFAULT_SCOPE
        if isinstance(scope, list):
            scope = " ".join(scope)

        client_id, error = sdk.get_client_id()
        if error:
            return None, error

        authorization_request_id, error = await iam.authorize_v3_async(
            client_id=client_id,
            response_type=oauth2.AuthorizeV3ResponseTypeEnum.CODE,
            code_challenge=code_challenge,
            code_challenge_method=code_challenge_method,
            scope=scope,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

        authorization_code, error = await iam.user_authentication_v3_async(
            user_name=username,
            password=password,
            request_id=authorization_request_id,
            client_id=client_id,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

        token, error = await iam.token_grant_v3_async(
            grant_type=oauth2.TokenGrantV3GrantTypeEnum.AUTHORIZATION_CODE,
            code=authorization_code,
            code_verifier=code_verifier,
            x_additional_headers=x_additional_headers,
            sdk=sdk,
            **kwargs,
        )
        if error:
            return None, error

    assert token, "Token value missing!"

    _, error = sdk.set_token(token=token, type=LOGIN_TYPE_USER)
    if error:
        return None, error

    return token, None


__all__ = [
    "login_user_internal",
    "login_user_async_internal",
]
