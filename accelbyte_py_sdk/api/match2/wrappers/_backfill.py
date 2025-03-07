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

from ..models import ApiBackFillAcceptRequest
from ..models import ApiBackFillCreateRequest
from ..models import ApiBackFillRejectRequest
from ..models import ApiBackfillCreateResponse
from ..models import ApiBackfillGetResponse
from ..models import ApiBackfillProposalResponse
from ..models import ApiListBackfillQueryResponse
from ..models import ModelsGameSession
from ..models import ResponseError

from ..operations.backfill import AcceptBackfill
from ..operations.backfill import AdminQueryBackfill
from ..operations.backfill import CreateBackfill
from ..operations.backfill import DeleteBackfill
from ..operations.backfill import GetBackfill
from ..operations.backfill import GetBackfillProposal
from ..operations.backfill import RejectBackfill


@same_doc_as(AcceptBackfill)
def accept_backfill(
    backfill_id: str,
    body: ApiBackFillAcceptRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept a backfill proposal (AcceptBackfill)

    Accept backfill proposal.
    Field **acceptedTicketIds** can be used to accept specific tickets within a backfill proposal. If the ticketIDs are not mentioned in this field, those tickets will be rejected and reactivated for future proposals.
    If **acceptedTicketIds** is nil or not specified, then all tickets in the proposal will be accepted.

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept

        method: PUT

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiBackFillAcceptRequest in body

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameSession (OK)

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
    request = AcceptBackfill.create(
        backfill_id=backfill_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcceptBackfill)
async def accept_backfill_async(
    backfill_id: str,
    body: ApiBackFillAcceptRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept a backfill proposal (AcceptBackfill)

    Accept backfill proposal.
    Field **acceptedTicketIds** can be used to accept specific tickets within a backfill proposal. If the ticketIDs are not mentioned in this field, those tickets will be rejected and reactivated for future proposals.
    If **acceptedTicketIds** is nil or not specified, then all tickets in the proposal will be accepted.

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept

        method: PUT

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiBackFillAcceptRequest in body

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGameSession (OK)

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
    request = AcceptBackfill.create(
        backfill_id=backfill_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryBackfill)
def admin_query_backfill(
    from_time: Optional[str] = None,
    is_active: Optional[bool] = None,
    limit: Optional[int] = None,
    match_pool: Optional[str] = None,
    offset: Optional[int] = None,
    player_id: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    to_time: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Query backfill ticket  (AdminQueryBackfill)

    Admin Query backfill ticket

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill

        method: GET

        tags: ["Backfill", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        from_time: (fromTime) OPTIONAL str in query

        is_active: (isActive) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        player_id: (playerID) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (sessionID) OPTIONAL str in query

        to_time: (toTime) OPTIONAL str in query

    Responses:
        200: OK - ApiListBackfillQueryResponse (OK)

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
    request = AdminQueryBackfill.create(
        from_time=from_time,
        is_active=is_active,
        limit=limit,
        match_pool=match_pool,
        offset=offset,
        player_id=player_id,
        region=region,
        session_id=session_id,
        to_time=to_time,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryBackfill)
async def admin_query_backfill_async(
    from_time: Optional[str] = None,
    is_active: Optional[bool] = None,
    limit: Optional[int] = None,
    match_pool: Optional[str] = None,
    offset: Optional[int] = None,
    player_id: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    to_time: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Admin Query backfill ticket  (AdminQueryBackfill)

    Admin Query backfill ticket

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill

        method: GET

        tags: ["Backfill", "admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        from_time: (fromTime) OPTIONAL str in query

        is_active: (isActive) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        match_pool: (matchPool) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        player_id: (playerID) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (sessionID) OPTIONAL str in query

        to_time: (toTime) OPTIONAL str in query

    Responses:
        200: OK - ApiListBackfillQueryResponse (OK)

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
    request = AdminQueryBackfill.create(
        from_time=from_time,
        is_active=is_active,
        limit=limit,
        match_pool=match_pool,
        offset=offset,
        player_id=player_id,
        region=region,
        session_id=session_id,
        to_time=to_time,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateBackfill)
def create_backfill(
    body: ApiBackFillCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a backfill ticket (CreateBackfill)

    Create backfill ticket.

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill

        method: POST

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiBackFillCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiBackfillCreateResponse (Created)

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
    request = CreateBackfill.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateBackfill)
async def create_backfill_async(
    body: ApiBackFillCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a backfill ticket (CreateBackfill)

    Create backfill ticket.

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill

        method: POST

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiBackFillCreateRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApiBackfillCreateResponse (Created)

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
    request = CreateBackfill.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteBackfill)
def delete_backfill(
    backfill_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a backfill ticket (DeleteBackfill)

    Delete backfill ticket.

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}

        method: DELETE

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBackfill.create(
        backfill_id=backfill_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteBackfill)
async def delete_backfill_async(
    backfill_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a backfill ticket (DeleteBackfill)

    Delete backfill ticket.

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}

        method: DELETE

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (Created)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteBackfill.create(
        backfill_id=backfill_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetBackfill)
def get_backfill(
    backfill_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a backfill ticket (GetBackfill)

    Get backfill ticket by ID

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}

        method: GET

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiBackfillGetResponse (OK)

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
    request = GetBackfill.create(
        backfill_id=backfill_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetBackfill)
async def get_backfill_async(
    backfill_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a backfill ticket (GetBackfill)

    Get backfill ticket by ID

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}

        method: GET

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiBackfillGetResponse (OK)

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
    request = GetBackfill.create(
        backfill_id=backfill_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetBackfillProposal)
def get_backfill_proposal(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backfill proposal (GetBackfillProposal)

    Get backfill proposal

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/proposal

        method: GET

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in query

    Responses:
        200: OK - ApiBackfillProposalResponse (OK)

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
    request = GetBackfillProposal.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetBackfillProposal)
async def get_backfill_proposal_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get backfill proposal (GetBackfillProposal)

    Get backfill proposal

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/proposal

        method: GET

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in query

    Responses:
        200: OK - ApiBackfillProposalResponse (OK)

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
    request = GetBackfillProposal.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RejectBackfill)
def reject_backfill(
    backfill_id: str,
    body: ApiBackFillRejectRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject a backfill proposal (RejectBackfill)

    Reject backfill proposal

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject

        method: PUT

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiBackFillRejectRequest in body

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = RejectBackfill.create(
        backfill_id=backfill_id,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RejectBackfill)
async def reject_backfill_async(
    backfill_id: str,
    body: ApiBackFillRejectRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject a backfill proposal (RejectBackfill)

    Reject backfill proposal

    Properties:
        url: /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject

        method: PUT

        tags: ["Backfill", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiBackFillRejectRequest in body

        backfill_id: (backfillID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

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
    request = RejectBackfill.create(
        backfill_id=backfill_id,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
