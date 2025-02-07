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

from ..models import ApimodelsXRayAcquiringDsQueryResponse
from ..models import ApimodelsXRayAcquiringDsWaitTimeQueryResponse
from ..models import ApimodelsXRayBulkTicketObservabilityRequest
from ..models import ApimodelsXRayBulkTicketObservabilityResponse
from ..models import ApimodelsXRayCanceledMatchmakingTicketQueryResponse
from ..models import ApimodelsXRayCreatedMatchmakingTicketQueryResponse
from ..models import ApimodelsXRayExpiredMatchmakingTicketQueryResponse
from ..models import ApimodelsXRayMatchHistorQueryResponse
from ..models import ApimodelsXRayMatchLengthDurationQueryResponse
from ..models import ApimodelsXRayMatchMatchmakingQueryResponse
from ..models import ApimodelsXRayMatchMatchmakingTicketQueryResponse
from ..models import ApimodelsXRayMatchPoolPodTickMatchResponse
from ..models import ApimodelsXRayMatchPoolPodTickQueryResponse
from ..models import ApimodelsXRayMatchPoolPodTickTicketResponse
from ..models import ApimodelsXRayMatchPoolQueryResponse
from ..models import ApimodelsXRayMatchTicketHistoryQueryResponse
from ..models import ApimodelsXRayMatchesQueryResponse
from ..models import ApimodelsXRayTicketObservabilityRequest
from ..models import ApimodelsXRayTicketObservabilityResponse
from ..models import ApimodelsXRayTicketQueryResponse
from ..models import ApimodelsXRayTotalActiveSessionQueryResponse
from ..models import ApimodelsXRayTotalPlayerPersessionAVGQueryResponse
from ..models import ResponseError

from ..operations.x_ray import CreateXrayBulkTicketObservability
from ..operations.x_ray import CreateXrayTicketObservability
from ..operations.x_ray import QueryAcquiringDS
from ..operations.x_ray import QueryAcquiringDSWaitTimeAvg
from ..operations.x_ray import QueryDetailTickMatchPool
from ..operations.x_ray import QueryDetailTickMatchPoolMatches
from ..operations.x_ray import QueryDetailTickMatchPoolTicket
from ..operations.x_ray import QueryMatchHistories
from ..operations.x_ray import QueryMatchLengthDurationp99
from ..operations.x_ray import QueryMatchLengthDurationpAvg
from ..operations.x_ray import QueryMatchTicketHistories
from ..operations.x_ray import QueryTotalActiveSession
from ..operations.x_ray import QueryTotalMatchmakingCanceled
from ..operations.x_ray import QueryTotalMatchmakingCreated
from ..operations.x_ray import QueryTotalMatchmakingExpired
from ..operations.x_ray import QueryTotalMatchmakingMatch
from ..operations.x_ray import QueryTotalMatchmakingMatchTicket
from ..operations.x_ray import QueryTotalPlayerPersession
from ..operations.x_ray import QueryXrayMatch
from ..operations.x_ray import QueryXrayMatchPool
from ..operations.x_ray import QueryXrayTimelineByTicketID
from ..operations.x_ray import QueryXrayTimelineByUserID


@same_doc_as(CreateXrayBulkTicketObservability)
def create_xray_bulk_ticket_observability(
    body: ApimodelsXRayBulkTicketObservabilityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create bulk ticket observability request (createXrayBulkTicketObservability)

    Create bulk ticket observability request
    Request body details (all attributes are optional):
    Timestamp : timestamp when calling this endpoint
    Action : support one of the following value:
    1. "matchFound"
    2. "matchNotFound"
    3. "flexed"
    PartyID : ticket Party ID
    MatchID : match ID will be filled only when match found
    Namespace : ticket current namespace
    GameMode : ticket current matchpool
    ActiveAllianceRule : current active alliance ruleset
    ActiveMatchingRule : current active matching ruleset
    Function : name of the function that called the endpoint
    Iteration : total iteration before match found
    TimeToMatchSec : time to match (in seconds) will be filled only when match found
    UnmatchReason : reason when unable to find match
    RemainingTickets : remaining ticket when unable to find match
    RemainingPlayersPerTicket : remaining players when unable to find match
    UnbackfillReason : reason when unable to backfill
    IsBackfillMatch : flag to distinguish between new match and backfill match
    IsRuleSetFlexed : flag if ruleset is getting flexed
    TickID : tick id for the matchmaking tick
    SessionTickID : session tick id for differentiate session when doing matches

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk

        method: POST

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsXRayBulkTicketObservabilityRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayBulkTicketObservabilityResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateXrayBulkTicketObservability.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateXrayBulkTicketObservability)
async def create_xray_bulk_ticket_observability_async(
    body: ApimodelsXRayBulkTicketObservabilityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create bulk ticket observability request (createXrayBulkTicketObservability)

    Create bulk ticket observability request
    Request body details (all attributes are optional):
    Timestamp : timestamp when calling this endpoint
    Action : support one of the following value:
    1. "matchFound"
    2. "matchNotFound"
    3. "flexed"
    PartyID : ticket Party ID
    MatchID : match ID will be filled only when match found
    Namespace : ticket current namespace
    GameMode : ticket current matchpool
    ActiveAllianceRule : current active alliance ruleset
    ActiveMatchingRule : current active matching ruleset
    Function : name of the function that called the endpoint
    Iteration : total iteration before match found
    TimeToMatchSec : time to match (in seconds) will be filled only when match found
    UnmatchReason : reason when unable to find match
    RemainingTickets : remaining ticket when unable to find match
    RemainingPlayersPerTicket : remaining players when unable to find match
    UnbackfillReason : reason when unable to backfill
    IsBackfillMatch : flag to distinguish between new match and backfill match
    IsRuleSetFlexed : flag if ruleset is getting flexed
    TickID : tick id for the matchmaking tick
    SessionTickID : session tick id for differentiate session when doing matches

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/bulk

        method: POST

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsXRayBulkTicketObservabilityRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayBulkTicketObservabilityResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateXrayBulkTicketObservability.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateXrayTicketObservability)
def create_xray_ticket_observability(
    body: ApimodelsXRayTicketObservabilityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create ticket observability request (createXrayTicketObservability)

    Create ticket observability request
    Request body details (all attributes are optional):
    Timestamp : timestamp when calling this endpoint
    Action : support one of the following value:
    1. "matchFound"
    2. "matchNotFound"
    3. "flexed"
    TicketID : ticket ID
    MatchID : match ID will be filled only when match found
    Namespace : ticket current namespace
    GameMode : ticket current matchpool
    ActiveAllianceRule : current active alliance ruleset
    ActiveMatchingRule : current active matching ruleset
    Function : name of the function that called the endpoint
    Iteration : total iteration before match found
    TimeToMatchSec : time to match (in seconds) will be filled only when match found
    UnmatchReason : reason when unable to find match
    RemainingTickets : remaining ticket when unable to find match
    RemainingPlayersPerTicket : remaining players when unable to find match
    UnbackfillReason : reason when unable to backfill
    IsBackfillMatch : flag to distinguish between new match and backfill match
    IsRuleSetFlexed : flag if ruleset is getting flexed
    TickID : tick id for the matchmaking tick
    SessionTickID : session tick id for differentiate session when doing matches

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets

        method: POST

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsXRayTicketObservabilityRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayTicketObservabilityResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateXrayTicketObservability.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateXrayTicketObservability)
async def create_xray_ticket_observability_async(
    body: ApimodelsXRayTicketObservabilityRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create ticket observability request (createXrayTicketObservability)

    Create ticket observability request
    Request body details (all attributes are optional):
    Timestamp : timestamp when calling this endpoint
    Action : support one of the following value:
    1. "matchFound"
    2. "matchNotFound"
    3. "flexed"
    TicketID : ticket ID
    MatchID : match ID will be filled only when match found
    Namespace : ticket current namespace
    GameMode : ticket current matchpool
    ActiveAllianceRule : current active alliance ruleset
    ActiveMatchingRule : current active matching ruleset
    Function : name of the function that called the endpoint
    Iteration : total iteration before match found
    TimeToMatchSec : time to match (in seconds) will be filled only when match found
    UnmatchReason : reason when unable to find match
    RemainingTickets : remaining ticket when unable to find match
    RemainingPlayersPerTicket : remaining players when unable to find match
    UnbackfillReason : reason when unable to backfill
    IsBackfillMatch : flag to distinguish between new match and backfill match
    IsRuleSetFlexed : flag if ruleset is getting flexed
    TickID : tick id for the matchmaking tick
    SessionTickID : session tick id for differentiate session when doing matches

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets

        method: POST

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsXRayTicketObservabilityRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayTicketObservabilityResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateXrayTicketObservability.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryAcquiringDS)
def query_acquiring_ds(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total success and failed claim DS (queryAcquiringDS)

    Query total success and failed claim DS.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayAcquiringDsQueryResponse (OK)

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
    request = QueryAcquiringDS.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryAcquiringDS)
async def query_acquiring_ds_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total success and failed claim DS (queryAcquiringDS)

    Query total success and failed claim DS.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayAcquiringDsQueryResponse (OK)

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
    request = QueryAcquiringDS.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryAcquiringDSWaitTimeAvg)
def query_acquiring_ds_wait_time_avg(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query acquiring ds wait time average (queryAcquiringDSWaitTimeAvg)

    Query acquiring ds wait time average. time in seconds

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayAcquiringDsWaitTimeQueryResponse (OK)

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
    request = QueryAcquiringDSWaitTimeAvg.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryAcquiringDSWaitTimeAvg)
async def query_acquiring_ds_wait_time_avg_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query acquiring ds wait time average (queryAcquiringDSWaitTimeAvg)

    Query acquiring ds wait time average. time in seconds

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/acquiring-ds-wait-time-avg

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayAcquiringDsWaitTimeQueryResponse (OK)

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
    request = QueryAcquiringDSWaitTimeAvg.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryDetailTickMatchPool)
def query_detail_tick_match_pool(
    end_date: str,
    pod_name: str,
    pool_name: str,
    start_date: str,
    all: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool ticks (queryDetailTickMatchPool)

    Query xray match pool ticks.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        pool_name: (poolName) REQUIRED str in path

        all: (all) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchPoolPodTickQueryResponse (OK)

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
    request = QueryDetailTickMatchPool.create(
        end_date=end_date,
        pod_name=pod_name,
        pool_name=pool_name,
        start_date=start_date,
        all=all,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryDetailTickMatchPool)
async def query_detail_tick_match_pool_async(
    end_date: str,
    pod_name: str,
    pool_name: str,
    start_date: str,
    all: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool ticks (queryDetailTickMatchPool)

    Query xray match pool ticks.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        pool_name: (poolName) REQUIRED str in path

        all: (all) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchPoolPodTickQueryResponse (OK)

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
    request = QueryDetailTickMatchPool.create(
        end_date=end_date,
        pod_name=pod_name,
        pool_name=pool_name,
        start_date=start_date,
        all=all,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryDetailTickMatchPoolMatches)
def query_detail_tick_match_pool_matches(
    pod_name: str,
    pool_name: str,
    tick_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool tick matches by tick id (queryDetailTickMatchPoolMatches)

    Query xray match pool tick matches by tick id.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        pool_name: (poolName) REQUIRED str in path

        tick_id: (tickId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchPoolPodTickMatchResponse (OK)

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
    request = QueryDetailTickMatchPoolMatches.create(
        pod_name=pod_name,
        pool_name=pool_name,
        tick_id=tick_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryDetailTickMatchPoolMatches)
async def query_detail_tick_match_pool_matches_async(
    pod_name: str,
    pool_name: str,
    tick_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool tick matches by tick id (queryDetailTickMatchPoolMatches)

    Query xray match pool tick matches by tick id.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/matches

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        pool_name: (poolName) REQUIRED str in path

        tick_id: (tickId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchPoolPodTickMatchResponse (OK)

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
    request = QueryDetailTickMatchPoolMatches.create(
        pod_name=pod_name,
        pool_name=pool_name,
        tick_id=tick_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryDetailTickMatchPoolTicket)
def query_detail_tick_match_pool_ticket(
    pod_name: str,
    pool_name: str,
    tick_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool tick tickets by tick id (queryDetailTickMatchPoolTicket)

    Query xray match pool tick tickets detail by tick id.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        pool_name: (poolName) REQUIRED str in path

        tick_id: (tickId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchPoolPodTickTicketResponse (OK)

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
    request = QueryDetailTickMatchPoolTicket.create(
        pod_name=pod_name,
        pool_name=pool_name,
        tick_id=tick_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryDetailTickMatchPoolTicket)
async def query_detail_tick_match_pool_ticket_async(
    pod_name: str,
    pool_name: str,
    tick_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool tick tickets by tick id (queryDetailTickMatchPoolTicket)

    Query xray match pool tick tickets detail by tick id.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}/pods/{podName}/ticks/{tickId}/tickets

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        pool_name: (poolName) REQUIRED str in path

        tick_id: (tickId) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchPoolPodTickTicketResponse (OK)

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
    request = QueryDetailTickMatchPoolTicket.create(
        pod_name=pod_name,
        pool_name=pool_name,
        tick_id=tick_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryMatchHistories)
def query_match_histories(
    match_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match histories (queryMatchHistories)

    Query xray match histories.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelsXRayMatchHistorQueryResponse (OK)

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
    request = QueryMatchHistories.create(
        match_id=match_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryMatchHistories)
async def query_match_histories_async(
    match_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match histories (queryMatchHistories)

    Query xray match histories.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/histories

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelsXRayMatchHistorQueryResponse (OK)

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
    request = QueryMatchHistories.create(
        match_id=match_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryMatchLengthDurationp99)
def query_match_length_durationp99(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query match length duration p99 (queryMatchLengthDurationp99)

    Query match length duration p99. time in seconds

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchLengthDurationQueryResponse (OK)

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
    request = QueryMatchLengthDurationp99.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryMatchLengthDurationp99)
async def query_match_length_durationp99_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query match length duration p99 (queryMatchLengthDurationp99)

    Query match length duration p99. time in seconds

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-p99

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchLengthDurationQueryResponse (OK)

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
    request = QueryMatchLengthDurationp99.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryMatchLengthDurationpAvg)
def query_match_length_durationp_avg(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query match length duration avg (queryMatchLengthDurationpAvg)

    Query match length duration avg. time in seconds

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchLengthDurationQueryResponse (OK)

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
    request = QueryMatchLengthDurationpAvg.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryMatchLengthDurationpAvg)
async def query_match_length_durationp_avg_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query match length duration avg (queryMatchLengthDurationpAvg)

    Query match length duration avg. time in seconds

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/match-length-duration-avg

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchLengthDurationQueryResponse (OK)

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
    request = QueryMatchLengthDurationpAvg.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryMatchTicketHistories)
def query_match_ticket_histories(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match ticket histories (queryMatchTicketHistories)

    Query xray match ticket histories.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchTicketHistoryQueryResponse (OK)

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
    request = QueryMatchTicketHistories.create(
        match_id=match_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryMatchTicketHistories)
async def query_match_ticket_histories_async(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match ticket histories (queryMatchTicketHistories)

    Query xray match ticket histories.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/ticket-histories

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchTicketHistoryQueryResponse (OK)

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
    request = QueryMatchTicketHistories.create(
        match_id=match_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTotalActiveSession)
def query_total_active_session(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total active session (queryTotalActiveSession)

    Query total active session.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        region: (region) OPTIONAL str in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTotalActiveSessionQueryResponse (OK)

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
    request = QueryTotalActiveSession.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTotalActiveSession)
async def query_total_active_session_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total active session (queryTotalActiveSession)

    Query total active session.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-active-session

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        region: (region) OPTIONAL str in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTotalActiveSessionQueryResponse (OK)

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
    request = QueryTotalActiveSession.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTotalMatchmakingCanceled)
def query_total_matchmaking_canceled(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket canceled (queryTotalMatchmakingCanceled)

    Query total ticket canceled.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayCanceledMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingCanceled.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTotalMatchmakingCanceled)
async def query_total_matchmaking_canceled_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket canceled (queryTotalMatchmakingCanceled)

    Query total ticket canceled.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-canceled

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayCanceledMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingCanceled.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTotalMatchmakingCreated)
def query_total_matchmaking_created(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket created (queryTotalMatchmakingCreated)

    Query total ticket created.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayCreatedMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingCreated.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTotalMatchmakingCreated)
async def query_total_matchmaking_created_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket created (queryTotalMatchmakingCreated)

    Query total ticket created.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-created

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayCreatedMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingCreated.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTotalMatchmakingExpired)
def query_total_matchmaking_expired(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket expired (queryTotalMatchmakingExpired)

    Query total ticket expired.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayExpiredMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingExpired.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTotalMatchmakingExpired)
async def query_total_matchmaking_expired_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket expired (queryTotalMatchmakingExpired)

    Query total ticket expired.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-expired

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayExpiredMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingExpired.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTotalMatchmakingMatch)
def query_total_matchmaking_match(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total match (queryTotalMatchmakingMatch)

    Query total match.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchMatchmakingQueryResponse (OK)

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
    request = QueryTotalMatchmakingMatch.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTotalMatchmakingMatch)
async def query_total_matchmaking_match_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total match (queryTotalMatchmakingMatch)

    Query total match.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-match

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchMatchmakingQueryResponse (OK)

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
    request = QueryTotalMatchmakingMatch.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTotalMatchmakingMatchTicket)
def query_total_matchmaking_match_ticket(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket match (queryTotalMatchmakingMatchTicket)

    Query total ticket match.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingMatchTicket.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTotalMatchmakingMatchTicket)
async def query_total_matchmaking_match_ticket_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total ticket match (queryTotalMatchmakingMatchTicket)

    Query total ticket match.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-ticket-match

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchMatchmakingTicketQueryResponse (OK)

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
    request = QueryTotalMatchmakingMatchTicket.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryTotalPlayerPersession)
def query_total_player_persession(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total player persession average (queryTotalPlayerPersession)

    Query total player persession average.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTotalPlayerPersessionAVGQueryResponse (OK)

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
    request = QueryTotalPlayerPersession.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryTotalPlayerPersession)
async def query_total_player_persession_async(
    end_date: str,
    start_date: str,
    match_pool: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query total player persession average (queryTotalPlayerPersession)

    Query total player persession average.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/metrics/total-player-persession-avg

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        match_pool: (matchPool) OPTIONAL List[str] in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTotalPlayerPersessionAVGQueryResponse (OK)

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
    request = QueryTotalPlayerPersession.create(
        end_date=end_date,
        start_date=start_date,
        match_pool=match_pool,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryXrayMatch)
def query_xray_match(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray timeline by matchID (queryXrayMatch)

    Query xray timeline by matchID.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchesQueryResponse (OK)

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
    request = QueryXrayMatch.create(
        match_id=match_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryXrayMatch)
async def query_xray_match_async(
    match_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray timeline by matchID (queryXrayMatch)

    Query xray timeline by matchID.

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/matches/{matchId}/tickets

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        match_id: (matchId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelsXRayMatchesQueryResponse (OK)

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
    request = QueryXrayMatch.create(
        match_id=match_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryXrayMatchPool)
def query_xray_match_pool(
    end_date: str,
    pool_name: List[str],
    start_date: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool (queryXrayMatchPool)

    Query xray match pool.
    query can using matchpool array with separate ","

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool_name: (poolName) REQUIRED List[str] in path

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchPoolQueryResponse (OK)

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
    request = QueryXrayMatchPool.create(
        end_date=end_date,
        pool_name=pool_name,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryXrayMatchPool)
async def query_xray_match_pool_async(
    end_date: str,
    pool_name: List[str],
    start_date: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray match pool (queryXrayMatchPool)

    Query xray match pool.
    query can using matchpool array with separate ","

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/match-pools/{poolName}

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pool_name: (poolName) REQUIRED List[str] in path

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayMatchPoolQueryResponse (OK)

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
    request = QueryXrayMatchPool.create(
        end_date=end_date,
        pool_name=pool_name,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryXrayTimelineByTicketID)
def query_xray_timeline_by_ticket_id(
    end_date: str,
    start_date: str,
    ticket_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray timeline (queryXrayTimelineByTicketID)

    Query xray timeline by ticketID

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTicketQueryResponse (OK)

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
    request = QueryXrayTimelineByTicketID.create(
        end_date=end_date,
        start_date=start_date,
        ticket_id=ticket_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryXrayTimelineByTicketID)
async def query_xray_timeline_by_ticket_id_async(
    end_date: str,
    start_date: str,
    ticket_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray timeline (queryXrayTimelineByTicketID)

    Query xray timeline by ticketID

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/tickets/{ticketId}

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTicketQueryResponse (OK)

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
    request = QueryXrayTimelineByTicketID.create(
        end_date=end_date,
        start_date=start_date,
        ticket_id=ticket_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryXrayTimelineByUserID)
def query_xray_timeline_by_user_id(
    end_date: str,
    start_date: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray timeline (queryXrayTimelineByUserID)

    Query xray timeline by userID or ticketID

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTicketQueryResponse (OK)

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
    request = QueryXrayTimelineByUserID.create(
        end_date=end_date,
        start_date=start_date,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryXrayTimelineByUserID)
async def query_xray_timeline_by_user_id_async(
    end_date: str,
    start_date: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query xray timeline (queryXrayTimelineByUserID)

    Query xray timeline by userID or ticketID

    Properties:
        url: /sessionhistory/v2/admin/namespaces/{namespace}/xray/users/{userId}/tickets

        method: GET

        tags: ["XRay"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        end_date: (endDate) REQUIRED str in query

        start_date: (startDate) REQUIRED str in query

    Responses:
        200: OK - ApimodelsXRayTicketQueryResponse (OK)

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
    request = QueryXrayTimelineByUserID.create(
        end_date=end_date,
        start_date=start_date,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
