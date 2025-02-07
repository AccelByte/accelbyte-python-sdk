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

from ..models import ModelsBlockPlayerRequest
from ..models import ModelsGetAllPlayerBlockedByUsersResponse
from ..models import ModelsGetAllPlayerBlockedUsersResponse
from ..models import ModelsGetAllPlayerSessionAttributeResponse
from ..models import ModelsGetBulkAllPlayerBlockedUsersRequest
from ..models import ModelsGetBulkAllPlayerBlockedUsersResponse
from ..models import ModelsGetLobbyCcuResponse
from ..models import ModelsGetPlayerSessionAttributeResponse
from ..models import ModelsListBlockedPlayerRequest
from ..models import ModelsListUnblockPlayerRequest
from ..models import ModelsSetPlayerSessionAttributeRequest
from ..models import ModelsUnblockPlayerRequest
from ..models import RestapiErrorResponseBody

from ..operations.player import AdminBulkBlockPlayersV1
from ..operations.player import AdminBulkUnblockPlayersV1
from ..operations.player import AdminGetAllPlayerSessionAttribute
from ..operations.player import AdminGetBulkPlayerBlockedPlayersV1
from ..operations.player import AdminGetLobbyCCU
from ..operations.player import AdminGetPlayerBlockedByPlayersV1
from ..operations.player import AdminGetPlayerBlockedPlayersV1
from ..operations.player import AdminGetPlayerSessionAttribute
from ..operations.player import AdminSetPlayerSessionAttribute
from ..operations.player import PublicGetPlayerBlockedByPlayersV1
from ..operations.player import PublicGetPlayerBlockedPlayersV1
from ..operations.player import PublicPlayerBlockPlayersV1
from ..operations.player import PublicUnblockPlayerV1


@same_doc_as(AdminBulkBlockPlayersV1)
def admin_bulk_block_players_v1(
    body: ModelsListBlockedPlayerRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk blocks player by list user id (adminBulkBlockPlayersV1)

    Bulk block player in a namespace by list of user id

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsListBlockedPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkBlockPlayersV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkBlockPlayersV1)
async def admin_bulk_block_players_v1_async(
    body: ModelsListBlockedPlayerRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk blocks player by list user id (adminBulkBlockPlayersV1)

    Bulk block player in a namespace by list of user id

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/block

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsListBlockedPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkBlockPlayersV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBulkUnblockPlayersV1)
def admin_bulk_unblock_players_v1(
    body: ModelsListUnblockPlayerRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk unblock players by list user id (adminBulkUnblockPlayersV1)

    Bulk unblock player in a namespace by list of user id

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock

        method: DELETE

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsListUnblockPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUnblockPlayersV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBulkUnblockPlayersV1)
async def admin_bulk_unblock_players_v1_async(
    body: ModelsListUnblockPlayerRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin bulk unblock players by list user id (adminBulkUnblockPlayersV1)

    Bulk unblock player in a namespace by list of user id

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/bulk/unblock

        method: DELETE

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsListUnblockPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBulkUnblockPlayersV1.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetAllPlayerSessionAttribute)
def admin_get_all_player_session_attribute(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get all player's session attribute (adminGetAllPlayerSessionAttribute)

    Get all player's session attribute by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerSessionAttributeResponse (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllPlayerSessionAttribute.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetAllPlayerSessionAttribute)
async def admin_get_all_player_session_attribute_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get all player's session attribute (adminGetAllPlayerSessionAttribute)

    Get all player's session attribute by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerSessionAttributeResponse (OK)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllPlayerSessionAttribute.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetBulkPlayerBlockedPlayersV1)
def admin_get_bulk_player_blocked_players_v1(
    body: ModelsGetBulkAllPlayerBlockedUsersRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get blocked players by bulk user ids (adminGetBulkPlayerBlockedPlayersV1)

    Get blocked players data by bulk user ids in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetBulkAllPlayerBlockedUsersRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetBulkAllPlayerBlockedUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBulkPlayerBlockedPlayersV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetBulkPlayerBlockedPlayersV1)
async def admin_get_bulk_player_blocked_players_v1_async(
    body: ModelsGetBulkAllPlayerBlockedUsersRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get blocked players by bulk user ids (adminGetBulkPlayerBlockedPlayersV1)

    Get blocked players data by bulk user ids in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/bulk/blocked

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGetBulkAllPlayerBlockedUsersRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetBulkAllPlayerBlockedUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetBulkPlayerBlockedPlayersV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetLobbyCCU)
def admin_get_lobby_ccu(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get number of players currently connected to the lobby. (adminGetLobbyCCU)

    Get the number of players connected to the Lobby in the given namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/ccu

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLobbyCcuResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetLobbyCCU.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetLobbyCCU)
async def admin_get_lobby_ccu_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get number of players currently connected to the lobby. (adminGetLobbyCCU)

    Get the number of players connected to the Lobby in the given namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/ccu

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetLobbyCcuResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetLobbyCCU.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayerBlockedByPlayersV1)
def admin_get_player_blocked_by_players_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get players who blocked this player by user id (adminGetPlayerBlockedByPlayersV1)

    Load get players who blocked this player in a namespace based on user id

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedByUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerBlockedByPlayersV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerBlockedByPlayersV1)
async def admin_get_player_blocked_by_players_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get players who blocked this player by user id (adminGetPlayerBlockedByPlayersV1)

    Load get players who blocked this player in a namespace based on user id

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked-by

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedByUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerBlockedByPlayersV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetPlayerBlockedPlayersV1)
def admin_get_player_blocked_players_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get blocked players by user id (adminGetPlayerBlockedPlayersV1)

    Get blocked players data by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerBlockedPlayersV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetPlayerBlockedPlayersV1)
async def admin_get_player_blocked_players_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get blocked players by user id (adminGetPlayerBlockedPlayersV1)

    Get blocked players data by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/blocked

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerBlockedPlayersV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetPlayerSessionAttribute)
def admin_get_player_session_attribute(
    attribute: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get player's session attribute (adminGetPlayerSessionAttribute)

    Get player's specific session attribute by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        attribute: (attribute) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetPlayerSessionAttributeResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerSessionAttribute.create(
        attribute=attribute,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetPlayerSessionAttribute)
async def admin_get_player_session_attribute_async(
    attribute: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get player's session attribute (adminGetPlayerSessionAttribute)

    Get player's specific session attribute by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes/{attribute}

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        attribute: (attribute) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetPlayerSessionAttributeResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetPlayerSessionAttribute.create(
        attribute=attribute,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminSetPlayerSessionAttribute)
def admin_set_player_session_attribute(
    body: ModelsSetPlayerSessionAttributeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin set player's session attribute (adminSetPlayerSessionAttribute)

    Set player's session attribute by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes

        method: PUT

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetPlayerSessionAttributeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSetPlayerSessionAttribute.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminSetPlayerSessionAttribute)
async def admin_set_player_session_attribute_async(
    body: ModelsSetPlayerSessionAttributeRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin set player's session attribute (adminSetPlayerSessionAttribute)

    Set player's session attribute by user id in a namespace.

    Properties:
        url: /lobby/v1/admin/player/namespaces/{namespace}/users/{userId}/attributes

        method: PUT

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSetPlayerSessionAttributeRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSetPlayerSessionAttribute.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPlayerBlockedByPlayersV1)
def public_get_player_blocked_by_players_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get players who blocked this player by user id (publicGetPlayerBlockedByPlayersV1)

    Required valid user authorization


    load get players who blocked this player in a namespace based on user id

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedByUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPlayerBlockedByPlayersV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPlayerBlockedByPlayersV1)
async def public_get_player_blocked_by_players_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get players who blocked this player by user id (publicGetPlayerBlockedByPlayersV1)

    Required valid user authorization


    load get players who blocked this player in a namespace based on user id

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked-by

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedByUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPlayerBlockedByPlayersV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetPlayerBlockedPlayersV1)
def public_get_player_blocked_players_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get blocked players by user id (publicGetPlayerBlockedPlayersV1)

    Required valid user authorization


    load blocked players in a namespace based on user id

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPlayerBlockedPlayersV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetPlayerBlockedPlayersV1)
async def public_get_player_blocked_players_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get blocked players by user id (publicGetPlayerBlockedPlayersV1)

    Required valid user authorization


    load blocked players in a namespace based on user id

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/blocked

        method: GET

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetAllPlayerBlockedUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetPlayerBlockedPlayersV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPlayerBlockPlayersV1)
def public_player_block_players_v1(
    body: ModelsBlockPlayerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """block player by user id (publicPlayerBlockPlayersV1)

    Required valid user authorization


    add blocked players in a namespace based on user id

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/block

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBlockPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlayerBlockPlayersV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPlayerBlockPlayersV1)
async def public_player_block_players_v1_async(
    body: ModelsBlockPlayerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """block player by user id (publicPlayerBlockPlayersV1)

    Required valid user authorization


    add blocked players in a namespace based on user id

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/block

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBlockPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicPlayerBlockPlayersV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUnblockPlayerV1)
def public_unblock_player_v1(
    body: ModelsUnblockPlayerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """unblock player by user id (publicUnblockPlayerV1)

    Required valid user authorization

    unblock player in a namespace based on user id

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUnblockPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUnblockPlayerV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUnblockPlayerV1)
async def public_unblock_player_v1_async(
    body: ModelsUnblockPlayerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """unblock player by user id (publicUnblockPlayerV1)

    Required valid user authorization

    unblock player in a namespace based on user id

    Properties:
        url: /lobby/v1/public/player/namespaces/{namespace}/users/me/unblock

        method: POST

        tags: ["player"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUnblockPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUnblockPlayerV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
