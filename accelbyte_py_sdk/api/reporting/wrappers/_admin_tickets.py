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

from ..models import RestapiErrorResponse
from ..models import RestapiReportListResponse
from ..models import RestapiTicketListResponse
from ..models import RestapiTicketResponse
from ..models import RestapiTicketStatisticResponse
from ..models import RestapiUpdateTicketResolutionsRequest

from ..operations.admin_tickets import DeleteTicket
from ..operations.admin_tickets import GetReportsByTicket
from ..operations.admin_tickets import GetTicketDetail
from ..operations.admin_tickets import ListTickets
from ..operations.admin_tickets import TicketStatistic
from ..operations.admin_tickets import UpdateTicketResolutions
from ..models import RestapiTicketResponseCategoryEnum, RestapiTicketResponseStatusEnum
from ..models import RestapiUpdateTicketResolutionsRequestStatusEnum


@same_doc_as(DeleteTicket)
def delete_ticket(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete single ticket (deleteTicket)

    This endpoint will delete ticket and all its reports.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}

        method: DELETE

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        204: No Content -

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTicket.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteTicket)
async def delete_ticket_async(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete single ticket (deleteTicket)

    This endpoint will delete ticket and all its reports.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}

        method: DELETE

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        204: No Content -

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteTicket.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetReportsByTicket)
def get_reports_by_ticket(
    ticket_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get reports by ticket ID (getReportsByTicket)

    List reports ordered by createdAt in descending order.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiReportListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetReportsByTicket.create(
        ticket_id=ticket_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetReportsByTicket)
async def get_reports_by_ticket_async(
    ticket_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get reports by ticket ID (getReportsByTicket)

    List reports ordered by createdAt in descending order.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - RestapiReportListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetReportsByTicket.create(
        ticket_id=ticket_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetTicketDetail)
def get_ticket_detail(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get single ticket (getTicketDetail)

    This endpoint will return ticket detail with ticket id.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - RestapiTicketResponse

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTicketDetail.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetTicketDetail)
async def get_ticket_detail_async(
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get single ticket (getTicketDetail)

    This endpoint will return ticket detail with ticket id.

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - RestapiTicketResponse

        404: Not Found - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetTicketDetail.create(
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListTickets)
def list_tickets(
    category: Optional[str] = None,
    extension_category: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    reported_user_id: Optional[str] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List report tickets (listTickets)

    Tickets list can be ordered by:
    - createdAt
    - reportsCount
    - status (currently there are OPEN, AUTO_MODERATED and CLOSED statuses, desc order will put ticket with CLOSED status at the top)

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL str in query

        extension_category: (extensionCategory) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        reported_user_id: (reportedUserId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - RestapiTicketListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListTickets.create(
        category=category,
        extension_category=extension_category,
        limit=limit,
        offset=offset,
        order=order,
        reported_user_id=reported_user_id,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListTickets)
async def list_tickets_async(
    category: Optional[str] = None,
    extension_category: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    reported_user_id: Optional[str] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List report tickets (listTickets)

    Tickets list can be ordered by:
    - createdAt
    - reportsCount
    - status (currently there are OPEN, AUTO_MODERATED and CLOSED statuses, desc order will put ticket with CLOSED status at the top)

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL str in query

        extension_category: (extensionCategory) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        reported_user_id: (reportedUserId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - RestapiTicketListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListTickets.create(
        category=category,
        extension_category=extension_category,
        limit=limit,
        offset=offset,
        order=order,
        reported_user_id=reported_user_id,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(TicketStatistic)
def ticket_statistic(
    category: str,
    extension_category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ticket statistic (ticketStatistic)

    Ticket statistic can be filtered by:
    - category
    - extension category

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/statistic

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        extension_category: (extensionCategory) OPTIONAL str in query

        category: (category) REQUIRED str in query

    Responses:
        200: OK - RestapiTicketStatisticResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = TicketStatistic.create(
        category=category,
        extension_category=extension_category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(TicketStatistic)
async def ticket_statistic_async(
    category: str,
    extension_category: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Ticket statistic (ticketStatistic)

    Ticket statistic can be filtered by:
    - category
    - extension category

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/statistic

        method: GET

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        extension_category: (extensionCategory) OPTIONAL str in query

        category: (category) REQUIRED str in query

    Responses:
        200: OK - RestapiTicketStatisticResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = TicketStatistic.create(
        category=category,
        extension_category=extension_category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateTicketResolutions)
def update_ticket_resolutions(
    body: RestapiUpdateTicketResolutionsRequest,
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update ticket resolution to a given status (updateTicketResolutions)

    Update ticket resolution status to either OPEN or CLOSED. It is mandatory to provide notes

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions

        method: POST

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiUpdateTicketResolutionsRequest in body

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - RestapiTicketResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTicketResolutions.create(
        body=body,
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateTicketResolutions)
async def update_ticket_resolutions_async(
    body: RestapiUpdateTicketResolutionsRequest,
    ticket_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update ticket resolution to a given status (updateTicketResolutions)

    Update ticket resolution status to either OPEN or CLOSED. It is mandatory to provide notes

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions

        method: POST

        tags: ["Admin Tickets"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiUpdateTicketResolutionsRequest in body

        namespace: (namespace) REQUIRED str in path

        ticket_id: (ticketId) REQUIRED str in path

    Responses:
        200: OK - RestapiTicketResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateTicketResolutions.create(
        body=body,
        ticket_id=ticket_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
