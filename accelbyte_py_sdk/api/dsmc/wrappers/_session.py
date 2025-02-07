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

from ..models import ModelsClaimSessionRequest
from ..models import ModelsCreateSessionRequest
from ..models import ModelsSessionResponse
from ..models import ResponseError

from ..operations.session import CancelSession
from ..operations.session import ClaimServer
from ..operations.session import CreateSession
from ..operations.session import GetSession


@same_doc_as(CancelSession)
def cancel_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel session of a Temporary DS (CancelSession)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [DELETE]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to cancel a temporary dedicated server. The dedicated server cannot be canceled unless the status is CREATING

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel

        method: DELETE

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        204: No Content - (DS creation successfully canceled)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (session not found)

        422: Unprocessable Entity - ResponseError (session cannot be canceled)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CancelSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CancelSession)
async def cancel_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel session of a Temporary DS (CancelSession)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [DELETE]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to cancel a temporary dedicated server. The dedicated server cannot be canceled unless the status is CREATING

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}/cancel

        method: DELETE

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        204: No Content - (DS creation successfully canceled)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (session not found)

        422: Unprocessable Entity - ResponseError (session cannot be canceled)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CancelSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ClaimServer)
def claim_server(
    body: ModelsClaimSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim a DS for a game session (ClaimServer)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [UPDATE]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to claim a dedicated server. The dedicated server cannot be claimed unless the status is READY

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions/claim

        method: POST

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsClaimSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (DS claimed for session)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (session not found)

        409: Conflict - ResponseError (DS is already claimed)

        425: Too Early - ResponseError (DS is not ready to be claimed)

        500: Internal Server Error - ResponseError (Internal Server Error)

        503: Service Unavailable - ResponseError (DS is unreachable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ClaimServer.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ClaimServer)
async def claim_server_async(
    body: ModelsClaimSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Claim a DS for a game session (ClaimServer)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [UPDATE]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to claim a dedicated server. The dedicated server cannot be claimed unless the status is READY

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions/claim

        method: POST

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsClaimSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (DS claimed for session)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (session not found)

        409: Conflict - ResponseError (DS is already claimed)

        425: Too Early - ResponseError (DS is not ready to be claimed)

        500: Internal Server Error - ResponseError (Internal Server Error)

        503: Service Unavailable - ResponseError (DS is unreachable)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ClaimServer.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CreateSession)
def create_session(
    body: ModelsCreateSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a new game session (CreateSession)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [CREATE]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to get a dedicated server for a game session.

    If a dedicated server is available, it will respond with a dedicated server details ready to be used.

    Otherwise it will trigger new dedicated server creation and respond with a server status CREATING. The game session manager then expected to wait and query the server readiness with GET /namespaces/{namespace}/sessions/{sessionID} endpoint until the serverstatus is READY

    Specify pod_name with name of local DS in the request to create a session using the registered local DS

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions

        method: POST

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (local server not found)

        409: Conflict - ResponseError (session already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)

        503: Service Unavailable - ResponseError (server count is at max)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSession.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateSession)
async def create_session_async(
    body: ModelsCreateSessionRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a new game session (CreateSession)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [CREATE]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to get a dedicated server for a game session.

    If a dedicated server is available, it will respond with a dedicated server details ready to be used.

    Otherwise it will trigger new dedicated server creation and respond with a server status CREATING. The game session manager then expected to wait and query the server readiness with GET /namespaces/{namespace}/sessions/{sessionID} endpoint until the serverstatus is READY

    Specify pod_name with name of local DS in the request to create a session using the registered local DS

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions

        method: POST

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateSessionRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session created)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (local server not found)

        409: Conflict - ResponseError (session already exists)

        500: Internal Server Error - ResponseError (Internal Server Error)

        503: Service Unavailable - ResponseError (server count is at max)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateSession.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSession)
def get_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query specified session (GetSession)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to query the status of dedicated server that is created for the session.

    The server is ready to use when the status is READY. At which point, the game session manager can claim the server using the GET /namespaces/{namespace}/sessions/{sessionID}/claim endpoint

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session queried)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSession)
async def get_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query specified session (GetSession)

    Required permission: NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required scope: social

    This endpoint is intended to be called by game session manager (matchmaker, lobby, etc.) to query the status of dedicated server that is created for the session.

    The server is ready to use when the status is READY. At which point, the game session manager can claim the server using the GET /namespaces/{namespace}/sessions/{sessionID}/claim endpoint

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/sessions/{sessionID}

        method: GET

        tags: ["Session"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        200: OK - ModelsSessionResponse (session queried)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (session not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
