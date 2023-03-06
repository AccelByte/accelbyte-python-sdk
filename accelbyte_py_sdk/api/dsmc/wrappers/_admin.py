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

from ..models import ModelsCountServerResponse
from ..models import ModelsCountSessionResponse
from ..models import ModelsDetailedCountServerResponse
from ..models import ModelsListServerResponse
from ..models import ModelsListSessionResponse
from ..models import ModelsServer
from ..models import ResponseError

from ..operations.admin import CountServer
from ..operations.admin import CountServerDetailed
from ..operations.admin import CountSession
from ..operations.admin import DeleteLocalServer
from ..operations.admin import DeleteServer
from ..operations.admin import DeleteSession
from ..operations.admin import GetServer
from ..operations.admin import ListLocalServer
from ..operations.admin import ListServer
from ..operations.admin import ListSession


@same_doc_as(CountServer)
def count_server(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Count all managed servers (CountServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint counts all of dedicated servers in a namespace managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/count

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsCountServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountServer.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CountServer)
async def count_server_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Count all managed servers (CountServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint counts all of dedicated servers in a namespace managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/count

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsCountServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountServer.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CountServerDetailed)
def count_server_detailed(
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detailed count of managed servers in a region (CountServerDetailed)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint counts all of dedicated servers in a region managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed

        method: GET

        tags: ["Admin"]

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountServerDetailed.create(
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CountServerDetailed)
async def count_server_detailed_async(
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get detailed count of managed servers in a region (CountServerDetailed)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint counts all of dedicated servers in a region managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed

        method: GET

        tags: ["Admin"]

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountServerDetailed.create(
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CountSession)
def count_session(
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Count all sessions (CountSession)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required scope: social

    This endpoint count all of sessions in a namespace managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/sessions/count

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - ModelsCountSessionResponse (sessions listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountSession.create(
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CountSession)
async def count_session_async(
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Count all sessions (CountSession)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required scope: social

    This endpoint count all of sessions in a namespace managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/sessions/count

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

    Responses:
        200: OK - ModelsCountSessionResponse (sessions listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CountSession.create(
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteLocalServer)
def delete_local_server(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a local server (DeleteLocalServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required scope: social

    This endpoint deletes a specified local dedicated server from DB.
    Note that DSM has no ability to shutdown local DS.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/local/{name}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (server deleted)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteLocalServer.create(
        name=name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteLocalServer)
async def delete_local_server_async(
    name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a local server (DeleteLocalServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required scope: social

    This endpoint deletes a specified local dedicated server from DB.
    Note that DSM has no ability to shutdown local DS.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/local/{name}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        name: (name) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (server deleted)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteLocalServer.create(
        name=name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteServer)
def delete_server(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a server in a region (DeleteServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required scope: social

    This endpoint deletes a specified dedicated server from DB and terminates the DS pod.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        204: No Content - (server deleted)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteServer.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteServer)
async def delete_server_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a server in a region (DeleteServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required scope: social

    This endpoint deletes a specified dedicated server from DB and terminates the DS pod.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        204: No Content - (server deleted)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteServer.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteSession)
def delete_session(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a session in a region (DeleteSession)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]

    Required scope: social

    This endpoint deletes a specified session and its corresponding match result from DB.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        204: No Content - (session deleted)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteSession)
async def delete_session_async(
    session_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete a session in a region (DeleteSession)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]

    Required scope: social

    This endpoint deletes a specified session and its corresponding match result from DB.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SESSION [DELETE]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID}

        method: DELETE

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        session_id: (sessionID) REQUIRED str in path

    Responses:
        204: No Content - (session deleted)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = DeleteSession.create(
        session_id=session_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetServer)
def get_server(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query a server in a region (GetServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint queries a specified dedicated server from DB.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsServer (server queried)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServer.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetServer)
async def get_server_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query a server in a region (GetServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint queries a specified dedicated server from DB.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsServer (server queried)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetServer.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListLocalServer)
def list_local_server(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed local servers (ListLocalServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint lists all of local dedicated servers in a namespace managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/local

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsListServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListLocalServer.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListLocalServer)
async def list_local_server_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed local servers (ListLocalServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint lists all of local dedicated servers in a namespace managed by this service.

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers/local

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsListServerResponse (servers listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListLocalServer.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListServer)
def list_server(
    count: int,
    offset: int,
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed servers in a region (ListServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint lists all of dedicated servers in a namespace managed by this service.

    Parameter Offset and Count is Required

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers

        method: GET

        tags: ["Admin"]

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListServer.create(
        count=count,
        offset=offset,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListServer)
async def list_server_async(
    count: int,
    offset: int,
    region: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed servers in a region (ListServer)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint lists all of dedicated servers in a namespace managed by this service.

    Parameter Offset and Count is Required

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/servers

        method: GET

        tags: ["Admin"]

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
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListServer.create(
        count=count,
        offset=offset,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListSession)
def list_session(
    count: int,
    offset: int,
    region: Optional[str] = None,
    with_server: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed sessions in a region (ListSession)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required scope: social

    This endpoint lists all of sessions in a namespace managed by this service.

    Parameter Offset and Count is Required

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/sessions

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

        with_server: (withServer) OPTIONAL bool in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListSessionResponse (sessions listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListSession.create(
        count=count,
        offset=offset,
        region=region,
        with_server=with_server,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListSession)
async def list_session_async(
    count: int,
    offset: int,
    region: Optional[str] = None,
    with_server: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all managed sessions in a region (ListSession)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required scope: social

    This endpoint lists all of sessions in a namespace managed by this service.

    Parameter Offset and Count is Required

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:DSM:SESSION [READ]

    Required Scope(s):
        - social

    Properties:
        url: /dsmcontroller/admin/namespaces/{namespace}/sessions

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        region: (region) OPTIONAL str in query

        with_server: (withServer) OPTIONAL bool in query

        count: (count) REQUIRED int in query

        offset: (offset) REQUIRED int in query

    Responses:
        200: OK - ModelsListSessionResponse (sessions listed)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = ListSession.create(
        count=count,
        offset=offset,
        region=region,
        with_server=with_server,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
