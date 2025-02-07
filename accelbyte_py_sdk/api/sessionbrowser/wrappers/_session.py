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

from ..models import ModelsActiveCustomGameResponse
from ..models import ModelsActiveMatchmakingGameResponse
from ..models import ModelsAddPlayerRequest
from ..models import ModelsAddPlayerResponse
from ..models import ModelsAdminSessionResponse
from ..models import ModelsCountActiveSessionResponse
from ..models import ModelsCreateSessionRequest
from ..models import ModelsGetSessionHistoryDetailedResponseItem
from ..models import ModelsGetSessionHistorySearchResponseV2
from ..models import ModelsJoinGameSessionRequest
from ..models import ModelsRecentPlayerQueryResponse
from ..models import ModelsSessionByUserIDsResponse
from ..models import ModelsSessionQueryResponse
from ..models import ModelsSessionResponse
from ..models import ModelsUpdateSessionRequest
from ..models import ModelsUpdateSettingsRequest
from ..models import ResponseError
from ..models import RestapiErrorResponseV2
from ..models import RestapiErrorV1

from ..operations.session import AddPlayerToSession
from ..operations.session import AdminDeleteSession
from ..operations.session import AdminGetSession
from ..operations.session import AdminQuerySession
from ..operations.session import AdminSearchSessionsV2
from ..operations.session import CreateSession
from ..operations.session import DeleteSession
from ..operations.session import DeleteSessionLocalDS
from ..operations.session import GetActiveCustomGameSessions
from ..operations.session import GetActiveMatchmakingGameSessions
from ..operations.session import GetRecentPlayer
from ..operations.session import GetSession
from ..operations.session import GetSessionByUserIDs
from ..operations.session import GetSessionHistoryDetailed
from ..operations.session import GetTotalActiveSession
from ..operations.session import JoinSession
from ..operations.session import RemovePlayerFromSession
from ..operations.session import UpdateSession
from ..operations.session import UpdateSettings
from ..operations.session import UserQuerySession


@deprecated
@same_doc_as(AddPlayerToSession)
def add_player_to_session(
    body: ModelsAddPlayerRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add player to game session (AddPlayerToSession)

    Add player to game session

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player

        method: POST

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAddPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsAddPlayerResponse (session updated)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddPlayerToSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddPlayerToSession)
async def add_player_to_session_async(
    body: ModelsAddPlayerRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add player to game session (AddPlayerToSession)

    Add player to game session

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player

        method: POST

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAddPlayerRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsAddPlayerResponse (session updated)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AddPlayerToSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminDeleteSession)
def admin_delete_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin delete specified session by session ID (AdminDeleteSession)

    Admin delete the session by session ID

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}

        method: DELETE

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminSessionResponse (session deleted)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminDeleteSession)
async def admin_delete_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin delete specified session by session ID (AdminDeleteSession)

    Admin delete the session by session ID

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}

        method: DELETE

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminSessionResponse (session deleted)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminGetSession)
def admin_get_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get specified session by session ID (AdminGetSession)

    Get the session by session ID for admin user

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminSessionResponse (session get)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminGetSession)
async def admin_get_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin get specified session by session ID (AdminGetSession)

    Get the session by session ID for admin user

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID}

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsAdminSessionResponse (session get)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminQuerySession)
def admin_query_session(
    session_type: str,
    game_mode: Optional[str] = None,
    game_version: Optional[str] = None,
    joinable: Optional[str] = None,
    limit: Optional[int] = None,
    match_exist: Optional[str] = None,
    match_id: Optional[str] = None,
    offset: Optional[int] = None,
    server_status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query to available game session (AdminQuerySession)

    Query to available game session

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        game_mode: (game_mode) OPTIONAL str in query

        game_version: (game_version) OPTIONAL str in query

        joinable: (joinable) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_exist: (match_exist) OPTIONAL str in query

        match_id: (match_id) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        server_status: (server_status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        session_type: (session_type) REQUIRED str in query

    Responses:
        200: OK - ModelsSessionQueryResponse (session get)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQuerySession.create(
        session_type=session_type,
        game_mode=game_mode,
        game_version=game_version,
        joinable=joinable,
        limit=limit,
        match_exist=match_exist,
        match_id=match_id,
        offset=offset,
        server_status=server_status,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminQuerySession)
async def admin_query_session_async(
    session_type: str,
    game_mode: Optional[str] = None,
    game_version: Optional[str] = None,
    joinable: Optional[str] = None,
    limit: Optional[int] = None,
    match_exist: Optional[str] = None,
    match_id: Optional[str] = None,
    offset: Optional[int] = None,
    server_status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query to available game session (AdminQuerySession)

    Query to available game session

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        game_mode: (game_mode) OPTIONAL str in query

        game_version: (game_version) OPTIONAL str in query

        joinable: (joinable) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_exist: (match_exist) OPTIONAL str in query

        match_id: (match_id) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        server_status: (server_status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        session_type: (session_type) REQUIRED str in query

    Responses:
        200: OK - ModelsSessionQueryResponse (session get)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQuerySession.create(
        session_type=session_type,
        game_mode=game_mode,
        game_version=game_version,
        joinable=joinable,
        limit=limit,
        match_exist=match_exist,
        match_id=match_id,
        offset=offset,
        server_status=server_status,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminSearchSessionsV2)
def admin_search_sessions_v2(
    limit: int,
    offset: int,
    channel: Optional[str] = None,
    deleted: Optional[bool] = None,
    match_id: Optional[str] = None,
    party_id: Optional[str] = None,
    session_type: Optional[str] = None,
    status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search sessions (AdminSearchSessionsV2)

    Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
    Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        session_type: (sessionType) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsGetSessionHistorySearchResponseV2 (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSearchSessionsV2.create(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        session_type=session_type,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminSearchSessionsV2)
async def admin_search_sessions_v2_async(
    limit: int,
    offset: int,
    channel: Optional[str] = None,
    deleted: Optional[bool] = None,
    match_id: Optional[str] = None,
    party_id: Optional[str] = None,
    session_type: Optional[str] = None,
    status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search sessions (AdminSearchSessionsV2)

    Search sessions. Optimize the query by differentiating query with filter namespace only and filter with namespace & other filter (partyID, userID, matchID).
    Query with filter namespace only will not group whole session data while query with filter namespace & other filter will include session data.

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        channel: (channel) OPTIONAL str in query

        deleted: (deleted) OPTIONAL bool in query

        match_id: (matchID) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        session_type: (sessionType) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

        limit: (limit) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsGetSessionHistorySearchResponseV2 (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - ResponseError (20000: internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSearchSessionsV2.create(
        limit=limit,
        offset=offset,
        channel=channel,
        deleted=deleted,
        match_id=match_id,
        party_id=party_id,
        session_type=session_type,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateSession)
def create_session(
    body: ModelsCreateSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a new game session (CreateSession)

    This end point intended to be called directly by P2P game client host or by DSMC

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession

        method: POST

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session created)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        403: Forbidden - RestapiErrorResponseV2 (user is banned from creating session)

        409: Conflict - RestapiErrorResponseV2 (session already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSession.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateSession)
async def create_session_async(
    body: ModelsCreateSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a new game session (CreateSession)

    This end point intended to be called directly by P2P game client host or by DSMC

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession

        method: POST

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session created)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        403: Forbidden - RestapiErrorResponseV2 (user is banned from creating session)

        409: Conflict - RestapiErrorResponseV2 (session already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSession.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteSession)
def delete_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete specified (p2p) session by session ID (DeleteSession)

    Delete the session (p2p) by session ID

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}

        method: DELETE

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteSession)
async def delete_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete specified (p2p) session by session ID (DeleteSession)

    Delete the session (p2p) by session ID

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}

        method: DELETE

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteSessionLocalDS)
def delete_session_local_ds(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Only use for local DS entry, will error when calling non local DS entry (DeleteSessionLocalDS)

    Only use for local DS entry, will error when calling non local DS entry

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/localds

        method: DELETE

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSessionLocalDS.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteSessionLocalDS)
async def delete_session_local_ds_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Only use for local DS entry, will error when calling non local DS entry (DeleteSessionLocalDS)

    Only use for local DS entry, will error when calling non local DS entry

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/localds

        method: DELETE

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteSessionLocalDS.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetActiveCustomGameSessions)
def get_active_custom_game_sessions(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    server_region: Optional[str] = None,
    session_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all active session for custom game, this return only dedicated session type (GetActiveCustomGameSessions)

    Get all active session for custom game, this return only dedicated session type

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        server_region: (server_region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsActiveCustomGameResponse (custom game session list)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetActiveCustomGameSessions.create(
        limit=limit,
        offset=offset,
        server_region=server_region,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetActiveCustomGameSessions)
async def get_active_custom_game_sessions_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    server_region: Optional[str] = None,
    session_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all active session for custom game, this return only dedicated session type (GetActiveCustomGameSessions)

    Get all active session for custom game, this return only dedicated session type

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        server_region: (server_region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsActiveCustomGameResponse (custom game session list)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetActiveCustomGameSessions.create(
        limit=limit,
        offset=offset,
        server_region=server_region,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetActiveMatchmakingGameSessions)
def get_active_matchmaking_game_sessions(
    limit: Optional[int] = None,
    match_id: Optional[str] = None,
    offset: Optional[int] = None,
    server_region: Optional[str] = None,
    session_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all active session for matchmaking game, this return only dedicated session type (GetActiveMatchmakingGameSessions)

    Get all active session for matchmaking game, this return only dedicated session type

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        match_id: (match_id) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        server_region: (server_region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsActiveMatchmakingGameResponse (matchmaking game session list)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetActiveMatchmakingGameSessions.create(
        limit=limit,
        match_id=match_id,
        offset=offset,
        server_region=server_region,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetActiveMatchmakingGameSessions)
async def get_active_matchmaking_game_sessions_async(
    limit: Optional[int] = None,
    match_id: Optional[str] = None,
    offset: Optional[int] = None,
    server_region: Optional[str] = None,
    session_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all active session for matchmaking game, this return only dedicated session type (GetActiveMatchmakingGameSessions)

    Get all active session for matchmaking game, this return only dedicated session type

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        match_id: (match_id) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        server_region: (server_region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsActiveMatchmakingGameResponse (matchmaking game session list)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetActiveMatchmakingGameSessions.create(
        limit=limit,
        match_id=match_id,
        offset=offset,
        server_region=server_region,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRecentPlayer)
def get_recent_player(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query recent players with given user id (GetRecentPlayer)

    Query recent player by user ID

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/recentplayer/{userID}

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userID) REQUIRED str in path

    Responses:
        200: OK - ModelsRecentPlayerQueryResponse (recent player get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRecentPlayer.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRecentPlayer)
async def get_recent_player_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query recent players with given user id (GetRecentPlayer)

    Query recent player by user ID

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/recentplayer/{userID}

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userID) REQUIRED str in path

    Responses:
        200: OK - ModelsRecentPlayerQueryResponse (recent player get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetRecentPlayer.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetSession)
def get_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specified session by session ID (GetSession)

    Get the session by session ID

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetSession)
async def get_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specified session by session ID (GetSession)

    Get the session by session ID

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetSessionByUserIDs)
def get_session_by_user_i_ds(
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions by comma separated user ids (GetSessionByUserIDs)

    Query game sessions by comma separated user ids

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/bulk

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (user_ids) REQUIRED str in query

    Responses:
        200: OK - ModelsSessionByUserIDsResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSessionByUserIDs.create(
        user_ids=user_ids,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetSessionByUserIDs)
async def get_session_by_user_i_ds_async(
    user_ids: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions by comma separated user ids (GetSessionByUserIDs)

    Query game sessions by comma separated user ids

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/bulk

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_ids: (user_ids) REQUIRED str in query

    Responses:
        200: OK - ModelsSessionByUserIDsResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSessionByUserIDs.create(
        user_ids=user_ids,
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

    Get session history detailed.

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsGetSessionHistoryDetailedResponseItem] (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - RestapiErrorV1 (20000: internal server error)
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

    Get session history detailed.

    if party_id value empty/null, field will not show in response body.

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsGetSessionHistoryDetailedResponseItem] (Operation succeeded)

        400: Bad Request - RestapiErrorV1 (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - RestapiErrorV1 (20001: unauthorized access)

        403: Forbidden - RestapiErrorV1 (20013: insufficient permissions | 20014: invalid audience | 20015: insufficient scope)

        500: Internal Server Error - RestapiErrorV1 (20000: internal server error)
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
@same_doc_as(GetTotalActiveSession)
def get_total_active_session(
    session_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all active session (GetTotalActiveSession)

    Get all active session

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_type: (session_type) OPTIONAL str in query

    Responses:
        200: OK - ModelsCountActiveSessionResponse (total active session, p2p session will only have 'total' attribute)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTotalActiveSession.create(
        session_type=session_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetTotalActiveSession)
async def get_total_active_session_async(
    session_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all active session (GetTotalActiveSession)

    Get all active session

    Properties:
        url: /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count

        method: GET

        tags: ["Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_type: (session_type) OPTIONAL str in query

    Responses:
        200: OK - ModelsCountActiveSessionResponse (total active session, p2p session will only have 'total' attribute)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTotalActiveSession.create(
        session_type=session_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(JoinSession)
def join_session(
    body: ModelsJoinGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join specified session by session ID (JoinSession)

    Join the specified session by session ID. Possible the game required a password to join

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join

        method: POST

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsJoinGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        403: Forbidden - RestapiErrorResponseV2 (user is banned from joining session)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = JoinSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(JoinSession)
async def join_session_async(
    body: ModelsJoinGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join specified session by session ID (JoinSession)

    Join the specified session by session ID. Possible the game required a password to join

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join

        method: POST

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsJoinGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session get)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        403: Forbidden - RestapiErrorResponseV2 (user is banned from joining session)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = JoinSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RemovePlayerFromSession)
def remove_player_from_session(
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """remove player from game session (RemovePlayerFromSession)

    Remove player from game session

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}

        method: DELETE

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

        user_id: (userID) REQUIRED str in path

    Responses:
        200: OK - ModelsAddPlayerResponse (player removed)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RemovePlayerFromSession.create(
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RemovePlayerFromSession)
async def remove_player_from_session_async(
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """remove player from game session (RemovePlayerFromSession)

    Remove player from game session

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID}

        method: DELETE

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

        user_id: (userID) REQUIRED str in path

    Responses:
        200: OK - ModelsAddPlayerResponse (player removed)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RemovePlayerFromSession.create(
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateSession)
def update_session(
    body: ModelsUpdateSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update session (UpdateSession)

    Update game session, used to update the current player

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}

        method: PUT

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session updated)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateSession)
async def update_session_async(
    body: ModelsUpdateSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update session (UpdateSession)

    Update game session, used to update the current player

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}

        method: PUT

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session updated)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateSettings)
def update_settings(
    body: ModelsUpdateSettingsRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update settings (UpdateSettings)

    Update game session, used to update OtherSettings

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings

        method: PUT

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateSettingsRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session updated)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSettings.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateSettings)
async def update_settings_async(
    body: ModelsUpdateSettingsRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update settings (UpdateSettings)

    Update game session, used to update OtherSettings

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings

        method: PUT

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateSettingsRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session updated)

        400: Bad Request - RestapiErrorResponseV2 (malformed request)

        404: Not Found - RestapiErrorResponseV2 (session not found)

        500: Internal Server Error - RestapiErrorResponseV2 (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateSettings.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UserQuerySession)
def user_query_session(
    session_type: str,
    game_mode: Optional[str] = None,
    game_version: Optional[str] = None,
    joinable: Optional[str] = None,
    limit: Optional[int] = None,
    match_exist: Optional[str] = None,
    match_id: Optional[str] = None,
    offset: Optional[int] = None,
    server_status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query to available game session (UserQuerySession)

    Query available game session

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        game_mode: (game_mode) OPTIONAL str in query

        game_version: (game_version) OPTIONAL str in query

        joinable: (joinable) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_exist: (match_exist) OPTIONAL str in query

        match_id: (match_id) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        server_status: (server_status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        session_type: (session_type) REQUIRED str in query

    Responses:
        200: OK - ModelsSessionQueryResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserQuerySession.create(
        session_type=session_type,
        game_mode=game_mode,
        game_version=game_version,
        joinable=joinable,
        limit=limit,
        match_exist=match_exist,
        match_id=match_id,
        offset=offset,
        server_status=server_status,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UserQuerySession)
async def user_query_session_async(
    session_type: str,
    game_mode: Optional[str] = None,
    game_version: Optional[str] = None,
    joinable: Optional[str] = None,
    limit: Optional[int] = None,
    match_exist: Optional[str] = None,
    match_id: Optional[str] = None,
    offset: Optional[int] = None,
    server_status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query to available game session (UserQuerySession)

    Query available game session

    Properties:
        url: /sessionbrowser/namespaces/{namespace}/gamesession

        method: GET

        tags: ["Session", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        game_mode: (game_mode) OPTIONAL str in query

        game_version: (game_version) OPTIONAL str in query

        joinable: (joinable) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_exist: (match_exist) OPTIONAL str in query

        match_id: (match_id) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        server_status: (server_status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

        session_type: (session_type) REQUIRED str in query

    Responses:
        200: OK - ModelsSessionQueryResponse (session get)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UserQuerySession.create(
        session_type=session_type,
        game_mode=game_mode,
        game_version=game_version,
        joinable=joinable,
        limit=limit,
        match_exist=match_exist,
        match_id=match_id,
        offset=offset,
        server_status=server_status,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
