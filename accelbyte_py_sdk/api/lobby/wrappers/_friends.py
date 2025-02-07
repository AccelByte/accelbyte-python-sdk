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

from ..models import ModelBulkFriendsRequest
from ..models import ModelBulkFriendsResponse
from ..models import ModelFriendshipConnectionResponse
from ..models import ModelGetFriendsResponse
from ..models import ModelGetUserFriendsResponse
from ..models import ModelGetUserIncomingFriendsResponse
from ..models import ModelGetUserOutgoingFriendsResponse
from ..models import ModelListBulkUserPlatformsResponse
from ..models import ModelLoadIncomingFriendsWithTimeResponse
from ..models import ModelLoadOutgoingFriendsWithTimeResponse
from ..models import ModelNativeFriendRequest
from ..models import ModelNativeFriendSyncResponse
from ..models import ModelUserAcceptFriendRequest
from ..models import ModelUserCancelFriendRequest
from ..models import ModelUserGetFriendshipStatusResponse
from ..models import ModelUserRejectFriendRequest
from ..models import ModelUserRequestFriendRequest
from ..models import ModelUserUnfriendRequest
from ..models import RestapiErrorResponseBody
from ..models import RestapiErrorResponseV1

from ..operations.friends import AddFriendsWithoutConfirmation
from ..operations.friends import AdminListFriendsOfFriends
from ..operations.friends import BulkDeleteFriends
from ..operations.friends import GetIncomingFriendRequests
from ..operations.friends import GetListOfFriends
from ..operations.friends import GetOutgoingFriendRequests
from ..operations.friends import GetUserFriendsUpdated
from ..operations.friends import GetUserFriendsWithPlatform
from ..operations.friends import GetUserIncomingFriends
from ..operations.friends import GetUserIncomingFriendsWithTime
from ..operations.friends import GetUserOutgoingFriends
from ..operations.friends import GetUserOutgoingFriendsWithTime
from ..operations.friends import SyncNativeFriends
from ..operations.friends import UserAcceptFriendRequest
from ..operations.friends import UserCancelFriendRequest
from ..operations.friends import UserGetFriendshipStatus
from ..operations.friends import UserRejectFriendRequest
from ..operations.friends import UserRequestFriend
from ..operations.friends import UserUnfriendRequest


@same_doc_as(AddFriendsWithoutConfirmation)
def add_friends_without_confirmation(
    body: ModelBulkFriendsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add friends without confirmation (addFriendsWithoutConfirmation)

    Friends request in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/users/{userId}/add/bulk

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkFriendsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content -

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddFriendsWithoutConfirmation.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AddFriendsWithoutConfirmation)
async def add_friends_without_confirmation_async(
    body: ModelBulkFriendsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add friends without confirmation (addFriendsWithoutConfirmation)

    Friends request in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/users/{userId}/add/bulk

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkFriendsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content -

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddFriendsWithoutConfirmation.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListFriendsOfFriends)
def admin_list_friends_of_friends(
    user_id: str,
    friend_id: Optional[str] = None,
    limit: Optional[int] = None,
    nopaging: Optional[bool] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Load list friends of friends (adminListFriendsOfFriends)

    Load list friends and friends of friends in a namespace. Response subjectId will be different with requested userId if the user is not directly friend

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        friend_id: (friendId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        nopaging: (nopaging) OPTIONAL bool in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelFriendshipConnectionResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListFriendsOfFriends.create(
        user_id=user_id,
        friend_id=friend_id,
        limit=limit,
        nopaging=nopaging,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListFriendsOfFriends)
async def admin_list_friends_of_friends_async(
    user_id: str,
    friend_id: Optional[str] = None,
    limit: Optional[int] = None,
    nopaging: Optional[bool] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Load list friends of friends (adminListFriendsOfFriends)

    Load list friends and friends of friends in a namespace. Response subjectId will be different with requested userId if the user is not directly friend

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/of-friends

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        friend_id: (friendId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        nopaging: (nopaging) OPTIONAL bool in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelFriendshipConnectionResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListFriendsOfFriends.create(
        user_id=user_id,
        friend_id=friend_id,
        limit=limit,
        nopaging=nopaging,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(BulkDeleteFriends)
def bulk_delete_friends(
    body: ModelBulkFriendsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete friends, and incoming/outgoing friend requests (bulkDeleteFriends)

    Friends request in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/users/{userId}/delete/bulk

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkFriendsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelBulkFriendsResponse (number of deleted items (one friendship consists of 2 items))

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - ModelBulkFriendsResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkDeleteFriends.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkDeleteFriends)
async def bulk_delete_friends_async(
    body: ModelBulkFriendsRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete friends, and incoming/outgoing friend requests (bulkDeleteFriends)

    Friends request in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/users/{userId}/delete/bulk

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelBulkFriendsRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelBulkFriendsResponse (number of deleted items (one friendship consists of 2 items))

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - ModelBulkFriendsResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkDeleteFriends.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetIncomingFriendRequests)
def get_incoming_friend_requests(
    user_id: str,
    friend_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get incoming friend requests (get incoming friend requests)

    Get list of incoming friend requests.

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        friend_id: (friendId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelLoadIncomingFriendsWithTimeResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIncomingFriendRequests.create(
        user_id=user_id,
        friend_id=friend_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetIncomingFriendRequests)
async def get_incoming_friend_requests_async(
    user_id: str,
    friend_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get incoming friend requests (get incoming friend requests)

    Get list of incoming friend requests.

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/incoming

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        friend_id: (friendId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelLoadIncomingFriendsWithTimeResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetIncomingFriendRequests.create(
        user_id=user_id,
        friend_id=friend_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetListOfFriends)
def get_list_of_friends(
    user_id: str,
    friend_id: Optional[str] = None,
    friend_ids: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of friends (get list of friends)

    Get list of friends in a namespace.

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        friend_id: (friendId) OPTIONAL str in query

        friend_ids: (friendIds) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelGetFriendsResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfFriends.create(
        user_id=user_id,
        friend_id=friend_id,
        friend_ids=friend_ids,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetListOfFriends)
async def get_list_of_friends_async(
    user_id: str,
    friend_id: Optional[str] = None,
    friend_ids: Optional[List[str]] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of friends (get list of friends)

    Get list of friends in a namespace.

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        friend_id: (friendId) OPTIONAL str in query

        friend_ids: (friendIds) OPTIONAL List[str] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelGetFriendsResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetListOfFriends.create(
        user_id=user_id,
        friend_id=friend_id,
        friend_ids=friend_ids,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetOutgoingFriendRequests)
def get_outgoing_friend_requests(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of outgoing friend requests (get outgoing friend requests)

    Get list of outgoing friend requests in a namespace.

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelLoadOutgoingFriendsWithTimeResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOutgoingFriendRequests.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetOutgoingFriendRequests)
async def get_outgoing_friend_requests_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of outgoing friend requests (get outgoing friend requests)

    Get list of outgoing friend requests in a namespace.

    Properties:
        url: /lobby/v1/admin/friend/namespaces/{namespace}/users/{userId}/outgoing

        method: GET

        tags: ["friends"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelLoadOutgoingFriendsWithTimeResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetOutgoingFriendRequests.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserFriendsUpdated)
def get_user_friends_updated(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of friends (getUserFriendsUpdated)

    Get list of friends in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelGetUserFriendsResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserFriendsUpdated.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserFriendsUpdated)
async def get_user_friends_updated_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of friends (getUserFriendsUpdated)

    Get list of friends in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelGetUserFriendsResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserFriendsUpdated.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserFriendsWithPlatform)
def get_user_friends_with_platform(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of friends with platform data (getUserFriendsWithPlatform)

    Get list of friends with platform data in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/platforms

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListBulkUserPlatformsResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserFriendsWithPlatform.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserFriendsWithPlatform)
async def get_user_friends_with_platform_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of friends with platform data (getUserFriendsWithPlatform)

    Get list of friends with platform data in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/platforms

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelListBulkUserPlatformsResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserFriendsWithPlatform.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserIncomingFriends)
def get_user_incoming_friends(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of incoming friends (getUserIncomingFriends)

    Get list of incoming friends in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/incoming

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelGetUserIncomingFriendsResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserIncomingFriends.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserIncomingFriends)
async def get_user_incoming_friends_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of incoming friends (getUserIncomingFriends)

    Get list of incoming friends in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/incoming

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelGetUserIncomingFriendsResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserIncomingFriends.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserIncomingFriendsWithTime)
def get_user_incoming_friends_with_time(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of incoming friends with requested time info (getUserIncomingFriendsWithTime)

    Get list of incoming friends with requested time info in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/incoming-time

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelLoadIncomingFriendsWithTimeResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserIncomingFriendsWithTime.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserIncomingFriendsWithTime)
async def get_user_incoming_friends_with_time_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of incoming friends with requested time info (getUserIncomingFriendsWithTime)

    Get list of incoming friends with requested time info in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/incoming-time

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelLoadIncomingFriendsWithTimeResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserIncomingFriendsWithTime.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserOutgoingFriends)
def get_user_outgoing_friends(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of outgoing friends (getUserOutgoingFriends)

    Get list of outgoing friends in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/outgoing

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelGetUserOutgoingFriendsResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOutgoingFriends.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserOutgoingFriends)
async def get_user_outgoing_friends_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of outgoing friends (getUserOutgoingFriends)

    Get list of outgoing friends in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/outgoing

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelGetUserOutgoingFriendsResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOutgoingFriends.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserOutgoingFriendsWithTime)
def get_user_outgoing_friends_with_time(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of outgoing friends with requested time info (getUserOutgoingFriendsWithTime)

    Get list of outgoing friends with requested time info in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/outgoing-time

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelLoadOutgoingFriendsWithTimeResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOutgoingFriendsWithTime.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserOutgoingFriendsWithTime)
async def get_user_outgoing_friends_with_time_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get list of outgoing friends with requested time info (getUserOutgoingFriendsWithTime)

    Get list of outgoing friends with requested time info in a namespace.

    Properties:
        url: /friends/namespaces/{namespace}/me/outgoing-time

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - List[ModelLoadOutgoingFriendsWithTimeResponse] (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserOutgoingFriendsWithTime.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SyncNativeFriends)
def sync_native_friends(
    body: List[ModelNativeFriendRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync friends using server to server call to native first party server. (syncNativeFriends)

    Sync friends using server to server call to native first party server.
    Supported platforms:
    steam: The platform_tokenâs value is the binary ticket returned by Steam.
    If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: {identity}:{ticket}
    the {identity} was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain : in this {identity}
    ps4: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    ps5: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    pspc: The platform_tokenâs value is the authorization code returned by Sony OAuth.

    Properties:
        url: /friends/sync/namespaces/{namespace}/me

        method: PATCH

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelNativeFriendRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelNativeFriendSyncResponse]

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncNativeFriends.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SyncNativeFriends)
async def sync_native_friends_async(
    body: List[ModelNativeFriendRequest],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """sync friends using server to server call to native first party server. (syncNativeFriends)

    Sync friends using server to server call to native first party server.
    Supported platforms:
    steam: The platform_tokenâs value is the binary ticket returned by Steam.
    If this ticket was generated by Steam GetAuthTicketForWebApi with version >= 1.57, then platform token should use this style: {identity}:{ticket}
    the {identity} was the parameter to call GetAuthTicketForWebApi when the ticket was created. Note: Do not contain : in this {identity}
    ps4: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    ps5: The platform_tokenâs value is the authorization code returned by Sony OAuth.
    pspc: The platform_tokenâs value is the authorization code returned by Sony OAuth.

    Properties:
        url: /friends/sync/namespaces/{namespace}/me

        method: PATCH

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED List[ModelNativeFriendRequest] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelNativeFriendSyncResponse]

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SyncNativeFriends.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UserAcceptFriendRequest)
def user_accept_friend_request(
    body: ModelUserAcceptFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user accept friend (userAcceptFriendRequest)

    User accept friend.

    Properties:
        url: /friends/namespaces/{namespace}/me/request/accept

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserAcceptFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserAcceptFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UserAcceptFriendRequest)
async def user_accept_friend_request_async(
    body: ModelUserAcceptFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user accept friend (userAcceptFriendRequest)

    User accept friend.

    Properties:
        url: /friends/namespaces/{namespace}/me/request/accept

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserAcceptFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserAcceptFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UserCancelFriendRequest)
def user_cancel_friend_request(
    body: ModelUserCancelFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user cancel a friend request (userCancelFriendRequest)

    User cancel a friend request.

    Properties:
        url: /friends/namespaces/{namespace}/me/request/cancel

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCancelFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserCancelFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UserCancelFriendRequest)
async def user_cancel_friend_request_async(
    body: ModelUserCancelFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user cancel a friend request (userCancelFriendRequest)

    User cancel a friend request.

    Properties:
        url: /friends/namespaces/{namespace}/me/request/cancel

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserCancelFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserCancelFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UserGetFriendshipStatus)
def user_get_friendship_status(
    friend_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user get friendship status (userGetFriendshipStatus)

    User get friendship status.
    Code: 0 - Message: "not friend"
    Code: 1 - Message: "outgoing"
    Code: 2 - Message: "incoming"
    Code: 3 - Message: "friend"

    Properties:
        url: /friends/namespaces/{namespace}/me/status/{friendId}

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserGetFriendshipStatusResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserGetFriendshipStatus.create(
        friend_id=friend_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UserGetFriendshipStatus)
async def user_get_friendship_status_async(
    friend_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user get friendship status (userGetFriendshipStatus)

    User get friendship status.
    Code: 0 - Message: "not friend"
    Code: 1 - Message: "outgoing"
    Code: 2 - Message: "incoming"
    Code: 3 - Message: "friend"

    Properties:
        url: /friends/namespaces/{namespace}/me/status/{friendId}

        method: GET

        tags: ["friends", "public"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelUserGetFriendshipStatusResponse (OK)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserGetFriendshipStatus.create(
        friend_id=friend_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UserRejectFriendRequest)
def user_reject_friend_request(
    body: ModelUserRejectFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user reject a friend request (userRejectFriendRequest)

    User reject a friend request.

    Properties:
        url: /friends/namespaces/{namespace}/me/request/reject

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserRejectFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserRejectFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UserRejectFriendRequest)
async def user_reject_friend_request_async(
    body: ModelUserRejectFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user reject a friend request (userRejectFriendRequest)

    User reject a friend request.

    Properties:
        url: /friends/namespaces/{namespace}/me/request/reject

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserRejectFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserRejectFriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UserRequestFriend)
def user_request_friend(
    body: ModelUserRequestFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user add friend (userRequestFriend)

    Client should provide either friendID or friendPublicID. If both are provided, friendID will be chosen to be used.
    This endpoint will only send a pending invite that can be either rejected/accepted.
    Metadata is optional parameter which will be sent over via friend request notification.

    Properties:
        url: /friends/namespaces/{namespace}/me/request

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserRequestFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        422: Unprocessable Entity - RestapiErrorResponseV1 (Unprocessable Entity)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserRequestFriend.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UserRequestFriend)
async def user_request_friend_async(
    body: ModelUserRequestFriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user add friend (userRequestFriend)

    Client should provide either friendID or friendPublicID. If both are provided, friendID will be chosen to be used.
    This endpoint will only send a pending invite that can be either rejected/accepted.
    Metadata is optional parameter which will be sent over via friend request notification.

    Properties:
        url: /friends/namespaces/{namespace}/me/request

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserRequestFriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - (Created)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        422: Unprocessable Entity - RestapiErrorResponseV1 (Unprocessable Entity)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserRequestFriend.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UserUnfriendRequest)
def user_unfriend_request(
    body: ModelUserUnfriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user unfriend a friend (userUnfriendRequest)

    User unfriend a friend.

    Properties:
        url: /friends/namespaces/{namespace}/me/unfriend

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUnfriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserUnfriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UserUnfriendRequest)
async def user_unfriend_request_async(
    body: ModelUserUnfriendRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """user unfriend a friend (userUnfriendRequest)

    User unfriend a friend.

    Properties:
        url: /friends/namespaces/{namespace}/me/unfriend

        method: POST

        tags: ["friends", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelUserUnfriendRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseV1 (Bad Request)

        401: Unauthorized - RestapiErrorResponseV1 (Unauthorized)

        403: Forbidden - RestapiErrorResponseV1 (Forbidden)

        404: Not Found - RestapiErrorResponseV1 (Not Found)

        500: Internal Server Error - RestapiErrorResponseV1 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserUnfriendRequest.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
