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
from ..operations.o_auth2_0 import SendMFAAuthenticationCode
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
    """Admin Retrieve User Third Party Platform Token (AdminRetrieveUserThirdPartyPlatformTokenV3)

    Admin Retrieve User Third Party Platform Token




    This endpoint used for retrieving third party platform token for user that login using third party,
    if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
    Passing platform group name or it's member will return same access token that can be used across the platform members.





    Notes:






      * Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]





    The third party platform and platform group covered for this is:






      * (psn) ps4web


      * (psn) ps4


      * (psn) ps5


      * xbox live


      * steam

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]

    Properties:
        url: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenThirdPartyResponse (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        404: Not Found - OauthmodelErrorResponse (Platform Token Not Found)
    """
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
    """Admin Retrieve User Third Party Platform Token (AdminRetrieveUserThirdPartyPlatformTokenV3)

    Admin Retrieve User Third Party Platform Token




    This endpoint used for retrieving third party platform token for user that login using third party,
    if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
    Passing platform group name or it's member will return same access token that can be used across the platform members.





    Notes:






      * Required permission: ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]





    The third party platform and platform group covered for this is:






      * (psn) ps4web


      * (psn) ps4


      * (psn) ps5


      * xbox live


      * steam

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [READ]

    Properties:
        url: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenThirdPartyResponse (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        404: Not Found - OauthmodelErrorResponse (Platform Token Not Found)
    """
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
    """Generate url to request auth code from third party platform. (AuthCodeRequestV3)

    Generate url to request auth code from third party platform



    ## Supported platforms:



      * steamopenid
    This endpoint redirects to steam login page, then redirect back to platform
    authenticate endpoint after successfully authenticating user steam.

      * xblweb
    This endpoint redirects to xbox login page, then redirect back to platform
    authenticate endpoint after successfully authenticating xbox user.

      * ps4web
    This endpoint redirects to psn login page, then redirect back to platform
    authenticate endpoint after successfully authenticating psn user.

      * epicgames
    This endpoint redirects to Epicgames OAuth login page. then redirect to platform
    authenticate endpoint after successfully authenticating an Epicgames credential

      * twitch
    This endpoint redirects to twitch login page, then redirect back to platform
    authenticate endpoint after successfully authenticating twitch user.

      * azure
    This endpoint redirects to azure login page, then redirect back to platform
    authenticate(saml) endpoint after successfully authenticating azure user.

      * facebook
    This endpoint redirects to facebook login page, then redirect back to platform
    authenticate endpoint after successfully authenticating facebook user.

      * google
    This endpoint redirects to google login page, then redirect back to platform
    authenticate endpoint after successfully authenticating google user.

      * snapchat
    This endpoint redirects to snapchat login page, then redirect back to platform
    authenticate endpoint after successfully authenticating snapchat user.

      * discord
    This endpoint redirects to discord login page, then redirect back to platform
    authenticate endpoint after successfully authenticating discord user.

      * amazon
    This endpoint redirects to amazon login page, then redirect back to platform
    authenticate endpoint after successfully authenticating amazon user.

    action code : 10702'

    Properties:
        url: /iam/v3/oauth/platforms/{platformId}/authorize

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: code

        platform_id: (platformId) REQUIRED str in path

        client_id: (client_id) OPTIONAL str in query

        redirect_uri: (redirect_uri) OPTIONAL str in query

        request_id: (request_id) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to client’s redirect URI with either code or error on the query parameter)
    """
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
    """Generate url to request auth code from third party platform. (AuthCodeRequestV3)

    Generate url to request auth code from third party platform



    ## Supported platforms:



      * steamopenid
    This endpoint redirects to steam login page, then redirect back to platform
    authenticate endpoint after successfully authenticating user steam.

      * xblweb
    This endpoint redirects to xbox login page, then redirect back to platform
    authenticate endpoint after successfully authenticating xbox user.

      * ps4web
    This endpoint redirects to psn login page, then redirect back to platform
    authenticate endpoint after successfully authenticating psn user.

      * epicgames
    This endpoint redirects to Epicgames OAuth login page. then redirect to platform
    authenticate endpoint after successfully authenticating an Epicgames credential

      * twitch
    This endpoint redirects to twitch login page, then redirect back to platform
    authenticate endpoint after successfully authenticating twitch user.

      * azure
    This endpoint redirects to azure login page, then redirect back to platform
    authenticate(saml) endpoint after successfully authenticating azure user.

      * facebook
    This endpoint redirects to facebook login page, then redirect back to platform
    authenticate endpoint after successfully authenticating facebook user.

      * google
    This endpoint redirects to google login page, then redirect back to platform
    authenticate endpoint after successfully authenticating google user.

      * snapchat
    This endpoint redirects to snapchat login page, then redirect back to platform
    authenticate endpoint after successfully authenticating snapchat user.

      * discord
    This endpoint redirects to discord login page, then redirect back to platform
    authenticate endpoint after successfully authenticating discord user.

      * amazon
    This endpoint redirects to amazon login page, then redirect back to platform
    authenticate endpoint after successfully authenticating amazon user.

    action code : 10702'

    Properties:
        url: /iam/v3/oauth/platforms/{platformId}/authorize

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: code

        platform_id: (platformId) REQUIRED str in path

        client_id: (client_id) OPTIONAL str in query

        redirect_uri: (redirect_uri) OPTIONAL str in query

        request_id: (request_id) REQUIRED str in query

    Responses:
        302: Found - (Found. Redirect to client’s redirect URI with either code or error on the query parameter)
    """
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
    one_time_link_code: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    target_auth_page: Optional[str] = None,
    use_redirect_uri_as_login_url_when_locked: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """OAuth2 authorize API (AuthorizeV3)

    Initializes OAuth2.0 authorization code flow



    The endpoint stores authorization request and redirects to login page with the authorization request id.
    The user can then do the authentication on the login page.
    The user will be redirected back to the requesting client with authorization code if successfully authenticated.





    Only authorization code flow supported by this endpoint, implicit flow is not supported.






      * Authorize success :
    redirects to login page with the following information: ?request_id={authorization_request_id}





      * Authorize failure :
    redirects to the given redirect uri with the following information:
    ?error={error_code}&error;_description={error description}








    Following are the error code based on the specification:






      * invalid_request: The request is missing a required parameter,
    includes an invalid parameter value, includes a parameter more than once, or is otherwise malformed.





      * server_error:
    The authorization server encountered an unexpected condition that prevented it from fulfilling the request.





      * unauthorized_client: The client is not authorized to request a token using this method.



      * access_denied: The resource owner or authorization server denied the request.



      * invalid_scope: The requested scope is invalid, unknown, or malformed.



      * unsupported_response_type: The authorization server does not support obtaining a token using this method.



      * temporarily_unavailable: The authorization server is currently unable to handle the request
    due to a temporary overloading or maintenance of the server.








    Please refer to the RFC for more information about authorization code flow: https://tools.ietf.org/html/rfc6749#section-4.1



    action code: 10701

    Properties:
        url: /iam/v3/oauth/authorize

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        location query: request_id

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

        create_headless: (createHeadless) OPTIONAL bool in query

        one_time_link_code: (oneTimeLinkCode) OPTIONAL str in query

        redirect_uri: (redirect_uri) OPTIONAL str in query

        scope: (scope) OPTIONAL str in query

        state: (state) OPTIONAL str in query

        target_auth_page: (target_auth_page) OPTIONAL str in query

        use_redirect_uri_as_login_url_when_locked: (useRedirectUriAsLoginUrlWhenLocked) OPTIONAL bool in query

        client_id: (client_id) REQUIRED str in query

        response_type: (response_type) REQUIRED Union[str, ResponseTypeEnum] in query

    Responses:
        302: Found - (Found. Redirected to login page with either request_id or error.)
    """
    request = AuthorizeV3.create(
        client_id=client_id,
        response_type=response_type,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        create_headless=create_headless,
        one_time_link_code=one_time_link_code,
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
    one_time_link_code: Optional[str] = None,
    redirect_uri: Optional[str] = None,
    scope: Optional[str] = None,
    state: Optional[str] = None,
    target_auth_page: Optional[str] = None,
    use_redirect_uri_as_login_url_when_locked: Optional[bool] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """OAuth2 authorize API (AuthorizeV3)

    Initializes OAuth2.0 authorization code flow



    The endpoint stores authorization request and redirects to login page with the authorization request id.
    The user can then do the authentication on the login page.
    The user will be redirected back to the requesting client with authorization code if successfully authenticated.





    Only authorization code flow supported by this endpoint, implicit flow is not supported.






      * Authorize success :
    redirects to login page with the following information: ?request_id={authorization_request_id}





      * Authorize failure :
    redirects to the given redirect uri with the following information:
    ?error={error_code}&error;_description={error description}








    Following are the error code based on the specification:






      * invalid_request: The request is missing a required parameter,
    includes an invalid parameter value, includes a parameter more than once, or is otherwise malformed.





      * server_error:
    The authorization server encountered an unexpected condition that prevented it from fulfilling the request.





      * unauthorized_client: The client is not authorized to request a token using this method.



      * access_denied: The resource owner or authorization server denied the request.



      * invalid_scope: The requested scope is invalid, unknown, or malformed.



      * unsupported_response_type: The authorization server does not support obtaining a token using this method.



      * temporarily_unavailable: The authorization server is currently unable to handle the request
    due to a temporary overloading or maintenance of the server.








    Please refer to the RFC for more information about authorization code flow: https://tools.ietf.org/html/rfc6749#section-4.1



    action code: 10701

    Properties:
        url: /iam/v3/oauth/authorize

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        location query: request_id

        code_challenge: (code_challenge) OPTIONAL str in query

        code_challenge_method: (code_challenge_method) OPTIONAL Union[str, CodeChallengeMethodEnum] in query

        create_headless: (createHeadless) OPTIONAL bool in query

        one_time_link_code: (oneTimeLinkCode) OPTIONAL str in query

        redirect_uri: (redirect_uri) OPTIONAL str in query

        scope: (scope) OPTIONAL str in query

        state: (state) OPTIONAL str in query

        target_auth_page: (target_auth_page) OPTIONAL str in query

        use_redirect_uri_as_login_url_when_locked: (useRedirectUriAsLoginUrlWhenLocked) OPTIONAL bool in query

        client_id: (client_id) REQUIRED str in query

        response_type: (response_type) REQUIRED Union[str, ResponseTypeEnum] in query

    Responses:
        302: Found - (Found. Redirected to login page with either request_id or error.)
    """
    request = AuthorizeV3.create(
        client_id=client_id,
        response_type=response_type,
        code_challenge=code_challenge,
        code_challenge_method=code_challenge_method,
        create_headless=create_headless,
        one_time_link_code=one_time_link_code,
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
    """Change 2FA method (Change2FAMethod)

    Change 2FA method



    This endpoint is used for change 2FA method. Only enabled methods are accepted.




    Supported methods:






      * authenticator


      * backupCode


      * email

    Properties:
        url: /iam/v3/oauth/mfa/factor/change

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

    Responses:
        204: No Content - (Method changed)

        400: Bad Request - RestErrorResponse (10189: invalid factor | 20002: validation error)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
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
    """Change 2FA method (Change2FAMethod)

    Change 2FA method



    This endpoint is used for change 2FA method. Only enabled methods are accepted.




    Supported methods:






      * authenticator


      * backupCode


      * email

    Properties:
        url: /iam/v3/oauth/mfa/factor/change

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

    Responses:
        204: No Content - (Method changed)

        400: Bad Request - RestErrorResponse (10189: invalid factor | 20002: validation error)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = Change2faMethod.create(
        factor=factor,
        mfa_token=mfa_token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetJWKSV3)
def get_jwksv3(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """JSON Web Key Set for verifying JWT (GetJWKSV3)

    This endpoint serves public keys for verifying JWT access tokens generated by this service.




    When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
    to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.




    A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
    caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
    endpoint again.




    Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517



    action code : 10709

    Properties:
        url: /iam/v3/oauth/jwks

        method: GET

        tags: ["OAuth2.0"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - OauthcommonJWKSet (JWKS returned)
    """
    request = GetJWKSV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetJWKSV3)
async def get_jwksv3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """JSON Web Key Set for verifying JWT (GetJWKSV3)

    This endpoint serves public keys for verifying JWT access tokens generated by this service.




    When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
    to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.




    A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
    caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
    endpoint again.




    Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517



    action code : 10709

    Properties:
        url: /iam/v3/oauth/jwks

        method: GET

        tags: ["OAuth2.0"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - OauthcommonJWKSet (JWKS returned)
    """
    request = GetJWKSV3.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetRevocationListV3)
def get_revocation_list_v3(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 revocation list API (GetRevocationListV3)

    This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format.




    This endpoint requires authorized requests header with valid access token.




    The bloom filter uses MurmurHash3 algorithm for hashing the values




    action code : 10708

    Properties:
        url: /iam/v3/oauth/revocationlist

        method: GET

        tags: ["OAuth2.0"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

    Responses:
        200: OK - OauthapiRevocationList (Revocation list returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)
    """
    request = GetRevocationListV3.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetRevocationListV3)
async def get_revocation_list_v3_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 revocation list API (GetRevocationListV3)

    This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format.




    This endpoint requires authorized requests header with valid access token.




    The bloom filter uses MurmurHash3 algorithm for hashing the values




    action code : 10708

    Properties:
        url: /iam/v3/oauth/revocationlist

        method: GET

        tags: ["OAuth2.0"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

    Responses:
        200: OK - OauthapiRevocationList (Revocation list returned)

        401: Unauthorized - RestErrorResponse (20001: unauthorized access)
    """
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
    """OAuth2 access token generation specific to platform (PlatformTokenGrantV3)

    Platform token grant specifically used for performing token grant using platform, e.g. Steam, Justice, etc. The endpoint automatically create an account if the account associated with the platform is not exists yet.
    This endpoint requires all requests to have Authorization header set with Basic access authentication
    constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
    should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
    along with platform_token parameter against publisher namespace.





    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token




    ## Supported platforms:






      * steam : The platform_tokenâs value is the authentication code returned by Steam.


      * steamopenid : Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication


      * facebook : The platform_tokenâs value is the authorization code returned by Facebook OAuth


      * google : The platform_tokenâs value is the authorization code returned by Google OAuth


      * oculus : The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


      * twitch : The platform_tokenâs value is the authorization code returned by Twitch OAuth.


      * discord : The platform_tokenâs value is the authorization code returned by Discord OAuth


      * android : The device_id is the Androidâs device ID


      * ios : The device_id is the iOSâs device ID.


      * apple : The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)


      * device : Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.


      * justice : The platform_tokenâs value is the designated userâs access token.


      * epicgames : The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.


      * ps4 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


      * ps5 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


      * nintendo : The platform_tokenâs value is the authorization code(id_token) returned by Nintendo OAuth.


      * awscognito : The platform_tokenâs value is the aws cognito access token or id token (JWT).


      * live : The platform_tokenâs value is xbox XSTS token


      * xblweb : The platform_tokenâs value is code returned by xbox after login


      * netflix : The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend


      * snapchat : The platform_tokenâs value is the authorization code returned by Snapchat OAuth.



      * for specific generic oauth (OIDC) : The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.





    ## Account Group




    Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
    Login using one of these platform will returns the same IAM user.




    Following is the current registered account grouping:






      * (psn) ps4web


      * (psn) ps4


      * (psn) ps5





    ## Access Token Content




    Following is the access tokenâs content:






      *


    namespace. It is the namespace the token was generated from.





      *


    display_name. The display name of the sub. It is empty if the token is generated from the client credential





      *


    roles. The subâs roles. It is empty if the token is generated from the client credential





      *


    namespace_roles. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace





      *


    permissions. The sub or audâ permissions





      *


    bans. The subâs list of bans. It is used by the IAM client for validating the token.





      *


    jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:




        * 1: Email Address Verified



        * 2: Phone Number Verified



        * 4: Anonymous



        * 8: Suspicious Login






      *


    aud. The aud is the client ID.





      *


    iat. The time the token issues at. It is in Epoch time format





      *


    exp. The time the token expires. It is in Epoch time format





      *


    sub. The UserID. The sub is omitted if the token is generated from client credential






    ## Bans




    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.



    action code : 10704

    Properties:
        url: /iam/v3/oauth/platforms/{platformId}/token

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        client_id: (client_id) OPTIONAL str in form_data

        create_headless: (createHeadless) OPTIONAL bool in form_data

        device_id: (device_id) OPTIONAL str in form_data

        mac_address: (macAddress) OPTIONAL str in form_data

        platform_token: (platform_token) OPTIONAL str in form_data

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenResponse (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """
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
    """OAuth2 access token generation specific to platform (PlatformTokenGrantV3)

    Platform token grant specifically used for performing token grant using platform, e.g. Steam, Justice, etc. The endpoint automatically create an account if the account associated with the platform is not exists yet.
    This endpoint requires all requests to have Authorization header set with Basic access authentication
    constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
    should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
    along with platform_token parameter against publisher namespace.





    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token




    ## Supported platforms:






      * steam : The platform_tokenâs value is the authentication code returned by Steam.


      * steamopenid : Steam's user authentication method using OpenID 2.0. The platform_token's value is URL generated by Steam on web authentication


      * facebook : The platform_tokenâs value is the authorization code returned by Facebook OAuth


      * google : The platform_tokenâs value is the authorization code returned by Google OAuth


      * oculus : The platform_tokenâs value is a string composed of Oculus's user ID and the nonce separated by a colon (:).


      * twitch : The platform_tokenâs value is the authorization code returned by Twitch OAuth.


      * discord : The platform_tokenâs value is the authorization code returned by Discord OAuth


      * android : The device_id is the Androidâs device ID


      * ios : The device_id is the iOSâs device ID.


      * apple : The platform_tokenâs value is the authorization code returned by Apple OAuth.(We will use this code to generate APP token)


      * device : Every device that doesânt run Android and iOS is categorized as a device. The device_id is the deviceâs ID.


      * justice : The platform_tokenâs value is the designated userâs access token.


      * epicgames : The platform_tokenâs value is an access-token obtained from Epicgames EOS Account Service.


      * ps4 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


      * ps5 : The platform_tokenâs value is the authorization code returned by Sony OAuth.


      * nintendo : The platform_tokenâs value is the authorization code(id_token) returned by Nintendo OAuth.


      * awscognito : The platform_tokenâs value is the aws cognito access token or id token (JWT).


      * live : The platform_tokenâs value is xbox XSTS token


      * xblweb : The platform_tokenâs value is code returned by xbox after login


      * netflix : The platform_tokenâs value is GAT (Gamer Access Token) returned by Netflix backend


      * snapchat : The platform_tokenâs value is the authorization code returned by Snapchat OAuth.



      * for specific generic oauth (OIDC) : The platform_tokenâs value should be the same type as created OIDC auth type whether it is auth code, idToken or bearerToken.





    ## Account Group




    Several platforms are grouped under account groups. The accounts on these platforms have the same platform user id.
    Login using one of these platform will returns the same IAM user.




    Following is the current registered account grouping:






      * (psn) ps4web


      * (psn) ps4


      * (psn) ps5





    ## Access Token Content




    Following is the access tokenâs content:






      *


    namespace. It is the namespace the token was generated from.





      *


    display_name. The display name of the sub. It is empty if the token is generated from the client credential





      *


    roles. The subâs roles. It is empty if the token is generated from the client credential





      *


    namespace_roles. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace





      *


    permissions. The sub or audâ permissions





      *


    bans. The subâs list of bans. It is used by the IAM client for validating the token.





      *


    jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:




        * 1: Email Address Verified



        * 2: Phone Number Verified



        * 4: Anonymous



        * 8: Suspicious Login






      *


    aud. The aud is the client ID.





      *


    iat. The time the token issues at. It is in Epoch time format





      *


    exp. The time the token expires. It is in Epoch time format





      *


    sub. The UserID. The sub is omitted if the token is generated from client credential






    ## Bans




    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.



    action code : 10704

    Properties:
        url: /iam/v3/oauth/platforms/{platformId}/token

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        client_id: (client_id) OPTIONAL str in form_data

        create_headless: (createHeadless) OPTIONAL bool in form_data

        device_id: (device_id) OPTIONAL str in form_data

        mac_address: (macAddress) OPTIONAL str in form_data

        platform_token: (platform_token) OPTIONAL str in form_data

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenResponse (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Forbidden)

        503: Service Unavailable - OauthmodelErrorResponse (Third Party Server timeout or unavailable)
    """
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
    """Retrieve User Third Party Platform Token (RetrieveUserThirdPartyPlatformTokenV3)

    Retrieve User Third Party Platform Token




    This endpoint used for retrieving third party platform token for user that login using third party,
    if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
    Passing platform group name or it's member will return same access token that can be used across the platform members.





    The third party platform and platform group covered for this is:






      * (psn) ps4web


      * (psn) ps4


      * (psn) ps5


      * epicgames


      * twitch


      * awscognito

    Properties:
        url: /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenThirdPartyResponse (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        404: Not Found - OauthmodelErrorResponse (Platform Token Not Found)
    """
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
    """Retrieve User Third Party Platform Token (RetrieveUserThirdPartyPlatformTokenV3)

    Retrieve User Third Party Platform Token




    This endpoint used for retrieving third party platform token for user that login using third party,
    if user have not link requested platform in game namespace, will try to retrieving third party platform token from publisher namespace.
    Passing platform group name or it's member will return same access token that can be used across the platform members.





    The third party platform and platform group covered for this is:






      * (psn) ps4web


      * (psn) ps4


      * (psn) ps5


      * epicgames


      * twitch


      * awscognito

    Properties:
        url: /iam/v3/oauth/namespaces/{namespace}/users/{userId}/platforms/{platformId}/platformToken

        method: GET

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenThirdPartyResponse (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        404: Not Found - OauthmodelErrorResponse (Platform Token Not Found)
    """
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
    """Revokes user's tokens' (RevokeUserV3)

    This endpoint revokes all access tokens and refresh tokens a user has prior the revocation time.




    This endpoint requires authorized requests header with valid access token.




    Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'




    It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.




    action code : 10707

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (user revoked)

        400: Bad Request - OauthmodelErrorResponse (invalid input)

        401: Unauthorized - OauthmodelErrorResponse (Token is not exist, expired, or invalid)

        403: Forbidden - OauthmodelErrorResponse (insufficient permission)
    """
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
    """Revokes user's tokens' (RevokeUserV3)

    This endpoint revokes all access tokens and refresh tokens a user has prior the revocation time.




    This endpoint requires authorized requests header with valid access token.




    Required permission 'ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]'




    It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.




    action code : 10707

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId} [UPDATE]

    Properties:
        url: /iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (user revoked)

        400: Bad Request - OauthmodelErrorResponse (invalid input)

        401: Unauthorized - OauthmodelErrorResponse (Token is not exist, expired, or invalid)

        403: Forbidden - OauthmodelErrorResponse (insufficient permission)
    """
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


@same_doc_as(SendMFAAuthenticationCode)
def send_mfa_authentication_code(
    client_id: str,
    factor: str,
    mfa_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send 2FA code (SendMFAAuthenticationCode)

    Send 2FA code



    This endpoint is used for sending 2FA code.

    Properties:
        url: /iam/v3/oauth/mfa/code

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

    Responses:
        204: No Content - (Code sent)

        400: Bad Request - RestErrorResponse (20002: validation error | 10189: invalid factor)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = SendMFAAuthenticationCode.create(
        client_id=client_id,
        factor=factor,
        mfa_token=mfa_token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SendMFAAuthenticationCode)
async def send_mfa_authentication_code_async(
    client_id: str,
    factor: str,
    mfa_token: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send 2FA code (SendMFAAuthenticationCode)

    Send 2FA code



    This endpoint is used for sending 2FA code.

    Properties:
        url: /iam/v3/oauth/mfa/code

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        client_id: (clientId) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

    Responses:
        204: No Content - (Code sent)

        400: Bad Request - RestErrorResponse (20002: validation error | 10189: invalid factor)

        403: Forbidden - RestErrorResponse (20003: forbidden access)

        404: Not Found - RestErrorResponse (20008: user not found)

        429: Too Many Requests - RestErrorResponse (20007: too many requests)

        500: Internal Server Error - RestErrorResponse (20000: internal server error)
    """
    request = SendMFAAuthenticationCode.create(
        client_id=client_id,
        factor=factor,
        mfa_token=mfa_token,
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
    """OAuth2 access token generation endpoint (TokenGrantV3)

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





    ## Access Token Content




    Following is the access tokenâs content:






      *


    namespace. It is the namespace the token was generated from.





      *


    display_name. The display name of the sub. It is empty if the token is generated from the client credential





      *


    roles. The subâs roles. It is empty if the token is generated from the client credential





      *


    namespace_roles. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace





      *


    permissions. The sub or audâ permissions





      *


    bans. The subâs list of bans. It is used by the IAM client for validating the token.





      *


    jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:




        * 1: Email Address Verified



        * 2: Phone Number Verified



        * 4: Anonymous



        * 8: Suspicious Login






      *


    aud. The aud is the targeted resource server.





      *


    iat. The time the token issues at. It is in Epoch time format





      *


    exp. The time the token expires. It is in Epoch time format





      *


    client_id. The UserID. The sub is omitted if the token is generated from client credential





      *


    scope. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings








    ## Bans




    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.




    ## Device Cookie Validation




    For grant type "password" only




    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.




    This endpoint will read device cookie from request header Auth-Trust-Id. If device cookie not found, it will generate a new one and set it into response body auth_trust_id when successfully login.




    ## Track Login History




    This endpoint will track login history to detect suspicious login activity, please provide Device-Id (alphanumeric) in request header parameter otherwise it will set to "unknown".




    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"




    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token




    action code: 10703

    Properties:
        url: /iam/v3/oauth/token

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        auth_trust_id: (Auth-Trust-Id) OPTIONAL Union[str, HeaderStr] in header

        device_id: (device_id) OPTIONAL Union[str, HeaderStr] in header

        client_id: (client_id) OPTIONAL str in form_data

        code: (code) OPTIONAL str in form_data

        code_verifier: (code_verifier) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

    Responses:
        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        429: Too Many Requests - OauthmodelErrorResponse (Too many failed auth attempt)
    """
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
    """OAuth2 access token generation endpoint (TokenGrantV3)

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





    ## Access Token Content




    Following is the access tokenâs content:






      *


    namespace. It is the namespace the token was generated from.





      *


    display_name. The display name of the sub. It is empty if the token is generated from the client credential





      *


    roles. The subâs roles. It is empty if the token is generated from the client credential





      *


    namespace_roles. The subâs roles scoped to namespace. Improvement from roles, which make the role scoped to specific namespace instead of global to publisher namespace





      *


    permissions. The sub or audâ permissions





      *


    bans. The subâs list of bans. It is used by the IAM client for validating the token.





      *


    jflgs. It stands for Justice Flags. It is a special flag used for storing additional status information regarding the sub. It is implemented as a bit mask. Following explains what each bit represents:




        * 1: Email Address Verified



        * 2: Phone Number Verified



        * 4: Anonymous



        * 8: Suspicious Login






      *


    aud. The aud is the targeted resource server.





      *


    iat. The time the token issues at. It is in Epoch time format





      *


    exp. The time the token expires. It is in Epoch time format





      *


    client_id. The UserID. The sub is omitted if the token is generated from client credential





      *


    scope. The scope of the access request, expressed as a list of space-delimited, case-sensitive strings








    ## Bans




    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.




    ## Device Cookie Validation




    For grant type "password" only




    Device Cookie is used to protect the user account from brute force login attack, [more detail from OWASP.




    This endpoint will read device cookie from request header Auth-Trust-Id. If device cookie not found, it will generate a new one and set it into response body auth_trust_id when successfully login.




    ## Track Login History




    This endpoint will track login history to detect suspicious login activity, please provide Device-Id (alphanumeric) in request header parameter otherwise it will set to "unknown".




    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"




    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token




    action code: 10703

    Properties:
        url: /iam/v3/oauth/token

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        auth_trust_id: (Auth-Trust-Id) OPTIONAL Union[str, HeaderStr] in header

        device_id: (device_id) OPTIONAL Union[str, HeaderStr] in header

        client_id: (client_id) OPTIONAL str in form_data

        code: (code) OPTIONAL str in form_data

        code_verifier: (code_verifier) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

    Responses:
        200: OK - OauthmodelTokenWithDeviceCookieResponseV3 (Token returned)

        400: Bad Request - OauthmodelErrorResponse (InvalidRequest)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)

        403: Forbidden - OauthmodelErrorResponse (Unauthorized access)

        429: Too Many Requests - OauthmodelErrorResponse (Too many failed auth attempt)
    """
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
    """OAuth2 token introspection API (TokenIntrospectionV3)

    This endpoint returns information about an access token intended to be used by resource servers or other internal servers.




    This endpoint requires authorized requests header with valid basic or bearer token.




    action code : 10705

    Properties:
        url: /iam/v3/oauth/introspect

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH] or [BEARER_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenIntrospectResponse (OK)

        400: Bad Request - OauthmodelErrorResponse (invalid input)

        401: Unauthorized - OauthmodelErrorResponse (invalid bearer or basic authorization header)
    """
    request = TokenIntrospectionV3.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TokenIntrospectionV3)
async def token_introspection_v3_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 token introspection API (TokenIntrospectionV3)

    This endpoint returns information about an access token intended to be used by resource servers or other internal servers.




    This endpoint requires authorized requests header with valid basic or bearer token.




    action code : 10705

    Properties:
        url: /iam/v3/oauth/introspect

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH] or [BEARER_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenIntrospectResponse (OK)

        400: Bad Request - OauthmodelErrorResponse (invalid input)

        401: Unauthorized - OauthmodelErrorResponse (invalid bearer or basic authorization header)
    """
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
    """OAuth2 token revocation API (TokenRevocationV3)

    This endpoint revokes a token.




    This endpoint requires authorized requests header with Basic Authentication from client that establish the token.


    action code: 10706

    Properties:
        url: /iam/v3/oauth/revoke

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - (Token revoked or does not exist)

        400: Bad Request - OauthmodelErrorResponse (Invalid input)

        401: Unauthorized - OauthmodelErrorResponse (Invalid basic auth header)
    """
    request = TokenRevocationV3.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TokenRevocationV3)
async def token_revocation_v3_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 token revocation API (TokenRevocationV3)

    This endpoint revokes a token.




    This endpoint requires authorized requests header with Basic Authentication from client that establish the token.


    action code: 10706

    Properties:
        url: /iam/v3/oauth/revoke

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - (Token revoked or does not exist)

        400: Bad Request - OauthmodelErrorResponse (Invalid input)

        401: Unauthorized - OauthmodelErrorResponse (Invalid basic auth header)
    """
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
    """Verify 2FA code (Verify2FACode)

    Verify 2FA code



    This endpoint is used for verifying 2FA code.




    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token

    Properties:
        url: /iam/v3/oauth/mfa/verify

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

        remember_device: (rememberDevice) REQUIRED bool in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Unauthorized)
    """
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
    """Verify 2FA code (Verify2FACode)

    Verify 2FA code



    This endpoint is used for verifying 2FA code.




    ## 2FA remember device




    To remember device for 2FA, should provide cookie: device_token or header: Device-Token

    Properties:
        url: /iam/v3/oauth/mfa/verify

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        code: (code) REQUIRED str in form_data

        factor: (factor) REQUIRED str in form_data

        mfa_token: (mfaToken) REQUIRED str in form_data

        remember_device: (rememberDevice) REQUIRED bool in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Token returned)

        401: Unauthorized - OauthmodelErrorResponse (Unauthorized)
    """
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
    """OAuth2 token verification API (VerifyTokenV3)

    This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.

    Properties:
        url: /iam/v3/oauth/verify

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Access Token verified)

        400: Bad Request - (Access Token not exist or expired)
    """
    request = VerifyTokenV3.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(VerifyTokenV3)
async def verify_token_v3_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 token verification API (VerifyTokenV3)

    This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.

    Properties:
        url: /iam/v3/oauth/verify

        method: POST

        tags: ["OAuth2.0"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponseV3 (Access Token verified)

        400: Bad Request - (Access Token not exist or expired)
    """
    request = VerifyTokenV3.create(
        token=token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
