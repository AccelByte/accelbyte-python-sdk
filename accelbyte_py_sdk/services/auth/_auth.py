# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Dict, List, Union

from ...core import get_access_token
from ...core import get_client_id
from ...core import remove_token

from ...core import create_pkce_verifier_and_challenge_s256
from ...core import create_basic_authentication

from ...api.iam import authorize_v3
from ...api.iam import authorize_v3_async
from ...api.iam import user_authentication_v3
from ...api.iam import user_authentication_v3_async
from ...api.iam import token_grant_v3
from ...api.iam import token_grant_v3_async
from ...api.iam import token_revocation_v3
from ...api.iam import token_revocation_v3_async


def login_client(
        client_id: Union[None, str] = None,
        client_secret: Union[None, str] = None,
        x_additional_headers: Union[None, Dict[str, str]] = None
):
    if client_id is not None and client_secret is not None:
        x_additional_headers = x_additional_headers or {}
        x_additional_headers["Authorization"] \
            = create_basic_authentication(client_id, client_secret)
    token, error = token_grant_v3("client_credentials")
    if error:
        return None, error

    return token, None


async def login_client_async(
        client_id: Union[None, str] = None,
        client_secret: Union[None, str] = None,
        x_additional_headers: Union[None, Dict[str, str]] = None
):
    if client_id is not None and client_secret is not None:
        x_additional_headers = x_additional_headers or {}
        x_additional_headers["Authorization"] \
            = create_basic_authentication(client_id, client_secret)
    token, error = await token_grant_v3_async("client_credentials")
    if error:
        return None, error

    return token, None


def login_user(
        username: str,
        password: str,
        scope: Union[None, str, List[str]] = None,
        x_additional_headers: Union[None, Dict[str, str]] = None
):
    code_verifier, code_challenge, code_challenge_method \
        = create_pkce_verifier_and_challenge_s256()

    client_id, error = get_client_id()
    if error:
        return None, error

    if scope is None:
        scope = "commerce account social publishing analytics"
    elif isinstance(scope, List):
        scope = " ".join(scope)

    request_id, error = authorize_v3(
        response_type="code",
        client_id=client_id,
        scope=scope,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    code, error = user_authentication_v3(
        user_name=username,
        password=password,
        request_id=request_id,
        client_id=client_id,
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    token, error = token_grant_v3(
        grant_type="authorization_code",
        code=code,
        code_verifier=code_verifier,
        redirect_uri="",
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    return token, None


async def login_user_async(
        username: str,
        password: str,
        scope: Union[None, str, List[str]] = None,
        x_additional_headers: Union[None, Dict[str, str]] = None
):
    code_verifier, code_challenge, code_challenge_method \
        = create_pkce_verifier_and_challenge_s256()

    client_id, error = get_client_id()
    if error:
        return None, error

    if scope is None:
        scope = "commerce account social publishing analytics"
    elif isinstance(scope, List):
        scope = " ".join(scope)

    request_id, error = await authorize_v3_async(
        response_type="code",
        client_id=client_id,
        scope=scope,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    code, error = await user_authentication_v3_async(
        user_name=username,
        password=password,
        request_id=request_id,
        client_id=client_id,
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    token, error = await token_grant_v3_async(
        grant_type="authorization_code",
        code=code,
        code_verifier=code_verifier,
        redirect_uri="",
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    return token, None


def logout(x_additional_headers: Union[None, Dict[str, str]] = None):
    access_token, error = get_access_token()
    if error:
        return None, error

    _, error = token_revocation_v3(
        token=access_token,
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    _, error = remove_token()
    if error:
        return None, error

    return None, None


async def logout_async(x_additional_headers: Union[None, Dict[str, str]] = None):
    access_token, error = get_access_token()
    if error:
        return None, error

    _, error = await token_revocation_v3_async(
        token=access_token,
        x_additional_headers=x_additional_headers
    )
    if error:
        return None, error

    _, error = remove_token()
    if error:
        return None, error

    return None, None


login = login_user
login_async = login_user_async
