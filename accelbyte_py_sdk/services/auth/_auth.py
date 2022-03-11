# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

from typing import Any, Dict, List, Union

import jwt

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


def convert_bearer_auth_token_to_oauth_token_dict(
        bearer_auth_token: str,
        jwt_decode_options: Union[None, dict] = None,
        patch_permission_keys: Union[None, bool, Dict[str, str]] = None,
) -> Union[None, Dict[str, Any]]:
    jwt_decode_options = jwt_decode_options if jwt_decode_options is not None else {"verify_signature": False}
    patch_permission_keys = patch_permission_keys if patch_permission_keys is not None else True
    if isinstance(patch_permission_keys, bool) and patch_permission_keys:
        patch_permission_keys = {
            "Action": "action",
            "Resource": "resource"
        }

    # the permission keys in the JSON web token is different from the keys defined in the schema
    def patch_jwt_permission_keys(jwt_: dict, ppk_: Dict[str, str]):
        permissions = jwt_.get("permissions")
        if permissions:
            for permission in permissions:
                for k, v in ppk_.items():
                    if k in permission:
                        permission[v] = permission[k]
                        del permission[k]

    try:
        json_web_token = jwt.decode(bearer_auth_token, options=jwt_decode_options)
        if patch_permission_keys is not None and isinstance(patch_permission_keys, dict):
            patch_jwt_permission_keys(jwt_=json_web_token, ppk_=patch_permission_keys)
        return json_web_token
    except ValueError as e:
        return None


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
