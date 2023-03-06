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
from ..models import RestapiSubmitReportRequest
from ..models import RestapiSubmitReportResponse

from ..operations.admin_reports import AdminSubmitReport
from ..operations.admin_reports import ListReports
from ..models import RestapiSubmitReportRequestCategoryEnum
from ..models import (
    RestapiSubmitReportResponseCategoryEnum,
    RestapiSubmitReportResponseStatusEnum,
)


@same_doc_as(AdminSubmitReport)
def admin_submit_report(
    body: RestapiSubmitReportRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit a report by admin (adminSubmitReport)

    Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [CREATE]
    Submit a report and will return ticket for reported object.
    New ticket will be created if no OPEN ticket present for reported object (based by objectId and objectType) in a namespace.

    Admin can only submit report once for each different user / object reported in the same OPEN ticket.
    Reporting the same user / object in the same OPEN ticket will return HTTP code 409 (conflict).

    Fill the 'reason' field with a 'reason title'
    Supported category:

      * UGC
      * USER
      * CHAT
      * EXTENSION

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:TICKET [CREATE]

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reports

        method: POST

        tags: ["Admin Reports"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiSubmitReportRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RestapiSubmitReportResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSubmitReport.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSubmitReport)
async def admin_submit_report_async(
    body: RestapiSubmitReportRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Submit a report by admin (adminSubmitReport)

    Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [CREATE]
    Submit a report and will return ticket for reported object.
    New ticket will be created if no OPEN ticket present for reported object (based by objectId and objectType) in a namespace.

    Admin can only submit report once for each different user / object reported in the same OPEN ticket.
    Reporting the same user / object in the same OPEN ticket will return HTTP code 409 (conflict).

    Fill the 'reason' field with a 'reason title'
    Supported category:

      * UGC
      * USER
      * CHAT
      * EXTENSION

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:TICKET [CREATE]

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reports

        method: POST

        tags: ["Admin Reports"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED RestapiSubmitReportRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - RestapiSubmitReportResponse

        400: Bad Request - RestapiErrorResponse

        409: Conflict - RestapiErrorResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminSubmitReport.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListReports)
def list_reports(
    category: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    reported_user_id: Optional[str] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List reports (listReports)

    Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
    Reports list can be ordered by:
    - createdAt
    - updatedAt

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:TICKET [READ]

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reports

        method: GET

        tags: ["Admin Reports"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        reported_user_id: (reportedUserId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - RestapiReportListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListReports.create(
        category=category,
        limit=limit,
        offset=offset,
        reported_user_id=reported_user_id,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListReports)
async def list_reports_async(
    category: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    reported_user_id: Optional[str] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List reports (listReports)

    Required permission: ADMIN:NAMESPACE:{namespace}:TICKET [READ]
    Reports list can be ordered by:
    - createdAt
    - updatedAt

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:TICKET [READ]

    Properties:
        url: /reporting/v1/admin/namespaces/{namespace}/reports

        method: GET

        tags: ["Admin Reports"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        category: (category) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        reported_user_id: (reportedUserId) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - RestapiReportListResponse

        500: Internal Server Error - RestapiErrorResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListReports.create(
        category=category,
        limit=limit,
        offset=offset,
        reported_user_id=reported_user_id,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
