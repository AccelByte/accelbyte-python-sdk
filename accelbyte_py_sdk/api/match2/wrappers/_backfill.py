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
from ..models import ModelsGameSession
from ..models import ResponseError

from ..operations.backfill import AcceptBackfill
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope: social

    Accept backfill proposal

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope: social

    Accept backfill proposal

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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


@same_doc_as(CreateBackfill)
def create_backfill(
    body: ApiBackFillCreateRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a backfill ticket (CreateBackfill)

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [CREATE]

    Required Scope: social

    Create backfill ticket

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [CREATE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [CREATE]

    Required Scope: social

    Create backfill ticket

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [CREATE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [DELETE]

    Required Scope: social

    Delete backfill ticket

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [DELETE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [DELETE]

    Required Scope: social

    Delete backfill ticket

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [DELETE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

    Required Scope: social

    Get backfill ticket by ID

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL []

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

    Required Scope: social

    Get backfill ticket by ID

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL []

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

    Required Scope: social

    Get backfill proposal

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL []

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [GET]

    Required Scope: social

    Get backfill proposal

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL []

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope: social

    Reject backfill proposal

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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

    Required Permission: NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope: social

    Reject backfill proposal

    Required Permission(s):
        - NAMESPACE:{namespace}:MATCHMAKING:BACKFILL [UPDATE]

    Required Scope(s):
        - social

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
        namespace, error = get_services_namespace()
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
