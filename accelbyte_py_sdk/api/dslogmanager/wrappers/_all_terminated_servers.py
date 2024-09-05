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

from ..models import ModelsBatchDownloadLogsRequest
from ..models import ModelsListTerminatedServersResponse
from ..models import ModelsMetadataServersRequest
from ..models import ResponseError

from ..operations.all_terminated_servers import BatchDownloadServerLogs
from ..operations.all_terminated_servers import ListAllTerminatedServers
from ..operations.all_terminated_servers import ListMetadataServers


@same_doc_as(BatchDownloadServerLogs)
def batch_download_server_logs(
    body: ModelsBatchDownloadLogsRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Batch Download dedicated server log files (batchDownloadServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

    Required scope: social

    This endpoint will download dedicated server's log file (.zip).

    Properties:
        url: /dslogmanager/servers/logs/download

        method: POST

        tags: ["All Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBatchDownloadLogsRequest in body

    Responses:
        200: OK - Any (server logs downloaded.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = BatchDownloadServerLogs.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BatchDownloadServerLogs)
async def batch_download_server_logs_async(
    body: ModelsBatchDownloadLogsRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Batch Download dedicated server log files (batchDownloadServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:LOG [READ]

    Required scope: social

    This endpoint will download dedicated server's log file (.zip).

    Properties:
        url: /dslogmanager/servers/logs/download

        method: POST

        tags: ["All Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBatchDownloadLogsRequest in body

    Responses:
        200: OK - Any (server logs downloaded.)

        400: Bad Request - ResponseError (Bad Request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = BatchDownloadServerLogs.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListAllTerminatedServers)
def list_all_terminated_servers(
    deployment: Optional[str] = None,
    end_date: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    next_: Optional[str] = None,
    party_id: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    provider: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    user_id: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Terminated Servers (listAllTerminatedServers)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    This endpoint used to retrieve terminated servers in all namespace
    ```

    Properties:
        url: /dslogmanager/servers/search

        method: GET

        tags: ["All Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) OPTIONAL str in query

        end_date: (end_date) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        namespace: (namespace) OPTIONAL str in query

        next_: (next) OPTIONAL str in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        start_date: (start_date) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListAllTerminatedServers.create(
        deployment=deployment,
        end_date=end_date,
        game_mode=game_mode,
        limit=limit,
        namespace=namespace,
        next_=next_,
        party_id=party_id,
        pod_name=pod_name,
        previous=previous,
        provider=provider,
        region=region,
        session_id=session_id,
        start_date=start_date,
        status=status,
        user_id=user_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListAllTerminatedServers)
async def list_all_terminated_servers_async(
    deployment: Optional[str] = None,
    end_date: Optional[str] = None,
    game_mode: Optional[str] = None,
    limit: Optional[int] = None,
    namespace: Optional[str] = None,
    next_: Optional[str] = None,
    party_id: Optional[str] = None,
    pod_name: Optional[str] = None,
    previous: Optional[str] = None,
    provider: Optional[str] = None,
    region: Optional[str] = None,
    session_id: Optional[str] = None,
    start_date: Optional[str] = None,
    status: Optional[str] = None,
    user_id: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve All Terminated Servers (listAllTerminatedServers)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    This endpoint used to retrieve terminated servers in all namespace
    ```

    Properties:
        url: /dslogmanager/servers/search

        method: GET

        tags: ["All Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        deployment: (deployment) OPTIONAL str in query

        end_date: (end_date) OPTIONAL str in query

        game_mode: (game_mode) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        namespace: (namespace) OPTIONAL str in query

        next_: (next) OPTIONAL str in query

        party_id: (party_id) OPTIONAL str in query

        pod_name: (pod_name) OPTIONAL str in query

        previous: (previous) OPTIONAL str in query

        provider: (provider) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        session_id: (session_id) OPTIONAL str in query

        start_date: (start_date) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        user_id: (user_id) OPTIONAL str in query

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListAllTerminatedServers.create(
        deployment=deployment,
        end_date=end_date,
        game_mode=game_mode,
        limit=limit,
        namespace=namespace,
        next_=next_,
        party_id=party_id,
        pod_name=pod_name,
        previous=previous,
        provider=provider,
        region=region,
        session_id=session_id,
        start_date=start_date,
        status=status,
        user_id=user_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListMetadataServers)
def list_metadata_servers(
    body: ModelsMetadataServersRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Metadata Servers (listMetadataServers)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    This endpoint used to retrieve metadata servers in a namespace

    The namespace filter is will give result exact namespace response
    ```

    Properties:
        url: /dslogmanager/servers/metadata

        method: POST

        tags: ["All Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMetadataServersRequest in body

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListMetadataServers.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListMetadataServers)
async def list_metadata_servers_async(
    body: ModelsMetadataServersRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve Metadata Servers (listMetadataServers)

    ```
    Required permission: ADMIN:NAMESPACE:{namespace}:DSLM:SERVER [READ]

    This endpoint used to retrieve metadata servers in a namespace

    The namespace filter is will give result exact namespace response
    ```

    Properties:
        url: /dslogmanager/servers/metadata

        method: POST

        tags: ["All Terminated Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMetadataServersRequest in body

    Responses:
        200: OK - ModelsListTerminatedServersResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListMetadataServers.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
