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

from ..models import ApiMatchTicketRequest
from ..models import ApiMatchTicketResponse
from ..models import ApiMatchTicketStatus
from ..models import ResponseError

from ..operations.match_tickets import CreateMatchTicket
from ..operations.match_tickets import DeleteMatchTicket
from ..operations.match_tickets import MatchTicketDetails


@same_doc_as(CreateMatchTicket)
def create_match_ticket(
    body: ApiMatchTicketRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a matchmaking ticket (CreateMatchTicket)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [CREATE]

    Required Scope: social

    Creates a new request for matchmaking

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:TICKET [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-tickets

        method: POST

        tags: ["Match-Tickets", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMatchTicketRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiMatchTicketResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found when the specified match pool does not exist)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateMatchTicket.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateMatchTicket)
async def create_match_ticket_async(
    body: ApiMatchTicketRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a matchmaking ticket (CreateMatchTicket)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [CREATE]

    Required Scope: social

    Creates a new request for matchmaking

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:TICKET [CREATE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-tickets

        method: POST

        tags: ["Match-Tickets", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMatchTicketRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiMatchTicketResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found when the specified match pool does not exist)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CreateMatchTicket.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteMatchTicket)
def delete_match_ticket(
    ticketid: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a match ticket (DeleteMatchTicket)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [DELETE]

    Required Scope: social

    Deletes an existing matchmaking ticket.

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:TICKET [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}

        method: DELETE

        tags: ["Match-Tickets", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticketid: (ticketid) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteMatchTicket.create(
        ticketid=ticketid,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteMatchTicket)
async def delete_match_ticket_async(
    ticketid: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a match ticket (DeleteMatchTicket)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [DELETE]

    Required Scope: social

    Deletes an existing matchmaking ticket.

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:TICKET [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}

        method: DELETE

        tags: ["Match-Tickets", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticketid: (ticketid) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteMatchTicket.create(
        ticketid=ticketid,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(MatchTicketDetails)
def match_ticket_details(
    ticketid: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get details for a specific match ticket (MatchTicketDetails)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

    Required Scope: social

    Get details for a specific match ticket

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}

        method: GET

        tags: ["Match-Tickets", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticketid: (ticketid) REQUIRED str in path

    Responses:
        200: OK - ApiMatchTicketStatus (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchTicketDetails.create(
        ticketid=ticketid,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MatchTicketDetails)
async def match_ticket_details_async(
    ticketid: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get details for a specific match ticket (MatchTicketDetails)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

    Required Scope: social

    Get details for a specific match ticket

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:TICKET [READ]

    Required Scope(s):
        - social

    Properties:
        url: /match2/v1/namespaces/{namespace}/match-tickets/{ticketid}

        method: GET

        tags: ["Match-Tickets", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticketid: (ticketid) REQUIRED str in path

    Responses:
        200: OK - ApiMatchTicketStatus (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = MatchTicketDetails.create(
        ticketid=ticketid,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
