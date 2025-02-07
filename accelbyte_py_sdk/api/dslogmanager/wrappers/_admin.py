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

from ..models import ModelsServerLogs
from ..models import ResponseError

from ..operations.admin import GetServerLogs


@same_doc_as(GetServerLogs)
def get_server_logs(
    pod_name: str,
    log_type: Optional[str] = None,
    offset: Optional[int] = None,
    origin: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Queries server logs (getServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint queries a specified dedicated server's logs.

    Properties:
        url: /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        log_type: (logType) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        origin: (origin) OPTIONAL str in query

    Responses:
        200: OK - ModelsServerLogs (server logs queried)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetServerLogs.create(
        pod_name=pod_name,
        log_type=log_type,
        offset=offset,
        origin=origin,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetServerLogs)
async def get_server_logs_async(
    pod_name: str,
    log_type: Optional[str] = None,
    offset: Optional[int] = None,
    origin: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Queries server logs (getServerLogs)

    Required permission: ADMIN:NAMESPACE:{namespace}:DSM:SERVER [READ]

    Required scope: social

    This endpoint queries a specified dedicated server's logs.

    Properties:
        url: /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs

        method: GET

        tags: ["Admin"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        pod_name: (podName) REQUIRED str in path

        log_type: (logType) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        origin: (origin) OPTIONAL str in query

    Responses:
        200: OK - ModelsServerLogs (server logs queried)

        400: Bad Request - ResponseError (malformed request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (server not found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetServerLogs.create(
        pod_name=pod_name,
        log_type=log_type,
        offset=offset,
        origin=origin,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
