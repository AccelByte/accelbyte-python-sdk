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

from ..models import ModelsListTerminatedServersResponse
from ..models import ModelsLogFileStatus
from ..models import ResponseError

from ..operations.terminated_servers import CheckServerLogs
from ..operations.terminated_servers import DownloadServerLogs
from ..operations.terminated_servers import ListTerminatedServers


@same_doc_as(CheckServerLogs)
def check_server_logs(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check dedicated server log files existence (checkServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

    Required scope: social

    This endpoint will check log file existence before download file.

    Properties:
        url: /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsLogFileStatus (Log exists.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckServerLogs.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CheckServerLogs)
async def check_server_logs_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Check dedicated server log files existence (checkServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

    Required scope: social

    This endpoint will check log file existence before download file.

    Properties:
        url: /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - ModelsLogFileStatus (Log exists.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CheckServerLogs.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DownloadServerLogs)
def download_server_logs(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download dedicated server log files (downloadServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

    Required scope: social

    This endpoint will download dedicated server's log file (.log).

    Properties:
        url: /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - Any (server logs downloaded.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadServerLogs.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DownloadServerLogs)
async def download_server_logs_async(
    pod_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Download dedicated server log files (downloadServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

    Required scope: social

    This endpoint will download dedicated server's log file (.log).

    Properties:
        url: /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

    Responses:
        200: OK - Any (server logs downloaded.)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DownloadServerLogs.create(
        pod_name=pod_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListTerminatedServers)
def list_terminated_servers(
    deployment: Optional[str] = None,
    end_date: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    party_id: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    provider: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    source: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Terminated Servers (listTerminatedServers)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    This endpoint used to retrieve terminated servers in a namespace

    The namespace filter is will give result exact namespace response
    ```

    Properties:
        url: /dslogmanager/namespaces/{namespace}/servers/search

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        deployment: (deployment) OPTIONAL str in query

        end_date: (end_date) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        source: (source) OPTIONAL str in query

        start_date: (start_date) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListTerminatedServers.create(
        deployment=deployment,
        end_date=end_date,
        game_mode=game_mode,
        limit=limit,
        next_=next_,
        party_id=party_id,
        pod_name=pod_name,
        previous=previous,
        provider=provider,
        region=region,
        session_id=session_id,
        source=source,
        start_date=start_date,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListTerminatedServers)
async def list_terminated_servers_async(
    deployment: Optional[str] = None,
    end_date: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    next_: Optional[str] = None,
    party_id: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    provider: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    source: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Terminated Servers (listTerminatedServers)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    This endpoint used to retrieve terminated servers in a namespace

    The namespace filter is will give result exact namespace response
    ```

    Properties:
        url: /dslogmanager/namespaces/{namespace}/servers/search

        method: GET

        tags: ["Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json", "text/x-log"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        deployment: (deployment) OPTIONAL str in query

        end_date: (end_date) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        next_: (next) OPTIONAL str in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        source: (source) OPTIONAL str in query

        start_date: (start_date) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListTerminatedServers.create(
        deployment=deployment,
        end_date=end_date,
        game_mode=game_mode,
        limit=limit,
        next_=next_,
        party_id=party_id,
        pod_name=pod_name,
        previous=previous,
        provider=provider,
        region=region,
        session_id=session_id,
        source=source,
        start_date=start_date,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
