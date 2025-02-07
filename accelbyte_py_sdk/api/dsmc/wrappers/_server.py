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
from ..models import ModelsDetailedCountServerResponse
from ..models import ModelsDSHeartbeatRequest
from ..models import ModelsListServerResponse
from ..models import ModelsRegisterLocalServerRequest
from ..models import ModelsRegisterServerRequest
from ..models import ModelsServer
from ..models import ModelsServerDeploymentConfigSessionTimeoutResponse
from ..models import ModelsServerSessionResponse
from ..models import ModelsShutdownServerRequest
from ..models import ResponseError

from ..operations.server import CountServerDetailedClient
from ..operations.server import DeregisterLocalServer
from ..operations.server import GetServerSession
from ..operations.server import GetServerSessionTimeout
from ..operations.server import ListServerClient
from ..operations.server import RegisterLocalServer
from ..operations.server import RegisterServer
from ..operations.server import ServerHeartbeat
from ..operations.server import ShutdownServer


@same_doc_as(CountServerDetailedClient)
def count_server_detailed_client(
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detailed count of managed servers in a region (CountServerDetailedClient)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint counts all of dedicated servers in a region managed by this service.

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/count/detailed

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - ModelsDetailedCountServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CountServerDetailedClient.create(
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CountServerDetailedClient)
async def count_server_detailed_client_async(
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detailed count of managed servers in a region (CountServerDetailedClient)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint counts all of dedicated servers in a region managed by this service.

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/count/detailed

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - ModelsDetailedCountServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CountServerDetailedClient.create(
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetServerSession.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetServerSessionTimeout)
def get_server_session_timeout(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the session timeout that will be used for the server (GetServerSessionTimeout)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]
    Required scope: social

    This endpoint is intended to be called by dedicated server
    to get the session timeout that will be used for the DS.
    DS will use this session timeout to make sure it regularly make heartbeat
    call to the DSMC, before the session timeout.```

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsServerDeploymentConfigSessionTimeoutResponse (session timout successfully retrieved)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetServerSessionTimeout.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetServerSessionTimeout)
async def get_server_session_timeout_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get the session timeout that will be used for the server (GetServerSessionTimeout)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:CONFIG [READ]
    Required scope: social

    This endpoint is intended to be called by dedicated server
    to get the session timeout that will be used for the DS.
    DS will use this session timeout to make sure it regularly make heartbeat
    call to the DSMC, before the session timeout.```

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/{podName}/config/sessiontimeout

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsServerDeploymentConfigSessionTimeoutResponse (session timout successfully retrieved)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetServerSessionTimeout.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListServerClient)
def list_server_client(
    count: int,
    offset: int,
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed servers in a region for client (ListServerClient)

    Required permission: NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint lists all of dedicated servers in a namespace managed by this service.

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListServerClient.create(
        count=count,
        offset=offset,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListServerClient)
async def list_server_client_async(
    count: int,
    offset: int,
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed servers in a region for client (ListServerClient)

    Required permission: NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint lists all of dedicated servers in a namespace managed by this service.

    Parameter Offset and Count is Required

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers

        method: GET

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListServerClient.create(
        count=count,
        offset=offset,
        region=region,
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        404: Not Found - ResponseError (allocation not found)

        409: Conflict - ResponseError (server with same name already registered)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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

        404: Not Found - ResponseError (allocation not found)

        409: Conflict - ResponseError (server with same name already registered)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RegisterServer.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ServerHeartbeat)
def server_heartbeat(
    body: ModelsDSHeartbeatRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Server Heartbeat (ServerHeartbeat)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by dedicated server
    which already has claimed to extend its lifetime.
    DS should call this periodically after it claimed.
    The timeframe between 2 heartbeat call should be smaller than
    the session timout in the deployment configuration.
    If the last heartbeat is longer than the session timout, the server.
    will be considered as expired and will be terminated by DSMC.```

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/heartbeat

        method: PUT

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDSHeartbeatRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (heartbeat accepted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ServerHeartbeat.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ServerHeartbeat)
async def server_heartbeat_async(
    body: ModelsDSHeartbeatRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Server Heartbeat (ServerHeartbeat)

    ```
    Required permission: NAMESPACE:{namespace}:DSM:SERVER [UPDATE]
    Required scope: social

    This endpoint is intended to be called by dedicated server
    which already has claimed to extend its lifetime.
    DS should call this periodically after it claimed.
    The timeframe between 2 heartbeat call should be smaller than
    the session timout in the deployment configuration.
    If the last heartbeat is longer than the session timout, the server.
    will be considered as expired and will be terminated by DSMC.```

    Properties:
        url: /dsmcontroller/namespaces/{namespace}/servers/heartbeat

        method: PUT

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsDSHeartbeatRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (heartbeat accepted)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ServerHeartbeat.create(
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ShutdownServer.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
