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
    """OAuth2 authorize API (Authorization)

    ## The endpoint is going to be deprecated
    The endpoint supports two response types:
    ### 1. Response Type == "code":
    The endpoint returns an authorization code that will be used by the IAM client to exchange for an access token. It supports two different headers, the basic and the bearer header. Each behaves differently.
    - **The basic header**
    The basic headerâs value is the base64 of the client ID and client secret. It is used by the developer whenever the developer authorizes a user on a same namespace.
    - **The bearer header**
    The bearer headerâs value is an access token. It is used by the developer whenever the developer authorizes a user on a different namespace. The endpoint validates userâs entitlement on the designated namespace for making sure the user is authorized for a designated namespace.

    Following are the responses returned by the endpoint:
    - **Authorize success**: redirects to the given URL with the following information: ?code={authorization code}&state;={state}
    - **Authorize failure**: redirects to the given URL with the following information:?error=access_denied&error;_description=...

    ### 2. Response Type == "token" (Implicit) is deprecated.
    ### Endpoint migration guide

    - **Substitute endpoint (for: basic header style)**: _/iam/v3/oauth/authorize [GET]_
    - **Substitute endpoint (for: bearer header style)**:
    step1: /iam/v3/namespace/{namespace}/token/request [POST] => get code
    step2: /iam/v3/token/exchange [POST] => get token by step1's code
    - **Note:**
    1. V3 is standard OAuth2 flow and support PKCE
    2. Will not support implicit flow in v3.

    Properties:
        url: /iam/oauth/authorize

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        login: (login) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        scope: (scope) OPTIONAL str in form_data

        state: (state) OPTIONAL str in form_data

        client_id: (client_id) REQUIRED str in form_data

        redirect_uri: (redirect_uri) REQUIRED str in form_data

        response_type: (response_type) REQUIRED Union[str, ResponseTypeEnum] in form_data

    Responses:
        302: Found - (Found)
    """
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
    """OAuth2 authorize API (Authorization)

    ## The endpoint is going to be deprecated
    The endpoint supports two response types:
    ### 1. Response Type == "code":
    The endpoint returns an authorization code that will be used by the IAM client to exchange for an access token. It supports two different headers, the basic and the bearer header. Each behaves differently.
    - **The basic header**
    The basic headerâs value is the base64 of the client ID and client secret. It is used by the developer whenever the developer authorizes a user on a same namespace.
    - **The bearer header**
    The bearer headerâs value is an access token. It is used by the developer whenever the developer authorizes a user on a different namespace. The endpoint validates userâs entitlement on the designated namespace for making sure the user is authorized for a designated namespace.

    Following are the responses returned by the endpoint:
    - **Authorize success**: redirects to the given URL with the following information: ?code={authorization code}&state;={state}
    - **Authorize failure**: redirects to the given URL with the following information:?error=access_denied&error;_description=...

    ### 2. Response Type == "token" (Implicit) is deprecated.
    ### Endpoint migration guide

    - **Substitute endpoint (for: basic header style)**: _/iam/v3/oauth/authorize [GET]_
    - **Substitute endpoint (for: bearer header style)**:
    step1: /iam/v3/namespace/{namespace}/token/request [POST] => get code
    step2: /iam/v3/token/exchange [POST] => get token by step1's code
    - **Note:**
    1. V3 is standard OAuth2 flow and support PKCE
    2. Will not support implicit flow in v3.

    Properties:
        url: /iam/oauth/authorize

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        location query: PLACEHOLDER

        login: (login) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        scope: (scope) OPTIONAL str in form_data

        state: (state) OPTIONAL str in form_data

        client_id: (client_id) REQUIRED str in form_data

        redirect_uri: (redirect_uri) REQUIRED str in form_data

        response_type: (response_type) REQUIRED Union[str, ResponseTypeEnum] in form_data

    Responses:
        302: Found - (Found)
    """
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
    """JSON Web Key Set for verifying JWT (GetJWKS)

    ## The endpoint is going to be deprecated
    This endpoint serves public keys for verifying JWT access tokens generated by this service.

    When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
    to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.

    A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
    caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
    endpoint again.

    Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/jwks [GET]_**

    Properties:
        url: /iam/oauth/jwks

        method: GET

        tags: ["OAuth"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - OauthcommonJWKSet (JWKS returned)
    """
    request = GetJWKS.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetJWKS)
async def get_jwks_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """JSON Web Key Set for verifying JWT (GetJWKS)

    ## The endpoint is going to be deprecated
    This endpoint serves public keys for verifying JWT access tokens generated by this service.

    When a client application wants to verify a JWT token, it needs to get the 'kid' value found in the JWT token header and use it
    to look up the corresponding public key from a set returned by this endpoint. The client application can then use that public key to verify the JWT.

    A client application might cache the keys so it doesn't need to do request every time it needs to verify a JWT token. If a client application
    caches the keys and a key with the same 'kid' cannot be found in the cache, it should then try to refresh the keys by making a request to this
    endpoint again.

    Please refer to the RFC for more information about JWK (JSON Web Key): https://tools.ietf.org/html/rfc7517

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/jwks [GET]_**

    Properties:
        url: /iam/oauth/jwks

        method: GET

        tags: ["OAuth"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - OauthcommonJWKSet (JWKS returned)
    """
    request = GetJWKS.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRevocationList)
def get_revocation_list(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 revocation list API (GetRevocationList)

    ## The endpoint is going to be deprecated
    This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format. This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
    The bloom filter uses MurmurHash3 algorithm for hashing the values

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/revocationlist [GET]_**

    Properties:
        url: /iam/oauth/revocationlist

        method: GET

        tags: ["OAuth"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

    Responses:
        200: OK - OauthapiRevocationList (revocation list returned)

        401: Unauthorized - (Invalid basic auth header)
    """
    request = GetRevocationList.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRevocationList)
async def get_revocation_list_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 revocation list API (GetRevocationList)

    ## The endpoint is going to be deprecated
    This endpoint will return a list of revoked users and revoked tokens. List of revoked tokens in bloom filter format. This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
    The bloom filter uses MurmurHash3 algorithm for hashing the values

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/revocationlist [GET]_**

    Properties:
        url: /iam/oauth/revocationlist

        method: GET

        tags: ["OAuth"]

        consumes: [""]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

    Responses:
        200: OK - OauthapiRevocationList (revocation list returned)

        401: Unauthorized - (Invalid basic auth header)
    """
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
    """OAuth2 access token generation specific to platform (PlatformTokenRequestHandler)

    ## The endpoint is going to be deprecated
    This endpoint requires all requests to have Authorization header set with Basic access authentication
    constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
    should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
    along with platform_token parameter against publisher namespace.

    Supported platforms:
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The expected value of the platform token is the URL generated by Steam on web authentication
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /iam/bans..

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/platforms/{platformId}/token [POST]_**

    Properties:
        url: /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (device_id) OPTIONAL str in form_data

        mac_address: (macAddress) OPTIONAL str in form_data

        platform_token: (platform_token) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenResponse (Access Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """OAuth2 access token generation specific to platform (PlatformTokenRequestHandler)

    ## The endpoint is going to be deprecated
    This endpoint requires all requests to have Authorization header set with Basic access authentication
    constructed from client id and client secret. For publisher-game namespace schema : Specify only either platform_token or device_id. Device token grant
    should be requested along with device_id parameter against game namespace. Another 3rd party platform token grant should be requested
    along with platform_token parameter against publisher namespace.

    Supported platforms:
    - **steamopenid**: Steam's user authentication method using OpenID 2.0. The expected value of the platform token is the URL generated by Steam on web authentication
    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /iam/bans..

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/platforms/{platformId}/token [POST]_**

    Properties:
        url: /iam/oauth/namespaces/{namespace}/platforms/{platformId}/token

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (device_id) OPTIONAL str in form_data

        mac_address: (macAddress) OPTIONAL str in form_data

        platform_token: (platform_token) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

        platform_id: (platformId) REQUIRED str in path

    Responses:
        200: OK - OauthmodelTokenResponse (Access Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """OAuth2 user revocation API (RevokeAUser)

    ## The endpoint is going to be deprecated
    This endpoint revokes a user.
    This endpoint requires all requests to have Authorization header set with Bearer access authentication with valid access token.
    When other clients know that the userID has been revoked and the token is issued before the revocation, forcing a new token will contain banned permissions.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]_**

    Properties:
        url: /iam/oauth/revoke/user

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        user_id: (userID) REQUIRED str in form_data

    Responses:
        200: OK - (User revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)
    """
    request = RevokeAUser.create(
        user_id=user_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RevokeAUser)
async def revoke_a_user_async(
    user_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 user revocation API (RevokeAUser)

    ## The endpoint is going to be deprecated
    This endpoint revokes a user.
    This endpoint requires all requests to have Authorization header set with Bearer access authentication with valid access token.
    When other clients know that the userID has been revoked and the token is issued before the revocation, forcing a new token will contain banned permissions.

    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]_**

    Properties:
        url: /iam/oauth/revoke/user

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        user_id: (userID) REQUIRED str in form_data

    Responses:
        200: OK - (User revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)
    """
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
    """OAuth2 token revocation API (RevokeToken)

    ## The endpoint is going to be deprecated
    Revokes a token.
    This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret or Bearer access authentication with valid access token.

    ### Endpoint migration guide
    - **Substitute endpoint: _/v3/oauth/revoke [POST]_**

    Properties:
        url: /iam/oauth/revoke/token

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - (Token revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)
    """
    request = RevokeToken.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RevokeToken)
async def revoke_token_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 token revocation API (RevokeToken)

    ## The endpoint is going to be deprecated
    Revokes a token.
    This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret or Bearer access authentication with valid access token.

    ### Endpoint migration guide
    - **Substitute endpoint: _/v3/oauth/revoke [POST]_**

    Properties:
        url: /iam/oauth/revoke/token

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - (Token revoked or does not exist)

        400: Bad Request - (Invalid input)

        401: Unauthorized - (Invalid basic auth header)
    """
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
    """Revokes user's tokens' (RevokeUser)

    ## The endpoint is going to be deprecated
    This endpoint requires all requests to have authorization header set with bearer token.

    The endpoint revokes all access tokens and refresh tokens a user has prior the revocation time. It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]_**

    Properties:
        url: /iam/oauth/namespaces/{namespace}/users/{userId}/revoke

        method: POST

        tags: ["OAuth"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (User revoked)

        401: Unauthorized - (Invalid basic auth header)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Revokes user's tokens' (RevokeUser)

    ## The endpoint is going to be deprecated
    This endpoint requires all requests to have authorization header set with bearer token.

    The endpoint revokes all access tokens and refresh tokens a user has prior the revocation time. It is a convenient feature for the developer (or admin) who wanted to revokes all user's access tokens and refresh tokens generated before some period of time.
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/admin/namespaces/{namespace}/users/{userId}/revoke [POST]_**

    Properties:
        url: /iam/oauth/namespaces/{namespace}/users/{userId}/revoke

        method: POST

        tags: ["OAuth"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - (User revoked)

        401: Unauthorized - (Invalid basic auth header)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """OAuth2 access token generation endpoint (TokenGrant)

    ## The endpoint is going to be deprecated

    ### Endpoint migration guide

    - **Substitute endpoint: /iam/v3/oauth/token [POST]**
    - **Note: difference in V3 response:**
    format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource

    This endpoint requires all requests to have `Authorization` header set with `Basic` access authentication
    constructed from client id and client secret.

    This endpoint supports different **grant types**:

    1. Grant Type == `client_credentials`:
    This endpoint will check the client credentials provided through Authorization header.
    2. Grant Type == `password`:
    The grant type to use for authenticating a user, whether it's by email / username and password combination
    or through platform.
    3. Grant Type == `refresh_token`:
    Used to get a new access token for a valid refresh token.
    4. Grant Type == `authorization_code`:
    It generates the user token by given the authorization
    code which generated in "/authorize" API response. It should also pass
    in the redirect_uri, which should be the same as generating the
    authorization code request.

    For platform authentication, use grant type `password`.
    The `username` field would be in form of
    `platform:`, for example
    `platform:steam` for Steam. For the `password`
    field, set it to the authentication/authorization ticket or token obtainable through the
    respective platform SDK after authenticated the user to the platform. Supported platforms:

    - **steam** - use `platform:steam` as the username and use the authentication ticket obtained
    from Steam through the Steam SDK as the password.
    - **ps4** - use `platform:ps4` as the username and use the authorization code
    obtained from the PlayStation Network through a player PS4 unit as the password.
    - **live** - use `platform:live` as the username and use token obtained from
    Xbox Secure Token Service (XSTS) as the password.
    - **oculus** - use `platform:oculus` as the username and use the `user_id:nonce`
    as password obtained from Oculus through the Oculus SDK.

    The access token and refresh token are in form of JWT token.
    An access token JWT contains data which structure is similar to the
    Response Class below, but without OAuth-related data. To verify a token, use the public keys
    obtained from the `/jwks` endpoint below.

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
    - **aud**. The aud is the client ID.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **sub**. The UserID. The sub is omitted if the token is generated from client credential

    ## Bans

    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

    ## Track Login History

    This endpoint will track login history to detect suspicious login activity, please provide "device_id" (alphanumeric) in request header parameter otherwise we will set to "unknown".
    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"

    Properties:
        url: /iam/oauth/token

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (Device-Id) OPTIONAL Union[str, HeaderStr] in header

        code: (code) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        namespace: (namespace) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

    Responses:
        200: OK - OauthmodelTokenResponse (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)
    """
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
    """OAuth2 access token generation endpoint (TokenGrant)

    ## The endpoint is going to be deprecated

    ### Endpoint migration guide

    - **Substitute endpoint: /iam/v3/oauth/token [POST]**
    - **Note: difference in V3 response:**
    format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource

    This endpoint requires all requests to have `Authorization` header set with `Basic` access authentication
    constructed from client id and client secret.

    This endpoint supports different **grant types**:

    1. Grant Type == `client_credentials`:
    This endpoint will check the client credentials provided through Authorization header.
    2. Grant Type == `password`:
    The grant type to use for authenticating a user, whether it's by email / username and password combination
    or through platform.
    3. Grant Type == `refresh_token`:
    Used to get a new access token for a valid refresh token.
    4. Grant Type == `authorization_code`:
    It generates the user token by given the authorization
    code which generated in "/authorize" API response. It should also pass
    in the redirect_uri, which should be the same as generating the
    authorization code request.

    For platform authentication, use grant type `password`.
    The `username` field would be in form of
    `platform:`, for example
    `platform:steam` for Steam. For the `password`
    field, set it to the authentication/authorization ticket or token obtainable through the
    respective platform SDK after authenticated the user to the platform. Supported platforms:

    - **steam** - use `platform:steam` as the username and use the authentication ticket obtained
    from Steam through the Steam SDK as the password.
    - **ps4** - use `platform:ps4` as the username and use the authorization code
    obtained from the PlayStation Network through a player PS4 unit as the password.
    - **live** - use `platform:live` as the username and use token obtained from
    Xbox Secure Token Service (XSTS) as the password.
    - **oculus** - use `platform:oculus` as the username and use the `user_id:nonce`
    as password obtained from Oculus through the Oculus SDK.

    The access token and refresh token are in form of JWT token.
    An access token JWT contains data which structure is similar to the
    Response Class below, but without OAuth-related data. To verify a token, use the public keys
    obtained from the `/jwks` endpoint below.

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
    - **aud**. The aud is the client ID.
    - **iat**. The time the token issues at. It is in Epoch time format
    - **exp**. The time the token expires. It is in Epoch time format
    - **sub**. The UserID. The sub is omitted if the token is generated from client credential

    ## Bans

    The JWT contains user's active bans with its expiry date. List of ban types can be obtained from /bans.

    ## Track Login History

    This endpoint will track login history to detect suspicious login activity, please provide "device_id" (alphanumeric) in request header parameter otherwise we will set to "unknown".
    Align with General Data Protection Regulation in Europe, user login history will be kept within 28 days by default"

    Properties:
        url: /iam/oauth/token

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        device_id: (Device-Id) OPTIONAL Union[str, HeaderStr] in header

        code: (code) OPTIONAL str in form_data

        extend_exp: (extend_exp) OPTIONAL bool in form_data

        namespace: (namespace) OPTIONAL str in form_data

        password: (password) OPTIONAL str in form_data

        redirect_uri: (redirect_uri) OPTIONAL str in form_data

        refresh_token: (refresh_token) OPTIONAL str in form_data

        username: (username) OPTIONAL str in form_data

        grant_type: (grant_type) REQUIRED Union[str, GrantTypeEnum] in form_data

    Responses:
        200: OK - OauthmodelTokenResponse (Token returned)

        400: Bad Request - OauthmodelErrorResponse (General request error)

        401: Unauthorized - OauthmodelErrorResponse (Client authentication failed)
    """
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
    """OAuth2 token verification API (VerifyToken)

    ## The endpoint is going to be deprecated
    This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/verify [POST]_**
    - **Note: difference in V3 response:**
    1. format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource

    Properties:
        url: /iam/oauth/verify

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponse (Access Token verified)

        400: Bad Request - (Access Token not exist or expired)
    """
    request = VerifyToken.create(
        token=token,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(VerifyToken)
async def verify_token_async(
    token: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """OAuth2 token verification API (VerifyToken)

    ## The endpoint is going to be deprecated
    This endpoint requires all requests to have Authorization header set with Basic access authentication constructed from client id and client secret.
    ### Endpoint migration guide
    - **Substitute endpoint: _/iam/v3/oauth/verify [POST]_**
    - **Note: difference in V3 response:**
    1. format differenceï¼Pascal case => Camel case): permissions field from Action => action, Resource => resource

    Properties:
        url: /iam/oauth/verify

        method: POST

        tags: ["OAuth"]

        consumes: ["application/x-www-form-urlencoded"]

        produces: ["application/json"]

        securities: [BASIC_AUTH]

        token: (token) REQUIRED str in form_data

    Responses:
        200: OK - OauthmodelTokenResponse (Access Token verified)

        400: Bad Request - (Access Token not exist or expired)
    """
    request = VerifyToken.create(
        token=token,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
