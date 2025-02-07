# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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
from ..models import OauthmodelOneTimeLinkingCodeResponse
from ..models import OauthmodelOneTimeLinkingCodeValidationResponse
from ..models import OauthmodelPlatformTokenRefreshResponseV3
from ..models import OauthmodelTargetTokenCodeResponse
from ..models import OauthmodelTokenResponseV3
from ..models import RestErrorResponse

from ..operations.o_auth2_0_extension import AuthenticateAndLinkForwardV3
from ..operations.o_auth2_0_extension import AuthenticationWithPlatformLinkV3
from ..operations.o_auth2_0_extension import GenerateTokenByNewHeadlessAccountV3
from ..operations.o_auth2_0_extension import GetCountryLocationV3
from ..operations.o_auth2_0_extension import Logout
from ..operations.o_auth2_0_extension import PlatformAuthenticationV3
from ..operations.o_auth2_0_extension import PlatformTokenRefreshV3
from ..operations.o_auth2_0_extension import RequestOneTimeLinkingCodeV3
from ..operations.o_auth2_0_extension import RequestTargetTokenResponseV3
from ..operations.o_auth2_0_extension import RequestTokenByOneTimeLinkCodeResponseV3
from ..operations.o_auth2_0_extension import RequestTokenExchangeCodeV3
from ..operations.o_auth2_0_extension import (
    RequestTokenExchangeCodeV3CodeChallengeMethodEnum,
)
from ..operations.o_auth2_0_extension import UpgradeAndAuthenticateForwardV3
from ..operations.o_auth2_0_extension import UserAuthenticationV3
from ..operations.o_auth2_0_extension import ValidateOneTimeLinkingCodeV3


@same_doc_as(AuthenticateAndLinkForwardV3)
def authenticate_and_link_forward_v3(
    client_id: str,
    linking_token: str,
    password: str,
    username: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Authentication with platform link, the response will be a forward (AuthenticateAndLinkForwardV3)

    This endpoint is being used to authenticate a user account and perform platform link.
    It validates user's email / username and password.
    If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Properties:
        url: /iam/v3/authenticateWithLink/forward

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        client_id: (client_id) REQUIRED str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        password: (password) REQUIRED str in form_data

        username: (username) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)
    """
    request = AuthenticateAndLinkForwardV3.create(
        client_id=client_id,
        linking_token=linking_token,
        password=password,
        username=username,
        extend_exp=extend_exp,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AuthenticateAndLinkForwardV3)
async def authenticate_and_link_forward_v3_async(
    client_id: str,
    linking_token: str,
    password: str,
    username: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Authentication with platform link, the response will be a forward (AuthenticateAndLinkForwardV3)

    This endpoint is being used to authenticate a user account and perform platform link.
    It validates user's email / username and password.
    If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Properties:
        url: /iam/v3/authenticateWithLink/forward

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        client_id: (client_id) REQUIRED str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        password: (password) REQUIRED str in form_data

        username: (username) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with code or redirect to login web with error on the query parameter)
    """
    request = AuthenticateAndLinkForwardV3.create(
        client_id=client_id,
        linking_token=linking_token,
        password=password,
        username=username,
        extend_exp=extend_exp,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


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
    """Authentication with platform link (AuthenticationWithPlatformLinkV3)

    This endpoint is being used to authenticate a user account and perform platform link.
    It validates user's email / username and password.
    If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Properties:
        url: /iam/v3/authenticateWithLink

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        client_id: (client_id) REQUIRED str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        password: (password) REQUIRED str in form_data

        username: (username) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to authenticate and link platform account.)

        400: Bad Request - RestErrorResponse (Invalid username or password.)

        401: Unauthorized - OauthmodelErrorResponse (Need 2FA.)

        403: Forbidden - RestErrorResponse (10213: country is blocked)

        409: Conflict - RestErrorResponse (User already link this platform's another account'.)
    """
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
    """Authentication with platform link (AuthenticationWithPlatformLinkV3)

    This endpoint is being used to authenticate a user account and perform platform link.
    It validates user's email / username and password.
    If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Properties:
        url: /iam/v3/authenticateWithLink

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        client_id: (client_id) REQUIRED str in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

        password: (password) REQUIRED str in form_data

        username: (username) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to authenticate and link platform account.)

        400: Bad Request - RestErrorResponse (Invalid username or password.)

        401: Unauthorized - OauthmodelErrorResponse (Need 2FA.)

        403: Forbidden - RestErrorResponse (10213: country is blocked)

        409: Conflict - RestErrorResponse (User already link this platform's another account'.)
    """
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
    additional_data: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create headless account and response token (GenerateTokenByNewHeadlessAccountV3)

    This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
    The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
    when 3rd platform account is not linked to justice account yet.

    Properties:
        url: /iam/v3/headless/token

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to create headless account and response token info.)

        400: Bad Request - RestErrorResponse (Invalid platform linking token or clientID not match.)

        401: Unauthorized - RestErrorResponse (10213: country is blocked)

        404: Not Found - RestErrorResponse (Platform linking token not found.)
    """
    request = GenerateTokenByNewHeadlessAccountV3.create(
        linking_token=linking_token,
        additional_data=additional_data,
        extend_exp=extend_exp,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GenerateTokenByNewHeadlessAccountV3)
async def generate_token_by_new_headless_account_v3_async(
    linking_token: str,
    additional_data: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create headless account and response token (GenerateTokenByNewHeadlessAccountV3)

    This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
    The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
    when 3rd platform account is not linked to justice account yet.

    Properties:
        url: /iam/v3/headless/token

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to create headless account and response token info.)

        400: Bad Request - RestErrorResponse (Invalid platform linking token or clientID not match.)

        401: Unauthorized - RestErrorResponse (10213: country is blocked)

        404: Not Found - RestErrorResponse (Platform linking token not found.)
    """
    request = GenerateTokenByNewHeadlessAccountV3.create(
        linking_token=linking_token,
        additional_data=additional_data,
        extend_exp=extend_exp,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetCountryLocationV3)
def get_country_location_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Country Location (GetCountryLocationV3)

    This endpoint get country location based on the request.

    Properties:
        url: /iam/v3/location/country

        method: GET

        tags: ["OAuth2.0 - Extension"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - OauthmodelCountryLocationResponse (Country Location info returned)
    """
    request = GetCountryLocationV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetCountryLocationV3)
async def get_country_location_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Country Location (GetCountryLocationV3)

    This endpoint get country location based on the request.

    Properties:
        url: /iam/v3/location/country

        method: GET

        tags: ["OAuth2.0 - Extension"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - OauthmodelCountryLocationResponse (Country Location info returned)
    """
    request = GetCountryLocationV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Logout)
def logout(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Logout (Logout)

    This endpoint is used to remove **access_token**, **refresh_token** from cookie.

    Properties:
        url: /iam/v3/logout

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (Logout successfully)
    """
    request = Logout.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Logout)
async def logout_async(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Logout (Logout)

    This endpoint is used to remove **access_token**, **refresh_token** from cookie.

    Properties:
        url: /iam/v3/logout

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        204: No Content - (Logout successfully)
    """
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
    """Platform Authentication API (PlatformAuthenticationV3)

    This endpoint authenticates user platform. It validates user to its
    respective platforms. Deactivated or login-banned users are unable to login.
    If already linked with justice account or match SSO condition, will redirect to client's redirect url with code. then invoke '/iam/v3/oauth/token' with grant_type=authorization_code
    If already not linked with justice account and not match SSO condition, will redirect to client's account linking page
    ## Supported platforms:
    - **steamopenid**Steam login page will redirects to this endpoint after login success
    as previously defined on openID request parameter `openid.return_to` when request login to steam
    https://openid.net/specs/openid-authentication-2_0.html#anchor27
    - **ps4web**PS4 login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    https://ps4.siedev.net/resources/documents/WebAPI/1/Auth_WebAPI-Reference/0002.html#0GetAccessTokenUsingAuthorizationCode
    - **xblweb**XBL login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **epicgames**Epicgames login page will redirects to this endpoint after login success
    or an error occurred. If error, it redirects to the login page.
    - **twitch**Twitch login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **facebook**Facebook login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **google**Google login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **snapchat**Snapchat login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **discord**Discord login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    action code : 10709

    Properties:
        url: /iam/v3/platforms/{platformId}/authenticate

        method: GET

        tags: ["OAuth2.0 - Extension"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        platform_id: (platformId) REQUIRED str in path

        code: (code) OPTIONAL str in query

        error: (error) OPTIONAL str in query

        openid_assoc_handle: (openid.assoc_handle) OPTIONAL str in query

        openid_claimed_id: (openid.claimed_id) OPTIONAL str in query

        openid_identity: (openid.identity) OPTIONAL str in query

        openid_mode: (openid.mode) OPTIONAL str in query

        openid_ns: (openid.ns) OPTIONAL str in query

        openid_op_endpoint: (openid.op_endpoint) OPTIONAL str in query

        openid_response_nonce: (openid.response_nonce) OPTIONAL str in query

        openid_return_to: (openid.return_to) OPTIONAL str in query

        openid_sig: (openid.sig) OPTIONAL str in query

        openid_signed: (openid.signed) OPTIONAL str in query

        state: (state) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with either code or error on the query parameter)
    """
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
    """Platform Authentication API (PlatformAuthenticationV3)

    This endpoint authenticates user platform. It validates user to its
    respective platforms. Deactivated or login-banned users are unable to login.
    If already linked with justice account or match SSO condition, will redirect to client's redirect url with code. then invoke '/iam/v3/oauth/token' with grant_type=authorization_code
    If already not linked with justice account and not match SSO condition, will redirect to client's account linking page
    ## Supported platforms:
    - **steamopenid**Steam login page will redirects to this endpoint after login success
    as previously defined on openID request parameter `openid.return_to` when request login to steam
    https://openid.net/specs/openid-authentication-2_0.html#anchor27
    - **ps4web**PS4 login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    https://ps4.siedev.net/resources/documents/WebAPI/1/Auth_WebAPI-Reference/0002.html#0GetAccessTokenUsingAuthorizationCode
    - **xblweb**XBL login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **epicgames**Epicgames login page will redirects to this endpoint after login success
    or an error occurred. If error, it redirects to the login page.
    - **twitch**Twitch login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **facebook**Facebook login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **google**Google login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **snapchat**Snapchat login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    - **discord**Discord login page will redirects to this endpoint after login success
    as previously defined on authorize request parameter `redirect_uri`
    action code : 10709

    Properties:
        url: /iam/v3/platforms/{platformId}/authenticate

        method: GET

        tags: ["OAuth2.0 - Extension"]

        consumes: ["*/*"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        platform_id: (platformId) REQUIRED str in path

        code: (code) OPTIONAL str in query

        error: (error) OPTIONAL str in query

        openid_assoc_handle: (openid.assoc_handle) OPTIONAL str in query

        openid_claimed_id: (openid.claimed_id) OPTIONAL str in query

        openid_identity: (openid.identity) OPTIONAL str in query

        openid_mode: (openid.mode) OPTIONAL str in query

        openid_ns: (openid.ns) OPTIONAL str in query

        openid_op_endpoint: (openid.op_endpoint) OPTIONAL str in query

        openid_response_nonce: (openid.response_nonce) OPTIONAL str in query

        openid_return_to: (openid.return_to) OPTIONAL str in query

        openid_sig: (openid.sig) OPTIONAL str in query

        openid_signed: (openid.signed) OPTIONAL str in query

        state: (state) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with either code or error on the query parameter)
    """
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


@same_doc_as(PlatformTokenRefreshV3)
def platform_token_refresh_v3(
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Platform Token Validation (PlatformTokenRefreshV3)

    This endpoint will validate the third party platform token, for some platforms will also refresh the token stored in IAM, it will not generate any event or AB access/refresh token.
    This endpoint can be used by game client to refresh third party token if game client got platform token not found error, for example got 404
    platform token not found from IAP/DLC.

    ## Platforms will refresh stored token:
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **amazon**: The platform_tokenâs value is authorization code.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    Properties:
        url: /iam/v3/platforms/{platformId}/token/verify

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_token: (platform_token) REQUIRED str in form_data

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelPlatformTokenRefreshResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """
    request = PlatformTokenRefreshV3.create(
        platform_id=platform_id,
        platform_token=platform_token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PlatformTokenRefreshV3)
async def platform_token_refresh_v3_async(
    platform_id: str,
    platform_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Platform Token Validation (PlatformTokenRefreshV3)

    This endpoint will validate the third party platform token, for some platforms will also refresh the token stored in IAM, it will not generate any event or AB access/refresh token.
    This endpoint can be used by game client to refresh third party token if game client got platform token not found error, for example got 404
    platform token not found from IAP/DLC.

    ## Platforms will refresh stored token:
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **amazon**: The platform_tokenâs value is authorization code.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    Properties:
        url: /iam/v3/platforms/{platformId}/token/verify

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        platform_token: (platform_token) REQUIRED str in form_data

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelPlatformTokenRefreshResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """
    request = PlatformTokenRefreshV3.create(
        platform_id=platform_id,
        platform_token=platform_token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestOneTimeLinkingCodeV3)
def request_one_time_linking_code_v3(
    platform_id: str,
    redirect_uri: Optional[str] = None,
    state: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate one time linking code (RequestOneTimeLinkingCodeV3)

    This endpoint is being used to request the one time code [8 length] for headless account to link or upgrade to a full account.
    Should specify the target platform id and current user should already linked to this platform.
    Current user should be a headless account.
    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **googleplaygames**
    - **oculus**
    - **twitch**
    - **discord**
    - **android**
    - **ios**
    - **apple**
    - **device**
    - **justice**
    - **epicgames**
    - **ps4**
    - **ps5**
    - **nintendo**
    - **awscognito**
    - **live**
    - **xblweb**
    - **netflix**
    - **snapchat**

    Properties:
        url: /iam/v3/link/code/request

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        redirect_uri: (redirectUri) OPTIONAL str in form_data

        state: (state) OPTIONAL str in form_data

        platform_id: (platformId) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelOneTimeLinkingCodeResponse (Succeed to one time code.)
    """
    request = RequestOneTimeLinkingCodeV3.create(
        platform_id=platform_id,
        redirect_uri=redirect_uri,
        state=state,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestOneTimeLinkingCodeV3)
async def request_one_time_linking_code_v3_async(
    platform_id: str,
    redirect_uri: Optional[str] = None,
    state: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate one time linking code (RequestOneTimeLinkingCodeV3)

    This endpoint is being used to request the one time code [8 length] for headless account to link or upgrade to a full account.
    Should specify the target platform id and current user should already linked to this platform.
    Current user should be a headless account.
    ## Supported platforms:
    - **steam**
    - **steamopenid**
    - **facebook**
    - **google**
    - **googleplaygames**
    - **oculus**
    - **twitch**
    - **discord**
    - **android**
    - **ios**
    - **apple**
    - **device**
    - **justice**
    - **epicgames**
    - **ps4**
    - **ps5**
    - **nintendo**
    - **awscognito**
    - **live**
    - **xblweb**
    - **netflix**
    - **snapchat**

    Properties:
        url: /iam/v3/link/code/request

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        redirect_uri: (redirectUri) OPTIONAL str in form_data

        state: (state) OPTIONAL str in form_data

        platform_id: (platformId) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelOneTimeLinkingCodeResponse (Succeed to one time code.)
    """
    request = RequestOneTimeLinkingCodeV3.create(
        platform_id=platform_id,
        redirect_uri=redirect_uri,
        state=state,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestTargetTokenResponseV3)
def request_target_token_response_v3(
    code: str,
    additional_data: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate target token by code (RequestTargetTokenResponseV3)

    This endpoint is being used to generate target token.
    It requires basic header with ClientID and Secret, it should match the ClientID when call `/iam/v3/namespace/{namespace}/token/request`
    The code should be generated from `/iam/v3/namespace/{namespace}/token/request`.

    Properties:
        url: /iam/v3/token/exchange

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        code: (code) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to exchange token.)
    """
    request = RequestTargetTokenResponseV3.create(
        code=code,
        additional_data=additional_data,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestTargetTokenResponseV3)
async def request_target_token_response_v3_async(
    code: str,
    additional_data: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate target token by code (RequestTargetTokenResponseV3)

    This endpoint is being used to generate target token.
    It requires basic header with ClientID and Secret, it should match the ClientID when call `/iam/v3/namespace/{namespace}/token/request`
    The code should be generated from `/iam/v3/namespace/{namespace}/token/request`.

    Properties:
        url: /iam/v3/token/exchange

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        code: (code) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to exchange token.)
    """
    request = RequestTargetTokenResponseV3.create(
        code=code,
        additional_data=additional_data,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestTokenByOneTimeLinkCodeResponseV3)
def request_token_by_one_time_link_code_response_v3(
    client_id: str,
    one_time_link_code: str,
    additional_data: Optional[str] = None,
    is_transient: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate token by headless account's one time link code (RequestTokenByOneTimeLinkCodeResponseV3)

    This endpoint is being used to generate user's token by one time link code.
    It requires a code which can be generated from `/iam/v3/link/code/request` or `/iam/v3/public/users/me/link/forward`.

    This endpoint support creating transient token by utilizing **isTransient** param:
    **isTransient=true** will generate a transient token with a short Time Expiration and without a refresh token
    **isTransient=false** will consume the one-time code and generate the access token with a refresh token.

    Properties:
        url: /iam/v3/link/token/exchange

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        is_transient: (isTransient) OPTIONAL bool in form_data

        client_id: (client_id) REQUIRED str in form_data

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to generate user token by one time link code.)
    """
    request = RequestTokenByOneTimeLinkCodeResponseV3.create(
        client_id=client_id,
        one_time_link_code=one_time_link_code,
        additional_data=additional_data,
        is_transient=is_transient,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestTokenByOneTimeLinkCodeResponseV3)
async def request_token_by_one_time_link_code_response_v3_async(
    client_id: str,
    one_time_link_code: str,
    additional_data: Optional[str] = None,
    is_transient: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate token by headless account's one time link code (RequestTokenByOneTimeLinkCodeResponseV3)

    This endpoint is being used to generate user's token by one time link code.
    It requires a code which can be generated from `/iam/v3/link/code/request` or `/iam/v3/public/users/me/link/forward`.

    This endpoint support creating transient token by utilizing **isTransient** param:
    **isTransient=true** will generate a transient token with a short Time Expiration and without a refresh token
    **isTransient=false** will consume the one-time code and generate the access token with a refresh token.

    Properties:
        url: /iam/v3/link/token/exchange

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        is_transient: (isTransient) OPTIONAL bool in form_data

        client_id: (client_id) REQUIRED str in form_data

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to generate user token by one time link code.)
    """
    request = RequestTokenByOneTimeLinkCodeResponseV3.create(
        client_id=client_id,
        one_time_link_code=one_time_link_code,
        additional_data=additional_data,
        is_transient=is_transient,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestTokenExchangeCodeV3)
def request_token_exchange_code_v3(
    client_id: str,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, RequestTokenExchangeCodeV3CodeChallengeMethodEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request code to get a new token (RequestTokenExchangeCodeV3)

    This endpoint is being used to request the code to exchange a new token.
    The target new token's clientId should NOT be same with current using one.
    Path namespace should be target namespace.
    Client ID should match the target namespace.

    The code in response can be consumed by `/iam/v3/token/exchange`

    Properties:
        url: /iam/v3/namespace/{namespace}/token/request

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (client_id) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTargetTokenCodeResponse (Succeed to request token exchange code.)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RequestTokenExchangeCodeV3.create(
        client_id=client_id,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestTokenExchangeCodeV3)
async def request_token_exchange_code_v3_async(
    client_id: str,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, RequestTokenExchangeCodeV3CodeChallengeMethodEnum]
    ] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request code to get a new token (RequestTokenExchangeCodeV3)

    This endpoint is being used to request the code to exchange a new token.
    The target new token's clientId should NOT be same with current using one.
    Path namespace should be target namespace.
    Client ID should match the target namespace.

    The code in response can be consumed by `/iam/v3/token/exchange`

    Properties:
        url: /iam/v3/namespace/{namespace}/token/request

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (client_id) REQUIRED str in form_data

        namespace: (namespace) REQUIRED str in path

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTargetTokenCodeResponse (Succeed to request token exchange code.)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RequestTokenExchangeCodeV3.create(
        client_id=client_id,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpgradeAndAuthenticateForwardV3)
def upgrade_and_authenticate_forward_v3(
    client_id: str,
    upgrade_success_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Handle the forward for account upgrade (UpgradeAndAuthenticateForwardV3)

    In login website based flow, after account upgraded, we need this API to handle the forward

    Properties:
        url: /iam/v3/upgrade/forward

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (client_id) REQUIRED str in form_data

        upgrade_success_token: (upgrade_success_token) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with code)
    """
    request = UpgradeAndAuthenticateForwardV3.create(
        client_id=client_id,
        upgrade_success_token=upgrade_success_token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpgradeAndAuthenticateForwardV3)
async def upgrade_and_authenticate_forward_v3_async(
    client_id: str,
    upgrade_success_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Handle the forward for account upgrade (UpgradeAndAuthenticateForwardV3)

    In login website based flow, after account upgraded, we need this API to handle the forward

    Properties:
        url: /iam/v3/upgrade/forward

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (client_id) REQUIRED str in form_data

        upgrade_success_token: (upgrade_success_token) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect to clients redirection URL with code)
    """
    request = UpgradeAndAuthenticateForwardV3.create(
        client_id=client_id,
        upgrade_success_token=upgrade_success_token,
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
    """Authentication API (UserAuthenticationV3)

    This endpoint is being used to authenticate a user account.
    It validates user's email / username and password.
    Deactivated or login-banned users are unable to login.
    Redirect URI and Client ID must be specified as a pair and only used to redirect to the specified redirect URI in case the requestId is no longer valid.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Action code: 10801

    Properties:
        url: /iam/v3/authenticate

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        location query: code

        client_id: (client_id) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        password: (password) REQUIRED str in form_data

        request_id: (request_id) REQUIRED str in form_data

        user_name: (user_name) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect successful requests to consent page with "list of consent" in query params.)
    """
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
    """Authentication API (UserAuthenticationV3)

    This endpoint is being used to authenticate a user account.
    It validates user's email / username and password.
    Deactivated or login-banned users are unable to login.
    Redirect URI and Client ID must be specified as a pair and only used to redirect to the specified redirect URI in case the requestId is no longer valid.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Action code: 10801

    Properties:
        url: /iam/v3/authenticate

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        location query: code

        client_id: (client_id) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        password: (password) REQUIRED str in form_data

        request_id: (request_id) REQUIRED str in form_data

        user_name: (user_name) REQUIRED str in form_data

    Responses:
        302: Found - (Found. Redirect successful requests to consent page with "list of consent" in query params.)
    """
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


@same_doc_as(ValidateOneTimeLinkingCodeV3)
def validate_one_time_linking_code_v3(
    one_time_link_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate one time linking code (ValidateOneTimeLinkingCodeV3)

    This endpoint is being used to validate one time link code.

    Properties:
        url: /iam/v3/link/code/validate

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelOneTimeLinkingCodeValidationResponse (Succeed to validate one time code.)
    """
    request = ValidateOneTimeLinkingCodeV3.create(
        one_time_link_code=one_time_link_code,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ValidateOneTimeLinkingCodeV3)
async def validate_one_time_linking_code_v3_async(
    one_time_link_code: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Validate one time linking code (ValidateOneTimeLinkingCodeV3)

    This endpoint is being used to validate one time link code.

    Properties:
        url: /iam/v3/link/code/validate

        method: POST

        tags: ["OAuth2.0 - Extension"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        one_time_link_code: (oneTimeLinkCode) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelOneTimeLinkingCodeValidationResponse (Succeed to validate one time code.)
    """
    request = ValidateOneTimeLinkingCodeV3.create(
        one_time_link_code=one_time_link_code,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
