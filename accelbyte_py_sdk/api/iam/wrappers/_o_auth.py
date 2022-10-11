# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import deprecated
from ....core import same_doc_as

from ..models import OauthapiRevocationList
from ..models import OauthcommonJWKSet
from ..models import OauthmodelErrorResponse
from ..models import OauthmodelTokenResponse

from ..operations.o_auth import Authorization
from ..operations.o_auth import AuthorizationResponseTypeEnum
from ..operations.o_auth import GetJWKS
from ..operations.o_auth import GetRevocationList
from ..operations.o_auth import PlatformTokenRequestHandler
from ..operations.o_auth import RevokeAUser
from ..operations.o_auth import RevokeToken
from ..operations.o_auth import RevokeUser
from ..operations.o_auth import TokenGrant
from ..operations.o_auth import TokenGrantGrantTypeEnum
from ..operations.o_auth import VerifyToken


@deprecated
@same_doc_as(Authorization)
def authorization(
    client_id: str,
    redirect_uri: str,
    response_type: Union[str, AuthorizationResponseTypeEnum],
    login: Optional[str] = None,
    password: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = Authorization.create(
        client_id=client_id,
        redirect_uri=redirect_uri,
        response_type=response_type,
        login=login,
        password=password,
        scope=scope,
        state=state,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(Authorization)
async def authorization_async(
    client_id: str,
    redirect_uri: str,
    response_type: Union[str, AuthorizationResponseTypeEnum],
    login: Optional[str] = None,
    password: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = Authorization.create(
        client_id=client_id,
        redirect_uri=redirect_uri,
        response_type=response_type,
        login=login,
        password=password,
        scope=scope,
        state=state,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetJWKS)
def get_jwks(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    request = GetJWKS.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetJWKS)
async def get_jwks_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetJWKS.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRevocationList)
def get_revocation_list(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRevocationList.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRevocationList)
async def get_revocation_list_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRevocationList.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PlatformTokenRequestHandler)
def platform_token_request_handler(
    platform_id: str,
    device_id: Optional[str] = None,
    mac_address: Optional[str] = None,
    platform_token: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PlatformTokenRequestHandler.create(
        platform_id=platform_id,
        device_id=device_id,
        mac_address=mac_address,
        platform_token=platform_token,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PlatformTokenRequestHandler)
async def platform_token_request_handler_async(
    platform_id: str,
    device_id: Optional[str] = None,
    mac_address: Optional[str] = None,
    platform_token: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PlatformTokenRequestHandler.create(
        platform_id=platform_id,
        device_id=device_id,
        mac_address=mac_address,
        platform_token=platform_token,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RevokeAUser)
def revoke_a_user(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RevokeAUser.create(
        user_id=user_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RevokeAUser)
async def revoke_a_user_async(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RevokeAUser.create(
        user_id=user_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RevokeToken)
def revoke_token(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RevokeToken.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RevokeToken)
async def revoke_token_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RevokeToken.create(
        token=token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RevokeUser)
def revoke_user(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RevokeUser)
async def revoke_user_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUser.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(TokenGrant)
def token_grant(
    grant_type: Union[str, TokenGrantGrantTypeEnum],
    code: Optional[str] = None,
    device_id: Optional[Union[str, HeaderStr]] = None,
    extend_exp: Optional[bool] = None,
    namespace: Optional[str] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    username: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TokenGrant.create(
        grant_type=grant_type,
        code=code,
        device_id=device_id,
        extend_exp=extend_exp,
        namespace=namespace,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        username=username,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(TokenGrant)
async def token_grant_async(
    grant_type: Union[str, TokenGrantGrantTypeEnum],
    code: Optional[str] = None,
    device_id: Optional[Union[str, HeaderStr]] = None,
    extend_exp: Optional[bool] = None,
    namespace: Optional[str] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    username: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TokenGrant.create(
        grant_type=grant_type,
        code=code,
        device_id=device_id,
        extend_exp=extend_exp,
        namespace=namespace,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        username=username,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(VerifyToken)
def verify_token(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = VerifyToken.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(VerifyToken)
async def verify_token_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = VerifyToken.create(
        token=token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
