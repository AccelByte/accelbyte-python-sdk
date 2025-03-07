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

from ..models import ApimodelsGameSessionDetail
from ..models import ApimodelsGameSessionDetailQueryResponse
from ..models import ApimodelsMatchmakingDetail
from ..models import ApimodelsMatchmakingDetailQueryResponse
from ..models import ApimodelsPartyDetail
from ..models import ApimodelsPartyDetailQueryResponse
from ..models import ApimodelsTicketDetailQueryResponse
from ..models import ApimodelsTicketObservabilityDetail
from ..models import ResponseError

from ..operations.game_session_detail import AdminGetMatchmakingDetailBySessionID
from ..operations.game_session_detail import AdminGetMatchmakingDetailByTicketID
from ..operations.game_session_detail import AdminQueryGameSessionDetail
from ..operations.game_session_detail import AdminQueryMatchmakingDetail
from ..operations.game_session_detail import AdminQueryPartyDetail
from ..operations.game_session_detail import AdminQueryTicketDetail
from ..operations.game_session_detail import AdminTicketDetailGetByTicketID
from ..operations.game_session_detail import GetGameSessionDetail
from ..operations.game_session_detail import GetPartyDetail
from ..operations.game_session_detail import PublicQueryGameSessionMe


@same_doc_as(AdminGetMatchmakingDetailBySessionID)
def admin_get_matchmaking_detail_by_session_id(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detail matchmaking history by session ID. (adminGetMatchmakingDetailBySessionID)

    Get detail matchmaking history by session ID.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsMatchmakingDetail (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetMatchmakingDetailBySessionID.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMatchmakingDetailBySessionID)
async def admin_get_matchmaking_detail_by_session_id_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detail matchmaking history by session ID. (adminGetMatchmakingDetailBySessionID)

    Get detail matchmaking history by session ID.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/session/{sessionId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsMatchmakingDetail (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetMatchmakingDetailBySessionID.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetMatchmakingDetailByTicketID)
def admin_get_matchmaking_detail_by_ticket_id(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detail matchmaking history by ticket ID. (adminGetMatchmakingDetailByTicketID)

    Get detail matchmaking history by ticket ID.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsMatchmakingDetail (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetMatchmakingDetailByTicketID.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetMatchmakingDetailByTicketID)
async def admin_get_matchmaking_detail_by_ticket_id_async(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detail matchmaking history by ticket ID. (adminGetMatchmakingDetailByTicketID)

    Get detail matchmaking history by ticket ID.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking/ticket/{ticketId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsMatchmakingDetail (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetMatchmakingDetailByTicketID.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryGameSessionDetail)
def admin_query_game_session_detail(
    completed_only: Optional[str] = None,
    configuration_name: Optional[str] = None,
    ds_pod_name: Optional[str] = None,
    end_date: Optional[str] = None,
    game_session_id: Optional[str] = None,
    is_persistent: Optional[str] = None,
    joinability: Optional[str] = None,
    limit: Optional[int] = None,
    match_pool: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    start_date: Optional[str] = None,
    status_v2: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all game sessions history. (adminQueryGameSessionDetail)

    Get all game sessions.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        completed_only: (completedOnly) OPTIONAL str in query

        configuration_name: (configurationName) OPTIONAL str in query

        ds_pod_name: (dsPodName) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        game_session_id: (gameSessionID) OPTIONAL str in query

        is_persistent: (isPersistent) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        status_v2: (statusV2) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryGameSessionDetail.create(
        completed_only=completed_only,
        configuration_name=configuration_name,
        ds_pod_name=ds_pod_name,
        end_date=end_date,
        game_session_id=game_session_id,
        is_persistent=is_persistent,
        joinability=joinability,
        limit=limit,
        match_pool=match_pool,
        offset=offset,
        order=order,
        order_by=order_by,
        start_date=start_date,
        status_v2=status_v2,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryGameSessionDetail)
async def admin_query_game_session_detail_async(
    completed_only: Optional[str] = None,
    configuration_name: Optional[str] = None,
    ds_pod_name: Optional[str] = None,
    end_date: Optional[str] = None,
    game_session_id: Optional[str] = None,
    is_persistent: Optional[str] = None,
    joinability: Optional[str] = None,
    limit: Optional[int] = None,
    match_pool: Optional[str] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    start_date: Optional[str] = None,
    status_v2: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all game sessions history. (adminQueryGameSessionDetail)

    Get all game sessions.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        completed_only: (completedOnly) OPTIONAL str in query

        configuration_name: (configurationName) OPTIONAL str in query

        ds_pod_name: (dsPodName) OPTIONAL str in query

        end_date: (endDate) OPTIONAL str in query

        game_session_id: (gameSessionID) OPTIONAL str in query

        is_persistent: (isPersistent) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        status_v2: (statusV2) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryGameSessionDetail.create(
        completed_only=completed_only,
        configuration_name=configuration_name,
        ds_pod_name=ds_pod_name,
        end_date=end_date,
        game_session_id=game_session_id,
        is_persistent=is_persistent,
        joinability=joinability,
        limit=limit,
        match_pool=match_pool,
        offset=offset,
        order=order,
        order_by=order_by,
        start_date=start_date,
        status_v2=status_v2,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryMatchmakingDetail)
def admin_query_matchmaking_detail(
    game_session_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    ticket_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all matchmaking history. (adminQueryMatchmakingDetail)

    Get all matchmaking.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        game_session_id: (gameSessionID) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        ticket_id: (ticketID) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsMatchmakingDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryMatchmakingDetail.create(
        game_session_id=game_session_id,
        limit=limit,
        offset=offset,
        order=order,
        order_by=order_by,
        ticket_id=ticket_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryMatchmakingDetail)
async def admin_query_matchmaking_detail_async(
    game_session_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    ticket_id: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all matchmaking history. (adminQueryMatchmakingDetail)

    Get all matchmaking.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/matchmaking

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        game_session_id: (gameSessionID) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        ticket_id: (ticketID) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsMatchmakingDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryMatchmakingDetail.create(
        game_session_id=game_session_id,
        limit=limit,
        offset=offset,
        order=order,
        order_by=order_by,
        ticket_id=ticket_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryPartyDetail)
def admin_query_party_detail(
    end_date: Optional[str] = None,
    joinability: Optional[str] = None,
    leader_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    party_id: Optional[str] = None,
    start_date: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all parties history. (adminQueryPartyDetail)

    Get all parties.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/parties

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        leader_id: (leaderID) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryPartyDetail.create(
        end_date=end_date,
        joinability=joinability,
        leader_id=leader_id,
        limit=limit,
        offset=offset,
        order=order,
        order_by=order_by,
        party_id=party_id,
        start_date=start_date,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryPartyDetail)
async def admin_query_party_detail_async(
    end_date: Optional[str] = None,
    joinability: Optional[str] = None,
    leader_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    order_by: Optional[str] = None,
    party_id: Optional[str] = None,
    start_date: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all parties history. (adminQueryPartyDetail)

    Get all parties.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/parties

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        joinability: (joinability) OPTIONAL str in query

        leader_id: (leaderID) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        order_by: (orderBy) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        user_id: (userID) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsPartyDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryPartyDetail.create(
        end_date=end_date,
        joinability=joinability,
        leader_id=leader_id,
        limit=limit,
        offset=offset,
        order=order,
        order_by=order_by,
        party_id=party_id,
        start_date=start_date,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryTicketDetail)
def admin_query_ticket_detail(
    end_date: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    party_id: Optional[str] = None,
    region: Optional[str] = None,
    start_date: Optional[str] = None,
    user_i_ds: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all matchmaking ticket history. (adminQueryTicketDetail)

    Get all matchmaking ticket.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/tickets

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        game_mode: (gameMode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        user_i_ds: (userIDs) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsTicketDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTicketDetail.create(
        end_date=end_date,
        game_mode=game_mode,
        limit=limit,
        offset=offset,
        order=order,
        party_id=party_id,
        region=region,
        start_date=start_date,
        user_i_ds=user_i_ds,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryTicketDetail)
async def admin_query_ticket_detail_async(
    end_date: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    party_id: Optional[str] = None,
    region: Optional[str] = None,
    start_date: Optional[str] = None,
    user_i_ds: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all matchmaking ticket history. (adminQueryTicketDetail)

    Get all matchmaking ticket.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/tickets

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        game_mode: (gameMode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        party_id: (partyID) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        start_date: (startDate) OPTIONAL str in query

        user_i_ds: (userIDs) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsTicketDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTicketDetail.create(
        end_date=end_date,
        game_mode=game_mode,
        limit=limit,
        offset=offset,
        order=order,
        party_id=party_id,
        region=region,
        start_date=start_date,
        user_i_ds=user_i_ds,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminTicketDetailGetByTicketID)
def admin_ticket_detail_get_by_ticket_id(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detail matchmaking ticket history by ticket ID. (adminTicketDetailGetByTicketID)

    Get detail matchmaking ticket history by ticket ID.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsTicketObservabilityDetail (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTicketDetailGetByTicketID.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminTicketDetailGetByTicketID)
async def admin_ticket_detail_get_by_ticket_id_async(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detail matchmaking ticket history by ticket ID. (adminTicketDetailGetByTicketID)

    Get detail matchmaking ticket history by ticket ID.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/tickets/{ticketId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsTicketObservabilityDetail (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTicketDetailGetByTicketID.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGameSessionDetail)
def get_game_session_detail(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game session detail. (getGameSessionDetail)

    Get game session detail.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionDetail (OK)

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
    request = GetGameSessionDetail.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGameSessionDetail)
async def get_game_session_detail_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get game session detail. (getGameSessionDetail)

    Get game session detail.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/gamesessions/{sessionId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsGameSessionDetail (OK)

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
    request = GetGameSessionDetail.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPartyDetail)
def get_party_detail(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get party detail. (getPartyDetail)

    Get party detail.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartyDetail (OK)

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
    request = GetPartyDetail.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPartyDetail)
async def get_party_detail_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get party detail. (getPartyDetail)

    Get party detail.

    Properties:
        url: /sessionhistory/v1/admin/namespaces/{namespace}/parties/{sessionId}

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsPartyDetail (OK)

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
    request = GetPartyDetail.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicQueryGameSessionMe)
def public_query_game_session_me(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all game sessions history for current user. (publicQueryGameSessionMe)

    Get all game sessions history for current user.

    Properties:
        url: /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryGameSessionMe.create(
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicQueryGameSessionMe)
async def public_query_game_session_me_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all game sessions history for current user. (publicQueryGameSessionMe)

    Get all game sessions history for current user.

    Properties:
        url: /sessionhistory/v1/public/namespaces/{namespace}/users/me/gamesessions

        method: GET

        tags: ["Game Session Detail"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsGameSessionDetailQueryResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        429: Too Many Requests - ResponseError (Too Many Requests)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicQueryGameSessionMe.create(
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
