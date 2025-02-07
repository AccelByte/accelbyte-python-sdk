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

from ..models import ApimodelsPlayerAttributesRequestBody
from ..models import ApimodelsPlayerAttributesResponseBody
from ..models import ApimodelsPlayersCurrentPlatformRequest
from ..models import ApimodelsPlayersCurrentPlatformResponse
from ..models import ResponseError

from ..operations.player import AdminGetPlayerAttributes
from ..operations.player import AdminQueryPlayerAttributes
from ..operations.player import PublicDeletePlayerAttributes
from ..operations.player import PublicGetBulkPlayerCurrentPlatform
from ..operations.player import PublicGetPlayerAttributes
from ..operations.player import PublicStorePlayerAttributes


@same_doc_as(AdminGetPlayerAttributes)
def admin_get_player_attributes(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player attributes. (adminGetPlayerAttributes)

    Admin get attributes of a player.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes

        method: GET

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayerAttributesResponseBody (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerAttributes.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerAttributes)
async def admin_get_player_attributes_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player attributes. (adminGetPlayerAttributes)

    Admin get attributes of a player.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/users/{userId}/attributes

        method: GET

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayerAttributesResponseBody (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerAttributes.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryPlayerAttributes)
def admin_query_player_attributes(
    users: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player attributes. (adminQueryPlayerAttributes)

    Admin get attributes of players.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/users/attributes

        method: GET

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        users: (users) OPTIONAL str in query

    Responses:
        200: OK - List[ApimodelsPlayerAttributesResponseBody] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryPlayerAttributes.create(
        users=users,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryPlayerAttributes)
async def admin_query_player_attributes_async(
    users: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query player attributes. (adminQueryPlayerAttributes)

    Admin get attributes of players.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/users/attributes

        method: GET

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        users: (users) OPTIONAL str in query

    Responses:
        200: OK - List[ApimodelsPlayerAttributesResponseBody] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryPlayerAttributes.create(
        users=users,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDeletePlayerAttributes)
def public_delete_player_attributes(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove player attributes. (publicDeletePlayerAttributes)

    Reset player attributes.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/attributes

        method: DELETE

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePlayerAttributes.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeletePlayerAttributes)
async def public_delete_player_attributes_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove player attributes. (publicDeletePlayerAttributes)

    Reset player attributes.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/attributes

        method: DELETE

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeletePlayerAttributes.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetBulkPlayerCurrentPlatform)
def public_get_bulk_player_current_platform(
    body: ApimodelsPlayersCurrentPlatformRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player current platform in bulk. (publicGetBulkPlayerCurrentPlatform)

    Get bulk players current platform.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/bulk/platform

        method: POST

        tags: ["Player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPlayersCurrentPlatformRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayersCurrentPlatformResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetBulkPlayerCurrentPlatform.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetBulkPlayerCurrentPlatform)
async def public_get_bulk_player_current_platform_async(
    body: ApimodelsPlayersCurrentPlatformRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player current platform in bulk. (publicGetBulkPlayerCurrentPlatform)

    Get bulk players current platform.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/bulk/platform

        method: POST

        tags: ["Player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPlayersCurrentPlatformRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayersCurrentPlatformResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetBulkPlayerCurrentPlatform.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPlayerAttributes)
def public_get_player_attributes(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player attributes. (publicGetPlayerAttributes)

    Get player attributes.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/attributes

        method: GET

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayerAttributesResponseBody (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPlayerAttributes.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPlayerAttributes)
async def public_get_player_attributes_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get player attributes. (publicGetPlayerAttributes)

    Get player attributes.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/attributes

        method: GET

        tags: ["Player"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayerAttributesResponseBody (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPlayerAttributes.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicStorePlayerAttributes)
def public_store_player_attributes(
    body: ApimodelsPlayerAttributesRequestBody,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Store player attributes. (publicStorePlayerAttributes)

    This API behaves to upsert player's attributes.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/attributes

        method: POST

        tags: ["Player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPlayerAttributesRequestBody in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayerAttributesResponseBody (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicStorePlayerAttributes.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicStorePlayerAttributes)
async def public_store_player_attributes_async(
    body: ApimodelsPlayerAttributesRequestBody,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Store player attributes. (publicStorePlayerAttributes)

    This API behaves to upsert player's attributes.

    Field descriptions:
    - userID : user who owns the attributes.
    - crossplayEnabled : set to true if the player wants to enable crossplay to their session (default: false).
    - platforms : list of the player's 3rd party platform account information.
    - name : platform name. supported platforms: STEAM, XBOX, PSN
    - userID : platform userID
    - data : other data that the player wants to store.
    - PSN_PUSH_CONTEXT_ID: if provided, session will refer to this when performing session sync with PSN, otherwise will populate from session attributes
    - currentPlatform : latest user game platform.
    - roles : user role for matchmaking role base support.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/attributes

        method: POST

        tags: ["Player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPlayerAttributesRequestBody in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPlayerAttributesResponseBody (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicStorePlayerAttributes.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
