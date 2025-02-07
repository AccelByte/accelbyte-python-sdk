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

from ..models import ModelsChannelRequest
from ..models import ModelsChannelV1
from ..models import ModelsCreateChannelResponse
from ..models import ModelsDequeueRequest
from ..models import ModelsGetChannelsResponse
from ..models import ModelsImportConfigResponse
from ..models import ModelsMatchAddUserIntoSessionRequest
from ..models import ModelsMatchResultRequest
from ..models import ModelsMatchResultResponse
from ..models import ModelsMatchingParty
from ..models import ModelsMatchmakingResult
from ..models import ModelsRebalanceRequest
from ..models import ModelsRebalanceResponse
from ..models import ModelsStatResumeResponse
from ..models import ModelsTicketMetricResultRecord
from ..models import ModelsUpdateChannelRequest
from ..models import ResponseError
from ..models import ResponseErrorV1
from ..models import ServiceGetSessionHistoryDetailedResponseItem
from ..models import ServiceGetSessionHistorySearchResponse
from ..models import ServiceGetSessionHistorySearchResponseV2

from ..operations.matchmaking import AddUserIntoSessionInChannel
from ..operations.matchmaking import BulkGetSessions
from ..operations.matchmaking import CreateChannelHandler
from ..operations.matchmaking import DeleteChannelHandler
from ..operations.matchmaking import DeleteSessionInChannel
from ..operations.matchmaking import DeleteUserFromSessionInChannel
from ..operations.matchmaking import DequeueSessionHandler
from ..operations.matchmaking import ExportChannels
from ..operations.matchmaking import GetAllChannelsHandler
from ..operations.matchmaking import GetAllPartyInAllChannel
from ..operations.matchmaking import GetAllPartyInChannel
from ..operations.matchmaking import GetAllSessionsInChannel
from ..operations.matchmaking import GetMatchPoolMetric
from ..operations.matchmaking import GetSessionHistoryDetailed
from ..operations.matchmaking import GetSingleMatchmakingChannel
from ..operations.matchmaking import GetStatData
from ..operations.matchmaking import ImportChannels
from ..operations.matchmaking import PublicGetAllMatchmakingChannel
from ..operations.matchmaking import PublicGetSingleMatchmakingChannel
from ..operations.matchmaking import QuerySessionHandler
from ..operations.matchmaking import QueueSessionHandler
from ..operations.matchmaking import Rebalance
from ..operations.matchmaking import SearchSessions
from ..operations.matchmaking import SearchSessionsV2
from ..operations.matchmaking import StoreMatchResults
from ..operations.matchmaking import UpdateMatchmakingChannel
from ..models import (
    ModelsChannelRequestBlockedPlayerOptionEnum,
    ModelsChannelRequestSubGamemodeSelectionEnum,
)
from ..models import (
    ModelsUpdateChannelRequestBlockedPlayerOptionEnum,
    ModelsUpdateChannelRequestSubGamemodeSelectionEnum,
)


@deprecated
@same_doc_as(AddUserIntoSessionInChannel)
def add_user_into_session_in_channel(
    body: ModelsMatchAddUserIntoSessionRequest,
    channel_name: str,
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add user into the session in a channel (AddUserIntoSessionInChannel)

    Add user into the session in a channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}

        method: POST

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMatchAddUserIntoSessionRequest in body

        channel_name: (channelName) REQUIRED str in path

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddUserIntoSessionInChannel.create(
        body=body,
        channel_name=channel_name,
        match_id=match_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddUserIntoSessionInChannel)
async def add_user_into_session_in_channel_async(
    body: ModelsMatchAddUserIntoSessionRequest,
    channel_name: str,
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add user into the session in a channel (AddUserIntoSessionInChannel)

    Add user into the session in a channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}

        method: POST

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMatchAddUserIntoSessionRequest in body

        channel_name: (channelName) REQUIRED str in path

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddUserIntoSessionInChannel.create(
        body=body,
        channel_name=channel_name,
        match_id=match_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(BulkGetSessions)
def bulk_get_sessions(
    match_i_ds: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get sessions (BulkGetSessions)

    Bulk get sessions.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_i_ds: (matchIDs) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsMatchmakingResult] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetSessions.create(
        match_i_ds=match_i_ds,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(BulkGetSessions)
async def bulk_get_sessions_async(
    match_i_ds: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Bulk get sessions (BulkGetSessions)

    Bulk get sessions.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_i_ds: (matchIDs) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsMatchmakingResult] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkGetSessions.create(
        match_i_ds=match_i_ds,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateChannelHandler)
def create_channel_handler(
    body: ModelsChannelRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a channel (CreateChannelHandler)

    Creates a new matchmaking channel.

    Matchmaking channels is a list of pool name that is eligible for matchmaking processes.
    GameMode isolates each matchmaking pools.

    If match timeout is set to 0, by default, incoming matchmaking requests will be timed out after 1 hour.

    If max worker delay is set to 0, by default, it will wait for at max ~8 seconds during low volume.

    Rule Set

    Matching Rule used to classify the player. Player that has matched criteria will be grouped together within an ally.

    Valid value for criteria is "distance"

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels

        method: POST

        tags: ["Matchmaking", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateChannelResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateChannelHandler.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateChannelHandler)
async def create_channel_handler_async(
    body: ModelsChannelRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a channel (CreateChannelHandler)

    Creates a new matchmaking channel.

    Matchmaking channels is a list of pool name that is eligible for matchmaking processes.
    GameMode isolates each matchmaking pools.

    If match timeout is set to 0, by default, incoming matchmaking requests will be timed out after 1 hour.

    If max worker delay is set to 0, by default, it will wait for at max ~8 seconds during low volume.

    Rule Set

    Matching Rule used to classify the player. Player that has matched criteria will be grouped together within an ally.

    Valid value for criteria is "distance"

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels

        method: POST

        tags: ["Matchmaking", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateChannelResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateChannelHandler.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteChannelHandler)
def delete_channel_handler(
    channel: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a channel (DeleteChannelHandler)

    Deletes a matchmaking channel. Matchmaking channels is a list of
    pool name that is eligible for matchmaking processes. GameMode isolates each matchmaking pools.

    Trying to delete non-existent channel will result deletion success

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels/{channel}

        method: DELETE

        tags: ["Matchmaking", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel: (channel) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteChannelHandler.create(
        channel=channel,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteChannelHandler)
async def delete_channel_handler_async(
    channel: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a channel (DeleteChannelHandler)

    Deletes a matchmaking channel. Matchmaking channels is a list of
    pool name that is eligible for matchmaking processes. GameMode isolates each matchmaking pools.

    Trying to delete non-existent channel will result deletion success

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels/{channel}

        method: DELETE

        tags: ["Matchmaking", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel: (channel) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteChannelHandler.create(
        channel=channel,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteSessionInChannel)
def delete_session_in_channel(
    channel_name: str,
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete session in a channel (DeleteSessionInChannel)

    Delete a session in a channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}

        method: DELETE

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSessionInChannel.create(
        channel_name=channel_name,
        match_id=match_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteSessionInChannel)
async def delete_session_in_channel_async(
    channel_name: str,
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete session in a channel (DeleteSessionInChannel)

    Delete a session in a channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}

        method: DELETE

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSessionInChannel.create(
        channel_name=channel_name,
        match_id=match_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteUserFromSessionInChannel)
def delete_user_from_session_in_channel(
    channel_name: str,
    match_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user from the session in a channel (DeleteUserFromSessionInChannel)

    Delete a user from a session in the channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}

        method: DELETE

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userID) REQUIRED str in path

    Responses:
        200: OK - (Operation succeeded)

        204: No Content - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserFromSessionInChannel.create(
        channel_name=channel_name,
        match_id=match_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteUserFromSessionInChannel)
async def delete_user_from_session_in_channel_async(
    channel_name: str,
    match_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user from the session in a channel (DeleteUserFromSessionInChannel)

    Delete a user from a session in the channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID}

        method: DELETE

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userID) REQUIRED str in path

    Responses:
        200: OK - (Operation succeeded)

        204: No Content - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserFromSessionInChannel.create(
        channel_name=channel_name,
        match_id=match_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DequeueSessionHandler)
def dequeue_session_handler(
    body: ModelsDequeueRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Dequeue joinable session (DequeueSessionHandler)

    Dequeues joinable session so that it will not be matched with player's match request tickets.

    This endpoint is intended to be called by game server to let matchmaker know that
    the game server does not want more players to its session, even though it is not full.

    Properties:
        url: /matchmaking/namespaces/{namespace}/sessions/dequeue

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDequeueRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DequeueSessionHandler.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DequeueSessionHandler)
async def dequeue_session_handler_async(
    body: ModelsDequeueRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Dequeue joinable session (DequeueSessionHandler)

    Dequeues joinable session so that it will not be matched with player's match request tickets.

    This endpoint is intended to be called by game server to let matchmaker know that
    the game server does not want more players to its session, even though it is not full.

    Properties:
        url: /matchmaking/namespaces/{namespace}/sessions/dequeue

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDequeueRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DequeueSessionHandler.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ExportChannels)
def export_channels(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export channels (ExportChannels)

    Export channels configuration to file.

    Action Code: 510114

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/export

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (OK)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportChannels.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ExportChannels)
async def export_channels_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Export channels (ExportChannels)

    Export channels configuration to file.

    Action Code: 510114

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/export

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Any (OK)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ExportChannels.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAllChannelsHandler)
def get_all_channels_handler(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all channels (GetAllChannelsHandler)

    Reads all available channels in a namespace

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels

        method: GET

        tags: ["Matchmaking", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetChannelsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllChannelsHandler.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAllChannelsHandler)
async def get_all_channels_handler_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all channels (GetAllChannelsHandler)

    Reads all available channels in a namespace

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels

        method: GET

        tags: ["Matchmaking", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetChannelsResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllChannelsHandler.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAllPartyInAllChannel)
def get_all_party_in_all_channel(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all party in all channels (GetAllPartyInAllChannel)

    Get all parties queueing in all channels.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/all/parties

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, List[ModelsMatchingParty]] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPartyInAllChannel.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAllPartyInAllChannel)
async def get_all_party_in_all_channel_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all party in all channels (GetAllPartyInAllChannel)

    Get all parties queueing in all channels.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/all/parties

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - Dict[str, List[ModelsMatchingParty]] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPartyInAllChannel.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAllPartyInChannel)
def get_all_party_in_channel(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all party in a channel (GetAllPartyInChannel)

    Get all parties queueing in a channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsMatchingParty] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPartyInChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAllPartyInChannel)
async def get_all_party_in_channel_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all party in a channel (GetAllPartyInChannel)

    Get all parties queueing in a channel.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsMatchingParty] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllPartyInChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAllSessionsInChannel)
def get_all_sessions_in_channel(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all channel sessions (GetAllSessionsInChannel)

    Get all sessions in a channel.

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsMatchmakingResult] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllSessionsInChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAllSessionsInChannel)
async def get_all_sessions_in_channel_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all channel sessions (GetAllSessionsInChannel)

    Get all sessions in a channel.

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsMatchmakingResult] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAllSessionsInChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetMatchPoolMetric)
def get_match_pool_metric(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get metrics for a specific channel (GetMatchPoolMetric)

    Get metric for a specific match pool

    Result: queue_time in seconds

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics

        method: GET

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsTicketMetricResultRecord (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMatchPoolMetric.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetMatchPoolMetric)
async def get_match_pool_metric_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get metrics for a specific channel (GetMatchPoolMetric)

    Get metric for a specific match pool

    Result: queue_time in seconds

    Properties:
        url: /matchmaking/namespaces/{namespace}/channels/{channelName}/metrics

        method: GET

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsTicketMetricResultRecord (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMatchPoolMetric.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetSessionHistoryDetailed)
def get_session_history_detailed(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get session history detailed (GetSessionHistoryDetailed)







    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/{sessionId}/history/detailed [GET]







    Get session history detailed.

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ServiceGetSessionHistoryDetailedResponseItem] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSessionHistoryDetailed.create(
        match_id=match_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetSessionHistoryDetailed)
async def get_session_history_detailed_async(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get session history detailed (GetSessionHistoryDetailed)







    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/{sessionId}/history/detailed [GET]







    Get session history detailed.

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ServiceGetSessionHistoryDetailedResponseItem] (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSessionHistoryDetailed.create(
        match_id=match_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetSingleMatchmakingChannel)
def get_single_matchmaking_channel(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get single channel (GetSingleMatchmakingChannel)

    Reads single channel based on namespace and channel name

    Action Code: 510112

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelV1 (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleMatchmakingChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetSingleMatchmakingChannel)
async def get_single_matchmaking_channel_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get single channel (GetSingleMatchmakingChannel)

    Reads single channel based on namespace and channel name

    Action Code: 510112

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelV1 (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleMatchmakingChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetStatData)
def get_stat_data(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stats (GetStatData)

    Get a channel's stat data (mean, stddev, min, max) according to the stats collected from statistics service.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsStatResumeResponse (Stats queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStatData.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetStatData)
async def get_stat_data_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get stats (GetStatData)

    Get a channel's stat data (mean, stddev, min, max) according to the stats collected from statistics service.
    '

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/stats

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsStatResumeResponse (Stats queried)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetStatData.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(ImportChannels)
def import_channels(
    file: Optional[Any] = None,
    strategy: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import channels (ImportChannels)

    Import channels configuration from file. It will merge with existing channels.
    Available import strategy:
    - leaveOut: if channel with same key exist, the existing will be used and imported one will be ignored (default)
    - replace: if channel with same key exist, the imported channel will be used and existing one will be removed

    Action Code: 510113

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/import

        method: POST

        tags: ["Matchmaking"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        strategy: (strategy) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsImportConfigResponse (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 510109: failed to read file)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportChannels.create(
        file=file,
        strategy=strategy,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(ImportChannels)
async def import_channels_async(
    file: Optional[Any] = None,
    strategy: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Import channels (ImportChannels)

    Import channels configuration from file. It will merge with existing channels.
    Available import strategy:
    - leaveOut: if channel with same key exist, the existing will be used and imported one will be ignored (default)
    - replace: if channel with same key exist, the imported channel will be used and existing one will be removed

    Action Code: 510113

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/import

        method: POST

        tags: ["Matchmaking"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) OPTIONAL Any in form_data

        strategy: (strategy) OPTIONAL str in form_data

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsImportConfigResponse (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 510109: failed to read file)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ImportChannels.create(
        file=file,
        strategy=strategy,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetAllMatchmakingChannel)
def public_get_all_matchmaking_channel(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all channels (PublicGetAllMatchmakingChannel)

    Reads all available channels in a namespace

    Properties:
        url: /matchmaking/v1/public/namespaces/{namespace}/channels

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsChannelV1] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetAllMatchmakingChannel.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetAllMatchmakingChannel)
async def public_get_all_matchmaking_channel_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all channels (PublicGetAllMatchmakingChannel)

    Reads all available channels in a namespace

    Properties:
        url: /matchmaking/v1/public/namespaces/{namespace}/channels

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsChannelV1] (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetAllMatchmakingChannel.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(PublicGetSingleMatchmakingChannel)
def public_get_single_matchmaking_channel(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get single channel (PublicGetSingleMatchmakingChannel)

    Reads single channel based on namespace and channel name

    Properties:
        url: /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelV1 (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetSingleMatchmakingChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(PublicGetSingleMatchmakingChannel)
async def public_get_single_matchmaking_channel_async(
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get single channel (PublicGetSingleMatchmakingChannel)

    Reads single channel based on namespace and channel name

    Properties:
        url: /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName}

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelV1 (OK)

        400: Bad Request - ResponseErrorV1 (20002: validation error)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseErrorV1 (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetSingleMatchmakingChannel.create(
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(QuerySessionHandler)
def query_session_handler(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query joinable session status (QuerySessionHandler)

    Queries the specified session's status. Game servers are expected to
    call this periodically as long as it has a session in queue to see
    if there are new players being matched to the session.

    Possible session statuses are "sessionInQueue", "sessionFull", and "sessionTimeout".

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /matchmaking/namespaces/{namespace}/sessions/{matchID}/status

        method: GET

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMatchmakingResult (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySessionHandler.create(
        match_id=match_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(QuerySessionHandler)
async def query_session_handler_async(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query joinable session status (QuerySessionHandler)

    Queries the specified session's status. Game servers are expected to
    call this periodically as long as it has a session in queue to see
    if there are new players being matched to the session.

    Possible session statuses are "sessionInQueue", "sessionFull", and "sessionTimeout".

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /matchmaking/namespaces/{namespace}/sessions/{matchID}/status

        method: GET

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMatchmakingResult (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QuerySessionHandler.create(
        match_id=match_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(QueueSessionHandler)
def queue_session_handler(
    body: ModelsMatchmakingResult,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Queue joinable session (QueueSessionHandler)

    Queues joinable session so that it will be matched with player's match request tickets.
    The session queued must be in a channel/game mode that is set to have joinable flag.
    The session will be in queue until it is full or expired.
    Both the number of players and session queue timeout can be set in the channel's config.

    This endpoint is intended to be called by game server to let matchmaker know that
    the game server is ready for receiving more players through matchmaking tickets to its session.

    If a session is already queued, and game server wants to modify the data or
    renew the queue timeout (e.g. some player left and more empty slot opened up),
    simply call this endpoint with the updated session data.

    Properties:
        url: /matchmaking/namespaces/{namespace}/sessions

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMatchmakingResult in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueueSessionHandler.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(QueueSessionHandler)
async def queue_session_handler_async(
    body: ModelsMatchmakingResult,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Queue joinable session (QueueSessionHandler)

    Queues joinable session so that it will be matched with player's match request tickets.
    The session queued must be in a channel/game mode that is set to have joinable flag.
    The session will be in queue until it is full or expired.
    Both the number of players and session queue timeout can be set in the channel's config.

    This endpoint is intended to be called by game server to let matchmaker know that
    the game server is ready for receiving more players through matchmaking tickets to its session.

    If a session is already queued, and game server wants to modify the data or
    renew the queue timeout (e.g. some player left and more empty slot opened up),
    simply call this endpoint with the updated session data.

    Properties:
        url: /matchmaking/namespaces/{namespace}/sessions

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMatchmakingResult in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueueSessionHandler.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(Rebalance)
def rebalance(
    body: ModelsRebalanceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rebalance Matchmaking based on MMR (Rebalance)

    Do rebalance the teams based on MMR from given matchID,
    consider attribute name "mmr" (case-insensitive),
    or any first attribute with criteria "distance"

    Will return rebalanced mm result

    Properties:
        url: /matchmaking/namespaces/{namespace}/rebalance

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRebalanceRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsRebalanceResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Rebalance.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(Rebalance)
async def rebalance_async(
    body: ModelsRebalanceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Rebalance Matchmaking based on MMR (Rebalance)

    Do rebalance the teams based on MMR from given matchID,
    consider attribute name "mmr" (case-insensitive),
    or any first attribute with criteria "distance"

    Will return rebalanced mm result

    Properties:
        url: /matchmaking/namespaces/{namespace}/rebalance

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRebalanceRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsRebalanceResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = Rebalance.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SearchSessions)
def search_sessions(
    limit: int,
    offset: int,
    channel: Optional[str] = None,
    deleted: Optional[bool] = None,
    match_id: Optional[str] = None,
    party_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search sessions (SearchSessions)







    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







    Search sessions.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ServiceGetSessionHistorySearchResponse (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchSessions.create(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SearchSessions)
async def search_sessions_async(
    limit: int,
    offset: int,
    channel: Optional[str] = None,
    deleted: Optional[bool] = None,
    match_id: Optional[str] = None,
    party_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search sessions (SearchSessions)







    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







    Search sessions.

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ServiceGetSessionHistorySearchResponse (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchSessions.create(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SearchSessionsV2)
def search_sessions_v2(
    limit: int,
    offset: int,
    channel: Optional[str] = None,
    deleted: Optional[bool] = None,
    match_id: Optional[str] = None,
    party_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search sessions (SearchSessionsV2)




    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







    Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
    Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.

    Properties:
        url: /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ServiceGetSessionHistorySearchResponseV2 (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchSessionsV2.create(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SearchSessionsV2)
async def search_sessions_v2_async(
    limit: int,
    offset: int,
    channel: Optional[str] = None,
    deleted: Optional[bool] = None,
    match_id: Optional[str] = None,
    party_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search sessions (SearchSessionsV2)




    ## The endpoint is going to be deprecated


    Endpoint migration guide




      * Substitute endpoint: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search [GET]







    Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
    Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.

    Properties:
        url: /matchmaking/v2/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ServiceGetSessionHistorySearchResponseV2 (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SearchSessionsV2.create(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(StoreMatchResults)
def store_match_results(
    body: ModelsMatchResultRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Store match result (StoreMatchResults)

    Process match result into final attribute value and stores it to player attribute

    Will return final attribute value

    Properties:
        url: /matchmaking/namespaces/{namespace}/matchresult

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMatchResultRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMatchResultResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StoreMatchResults.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(StoreMatchResults)
async def store_match_results_async(
    body: ModelsMatchResultRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Store match result (StoreMatchResults)

    Process match result into final attribute value and stores it to player attribute

    Will return final attribute value

    Properties:
        url: /matchmaking/namespaces/{namespace}/matchresult

        method: POST

        tags: ["Matchmaking", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMatchResultRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMatchResultResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StoreMatchResults.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateMatchmakingChannel)
def update_matchmaking_channel(
    body: ModelsUpdateChannelRequest,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a channel (UpdateMatchmakingChannel)

    Update channel based on namespace and channel name

    Action Code: 510111

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}

        method: PATCH

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateChannelRequest in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMatchmakingChannel.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateMatchmakingChannel)
async def update_matchmaking_channel_async(
    body: ModelsUpdateChannelRequest,
    channel_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a channel (UpdateMatchmakingChannel)

    Update channel based on namespace and channel name

    Action Code: 510111

    Properties:
        url: /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}

        method: PATCH

        tags: ["Matchmaking"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateChannelRequest in body

        channel_name: (channelName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Operation succeeded)

        400: Bad Request - ResponseErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorV1 (20001: unauthorized access)

        403: Forbidden - ResponseErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        404: Not Found - ResponseErrorV1 (510110: channel not found)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMatchmakingChannel.create(
        body=body,
        channel_name=channel_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
