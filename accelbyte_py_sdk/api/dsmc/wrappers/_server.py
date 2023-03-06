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

from ..models import ModelsDeregisterLocalServerRequest
from ..models import ModelsRegisterLocalServerRequest
from ..models import ModelsRegisterServerRequest
from ..models import ModelsServer
from ..models import ModelsServerSessionResponse
from ..models import ModelsShutdownServerRequest
from ..models import ResponseError

from ..operations.server import DeregisterLocalServer
from ..operations.server import GetServerSession
from ..operations.server import RegisterLocalServer
from ..operations.server import RegisterServer
from ..operations.server import ShutdownServer


@same_doc_as(DeregisterLocalServer)
def deregister_local_server(
    body: ModelsDeregisterLocalServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deregister local DS (DeregisterLocalServer)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by local dedicated server
    to let DSM know that it is shutting down.

    Calling this will remove the server records from DB.```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/local/deregister

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDeregisterLocalServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (server removed)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeregisterLocalServer.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeregisterLocalServer)
async def deregister_local_server_async(
    body: ModelsDeregisterLocalServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Deregister local DS (DeregisterLocalServer)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by local dedicated server
    to let DSM know that it is shutting down.

    Calling this will remove the server records from DB.```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/local/deregister

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDeregisterLocalServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (server removed)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeregisterLocalServer.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetServerSession)
def get_server_session(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Session ID (GetServerSession)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by dedicated server
    to query its session ID.
    DS should call this when it first receive player connection,
    to see if it is actually claimed```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/{podName}/session

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsServerSessionResponse (session found)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServerSession.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetServerSession)
async def get_server_session_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Session ID (GetServerSession)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by dedicated server
    to query its session ID.
    DS should call this when it first receive player connection,
    to see if it is actually claimed```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/{podName}/session

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsServerSessionResponse (session found)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServerSession.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RegisterLocalServer)
def register_local_server(
    body: ModelsRegisterLocalServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a local DS (RegisterLocalServer)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    Use the alternative GET of the same endpoint to upgrade DS connection to DSM via websocket.

    This endpoint is intended to be called by local dedicated server to let DSM know that it is ready for use.
    Use local DS only for development purposes since DSM wouldn't be able to properly manage local DS in production.
    This MUST be called by DS after it is ready to accept match data and incoming client connections.

    Upon successfully calling this endpoint, the dedicated
    server is listed under READY local servers.```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/local/register

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRegisterLocalServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsServer (server registered)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (server with same name already registered)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RegisterLocalServer.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RegisterLocalServer)
async def register_local_server_async(
    body: ModelsRegisterLocalServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a local DS (RegisterLocalServer)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    Use the alternative GET of the same endpoint to upgrade DS connection to DSM via websocket.

    This endpoint is intended to be called by local dedicated server to let DSM know that it is ready for use.
    Use local DS only for development purposes since DSM wouldn't be able to properly manage local DS in production.
    This MUST be called by DS after it is ready to accept match data and incoming client connections.

    Upon successfully calling this endpoint, the dedicated
    server is listed under READY local servers.```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/local/register

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRegisterLocalServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsServer (server registered)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (server with same name already registered)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RegisterLocalServer.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RegisterServer)
def register_server(
    body: ModelsRegisterServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a DS (RegisterServer)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by dedicated server to let DSM know that it is ready for use.
    This MUST be called by DS after it is ready to accept match data and incoming client connections.

    Upon successfully calling this endpoint, the dedicated
    server is listed under READY servers.```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/register

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRegisterServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsServer (server registered)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (server with same name already registered)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RegisterServer.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RegisterServer)
async def register_server_async(
    body: ModelsRegisterServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Register a DS (RegisterServer)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by dedicated server to let DSM know that it is ready for use.
    This MUST be called by DS after it is ready to accept match data and incoming client connections.

    Upon successfully calling this endpoint, the dedicated
    server is listed under READY servers.```

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/register

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRegisterServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsServer (server registered)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (server with same name already registered)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RegisterServer.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ShutdownServer)
def shutdown_server(
    body: ModelsShutdownServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mark a DS is shutting down (ShutdownServer)

    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required scope: social

    This endpoint is intended to be called by dedicated server to let DSM know that it is shutting down. Calling this will remove the server and session records from DB.Set 'kill_me' in request to 'true' if the DS cannot shut itself down.

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/shutdown

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsShutdownServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (server removed)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ShutdownServer.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ShutdownServer)
async def shutdown_server_async(
    body: ModelsShutdownServerRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mark a DS is shutting down (ShutdownServer)

    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required scope: social

    This endpoint is intended to be called by dedicated server to let DSM know that it is shutting down. Calling this will remove the server and session records from DB.Set 'kill_me' in request to 'true' if the DS cannot shut itself down.

    Required Permission(s):
        - NAMESPACE:{namespace}:DSM:SERVER [UPDATE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/shutdown

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsShutdownServerRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (server removed)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ShutdownServer.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
