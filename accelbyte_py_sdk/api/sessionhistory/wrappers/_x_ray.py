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

from ..models import ApimodelsXRayBulkTicketObservabilityRequest
from ..models import ApimodelsXRayBulkTicketObservabilityResponse
from ..models import ApimodelsXRayTicketObservabilityRequest
from ..models import ApimodelsXRayTicketObservabilityResponse
from ..models import ResponseError

from ..operations.x_ray import CreateXrayBulkTicketObservability
from ..operations.x_ray import CreateXrayTicketObservability


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
