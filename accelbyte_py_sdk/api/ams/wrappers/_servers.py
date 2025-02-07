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

from ..models import ApiDSHistoryList
from ..models import ApiFleetServerConnectionInfoResponse
from ..models import ApiFleetServerHistoryResponse
from ..models import ApiFleetServerInfoResponse
from ..models import ResponseErrorResponse

from ..operations.servers import FleetServerConnectionInfo
from ..operations.servers import FleetServerHistory
from ..operations.servers import FleetServerInfo
from ..operations.servers import ServerHistory


@same_doc_as(FleetServerConnectionInfo)
def fleet_server_connection_info(
    server_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get connection info for a dedicated server (FleetServerConnectionInfo)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:DS:LOGS [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        server_id: (serverID) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServerConnectionInfoResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (dedicated server not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetServerConnectionInfo.create(
        server_id=server_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetServerConnectionInfo)
async def fleet_server_connection_info_async(
    server_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get connection info for a dedicated server (FleetServerConnectionInfo)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:DS:LOGS [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        server_id: (serverID) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServerConnectionInfoResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (dedicated server not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetServerConnectionInfo.create(
        server_id=server_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetServerHistory)
def fleet_server_history(
    fleet_id: str,
    count: Optional[int] = None,
    offset: Optional[int] = None,
    reason: Optional[str] = None,
    region: Optional[str] = None,
    server_id: Optional[str] = None,
    sort_direction: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get history records of a dedicated server in a fleet (FleetServerHistory)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        reason: (reason) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        server_id: (serverId) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiDSHistoryList (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetServerHistory.create(
        fleet_id=fleet_id,
        count=count,
        offset=offset,
        reason=reason,
        region=region,
        server_id=server_id,
        sort_direction=sort_direction,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetServerHistory)
async def fleet_server_history_async(
    fleet_id: str,
    count: Optional[int] = None,
    offset: Optional[int] = None,
    reason: Optional[str] = None,
    region: Optional[str] = None,
    server_id: Optional[str] = None,
    sort_direction: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get history records of a dedicated server in a fleet (FleetServerHistory)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        reason: (reason) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        server_id: (serverId) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiDSHistoryList (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetServerHistory.create(
        fleet_id=fleet_id,
        count=count,
        offset=offset,
        reason=reason,
        region=region,
        server_id=server_id,
        sort_direction=sort_direction,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(FleetServerInfo)
def fleet_server_info(
    server_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get information about a dedicated server (FleetServerInfo)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/servers/{serverID}

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        server_id: (serverID) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServerInfoResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (dedicated server not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetServerInfo.create(
        server_id=server_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(FleetServerInfo)
async def fleet_server_info_async(
    server_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get information about a dedicated server (FleetServerInfo)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/servers/{serverID}

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        server_id: (serverID) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServerInfoResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (dedicated server not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = FleetServerInfo.create(
        server_id=server_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ServerHistory)
def server_history(
    server_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get history records of a dedicated server (ServerHistory)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        server_id: (serverID) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServerHistoryResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ServerHistory.create(
        server_id=server_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ServerHistory)
async def server_history_async(
    server_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get history records of a dedicated server (ServerHistory)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/history

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        server_id: (serverID) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServerHistoryResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ServerHistory.create(
        server_id=server_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
