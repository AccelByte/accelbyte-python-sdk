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

from ..models import ApimodelsAppendTeamGameSessionRequest
from ..models import ApimodelsCreateGameSessionRequest
from ..models import ApimodelsDeleteBulkGameSessionRequest
from ..models import ApimodelsDeleteBulkGameSessionsAPIResponse
from ..models import ApimodelsGameSessionQueryResponse
from ..models import ApimodelsGameSessionResponse
from ..models import ApimodelsJoinByCodeRequest
from ..models import ApimodelsPromoteLeaderRequest
from ..models import ApimodelsServerSecret
from ..models import ApimodelsSessionInviteRequest
from ..models import ApimodelsSetDSReadyRequest
from ..models import ApimodelsUpdateGameSessionBackfillRequest
from ..models import ApimodelsUpdateGameSessionMemberStatusResponse
from ..models import ApimodelsUpdateGameSessionRequest
from ..models import ApimodelsUpdateGamesessionDSInformationRequest
from ..models import ResponseError

from ..operations.game_session import AdminDeleteBulkGameSessions
from ..operations.game_session import AdminKickGameSessionMember
from ..operations.game_session import AdminQueryGameSessions
from ..operations.game_session import AdminQueryGameSessionsByAttributes
from ..operations.game_session import AdminSetDSReady
from ..operations.game_session import AdminUpdateDSInformation
from ..operations.game_session import AdminUpdateGameSessionMember
from ..operations.game_session import AppendTeamGameSession
from ..operations.game_session import CreateGameSession
from ..operations.game_session import DeleteGameSession
from ..operations.game_session import GameSessionGenerateCode
from ..operations.game_session import GetGameSession
from ..operations.game_session import GetGameSessionByPodName
from ..operations.game_session import GetSessionServerSecret
from ..operations.game_session import JoinGameSession
from ..operations.game_session import LeaveGameSession
from ..operations.game_session import PatchUpdateGameSession
from ..operations.game_session import PublicGameSessionCancel
from ..operations.game_session import PublicGameSessionInvite
from ..operations.game_session import PublicGameSessionReject
from ..operations.game_session import PublicKickGameSessionMember
from ..operations.game_session import PublicPromoteGameSessionLeader
from ..operations.game_session import PublicQueryGameSessionsByAttributes
from ..operations.game_session import PublicQueryMyGameSessions
from ..operations.game_session import PublicRevokeGameSessionCode
from ..operations.game_session import PublicSessionJoinCode
from ..operations.game_session import UpdateGameSession
from ..operations.game_session import UpdateGameSessionBackfillTicketID
from ..models import ApimodelsCreateGameSessionRequestTextChatModeEnum


@same_doc_as(AdminDeleteBulkGameSessions)
def admin_delete_bulk_game_sessions(
    body: ApimodelsDeleteBulkGameSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete bulk game sessions. (adminDeleteBulkGameSessions)

    Delete bulk game sessions.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/bulk

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsDeleteBulkGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsDeleteBulkGameSessionsAPIResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteBulkGameSessions.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteBulkGameSessions)
async def admin_delete_bulk_game_sessions_async(
    body: ApimodelsDeleteBulkGameSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete bulk game sessions. (adminDeleteBulkGameSessions)

    Delete bulk game sessions.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/bulk

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsDeleteBulkGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsDeleteBulkGameSessionsAPIResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteBulkGameSessions.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminKickGameSessionMember)
def admin_kick_game_session_member(
    member_id: str,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick member from a game session. (adminKickGameSessionMember)

    Kick member from a game session.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_id: (memberId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = AdminKickGameSessionMember.create(
        member_id=member_id,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminKickGameSessionMember)
async def admin_kick_game_session_member_async(
    member_id: str,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick member from a game session. (adminKickGameSessionMember)

    Kick member from a game session.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_id: (memberId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = AdminKickGameSessionMember.create(
        member_id=member_id,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryGameSessions)
def admin_query_game_sessions(
    configuration_name: Optional[str] = None,
    ds_pod_name: Optional[str] = None,
    from_time: Optional[str] = None,
    game_mode: Optional[str] = None,
    is_persistent: Optional[str] = None,
    is_soft_deleted: Optional[str] = None,
    joinability: Optional[str] = None,
    limit: Optional[int] = None,
    match_pool: Optional[str] = None,
    member_id: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    session_id: Optional[str] = None,
    status: Optional[str] = None,
    status_v2: Optional[str] = None,
    to_time: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all game sessions. (adminQueryGameSessions)

    Get all game sessions.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        configuration_name: (configurationName) OPTIONAL str in query

        ds_pod_name: (dsPodName) OPTIONAL str in query

        from_time: (fromTime) OPTIONAL str in query

        game_mode: (gameMode) OPTIONAL str in query

        is_persistent: (isPersistent) OPTIONAL str in query

        is_soft_deleted: (isSoftDeleted) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        member_id: (memberID) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        session_id: (sessionID) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        status_v2: (statusV2) OPTIONAL str in query

        to_time: (toTime) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryGameSessions.create(
        configuration_name=configuration_name,
        ds_pod_name=ds_pod_name,
        from_time=from_time,
        game_mode=game_mode,
        is_persistent=is_persistent,
        is_soft_deleted=is_soft_deleted,
        joinability=joinability,
        limit=limit,
        match_pool=match_pool,
        member_id=member_id,
        offset=offset,
        order=order,
        order_by=order_by,
        session_id=session_id,
        status=status,
        status_v2=status_v2,
        to_time=to_time,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryGameSessions)
async def admin_query_game_sessions_async(
    configuration_name: Optional[str] = None,
    ds_pod_name: Optional[str] = None,
    from_time: Optional[str] = None,
    game_mode: Optional[str] = None,
    is_persistent: Optional[str] = None,
    is_soft_deleted: Optional[str] = None,
    joinability: Optional[str] = None,
    limit: Optional[int] = None,
    match_pool: Optional[str] = None,
    member_id: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    session_id: Optional[str] = None,
    status: Optional[str] = None,
    status_v2: Optional[str] = None,
    to_time: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all game sessions. (adminQueryGameSessions)

    Get all game sessions.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        configuration_name: (configurationName) OPTIONAL str in query

        ds_pod_name: (dsPodName) OPTIONAL str in query

        from_time: (fromTime) OPTIONAL str in query

        game_mode: (gameMode) OPTIONAL str in query

        is_persistent: (isPersistent) OPTIONAL str in query

        is_soft_deleted: (isSoftDeleted) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        member_id: (memberID) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        session_id: (sessionID) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        status_v2: (statusV2) OPTIONAL str in query

        to_time: (toTime) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryGameSessions.create(
        configuration_name=configuration_name,
        ds_pod_name=ds_pod_name,
        from_time=from_time,
        game_mode=game_mode,
        is_persistent=is_persistent,
        is_soft_deleted=is_soft_deleted,
        joinability=joinability,
        limit=limit,
        match_pool=match_pool,
        member_id=member_id,
        offset=offset,
        order=order,
        order_by=order_by,
        session_id=session_id,
        status=status,
        status_v2=status_v2,
        to_time=to_time,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryGameSessionsByAttributes)
def admin_query_game_sessions_by_attributes(
    body: Dict[str, Any],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions by admin (adminQueryGameSessionsByAttributes)

    Query game sessions by admin.

    By default, API will return a list of available game sessions (joinability: open).
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    query parameter "availability" to filter sessions' availability:
    all: return all sessions regardless it's full
    full: only return active sessions
    default behavior (unset or else): return only available sessions (not full)

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryGameSessionsByAttributes.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryGameSessionsByAttributes)
async def admin_query_game_sessions_by_attributes_async(
    body: Dict[str, Any],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions by admin (adminQueryGameSessionsByAttributes)

    Query game sessions by admin.

    By default, API will return a list of available game sessions (joinability: open).
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    query parameter "availability" to filter sessions' availability:
    all: return all sessions regardless it's full
    full: only return active sessions
    default behavior (unset or else): return only available sessions (not full)

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryGameSessionsByAttributes.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSetDSReady)
def admin_set_ds_ready(
    body: ApimodelsSetDSReadyRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin set the DS ready to accept connection (adminSetDSReady)

    When the session template has ds_manual_set_ready as true. Then the DS need to calls this end point in order to notify game client if the DS is ready to accept any game client connection.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSetDSReadyRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = AdminSetDSReady.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSetDSReady)
async def admin_set_ds_ready_async(
    body: ApimodelsSetDSReadyRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin set the DS ready to accept connection (adminSetDSReady)

    When the session template has ds_manual_set_ready as true. Then the DS need to calls this end point in order to notify game client if the DS is ready to accept any game client connection.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/ds

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSetDSReadyRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = AdminSetDSReady.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateDSInformation)
def admin_update_ds_information(
    body: ApimodelsUpdateGamesessionDSInformationRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Game Session DS Information for Asynchronous Process. (adminUpdateDSInformation)

    This API is used for create custom DS asynchronously flow and is expected to be called after the service receives response from the Async RPC.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGamesessionDSInformationRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = AdminUpdateDSInformation.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateDSInformation)
async def admin_update_ds_information_async(
    body: ApimodelsUpdateGamesessionDSInformationRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Game Session DS Information for Asynchronous Process. (adminUpdateDSInformation)

    This API is used for create custom DS asynchronously flow and is expected to be called after the service receives response from the Async RPC.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/dsinformation

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGamesessionDSInformationRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = AdminUpdateDSInformation.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateGameSessionMember)
def admin_update_game_session_member(
    member_id: str,
    session_id: str,
    status_type: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update status of a game session member. (adminUpdateGameSessionMember)

    Update a game session member status.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_id: (memberId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        status_type: (statusType) REQUIRED str in path

    Responses:
        200: OK - ApimodelsUpdateGameSessionMemberStatusResponse (OK)

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
    request = AdminUpdateGameSessionMember.create(
        member_id=member_id,
        session_id=session_id,
        status_type=status_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateGameSessionMember)
async def admin_update_game_session_member_async(
    member_id: str,
    session_id: str,
    status_type: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update status of a game session member. (adminUpdateGameSessionMember)

    Update a game session member status.

    Properties:
        url: /session/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/status/{statusType}

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_id: (memberId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        status_type: (statusType) REQUIRED str in path

    Responses:
        200: OK - ApimodelsUpdateGameSessionMemberStatusResponse (OK)

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
    request = AdminUpdateGameSessionMember.create(
        member_id=member_id,
        session_id=session_id,
        status_type=status_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AppendTeamGameSession)
def append_team_game_session(
    body: ApimodelsAppendTeamGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Append new member or team to session. Please use patchUpdateGameSession instead (appendTeamGameSession)

    Append new member or team to session. Please use patchUpdateGameSession instead

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsAppendTeamGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AppendTeamGameSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AppendTeamGameSession)
async def append_team_game_session_async(
    body: ApimodelsAppendTeamGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Append new member or team to session. Please use patchUpdateGameSession instead (appendTeamGameSession)

    Append new member or team to session. Please use patchUpdateGameSession instead

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/teams

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsAppendTeamGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AppendTeamGameSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateGameSession)
def create_game_session(
    body: ApimodelsCreateGameSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a game session. (createGameSession)

    Create a game session.
    Session configuration "name" is mandatory, this API will refer following values from the session template if they're not provided in the request:
    - type
    - joinability
    - autoJoin. If enabled (set to true), players provided in the request will automatically joined the initial game session creation. Game session will not send any invite and players dont need to act upon it.
    - minPlayers
    - maxPlayers
    - inviteTimeout
    - inactiveTimeout
    - attributes
    - dsSource
    - tieTeamsSessionLifetime
    - matchPool
    - clientVersion
    - deployment
    - serverName
    - textChat
    - autoJoin
    - requestedRegions
    - preferredClaimKeys
    - fallbackClaimKeys
    - customURLGRPC

    When the tieTeamsSessionLifetime is true, the lifetime of any partyId inside teams attribute will be tied to the game session.
    Only applies when the teams partyId is a game session.

    Session has 2 fields for user status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    User statuses:
    1. INVITED: by default, to join a session (except session with OPEN joinability or if session configuration has "autoJoin" sets to True) a user will receive an invite. The invitee will have the chance to respond within "inviteTimeout" which you can configure through session configuration.
    2. TIMEOUT: when a user is invited to a session, they will receive an invite. Unless "disableResendInvite" sets to True in the session configuration, the user will also receive invite reminder every 30s until they respond to the invite.
    3. REJECTED: when a user rejects an invite. To rejoin an INVITE_ONLY session, they will need to be re-invited and accept the invite.
    4. JOINED: there are few ways of a user to join a session, by invite, direct join (depends on session joinability) or join by code. upon invite, once a user accepts an invite, their status will be changed to JOINED.
    5. LEFT: user can leave a session. in case of party, a user can only be in 1 party at a time. therefore when they decide to create or join another party, they will be automatically removed from their initial party and their status will be changed to LEFT.
    6. KICKED: only party leader can kick a member.
    7. DISCONNECTED: if user still have reserved seat in the session and they disconnect lobby websocket, their status in the session will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. the user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration.
    8. CONNECTED: when a user reconnect their lobby websocket, their status will change from DISCONNECTED to CONNECTED, only if they previously JOINED session. if they were on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
    9. DROPPED: when "inactiveTimeout" is due and user never re-establish their websocket connection, we will drop them from the session.
    10. TERMINATED: only applies to game session. If a game session (match) is ended, DS will end/delete the session and we will mark all remaining users' status to be TERMINATED.
    11. CANCELLED: when a session joinability changes to CLOSED, any remaining invites will be canceled.

    User is considered as active if they're present in the session, which their status either CONNECTED or JOINED.
    User has a reserved seat in the session if their status either INVITED, JOINED, CONNECTED, DISCONNECTED. When user's' status change to other than these mentioned statuses, we will release the seat for other players to occupy.

    Managing the relation between session and lobby websocket connection:
    - Session relies on lobby to consider player's connection health to our backend. therefore a disruption to lobby websocket will be reflected in the user's status in all of their session(s).
    - If user still have a reserved seat in the session and they disconnect lobby websocket, their status in session(s) will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. This "members.previousStatus" used to track user's previous status before they disconnect websocket, since we still reserve a seat for them, therefore this field will be empty again after they websocket.
    - If the disconnected user is the leader of the session they're disconnected from, we will wait until "leaderElectionGracePeriod" is due, to promote the next oldest member as the new leader of the session. You can configure "leaderElectionGracePeriod" through session configuration.
    - The user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration. If until "inactiveTimeout" is due and the user doesn't reconnect their websocket, they will be removed from session and their status will change to DROPPED. If the dropped user was the leader of the session, we will promote the next oldest member as leader.
    - By default, we will update user's status to what it was before disconnect, when the user reconnects lobby websocket, unless "manualRejoin" sets to True in the session configuration. When "manualRejoin" is enabled, after lobby websocket reconnect, the game client will need to manually invoke join session again to rejoin the session.
    - If the user was on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.

    When the session type is a DS, a DS creation request will be sent if number of active players reaches session's minPlayers.
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    By default, DS requests are sent to DSMC, but if dsSource is set to "AMS":
    - A DS will be requested from AMS instead of DSMC.
    - The server will be chosen based on a set of claim keys, in order of preference, to match with fleets.
    - The claim key list is built build from the preferredClaimKeys, fallbackClaimKeys, and clientVersion as follows:
    [preferredClaimKeys.., clientVersion, fallbackClaimKeys...]
    - ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
    for session override can follow guideline in here https://docs.accelbyte.io/gaming-services/services/extend/override-ags-feature/getting-started-with-session-customization-server-dsm/

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesession

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsGameSessionResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateGameSession.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateGameSession)
async def create_game_session_async(
    body: ApimodelsCreateGameSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a game session. (createGameSession)

    Create a game session.
    Session configuration "name" is mandatory, this API will refer following values from the session template if they're not provided in the request:
    - type
    - joinability
    - autoJoin. If enabled (set to true), players provided in the request will automatically joined the initial game session creation. Game session will not send any invite and players dont need to act upon it.
    - minPlayers
    - maxPlayers
    - inviteTimeout
    - inactiveTimeout
    - attributes
    - dsSource
    - tieTeamsSessionLifetime
    - matchPool
    - clientVersion
    - deployment
    - serverName
    - textChat
    - autoJoin
    - requestedRegions
    - preferredClaimKeys
    - fallbackClaimKeys
    - customURLGRPC

    When the tieTeamsSessionLifetime is true, the lifetime of any partyId inside teams attribute will be tied to the game session.
    Only applies when the teams partyId is a game session.

    Session has 2 fields for user status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    User statuses:
    1. INVITED: by default, to join a session (except session with OPEN joinability or if session configuration has "autoJoin" sets to True) a user will receive an invite. The invitee will have the chance to respond within "inviteTimeout" which you can configure through session configuration.
    2. TIMEOUT: when a user is invited to a session, they will receive an invite. Unless "disableResendInvite" sets to True in the session configuration, the user will also receive invite reminder every 30s until they respond to the invite.
    3. REJECTED: when a user rejects an invite. To rejoin an INVITE_ONLY session, they will need to be re-invited and accept the invite.
    4. JOINED: there are few ways of a user to join a session, by invite, direct join (depends on session joinability) or join by code. upon invite, once a user accepts an invite, their status will be changed to JOINED.
    5. LEFT: user can leave a session. in case of party, a user can only be in 1 party at a time. therefore when they decide to create or join another party, they will be automatically removed from their initial party and their status will be changed to LEFT.
    6. KICKED: only party leader can kick a member.
    7. DISCONNECTED: if user still have reserved seat in the session and they disconnect lobby websocket, their status in the session will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. the user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration.
    8. CONNECTED: when a user reconnect their lobby websocket, their status will change from DISCONNECTED to CONNECTED, only if they previously JOINED session. if they were on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.
    9. DROPPED: when "inactiveTimeout" is due and user never re-establish their websocket connection, we will drop them from the session.
    10. TERMINATED: only applies to game session. If a game session (match) is ended, DS will end/delete the session and we will mark all remaining users' status to be TERMINATED.
    11. CANCELLED: when a session joinability changes to CLOSED, any remaining invites will be canceled.

    User is considered as active if they're present in the session, which their status either CONNECTED or JOINED.
    User has a reserved seat in the session if their status either INVITED, JOINED, CONNECTED, DISCONNECTED. When user's' status change to other than these mentioned statuses, we will release the seat for other players to occupy.

    Managing the relation between session and lobby websocket connection:
    - Session relies on lobby to consider player's connection health to our backend. therefore a disruption to lobby websocket will be reflected in the user's status in all of their session(s).
    - If user still have a reserved seat in the session and they disconnect lobby websocket, their status in session(s) will be changed to DISCONNECTED and field "members.previousStatus" of that user will contains the initial status before they disconnect lobby websocket. This "members.previousStatus" used to track user's previous status before they disconnect websocket, since we still reserve a seat for them, therefore this field will be empty again after they websocket.
    - If the disconnected user is the leader of the session they're disconnected from, we will wait until "leaderElectionGracePeriod" is due, to promote the next oldest member as the new leader of the session. You can configure "leaderElectionGracePeriod" through session configuration.
    - The user will be given chance to reconnect within "inactiveTimeout" which you can configure through session configuration. If until "inactiveTimeout" is due and the user doesn't reconnect their websocket, they will be removed from session and their status will change to DROPPED. If the dropped user was the leader of the session, we will promote the next oldest member as leader.
    - By default, we will update user's status to what it was before disconnect, when the user reconnects lobby websocket, unless "manualRejoin" sets to True in the session configuration. When "manualRejoin" is enabled, after lobby websocket reconnect, the game client will need to manually invoke join session again to rejoin the session.
    - If the user was on INVITED state before the disconnect happened, the user's status will return back to INVITED after they reconnect.

    When the session type is a DS, a DS creation request will be sent if number of active players reaches session's minPlayers.
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    By default, DS requests are sent to DSMC, but if dsSource is set to "AMS":
    - A DS will be requested from AMS instead of DSMC.
    - The server will be chosen based on a set of claim keys, in order of preference, to match with fleets.
    - The claim key list is built build from the preferredClaimKeys, fallbackClaimKeys, and clientVersion as follows:
    [preferredClaimKeys.., clientVersion, fallbackClaimKeys...]
    - ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
    for session override can follow guideline in here https://docs.accelbyte.io/gaming-services/services/extend/override-ags-feature/getting-started-with-session-customization-server-dsm/

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesession

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsGameSessionResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateGameSession.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGameSession)
def delete_game_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a game session. (deleteGameSession)

    Delete a game session.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = DeleteGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGameSession)
async def delete_game_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a game session. (deleteGameSession)

    Delete a game session.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = DeleteGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GameSessionGenerateCode)
def game_session_generate_code(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate a game session code. (gameSessionGenerateCode)

    Generate a new code for the game session. Only leader can generate a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code

        method: POST

        tags: ["Game Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = GameSessionGenerateCode.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GameSessionGenerateCode)
async def game_session_generate_code_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Generate a game session code. (gameSessionGenerateCode)

    Generate a new code for the game session. Only leader can generate a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code

        method: POST

        tags: ["Game Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = GameSessionGenerateCode.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGameSession)
def get_game_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game session detail. (getGameSession)

    Get game session detail.
    Session will only be accessible from active players in the session, and client with the permission, except the joinability is set to OPEN.
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = GetGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameSession)
async def get_game_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game session detail. (getGameSession)

    Get game session detail.
    Session will only be accessible from active players in the session, and client with the permission, except the joinability is set to OPEN.
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = GetGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGameSessionByPodName)
def get_game_session_by_pod_name(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game session detail. (getGameSessionByPodName)

    Get game session detail by podname.
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = GetGameSessionByPodName.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameSessionByPodName)
async def get_game_session_by_pod_name_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game session detail. (getGameSessionByPodName)

    Get game session detail by podname.
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/servers/{podName}

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = GetGameSessionByPodName.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSessionServerSecret)
def get_session_server_secret(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Server Secret. (getSessionServerSecret)


    Used by game Client to Get Secret
    constraints
    - EnableSecret = true
    - Type = "DS"
    - secret value will only be produced if enableSecret is true and type is DS

    if enableSecret = false
    - empty secret will be returned as 200 OK

    Expected caller of this API
    - Game Client to get server secret

    In the Response you will get following:
    - 200 OK { "secret":  }

    If there is error:
    - 400 Invalid path parameters
    - 401 unauthorized
    - 404 StatusNotFound
    - 500 Internal server error

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsServerSecret (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSessionServerSecret.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSessionServerSecret)
async def get_session_server_secret_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Server Secret. (getSessionServerSecret)


    Used by game Client to Get Secret
    constraints
    - EnableSecret = true
    - Type = "DS"
    - secret value will only be produced if enableSecret is true and type is DS

    if enableSecret = false
    - empty secret will be returned as 200 OK

    Expected caller of this API
    - Game Client to get server secret

    In the Response you will get following:
    - 200 OK { "secret":  }

    If there is error:
    - 400 Invalid path parameters
    - 401 unauthorized
    - 404 StatusNotFound
    - 500 Internal server error

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/secret

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsServerSecret (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSessionServerSecret.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(JoinGameSession)
def join_game_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a game session. (joinGameSession)

    Join a game session.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join

        method: POST

        tags: ["Game Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = JoinGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(JoinGameSession)
async def join_game_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a game session. (joinGameSession)

    Join a game session.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/join

        method: POST

        tags: ["Game Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = JoinGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(LeaveGameSession)
def leave_game_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Leave a game session. (leaveGameSession)

    Leave a game session.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave

        method: DELETE

        tags: ["Game Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = LeaveGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(LeaveGameSession)
async def leave_game_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Leave a game session. (leaveGameSession)

    Leave a game session.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leave

        method: DELETE

        tags: ["Game Session"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = LeaveGameSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PatchUpdateGameSession)
def patch_update_game_session(
    body: ApimodelsUpdateGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch update a game session. (patchUpdateGameSession)

    Update specified fields from game session data.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: PATCH

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PatchUpdateGameSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PatchUpdateGameSession)
async def patch_update_game_session_async(
    body: ApimodelsUpdateGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Patch update a game session. (patchUpdateGameSession)

    Update specified fields from game session data.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: PATCH

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PatchUpdateGameSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGameSessionCancel)
def public_game_session_cancel(
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """cancel a game session invitation. (publicGameSessionCancel)

    cancel a game session invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

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
    request = PublicGameSessionCancel.create(
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGameSessionCancel)
async def public_game_session_cancel_async(
    session_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """cancel a game session invitation. (publicGameSessionCancel)

    cancel a game session invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/users/{userId}/cancel

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

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
    request = PublicGameSessionCancel.create(
        session_id=session_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGameSessionInvite)
def public_game_session_invite(
    body: ApimodelsSessionInviteRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite a user to a game session. (publicGameSessionInvite)

    Invite a user to a game session.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN
    Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the game session storage.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSessionInviteRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        201: Created - (Created)

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
    request = PublicGameSessionInvite.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGameSessionInvite)
async def public_game_session_invite_async(
    body: ApimodelsSessionInviteRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite a user to a game session. (publicGameSessionInvite)

    Invite a user to a game session.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN
    Metadata is optional parameter which will be sent over via invitation notification and is not permanently stored in the game session storage.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/invite

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsSessionInviteRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        201: Created - (Created)

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
    request = PublicGameSessionInvite.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGameSessionReject)
def public_game_session_reject(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject a game session invitation. (publicGameSessionReject)

    Reject a game session invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = PublicGameSessionReject.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGameSessionReject)
async def public_game_session_reject_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject a game session invitation. (publicGameSessionReject)

    Reject a game session invitation.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/reject

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = PublicGameSessionReject.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicKickGameSessionMember)
def public_kick_game_session_member(
    member_id: str,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick member from a game session, only leader can kick member. (publicKickGameSessionMember)

    Kick member from a game session, only leader can kick member.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_id: (memberId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = PublicKickGameSessionMember.create(
        member_id=member_id,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicKickGameSessionMember)
async def public_kick_game_session_member_async(
    member_id: str,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick member from a game session, only leader can kick member. (publicKickGameSessionMember)

    Kick member from a game session, only leader can kick member.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/members/{memberId}/kick

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_id: (memberId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = PublicKickGameSessionMember.create(
        member_id=member_id,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicPromoteGameSessionLeader)
def public_promote_game_session_leader(
    body: ApimodelsPromoteLeaderRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Promote new game session leader. (publicPromoteGameSessionLeader)

    Promote game session member to become the new game session leader.

    This API requires the NAMESPACE:{namespace}:SESSION:GAME [UPDATE] permission.

    This API can be operated by:
    - User (game session member) who is the current leader of the game session
    - Game Client
    - Dedicated Server (DS)

    This API will promote game session leader candidate with the following criteria:
    - Leader candidate is a member of the game session
    - Leader candidate has a "CONNECTED" or "JOINED" status
    - If the leader candidate is the current leader, then no promotion process is carried out

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPromoteLeaderRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = PublicPromoteGameSessionLeader.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicPromoteGameSessionLeader)
async def public_promote_game_session_leader_async(
    body: ApimodelsPromoteLeaderRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Promote new game session leader. (publicPromoteGameSessionLeader)

    Promote game session member to become the new game session leader.

    This API requires the NAMESPACE:{namespace}:SESSION:GAME [UPDATE] permission.

    This API can be operated by:
    - User (game session member) who is the current leader of the game session
    - Game Client
    - Dedicated Server (DS)

    This API will promote game session leader candidate with the following criteria:
    - Leader candidate is a member of the game session
    - Leader candidate has a "CONNECTED" or "JOINED" status
    - If the leader candidate is the current leader, then no promotion process is carried out

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/leader

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsPromoteLeaderRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = PublicPromoteGameSessionLeader.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryGameSessionsByAttributes)
def public_query_game_sessions_by_attributes(
    body: Dict[str, Any],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions (publicQueryGameSessionsByAttributes)

    Query game sessions.

    By default, API will return a list of available game sessions (joinability: open).
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    query parameter "availability" to filter sessions' availability:
    all: return all sessions regardless it's full
    full: only return active sessions
    default behavior (unset or else): return only available sessions (not full)

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryGameSessionsByAttributes.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryGameSessionsByAttributes)
async def public_query_game_sessions_by_attributes_async(
    body: Dict[str, Any],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions (publicQueryGameSessionsByAttributes)

    Query game sessions.

    By default, API will return a list of available game sessions (joinability: open).
    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    query parameter "availability" to filter sessions' availability:
    all: return all sessions regardless it's full
    full: only return active sessions
    default behavior (unset or else): return only available sessions (not full)

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED Dict[str, Any] in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryGameSessionsByAttributes.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryMyGameSessions)
def public_query_my_game_sessions(
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user's game sessions (publicQueryMyGameSessions)

    Query user's game sessions.
    By default, API will return a list of user's active game sessions (INVITED,JOINED,CONNECTED).

    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/gamesessions

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryMyGameSessions.create(
        order=order,
        order_by=order_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryMyGameSessions)
async def public_query_my_game_sessions_async(
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query user's game sessions (publicQueryMyGameSessions)

    Query user's game sessions.
    By default, API will return a list of user's active game sessions (INVITED,JOINED,CONNECTED).

    Session service has several DSInformation status to track DS request to DS providers:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - PREPARING: DS needs to call manual set ready for the game session
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to spin up a DS for session.
    - DS_ERROR: DS provider fails to spin up the DS or the DS itself becomes unreachable
    - DS_CANCELLED: when DSMC is preparing the DS, DSMC will give a temporary DS. In this phase, if you delete the game session, the DS request will be canceled.
    - ENDED: when a game session (match) has finished and DS has done its job, it will terminate itself.
    - UNKNOWN: if any unknown DS status is detected.
    DSInformation has 2 fields for DS status: "status" and "statusV2". The "status" is there for backward-compatibility, therefore we encourage to just rely on "statusV2" for the more updated statuses.
    DS Source can be DSMC, AMS or custom. In DSMC, a DS request will be put in queue if they dont have available buffers, and DSMC will let the service knows when they finished spinning it up. While AMS doesn't have a concept of queue. Therefore some "DSInformation.statusV2" only applicable for DSMC.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/users/me/gamesessions

        method: GET

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryMyGameSessions.create(
        order=order,
        order_by=order_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicRevokeGameSessionCode)
def public_revoke_game_session_code(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke game session code. (publicRevokeGameSessionCode)

    Revoke code of the game session. Only leader can revoke a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = PublicRevokeGameSessionCode.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicRevokeGameSessionCode)
async def public_revoke_game_session_code_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Revoke game session code. (publicRevokeGameSessionCode)

    Revoke code of the game session. Only leader can revoke a code.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/code

        method: DELETE

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

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
    request = PublicRevokeGameSessionCode.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSessionJoinCode)
def public_session_join_code(
    body: ApimodelsJoinByCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a session by code. (publicSessionJoinCode)

    Join a session by code. The user can join a session as long as the code is valid

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/join/code

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsJoinByCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = PublicSessionJoinCode.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSessionJoinCode)
async def public_session_join_code_async(
    body: ApimodelsJoinByCodeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join a session by code. (publicSessionJoinCode)

    Join a session by code. The user can join a session as long as the code is valid

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/join/code

        method: POST

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsJoinByCodeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

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
    request = PublicSessionJoinCode.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGameSession)
def update_game_session(
    body: ApimodelsUpdateGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a game session. (updateGameSession)

    Updates a game session, this endpoint will override stored gamesession data.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
    To update DS attributes (clientVersion, deployment, requestedRegions) it will only be applied only as long as no DS has been requested, otherwise ignored.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGameSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGameSession)
async def update_game_session_async(
    body: ApimodelsUpdateGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update a game session. (updateGameSession)

    Updates a game session, this endpoint will override stored gamesession data.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}
    - ttlHours is how long the session will active, only non persistent can use this, max value is 168 hours
    To update DS attributes (clientVersion, deployment, requestedRegions) it will only be applied only as long as no DS has been requested, otherwise ignored.

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGameSessionRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGameSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGameSessionBackfillTicketID)
def update_game_session_backfill_ticket_id(
    body: ApimodelsUpdateGameSessionBackfillRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game session backfill ticket id . (updateGameSessionBackfillTicketID)

    Update game session backfill ticket id. Will override game session backfill ticket based on given request parameter

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGameSessionBackfillRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGameSessionBackfillTicketID.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGameSessionBackfillTicketID)
async def update_game_session_backfill_ticket_id_async(
    body: ApimodelsUpdateGameSessionBackfillRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update game session backfill ticket id . (updateGameSessionBackfillTicketID)

    Update game session backfill ticket id. Will override game session backfill ticket based on given request parameter

    Properties:
        url: /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}/backfill

        method: PUT

        tags: ["Game Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsUpdateGameSessionBackfillRequest in body

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGameSessionBackfillTicketID.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
