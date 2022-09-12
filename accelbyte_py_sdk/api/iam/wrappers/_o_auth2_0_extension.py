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
from ....core import same_doc_as

from ..models import OauthmodelCountryLocationResponse
from ..models import OauthmodelErrorResponse
from ..models import OauthmodelGameTokenCodeResponse
from ..models import OauthmodelTokenResponseV3
from ..models import RestErrorResponse

from ..operations.o_auth2_0_extension import AuthenticationWithPlatformLinkV3
from ..operations.o_auth2_0_extension import GenerateTokenByNewHeadlessAccountV3
from ..operations.o_auth2_0_extension import GetCountryLocationV3
from ..operations.o_auth2_0_extension import Logout
from ..operations.o_auth2_0_extension import PlatformAuthenticationV3
from ..operations.o_auth2_0_extension import RequestGameTokenCodeResponseV3
from ..operations.o_auth2_0_extension import RequestGameTokenResponseV3
from ..operations.o_auth2_0_extension import UserAuthenticationV3


@same_doc_as(AuthenticationWithPlatformLinkV3)
def authentication_with_platform_link_v3(
    client_id: str,
    linking_token: str,
    password: str,
    username: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AuthenticationWithPlatformLinkV3.create(
        client_id=client_id,
        linking_token=linking_token,
        password=password,
        username=username,
        extend_exp=extend_exp,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AuthenticationWithPlatformLinkV3)
async def authentication_with_platform_link_v3_async(
    client_id: str,
    linking_token: str,
    password: str,
    username: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AuthenticationWithPlatformLinkV3.create(
        client_id=client_id,
        linking_token=linking_token,
        password=password,
        username=username,
        extend_exp=extend_exp,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GenerateTokenByNewHeadlessAccountV3)
def generate_token_by_new_headless_account_v3(
    linking_token: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = GenerateTokenByNewHeadlessAccountV3.create(
        linking_token=linking_token,
        extend_exp=extend_exp,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GenerateTokenByNewHeadlessAccountV3)
async def generate_token_by_new_headless_account_v3_async(
    linking_token: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = GenerateTokenByNewHeadlessAccountV3.create(
        linking_token=linking_token,
        extend_exp=extend_exp,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCountryLocationV3)
def get_country_location_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetCountryLocationV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCountryLocationV3)
async def get_country_location_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetCountryLocationV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Logout)
def logout(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    request = Logout.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Logout)
async def logout_async(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    request = Logout.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PlatformAuthenticationV3)
def platform_authentication_v3(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    error: Optional[str] = None,
    openid_assoc_handle: Optional[str] = None,
    openid_claimed_id: Optional[str] = None,
    openid_identity: Optional[str] = None,
    openid_mode: Optional[str] = None,
    openid_ns: Optional[str] = None,
    openid_op_endpoint: Optional[str] = None,
    openid_response_nonce: Optional[str] = None,
    openid_return_to: Optional[str] = None,
    openid_sig: Optional[str] = None,
    openid_signed: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PlatformAuthenticationV3.create(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
        openid_assoc_handle=openid_assoc_handle,
        openid_claimed_id=openid_claimed_id,
        openid_identity=openid_identity,
        openid_mode=openid_mode,
        openid_ns=openid_ns,
        openid_op_endpoint=openid_op_endpoint,
        openid_response_nonce=openid_response_nonce,
        openid_return_to=openid_return_to,
        openid_sig=openid_sig,
        openid_signed=openid_signed,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PlatformAuthenticationV3)
async def platform_authentication_v3_async(
    platform_id: str,
    state: str,
    code: Optional[str] = None,
    error: Optional[str] = None,
    openid_assoc_handle: Optional[str] = None,
    openid_claimed_id: Optional[str] = None,
    openid_identity: Optional[str] = None,
    openid_mode: Optional[str] = None,
    openid_ns: Optional[str] = None,
    openid_op_endpoint: Optional[str] = None,
    openid_response_nonce: Optional[str] = None,
    openid_return_to: Optional[str] = None,
    openid_sig: Optional[str] = None,
    openid_signed: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PlatformAuthenticationV3.create(
        platform_id=platform_id,
        state=state,
        code=code,
        error=error,
        openid_assoc_handle=openid_assoc_handle,
        openid_claimed_id=openid_claimed_id,
        openid_identity=openid_identity,
        openid_mode=openid_mode,
        openid_ns=openid_ns,
        openid_op_endpoint=openid_op_endpoint,
        openid_response_nonce=openid_response_nonce,
        openid_return_to=openid_return_to,
        openid_sig=openid_sig,
        openid_signed=openid_signed,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestGameTokenCodeResponseV3)
def request_game_token_code_response_v3(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RequestGameTokenCodeResponseV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestGameTokenCodeResponseV3)
async def request_game_token_code_response_v3_async(
    client_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RequestGameTokenCodeResponseV3.create(
        client_id=client_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestGameTokenResponseV3)
def request_game_token_response_v3(
    code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RequestGameTokenResponseV3.create(
        code=code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestGameTokenResponseV3)
async def request_game_token_response_v3_async(
    code: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RequestGameTokenResponseV3.create(
        code=code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UserAuthenticationV3)
def user_authentication_v3(
    password: str,
    request_id: str,
    user_name: str,
    client_id: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    redirect_uri: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UserAuthenticationV3.create(
        password=password,
        request_id=request_id,
        user_name=user_name,
        client_id=client_id,
        extend_exp=extend_exp,
        redirect_uri=redirect_uri,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UserAuthenticationV3)
async def user_authentication_v3_async(
    password: str,
    request_id: str,
    user_name: str,
    client_id: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    redirect_uri: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UserAuthenticationV3.create(
        password=password,
        request_id=request_id,
        user_name=user_name,
        client_id=client_id,
        extend_exp=extend_exp,
        redirect_uri=redirect_uri,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
