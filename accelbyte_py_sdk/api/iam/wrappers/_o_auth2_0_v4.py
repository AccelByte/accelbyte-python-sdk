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

from ..models import OauthmodelErrorResponse
from ..models import OauthmodelLoginQueueTicketResponse
from ..models import OauthmodelTokenResponseV3
from ..models import OauthmodelTokenWithDeviceCookieResponseV3
from ..models import RestErrorResponse

from ..operations.o_auth2_0_v4 import AuthenticationWithPlatformLinkV4
from ..operations.o_auth2_0_v4 import GenerateTokenByNewHeadlessAccountV4
from ..operations.o_auth2_0_v4 import PlatformTokenGrantV4
from ..operations.o_auth2_0_v4 import PlatformTokenGrantV4CodeChallengeMethodEnum
from ..operations.o_auth2_0_v4 import RequestTargetTokenResponseV4
from ..operations.o_auth2_0_v4 import SimultaneousLoginV4
from ..operations.o_auth2_0_v4 import (
    SimultaneousLoginV4CodeChallengeMethodEnum,
    SimultaneousLoginV4NativePlatformEnum,
)
from ..operations.o_auth2_0_v4 import TokenGrantV4
from ..operations.o_auth2_0_v4 import (
    TokenGrantV4CodeChallengeMethodEnum,
    TokenGrantV4GrantTypeEnum,
)
from ..operations.o_auth2_0_v4 import Verify2faCodeV4


@same_doc_as(AuthenticationWithPlatformLinkV4)
def authentication_with_platform_link_v4(
    client_id: str,
    linking_token: str,
    password: str,
    username: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Authentication with platform link (AuthenticationWithPlatformLinkV4)

    This endpoint is being used to authenticate a user account and perform platform link.
    It validates user's email / username and password.
    If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Properties:
        url: /iam/v4/oauth/authenticateWithLink

        method: POST

        tags: ["OAuth2.0 V4"]

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

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login queue ticket returned)

        400: Bad Request - RestErrorResponse (Invalid username or password.)

        401: Unauthorized - OauthmodelErrorResponse (Need 2FA.)

        403: Forbidden - RestErrorResponse (10213: country is blocked)

        409: Conflict - RestErrorResponse (User already link this platform's another account'.)
    """
    request = AuthenticationWithPlatformLinkV4.create(
        client_id=client_id,
        linking_token=linking_token,
        password=password,
        username=username,
        extend_exp=extend_exp,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AuthenticationWithPlatformLinkV4)
async def authentication_with_platform_link_v4_async(
    client_id: str,
    linking_token: str,
    password: str,
    username: str,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Authentication with platform link (AuthenticationWithPlatformLinkV4)

    This endpoint is being used to authenticate a user account and perform platform link.
    It validates user's email / username and password.
    If user already enable 2FA, then invoke _/mfa/verify_ using **mfa_token** from this endpoint response.

    ## Device Cookie Validation

    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP](https://owasp.org/www-community/Slow_Down_Online_Guessing_Attacks_with_Device_Cookies).
    This endpoint will read device cookie from cookie **auth-trust-id**. If device cookie not found, it will generate a new one and set it into cookie when successfully authenticate.

    Properties:
        url: /iam/v4/oauth/authenticateWithLink

        method: POST

        tags: ["OAuth2.0 V4"]

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

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login queue ticket returned)

        400: Bad Request - RestErrorResponse (Invalid username or password.)

        401: Unauthorized - OauthmodelErrorResponse (Need 2FA.)

        403: Forbidden - RestErrorResponse (10213: country is blocked)

        409: Conflict - RestErrorResponse (User already link this platform's another account'.)
    """
    request = AuthenticationWithPlatformLinkV4.create(
        client_id=client_id,
        linking_token=linking_token,
        password=password,
        username=username,
        extend_exp=extend_exp,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GenerateTokenByNewHeadlessAccountV4)
def generate_token_by_new_headless_account_v4(
    linking_token: str,
    additional_data: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create headless account and response token (GenerateTokenByNewHeadlessAccountV4)

    This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
    The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
    when 3rd platform account is not linked to justice account yet.

    Properties:
        url: /iam/v4/oauth/headless/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to create headless account and response token info.)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Succeed to create headless account and response token info.)

        400: Bad Request - RestErrorResponse (Invalid platform linking token or clientID not match.)

        401: Unauthorized - RestErrorResponse (10213: country is blocked)

        404: Not Found - RestErrorResponse (Platform linking token not found.)
    """
    request = GenerateTokenByNewHeadlessAccountV4.create(
        linking_token=linking_token,
        additional_data=additional_data,
        extend_exp=extend_exp,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GenerateTokenByNewHeadlessAccountV4)
async def generate_token_by_new_headless_account_v4_async(
    linking_token: str,
    additional_data: Optional[str] = None,
    extend_exp: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create headless account and response token (GenerateTokenByNewHeadlessAccountV4)

    This endpoint is being used to create headless account after 3rd platform authenticated, and response token .
    The 'linkingToken' in request body is received from "/platforms/{platformId}/token"
    when 3rd platform account is not linked to justice account yet.

    Properties:
        url: /iam/v4/oauth/headless/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        linking_token: (linkingToken) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to create headless account and response token info.)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Succeed to create headless account and response token info.)

        400: Bad Request - RestErrorResponse (Invalid platform linking token or clientID not match.)

        401: Unauthorized - RestErrorResponse (10213: country is blocked)

        404: Not Found - RestErrorResponse (Platform linking token not found.)
    """
    request = GenerateTokenByNewHeadlessAccountV4.create(
        linking_token=linking_token,
        additional_data=additional_data,
        extend_exp=extend_exp,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PlatformTokenGrantV4)
def platform_token_grant_v4(
    platform_id: str,
    additional_data: Optional[str] = None,
    client_id: Optional[str] = None,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, PlatformTokenGrantV4CodeChallengeMethodEnum]
    ] = None,
    create_headless: Optional[bool] = None,
    device_id: Optional[str] = None,
    mac_address: Optional[str] = None,
    platform_token: Optional[str] = None,
    service_label: Optional[float] = None,
    skip_set_cookie: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """OAuth2 access token generation specific to platform (PlatformTokenGrantV4)

    Platform token grant specifically used for performing token grant using platform, e.g. Steam, Justice, etc. The endpoint automatically create an account if the account associated with the platform is not exists yet.
    This endpoint requires all requests to have Authorization header set with Basic access authentication
    constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
    should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
    along with platform_token parameter against publisher namespace.
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token
    ## Supported platforms:
    - **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
    If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: `{identity}:{ticket}`, the `{identity}` was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain `:` in this `{identity}`.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
    - **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
    - **google**: The platform_tokenâs value is the authorization code or idToken returned by Google OAuth
    - **googleplaygames**: The platform_tokenâs value is the authorization code or idToken returned by Google play games OAuth
    - **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
    - **android**: The device_id is the Androidâs device ID
    - **ios**: The device_id is the iOSâs device ID.
    - **apple**: The platform_tokenâs value is the authorization code or idToken returned by Apple OAuth.(We will use this code to generate APP token)
    - **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
    - **justice**: The platform_tokenâs value is the designated userâs access token.
    - **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **xblweb**: The platform_tokenâs value is code returned by xbox after login
    - **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    ## Account Group
    Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
    Login using one of these platform will returns the same IAM user.
    Following is the current registered account grouping:
    - Steam group(steamnetwork):
    - steam
    - steamopenid
    - PSN group(psn)
    - ps4web
    - ps4
    - ps5
    - XBOX group(xbox)
    - live
    - xblweb
    - Oculus group(oculusgroup)
    - oculus
    - oculusweb

    ## Access Token Content
    Following is the access tokenâs content:
    - **namespace**. It is the namespace the token was generated from.
    - **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
    - **roles**. The subâs roles. It is empty if the token is generated from the client credential
    - **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
    - **permissions**. The sub or audâ permissions
    - **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
    - **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
    - 1: Email Address Verified
    - 2: Phone Number Verified
    - 4: Anonymous
    - 8: Suspicious Login
    - **aud**. The aud is the client ID.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **sub**. The UserID. The sub is omitted if the token is generated from client credential

    ## Bans
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

    action code : 10704

    Properties:
        url: /iam/v4/oauth/platforms/{platformId}/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        create_headless: (createHeadless) OPTIONAL bool in form_data

        device_id: (device_id) OPTIONAL str in form_data

        mac_address: (macAddress) OPTIONAL str in form_data

        platform_token: (platform_token) OPTIONAL str in form_data

        service_label: (serviceLabel) OPTIONAL float in form_data

        skip_set_cookie: (skipSetCookie) OPTIONAL bool in form_data

        platform_id: (platformId) REQUIRED str in path

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """
    request = PlatformTokenGrantV4.create(
        platform_id=platform_id,
        additional_data=additional_data,
        client_id=client_id,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        create_headless=create_headless,
        device_id=device_id,
        mac_address=mac_address,
        platform_token=platform_token,
        service_label=service_label,
        skip_set_cookie=skip_set_cookie,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PlatformTokenGrantV4)
async def platform_token_grant_v4_async(
    platform_id: str,
    additional_data: Optional[str] = None,
    client_id: Optional[str] = None,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, PlatformTokenGrantV4CodeChallengeMethodEnum]
    ] = None,
    create_headless: Optional[bool] = None,
    device_id: Optional[str] = None,
    mac_address: Optional[str] = None,
    platform_token: Optional[str] = None,
    service_label: Optional[float] = None,
    skip_set_cookie: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """OAuth2 access token generation specific to platform (PlatformTokenGrantV4)

    Platform token grant specifically used for performing token grant using platform, e.g. Steam, Justice, etc. The endpoint automatically create an account if the account associated with the platform is not exists yet.
    This endpoint requires all requests to have Authorization header set with Basic access authentication
    constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
    should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
    along with platform_token parameter against publisher namespace.
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token
    ## Supported platforms:
    - **steam**: The platform_tokenâs value is the binary ticket returned by Steam.
    If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: `{identity}:{ticket}`, the `{identity}` was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain `:` in this `{identity}`.
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication
    - **facebook**: The platform_tokenâs value is the authorization code returned by Facebook OAuth
    - **google**: The platform_tokenâs value is the authorization code or idToken returned by Google OAuth
    - **googleplaygames**: The platform_tokenâs value is the authorization code or idToken returned by Google play games OAuth
    - **oculus**: The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).
    - **twitch**: The platform_tokenâs value is the authorization code returned by Twitch OAuth.
    - **discord**: The platform_tokenâs value is the authorization code returned by Discord OAuth
    - **android**: The device_id is the Androidâs device ID
    - **ios**: The device_id is the iOSâs device ID.
    - **apple**: The platform_tokenâs value is the authorization code or idToken returned by Apple OAuth.(We will use this code to generate APP token)
    - **device**: Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.
    - **justice**: The platform_tokenâs value is the designated userâs access token.
    - **epicgames**: The platform_tokenâs value is an access-token or authorization code obtained from Epicgames EOS Account Service.
    - **ps4**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **ps5**: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    - **nintendo**: The platform_tokenâs value is the id_token returned by Nintendo OAuth.
    - **awscognito**: The platform_tokenâs value is the aws cognito access token or id token (JWT).
    - **live**: The platform_tokenâs value is xbox XSTS token
    - **xblweb**: The platform_tokenâs value is code returned by xbox after login
    - **netflix**: The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend
    - **snapchat**: The platform_tokenâs value is the authorization code returned by Snapchat OAuth.
    - **for specific generic oauth (OIDC)**: The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.

    ## Account Group
    Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
    Login using one of these platform will returns the same IAM user.
    Following is the current registered account grouping:
    - Steam group(steamnetwork):
    - steam
    - steamopenid
    - PSN group(psn)
    - ps4web
    - ps4
    - ps5
    - XBOX group(xbox)
    - live
    - xblweb
    - Oculus group(oculusgroup)
    - oculus
    - oculusweb

    ## Access Token Content
    Following is the access tokenâs content:
    - **namespace**. It is the namespace the token was generated from.
    - **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
    - **roles**. The subâs roles. It is empty if the token is generated from the client credential
    - **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
    - **permissions**. The sub or audâ permissions
    - **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
    - **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
    - 1: Email Address Verified
    - 2: Phone Number Verified
    - 4: Anonymous
    - 8: Suspicious Login
    - **aud**. The aud is the client ID.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **sub**. The UserID. The sub is omitted if the token is generated from client credential

    ## Bans
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

    action code : 10704

    Properties:
        url: /iam/v4/oauth/platforms/{platformId}/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        create_headless: (createHeadless) OPTIONAL bool in form_data

        device_id: (device_id) OPTIONAL str in form_data

        mac_address: (macAddress) OPTIONAL str in form_data

        platform_token: (platform_token) OPTIONAL str in form_data

        service_label: (serviceLabel) OPTIONAL float in form_data

        skip_set_cookie: (skipSetCookie) OPTIONAL bool in form_data

        platform_id: (platformId) REQUIRED str in path

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """
    request = PlatformTokenGrantV4.create(
        platform_id=platform_id,
        additional_data=additional_data,
        client_id=client_id,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        create_headless=create_headless,
        device_id=device_id,
        mac_address=mac_address,
        platform_token=platform_token,
        service_label=service_label,
        skip_set_cookie=skip_set_cookie,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RequestTargetTokenResponseV4)
def request_target_token_response_v4(
    code: str,
    additional_data: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate target token by code (RequestTargetTokenResponseV4)

    This endpoint is being used to generate target token.
    It requires basic header with ClientID and Secret, it should match the ClientID when call `/iam/v3/namespace/{namespace}/token/request`
    The code should be generated from `/iam/v3/namespace/{namespace}/token/request`.

    Properties:
        url: /iam/v4/oauth/token/exchange

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        code: (code) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to exchange token.)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login queue ticket returned)
    """
    request = RequestTargetTokenResponseV4.create(
        code=code,
        additional_data=additional_data,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RequestTargetTokenResponseV4)
async def request_target_token_response_v4_async(
    code: str,
    additional_data: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate target token by code (RequestTargetTokenResponseV4)

    This endpoint is being used to generate target token.
    It requires basic header with ClientID and Secret, it should match the ClientID when call `/iam/v3/namespace/{namespace}/token/request`
    The code should be generated from `/iam/v3/namespace/{namespace}/token/request`.

    Properties:
        url: /iam/v4/oauth/token/exchange

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        additional_data: (additionalData) OPTIONAL str in form_data

        code: (code) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Succeed to exchange token.)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login queue ticket returned)
    """
    request = RequestTargetTokenResponseV4.create(
        code=code,
        additional_data=additional_data,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SimultaneousLoginV4)
def simultaneous_login_v4(
    native_platform: Union[str, SimultaneousLoginV4NativePlatformEnum],
    native_platform_ticket: str,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, SimultaneousLoginV4CodeChallengeMethodEnum]
    ] = None,
    simultaneous_platform: Optional[str] = None,
    simultaneous_ticket: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Simultaneous login (SimultaneousLoginV4)

    # This endpoint is in ALPHA, avoid using this endpoint fow now, reach out to AB support for inquiries

    Simultaneous login flow.

    The primary goals of this project are to entitle players to authenticate on a native PC platform(Steam/Epic) and the PlayStation platform,
    link their accounts, and provide support for platform sync with a valid 3rd platform access token.

    ## Given a valid native ticket and empty simultaneous ticket, these cases will be failed
    - Native ticket's account is not linked AGS account yet
    - Native ticket's account is linked AGS account, but AGS account is not linked simultaneous platform yet
    - Native ticket's account is linked AGS account, AGS account is linked simultaneous platform but there is no available simultaneous token.(only if this platform is expected to store the platform token)

    ## Given a valid native ticket and empty simultaneous ticket, this case will be success
    - Native ticket's account already linked AGS account, this AGS account already linked simultaneous platform. There is valid simultaneous token.(this is required only when this simultaneous is expected to cache platform token)

    ## Given a valid native ticket token and valid simultaneous ticket, these cases will be failed
    #### Native ticket's account is already linked with AGS account
    - Native linked AGS account is linked this simultaneous platform but is different with simultaneous ticket's account
    - Native linked AGS account is not linked with simultaneous but has a linking history with simultaneous platform and it is different with simultaneous ticket's account
    #### Native ticket's account is not linked with AGS account and Simultaneous ticket's account is already linked wth AGS account
    - Simultaneous linked AGS account is linked this native platform but is different with native ticket's account
    - Simultaneous linked AGS account is not linked with native but has a linking history with native platform and it is different with native ticket's account

    ## Given a valid native ticket and valid simultaneous ticket, these cases will be success
    - Native ticket's account & Simultaneous ticket's account are both not linked to AGS account yet
    - Native ticket's account & Simultaneous ticket's account are already linked to same AGS account

    Properties:
        url: /iam/v4/oauth/simultaneousLogin

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        simultaneous_platform: (simultaneousPlatform) OPTIONAL str in form_data

        simultaneous_ticket: (simultaneousTicket) OPTIONAL str in form_data

        native_platform: (nativePlatform) REQUIRED Union[str, NativePlatformEnum] in form_data

        native_platform_ticket: (nativePlatformTicket) REQUIRED str in form_data

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned.)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned.)

        400: Bad Request - RestErrorResponse (10216: Native ticket is required)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        409: Conflict - RestErrorResponse (10215: Simultaneous ticket is required | 10220: Native ticket's account linked AGS account is different with the one which simultaneous ticket's linked to | 10219: Native ticket's account linked AGS is already linked simultaneous but different with the input simultaneous ticket's | 10217: Native ticket's account linked AGS account has different linking history with input simultaneous ticket's | 10221: Simultaneous ticket's account linked AGS is already linked native but different with the input native ticket's | 10218: Simultaneous ticket's account linked AGS account has different linking history with input native ticket's)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = SimultaneousLoginV4.create(
        native_platform=native_platform,
        native_platform_ticket=native_platform_ticket,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        simultaneous_platform=simultaneous_platform,
        simultaneous_ticket=simultaneous_ticket,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SimultaneousLoginV4)
async def simultaneous_login_v4_async(
    native_platform: Union[str, SimultaneousLoginV4NativePlatformEnum],
    native_platform_ticket: str,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, SimultaneousLoginV4CodeChallengeMethodEnum]
    ] = None,
    simultaneous_platform: Optional[str] = None,
    simultaneous_ticket: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Simultaneous login (SimultaneousLoginV4)

    # This endpoint is in ALPHA, avoid using this endpoint fow now, reach out to AB support for inquiries

    Simultaneous login flow.

    The primary goals of this project are to entitle players to authenticate on a native PC platform(Steam/Epic) and the PlayStation platform,
    link their accounts, and provide support for platform sync with a valid 3rd platform access token.

    ## Given a valid native ticket and empty simultaneous ticket, these cases will be failed
    - Native ticket's account is not linked AGS account yet
    - Native ticket's account is linked AGS account, but AGS account is not linked simultaneous platform yet
    - Native ticket's account is linked AGS account, AGS account is linked simultaneous platform but there is no available simultaneous token.(only if this platform is expected to store the platform token)

    ## Given a valid native ticket and empty simultaneous ticket, this case will be success
    - Native ticket's account already linked AGS account, this AGS account already linked simultaneous platform. There is valid simultaneous token.(this is required only when this simultaneous is expected to cache platform token)

    ## Given a valid native ticket token and valid simultaneous ticket, these cases will be failed
    #### Native ticket's account is already linked with AGS account
    - Native linked AGS account is linked this simultaneous platform but is different with simultaneous ticket's account
    - Native linked AGS account is not linked with simultaneous but has a linking history with simultaneous platform and it is different with simultaneous ticket's account
    #### Native ticket's account is not linked with AGS account and Simultaneous ticket's account is already linked wth AGS account
    - Simultaneous linked AGS account is linked this native platform but is different with native ticket's account
    - Simultaneous linked AGS account is not linked with native but has a linking history with native platform and it is different with native ticket's account

    ## Given a valid native ticket and valid simultaneous ticket, these cases will be success
    - Native ticket's account & Simultaneous ticket's account are both not linked to AGS account yet
    - Native ticket's account & Simultaneous ticket's account are already linked to same AGS account

    Properties:
        url: /iam/v4/oauth/simultaneousLogin

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        simultaneous_platform: (simultaneousPlatform) OPTIONAL str in form_data

        simultaneous_ticket: (simultaneousTicket) OPTIONAL str in form_data

        native_platform: (nativePlatform) REQUIRED Union[str, NativePlatformEnum] in form_data

        native_platform_ticket: (nativePlatformTicket) REQUIRED str in form_data

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned.)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned.)

        400: Bad Request - RestErrorResponse (10216: Native ticket is required)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)

        409: Conflict - RestErrorResponse (10215: Simultaneous ticket is required | 10220: Native ticket's account linked AGS account is different with the one which simultaneous ticket's linked to | 10219: Native ticket's account linked AGS is already linked simultaneous but different with the input simultaneous ticket's | 10217: Native ticket's account linked AGS account has different linking history with input simultaneous ticket's | 10221: Simultaneous ticket's account linked AGS is already linked native but different with the input native ticket's | 10218: Simultaneous ticket's account linked AGS account has different linking history with input native ticket's)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = SimultaneousLoginV4.create(
        native_platform=native_platform,
        native_platform_ticket=native_platform_ticket,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        simultaneous_platform=simultaneous_platform,
        simultaneous_ticket=simultaneous_ticket,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TokenGrantV4)
def token_grant_v4(
    grant_type: Union[str, TokenGrantV4GrantTypeEnum],
    additional_data: Optional[str] = None,
    auth_trust_id: Optional[Union[str, HeaderStr]] = None,
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    code: Optional[str] = None,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, TokenGrantV4CodeChallengeMethodEnum]
    ] = None,
    code_verifier: Optional[str] = None,
    device_id: Optional[Union[str, HeaderStr]] = None,
    extend_exp: Optional[bool] = None,
    extend_namespace: Optional[str] = None,
    login_queue_ticket: Optional[str] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    scope: Optional[str] = None,
    username: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """OAuth2 access token generation endpoint V4 (TokenGrantV4)

    This endpoint supports grant type:
    1. Grant Type == `authorization_code`:
    It generates the user token by given the authorization
    code which generated in "/iam/v3/authenticate" API response. It should also pass
    in the redirect_uri, which should be the same as generating the
    authorization code request.
    2. Grant Type == `password`:
    The grant type to use for authenticating a user, whether it's by email / username and password combination
    or through platform.
    3. Grant Type == `refresh_token`:
    Used to get a new access token for a valid refresh token.
    4. Grant Type == `client_credentials`:
    It generates a token by checking the client credentials provided through Authorization header.
    5. Grant Type == `urn:ietf:params:oauth:grant-type:extend_client_credentials`:
    It generates a token by checking the client credentials provided through Authorization header.
    It only allows publisher/studio namespace client.
    In generated token:
    1. There wil be no roles, namespace_roles & permission.
    2. The scope will be fixed as 'extend'.
    3. There will have a new field 'extend_namespace', the value is from token request body.
    6. Grant Type == `urn:ietf:params:oauth:grant-type:login_queue_ticket`:
    It generates a token by validating the login queue ticket against login queue service.

    ## Access Token Content
    Following is the access tokenâs content:
    - **namespace**. It is the namespace the token was generated from.
    - **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
    - **roles**. The subâs roles. It is empty if the token is generated from the client credential
    - **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
    - **permissions**. The sub or audâ permissions
    - **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
    - **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
    - 1: Email Address Verified
    - 2: Phone Number Verified
    - 4: Anonymous
    - 8: Suspicious Login
    - **aud**. The aud is the targeted resource server.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **client_id**. The UserID. The sub is omitted if the token is generated from client credential
    - **scope**. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings

    ## Bans
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.
    ## Device Cookie Validation
    _**For grant type "password" only**_
    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
    This endpoint will read device cookie from request header **Auth-Trust-Id**. If device cookie not found, it will generate a new one and set it into response body **auth_trust_id** when successfully login.
    ## Track Login History
    This endpoint will track login history to detect suspicious login activity, please provide **Device-Id** (alphanumeric) in request header parameter otherwise it will set to "unknown".
    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token
    ## Response note
    If it is a user token request and user hasn't accepted required legal policy, the field `is_comply` will be false in response and responsed token will have no permission.
    action code: 10703

    Properties:
        url: /iam/v4/oauth/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        auth_trust_id: (Auth-Trust-Id) OPTIONAL Union[str, HeaderStr] in header

        device_id: (device_id) OPTIONAL Union[str, HeaderStr] in header

        additional_data: (additionalData) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        client_secret: (client_secret) OPTIONAL str in form_data

        code: (code) OPTIONAL str in form_data

        code_verifier: (code_verifier) OPTIONAL str in form_data

        extend_namespace: (extendNamespace) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        login_queue_ticket: (login_queue_ticket) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        scope: (scope) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        429: Too Many Requests - OauthmodelErrorResponse (Too many failed auth attempt)
    """
    request = TokenGrantV4.create(
        grant_type=grant_type,
        additional_data=additional_data,
        auth_trust_id=auth_trust_id,
        client_id=client_id,
        client_secret=client_secret,
        code=code,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        code_verifier=code_verifier,
        device_id=device_id,
        extend_exp=extend_exp,
        extend_namespace=extend_namespace,
        login_queue_ticket=login_queue_ticket,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        scope=scope,
        username=username,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TokenGrantV4)
async def token_grant_v4_async(
    grant_type: Union[str, TokenGrantV4GrantTypeEnum],
    additional_data: Optional[str] = None,
    auth_trust_id: Optional[Union[str, HeaderStr]] = None,
    client_id: Optional[str] = None,
    client_secret: Optional[str] = None,
    code: Optional[str] = None,
    code_challenge: Optional[str] = None,
    code_challenge_method: Optional[
        Union[str, TokenGrantV4CodeChallengeMethodEnum]
    ] = None,
    code_verifier: Optional[str] = None,
    device_id: Optional[Union[str, HeaderStr]] = None,
    extend_exp: Optional[bool] = None,
    extend_namespace: Optional[str] = None,
    login_queue_ticket: Optional[str] = None,
    password: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    refresh_token: Optional[str] = None,
    scope: Optional[str] = None,
    username: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """OAuth2 access token generation endpoint V4 (TokenGrantV4)

    This endpoint supports grant type:
    1. Grant Type == `authorization_code`:
    It generates the user token by given the authorization
    code which generated in "/iam/v3/authenticate" API response. It should also pass
    in the redirect_uri, which should be the same as generating the
    authorization code request.
    2. Grant Type == `password`:
    The grant type to use for authenticating a user, whether it's by email / username and password combination
    or through platform.
    3. Grant Type == `refresh_token`:
    Used to get a new access token for a valid refresh token.
    4. Grant Type == `client_credentials`:
    It generates a token by checking the client credentials provided through Authorization header.
    5. Grant Type == `urn:ietf:params:oauth:grant-type:extend_client_credentials`:
    It generates a token by checking the client credentials provided through Authorization header.
    It only allows publisher/studio namespace client.
    In generated token:
    1. There wil be no roles, namespace_roles & permission.
    2. The scope will be fixed as 'extend'.
    3. There will have a new field 'extend_namespace', the value is from token request body.
    6. Grant Type == `urn:ietf:params:oauth:grant-type:login_queue_ticket`:
    It generates a token by validating the login queue ticket against login queue service.

    ## Access Token Content
    Following is the access tokenâs content:
    - **namespace**. It is the namespace the token was generated from.
    - **display_name**. The display name of the sub. It is empty if the token is generated from the client credential
    - **roles**. The subâs roles. It is empty if the token is generated from the client credential
    - **namespace_roles**. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace
    - **permissions**. The sub or audâ permissions
    - **bans**. The subâs list of bans. It is used by the IAM client for validating the token.
    - **jflgs**. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:
    - 1: Email Address Verified
    - 2: Phone Number Verified
    - 4: Anonymous
    - 8: Suspicious Login
    - **aud**. The aud is the targeted resource server.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **client_id**. The UserID. The sub is omitted if the token is generated from client credential
    - **scope**. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings

    ## Bans
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.
    ## Device Cookie Validation
    _**For grant type "password" only**_
    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.
    This endpoint will read device cookie from request header **Auth-Trust-Id**. If device cookie not found, it will generate a new one and set it into response body **auth_trust_id** when successfully login.
    ## Track Login History
    This endpoint will track login history to detect suspicious login activity, please provide **Device-Id** (alphanumeric) in request header parameter otherwise it will set to "unknown".
    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token
    ## Response note
    If it is a user token request and user hasn't accepted required legal policy, the field `is_comply` will be false in response and responsed token will have no permission.
    action code: 10703

    Properties:
        url: /iam/v4/oauth/token

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        auth_trust_id: (Auth-Trust-Id) OPTIONAL Union[str, HeaderStr] in header

        device_id: (device_id) OPTIONAL Union[str, HeaderStr] in header

        additional_data: (additionalData) OPTIONAL str in form_data

        client_id: (client_id) OPTIONAL str in form_data

        client_secret: (client_secret) OPTIONAL str in form_data

        code: (code) OPTIONAL str in form_data

        code_verifier: (code_verifier) OPTIONAL str in form_data

        extend_namespace: (extendNamespace) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        login_queue_ticket: (login_queue_ticket) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        scope: (scope) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

    Responses:
        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login ticket returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        429: Too Many Requests - OauthmodelErrorResponse (Too many failed auth attempt)
    """
    request = TokenGrantV4.create(
        grant_type=grant_type,
        additional_data=additional_data,
        auth_trust_id=auth_trust_id,
        client_id=client_id,
        client_secret=client_secret,
        code=code,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        code_verifier=code_verifier,
        device_id=device_id,
        extend_exp=extend_exp,
        extend_namespace=extend_namespace,
        login_queue_ticket=login_queue_ticket,
        password=password,
        redirect_uri=redirect_uri,
        refresh_token=refresh_token,
        scope=scope,
        username=username,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(Verify2faCodeV4)
def verify2fa_code_v4(
    code: str,
    factor: str,
    mfa_token: str,
    remember_device: bool,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify 2FA code (Verify2FACodeV4)

    Verify 2FA code
    This endpoint is used for verifying 2FA code.
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token

    Properties:
        url: /iam/v4/oauth/mfa/verify

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

        remember_device: (rememberDevice) REQUIRED bool in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login queue ticket returned)

        401: Unauthorized - OauthmodelErrorResponse (Unauthorized)
    """
    request = Verify2faCodeV4.create(
        code=code,
        factor=factor,
        mfa_token=mfa_token,
        remember_device=remember_device,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Verify2faCodeV4)
async def verify2fa_code_v4_async(
    code: str,
    factor: str,
    mfa_token: str,
    remember_device: bool,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Verify 2FA code (Verify2FACodeV4)

    Verify 2FA code
    This endpoint is used for verifying 2FA code.
    ## 2FA remember device
    To remember device for 2FA, should provide cookie: device_token or header: Device-Token

    Properties:
        url: /iam/v4/oauth/mfa/verify

        method: POST

        tags: ["OAuth2.0 V4"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

        remember_device: (rememberDevice) REQUIRED bool in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        202: Accepted - OauthmodelLoginQueueTicketResponse (Login queue ticket returned)

        401: Unauthorized - OauthmodelErrorResponse (Unauthorized)
    """
    request = Verify2faCodeV4.create(
        code=code,
        factor=factor,
        mfa_token=mfa_token,
        remember_device=remember_device,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
