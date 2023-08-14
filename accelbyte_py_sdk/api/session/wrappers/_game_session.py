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

from ..models import ApimodelsAppendTeamGameSessionRequest
from ..models import ApimodelsCreateGameSessionRequest
from ..models import ApimodelsDeleteBulkGameSessionRequest
from ..models import ApimodelsDeleteBulkGameSessionsAPIResponse
from ..models import ApimodelsGameSessionQueryResponse
from ..models import ApimodelsGameSessionResponse
from ..models import ApimodelsJoinByCodeRequest
from ..models import ApimodelsPromoteLeaderRequest
from ..models import ApimodelsSessionInviteRequest
from ..models import ApimodelsUpdateGameSessionBackfillRequest
from ..models import ApimodelsUpdateGameSessionMemberStatusResponse
from ..models import ApimodelsUpdateGameSessionRequest
from ..models import ResponseError

from ..operations.game_session import AdminDeleteBulkGameSessions
from ..operations.game_session import AdminQueryGameSessions
from ..operations.game_session import AdminUpdateGameSessionMember
from ..operations.game_session import AppendTeamGameSession
from ..operations.game_session import CreateGameSession
from ..operations.game_session import DeleteGameSession
from ..operations.game_session import GameSessionGenerateCode
from ..operations.game_session import GetGameSession
from ..operations.game_session import GetGameSessionByPodName
from ..operations.game_session import JoinGameSession
from ..operations.game_session import LeaveGameSession
from ..operations.game_session import PatchUpdateGameSession
from ..operations.game_session import PublicGameSessionInvite
from ..operations.game_session import PublicGameSessionReject
from ..operations.game_session import PublicPromoteGameSessionLeader
from ..operations.game_session import PublicQueryGameSessions
from ..operations.game_session import PublicQueryMyGameSessions
from ..operations.game_session import PublicRevokeGameSessionCode
from ..operations.game_session import PublicSessionJoinCode
from ..operations.game_session import UpdateGameSession
from ..operations.game_session import UpdateGameSessionBackfillTicketID


@same_doc_as(AdminDeleteBulkGameSessions)
def admin_delete_bulk_game_sessions(
    body: ApimodelsDeleteBulkGameSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete bulk game sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [DELETE] (adminDeleteBulkGameSessions)

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
        namespace, error = get_services_namespace()
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
    """Delete bulk game sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [DELETE] (adminDeleteBulkGameSessions)

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteBulkGameSessions.create(
        body=body,
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

    Get all game sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:SESSION:GAME [READ]

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
        namespace, error = get_services_namespace()
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

    Get all game sessions. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:SESSION:GAME [READ]

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
        namespace, error = get_services_namespace()
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


@same_doc_as(AdminUpdateGameSessionMember)
def admin_update_game_session_member(
    member_id: str,
    session_id: str,
    status_type: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update status of a game session member. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (adminUpdateGameSessionMember)

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
        namespace, error = get_services_namespace()
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
    """Update status of a game session member. Requires ADMIN:NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (adminUpdateGameSessionMember)

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
        namespace, error = get_services_namespace()
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


@same_doc_as(AppendTeamGameSession)
def append_team_game_session(
    body: ApimodelsAppendTeamGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Append new member or team to session. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (appendTeamGameSession)

    Append new member or team to session

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AppendTeamGameSession.create(
        body=body,
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AppendTeamGameSession)
async def append_team_game_session_async(
    body: ApimodelsAppendTeamGameSessionRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Append new member or team to session. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (appendTeamGameSession)

    Append new member or team to session

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
        namespace, error = get_services_namespace()
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
    """Create a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [CREATE] (createGameSession)

    Create a game session.
    Session configuration name is mandatory, this API will refer following values from the session template if they're not provided in the request:
    - type
    - joinability
    - autoJoin. If enabled (set to true), players provided in the request will automatically joined the initial game session creation. Game session will not send any invite and players dont need to act upon it.
    - minPlayers
    - maxPlayers
    - inviteTimeout
    - inactiveTimeout
    - dsSource
    - tieTeamsSessionLifetime

    When the tieTeamsSessionLifetime is true, the lifetime of any partyId inside teams attribute will be tied to the game session.
    Only applies when the teams partyId is a game session.

    When the session type is a DS, a DS creation request will be sent if number of active players reaches session's minPlayers.

    Active user is a user who present within the session, has status CONNECTED/JOINED.

    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

    By default, DS requests are sent to DSMC, but if dsSource is set to "AMS":
    - A DS will be requested from AMS instead of DSMC.
    - The server will be chosen based on a set of claim keys, in order of preference, to match with fleets.
    - The claim key list is built build from the preferredClaimKeys, fallbackClaimKeys, and clientVersion as follows:
    [preferredClaimKeys.., clientVersion, fallbackClaimKeys...]

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
        namespace, error = get_services_namespace()
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
    """Create a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [CREATE] (createGameSession)

    Create a game session.
    Session configuration name is mandatory, this API will refer following values from the session template if they're not provided in the request:
    - type
    - joinability
    - autoJoin. If enabled (set to true), players provided in the request will automatically joined the initial game session creation. Game session will not send any invite and players dont need to act upon it.
    - minPlayers
    - maxPlayers
    - inviteTimeout
    - inactiveTimeout
    - dsSource
    - tieTeamsSessionLifetime

    When the tieTeamsSessionLifetime is true, the lifetime of any partyId inside teams attribute will be tied to the game session.
    Only applies when the teams partyId is a game session.

    When the session type is a DS, a DS creation request will be sent if number of active players reaches session's minPlayers.

    Active user is a user who present within the session, has status CONNECTED/JOINED.

    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

    By default, DS requests are sent to DSMC, but if dsSource is set to "AMS":
    - A DS will be requested from AMS instead of DSMC.
    - The server will be chosen based on a set of claim keys, in order of preference, to match with fleets.
    - The claim key list is built build from the preferredClaimKeys, fallbackClaimKeys, and clientVersion as follows:
    [preferredClaimKeys.., clientVersion, fallbackClaimKeys...]

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
        namespace, error = get_services_namespace()
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
    """Delete a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [DELETE] (deleteGameSession)

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
        namespace, error = get_services_namespace()
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
    """Delete a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [DELETE] (deleteGameSession)

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
        namespace, error = get_services_namespace()
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
    """Generate a game session code. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (gameSessionGenerateCode)

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
        namespace, error = get_services_namespace()
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
    """Generate a game session code. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (gameSessionGenerateCode)

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
        namespace, error = get_services_namespace()
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
    """Get game session detail. Requires NAMESPACE:{namespace}:SESSION:GAME [READ] (getGameSession)

    Get game session detail.
    Session will only be accessible from active players in the session, and client with the permission, except the joinability is set to OPEN.
    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
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
    """Get game session detail. Requires NAMESPACE:{namespace}:SESSION:GAME [READ] (getGameSession)

    Get game session detail.
    Session will only be accessible from active players in the session, and client with the permission, except the joinability is set to OPEN.
    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
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
    """Get game session detail. Requires NAMESPACE:{namespace}:SESSION:GAME [READ] (getGameSessionByPodName)

    Get game session detail by podname.
    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
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
    """Get game session detail. Requires NAMESPACE:{namespace}:SESSION:GAME [READ] (getGameSessionByPodName)

    Get game session detail by podname.
    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGameSessionByPodName.create(
        pod_name=pod_name,
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
    """Join a game session. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [CREATE] (joinGameSession)

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
        namespace, error = get_services_namespace()
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
    """Join a game session. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [CREATE] (joinGameSession)

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
        namespace, error = get_services_namespace()
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
    """Leave a game session. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [DELETE] (leaveGameSession)

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
        namespace, error = get_services_namespace()
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
    """Leave a game session. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [DELETE] (leaveGameSession)

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
        namespace, error = get_services_namespace()
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
    """Patch update a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (patchUpdateGameSession)

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

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """Patch update a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (patchUpdateGameSession)

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

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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


@same_doc_as(PublicGameSessionInvite)
def public_game_session_invite(
    body: ApimodelsSessionInviteRequest,
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite a user to a game session. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [CREATE] (publicGameSessionInvite)

    Invite a user to a game session.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN

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
        namespace, error = get_services_namespace()
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
    """Invite a user to a game session. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [CREATE] (publicGameSessionInvite)

    Invite a user to a game session.
    platformID represents the native platform of the invitee. API will return the corresponding native platform's userID.
    supported platforms:
    - STEAM
    - XBOX
    - PSN

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
        namespace, error = get_services_namespace()
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
    """Reject a game session invitation. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [DELETE] (publicGameSessionReject)

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
        namespace, error = get_services_namespace()
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
    """Reject a game session invitation. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [DELETE] (publicGameSessionReject)

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicGameSessionReject.create(
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
    """Promote new game session leader. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (publicPromoteGameSessionLeader)

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

    Required Permission(s):
        - NAMESPACE:{namespace}:SESSION:GAME [UPDATE]

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
        namespace, error = get_services_namespace()
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
    """Promote new game session leader. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (publicPromoteGameSessionLeader)

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

    Required Permission(s):
        - NAMESPACE:{namespace}:SESSION:GAME [UPDATE]

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
        namespace, error = get_services_namespace()
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


@same_doc_as(PublicQueryGameSessions)
def public_query_game_sessions(
    body: Dict[str, Any],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions (publicQueryGameSessions)

    Query game sessions.

    By default, API will return a list of available game sessions (joinability: open).
    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryGameSessions.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryGameSessions)
async def public_query_game_sessions_async(
    body: Dict[str, Any],
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query game sessions (publicQueryGameSessions)

    Query game sessions.

    By default, API will return a list of available game sessions (joinability: open).
    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PublicQueryGameSessions.create(
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

    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
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

    Session service has several DSInformation status to track DS request to DSMC:
    - NEED_TO_REQUEST: number of active players hasn't reached session's minPlayers therefore DS has not yet requested.
    - REQUESTED: DS is being requested to DSMC.
    - AVAILABLE: DS is ready to use. The DSMC status for this DS is either READY/BUSY.
    - FAILED_TO_REQUEST: DSMC fails to create the DS.

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
        namespace, error = get_services_namespace()
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
    """Revoke game session code. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (publicRevokeGameSessionCode)

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
        200: OK - ApimodelsGameSessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """Revoke game session code. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (publicRevokeGameSessionCode)

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
        200: OK - ApimodelsGameSessionResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """Join a session by code. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [CREATE] (publicSessionJoinCode)

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
        namespace, error = get_services_namespace()
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
    """Join a session by code. Requires NAMESPACE:{namespace}:SESSION:GAME:PLAYER [CREATE] (publicSessionJoinCode)

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
        namespace, error = get_services_namespace()
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
    """Update a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (updateGameSession)

    Updates a game session, this endpoint will override stored gamesession data.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

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

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """Update a game session. Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (updateGameSession)

    Updates a game session, this endpoint will override stored gamesession data.
    To update only specified fields, please use following endpoint:
    method : PATCH
    API : /session/v1/public/namespaces/{namespace}/gamesessions/{sessionId}

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

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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
    """Update game session backfill ticket id . Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (updateGameSessionBackfillTicketID)

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
        namespace, error = get_services_namespace()
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
    """Update game session backfill ticket id . Requires NAMESPACE:{namespace}:SESSION:GAME [UPDATE] (updateGameSessionBackfillTicketID)

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
        namespace, error = get_services_namespace()
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
