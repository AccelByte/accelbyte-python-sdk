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

from ..models import OauthapiRevocationList
from ..models import OauthcommonJWKSet
from ..models import OauthmodelErrorResponse
from ..models import OauthmodelTokenIntrospectResponse
from ..models import OauthmodelTokenResponse
from ..models import OauthmodelTokenResponseV3
from ..models import OauthmodelTokenThirdPartyResponse
from ..models import OauthmodelTokenWithDeviceCookieResponseV3
from ..models import RestErrorResponse

from ..operations.o_auth2_0 import AdminRetrieveUserThirdPartyPlatformTokenV3
from ..operations.o_auth2_0 import AuthCodeRequestV3
from ..operations.o_auth2_0 import AuthorizeV3
from ..operations.o_auth2_0 import (
    AuthorizeV3CodeChallengeMethodEnum,
    AuthorizeV3ResponseTypeEnum,
)
from ..operations.o_auth2_0 import Change2faMethod
from ..operations.o_auth2_0 import GetJWKSV3
from ..operations.o_auth2_0 import GetRevocationListV3
from ..operations.o_auth2_0 import PlatformTokenGrantV3
from ..operations.o_auth2_0 import RetrieveUserThirdPartyPlatformTokenV3
from ..operations.o_auth2_0 import RevokeUserV3
from ..operations.o_auth2_0 import TokenGrantV3
from ..operations.o_auth2_0 import TokenGrantV3GrantTypeEnum
from ..operations.o_auth2_0 import TokenIntrospectionV3
from ..operations.o_auth2_0 import TokenRevocationV3
from ..operations.o_auth2_0 import Verify2faCode
from ..operations.o_auth2_0 import VerifyTokenV3


@same_doc_as(AdminRetrieveUserThirdPartyPlatformTokenV3)
def admin_retrieve_user_third_party_platform_token_v3(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminRetrieveUserThirdPartyPlatformTokenV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRetrieveUserThirdPartyPlatformTokenV3)
async def admin_retrieve_user_third_party_platform_token_v3_async(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminRetrieveUserThirdPartyPlatformTokenV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AuthCodeRequestV3)
def auth_code_request_v3(
    platform_id: str,
    request_id: str,
    client_id: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AuthCodeRequestV3.create(
        platform_id=platform_id,
        request_id=request_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AuthCodeRequestV3)
async def auth_code_request_v3_async(
    platform_id: str,
    request_id: str,
    client_id: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AuthCodeRequestV3.create(
        platform_id=platform_id,
        request_id=request_id,
        client_id=client_id,
        redirect_uri=redirect_uri,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AuthorizeV3)
def authorize_v3(
    client_id: str,
    response_type: Union[str, AuthorizeV3ResponseTypeEnum],
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, AuthorizeV3CodeChallengeMethodEnum]
    ] = None,
    create_headless: Optional[bool] = None,
    redirect_uri: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    target_auth_page: Optional[str] = None,
    use_redirect_uri_as_login_url_when_locked: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AuthorizeV3.create(
        client_id=client_id,
        response_type=response_type,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        create_headless=create_headless,
        redirect_uri=redirect_uri,
        scope=scope,
        state=state,
        target_auth_page=target_auth_page,
        use_redirect_uri_as_login_url_when_locked=use_redirect_uri_as_login_url_when_locked,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AuthorizeV3)
async def authorize_v3_async(
    client_id: str,
    response_type: Union[str, AuthorizeV3ResponseTypeEnum],
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, AuthorizeV3CodeChallengeMethodEnum]
    ] = None,
    create_headless: Optional[bool] = None,
    redirect_uri: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    target_auth_page: Optional[str] = None,
    use_redirect_uri_as_login_url_when_locked: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AuthorizeV3.create(
        client_id=client_id,
        response_type=response_type,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        create_headless=create_headless,
        redirect_uri=redirect_uri,
        scope=scope,
        state=state,
        target_auth_page=target_auth_page,
        use_redirect_uri_as_login_url_when_locked=use_redirect_uri_as_login_url_when_locked,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Change2faMethod)
def change2fa_method(
    factor: str,
    mfa_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = Change2faMethod.create(
        factor=factor,
        mfa_token=mfa_token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Change2faMethod)
async def change2fa_method_async(
    factor: str,
    mfa_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = Change2faMethod.create(
        factor=factor,
        mfa_token=mfa_token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetJWKSV3)
def get_jwksv3(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    request = GetJWKSV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetJWKSV3)
async def get_jwksv3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetJWKSV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetRevocationListV3)
def get_revocation_list_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRevocationListV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetRevocationListV3)
async def get_revocation_list_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRevocationListV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PlatformTokenGrantV3)
def platform_token_grant_v3(
    platform_id: str,
    client_id: Optional[str] = None,
    create_headless: Optional[bool] = None,
    device_id: Optional[str] = None,
    mac_address: Optional[str] = None,
    platform_token: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PlatformTokenGrantV3.create(
        platform_id=platform_id,
        client_id=client_id,
        create_headless=create_headless,
        device_id=device_id,
        mac_address=mac_address,
        platform_token=platform_token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PlatformTokenGrantV3)
async def platform_token_grant_v3_async(
    platform_id: str,
    client_id: Optional[str] = None,
    create_headless: Optional[bool] = None,
    device_id: Optional[str] = None,
    mac_address: Optional[str] = None,
    platform_token: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PlatformTokenGrantV3.create(
        platform_id=platform_id,
        client_id=client_id,
        create_headless=create_headless,
        device_id=device_id,
        mac_address=mac_address,
        platform_token=platform_token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RetrieveUserThirdPartyPlatformTokenV3)
def retrieve_user_third_party_platform_token_v3(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveUserThirdPartyPlatformTokenV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RetrieveUserThirdPartyPlatformTokenV3)
async def retrieve_user_third_party_platform_token_v3_async(
    platform_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RetrieveUserThirdPartyPlatformTokenV3.create(
        platform_id=platform_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RevokeUserV3)
def revoke_user_v3(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RevokeUserV3)
async def revoke_user_v3_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RevokeUserV3.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TokenGrantV3)
def token_grant_v3(
    grant_type: Union[str, TokenGrantV3GrantTypeEnum],
    auth_trust_id: Optional[Union[str, HeaderStr]] = None,
    client_id: Optional[str] = None,
    code: Optional[str] = None,
    code_verifier: Optional[str] = None,
    device_id: Optional[Union[str, HeaderStr]] = None,
    extend_exp: Optional[bool] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    username: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TokenGrantV3.create(
        grant_type=grant_type,
        auth_trust_id=auth_trust_id,
        client_id=client_id,
        code=code,
        code_verifier=code_verifier,
        device_id=device_id,
        extend_exp=extend_exp,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        username=username,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TokenGrantV3)
async def token_grant_v3_async(
    grant_type: Union[str, TokenGrantV3GrantTypeEnum],
    auth_trust_id: Optional[Union[str, HeaderStr]] = None,
    client_id: Optional[str] = None,
    code: Optional[str] = None,
    code_verifier: Optional[str] = None,
    device_id: Optional[Union[str, HeaderStr]] = None,
    extend_exp: Optional[bool] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    username: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = TokenGrantV3.create(
        grant_type=grant_type,
        auth_trust_id=auth_trust_id,
        client_id=client_id,
        code=code,
        code_verifier=code_verifier,
        device_id=device_id,
        extend_exp=extend_exp,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        username=username,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TokenIntrospectionV3)
def token_introspection_v3(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TokenIntrospectionV3.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TokenIntrospectionV3)
async def token_introspection_v3_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TokenIntrospectionV3.create(
        token=token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TokenRevocationV3)
def token_revocation_v3(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TokenRevocationV3.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TokenRevocationV3)
async def token_revocation_v3_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = TokenRevocationV3.create(
        token=token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Verify2faCode)
def verify2fa_code(
    code: str,
    factor: str,
    mfa_token: str,
    remember_device: bool,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = Verify2faCode.create(
        code=code,
        factor=factor,
        mfa_token=mfa_token,
        remember_device=remember_device,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Verify2faCode)
async def verify2fa_code_async(
    code: str,
    factor: str,
    mfa_token: str,
    remember_device: bool,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = Verify2faCode.create(
        code=code,
        factor=factor,
        mfa_token=mfa_token,
        remember_device=remember_device,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(VerifyTokenV3)
def verify_token_v3(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = VerifyTokenV3.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(VerifyTokenV3)
async def verify_token_v3_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = VerifyTokenV3.create(
        token=token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
