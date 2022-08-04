# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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
from ..models import ResponseError

from ..operations.all_terminated_servers import BatchDownloadServerLogs
from ..operations.all_terminated_servers import ListAllTerminatedServers


@same_doc_as(BatchDownloadServerLogs)
def batch_download_server_logs(
    body: ModelsBatchDownloadLogsRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
