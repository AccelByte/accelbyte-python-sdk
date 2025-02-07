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

from ..models import ApiQoSEndpointResponse
from ..models import ApiUpdateServerRequest
from ..models import ResponseErrorResponse

from ..operations.ams_qo_s import QoSRegionsGet
from ..operations.ams_qo_s import QoSRegionsUpdate


@same_doc_as(QoSRegionsGet)
def qo_s_regions_get(
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a list of available AMS QoS regions (QoSRegionsGet)

    ```
    Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [READ]

    This endpoint lists all QoS services available in all regions.

    This endpoint is intended to be called by game client to find out all available regions.
    After getting a list of QoS on each region, game client is expected to ping each one with UDP
    connection as described below:

    1. Make UDP connection to each QoS's IP:Port
    2. Send string "PING" after connection established
    3. Wait for string "PONG" response
    4. Note the request-response latency for each QoS in each region

    The game then can use ping latency information to either:
    1. Inform the player on these latencies and let player choose preferred region
    2. Send the latency list to Matchmaking Service so that player can be matched with other players
    in nearby regions

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/qos

        method: GET

        tags: ["AMS QoS"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiQoSEndpointResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QoSRegionsGet.create(
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QoSRegionsGet)
async def qo_s_regions_get_async(
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get a list of available AMS QoS regions (QoSRegionsGet)

    ```
    Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [READ]

    This endpoint lists all QoS services available in all regions.

    This endpoint is intended to be called by game client to find out all available regions.
    After getting a list of QoS on each region, game client is expected to ping each one with UDP
    connection as described below:

    1. Make UDP connection to each QoS's IP:Port
    2. Send string "PING" after connection established
    3. Wait for string "PONG" response
    4. Note the request-response latency for each QoS in each region

    The game then can use ping latency information to either:
    1. Inform the player on these latencies and let player choose preferred region
    2. Send the latency list to Matchmaking Service so that player can be matched with other players
    in nearby regions

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/qos

        method: GET

        tags: ["AMS QoS"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiQoSEndpointResponse (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QoSRegionsGet.create(
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QoSRegionsUpdate)
def qo_s_regions_update(
    body: ApiUpdateServerRequest,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update the status of a QoS region (QoSRegionsUpdate)

    ```
    Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]

    This endpoint updates the registered QoS service's configurable configuration.

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/qos/{region}

        method: PATCH

        tags: ["AMS QoS"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiUpdateServerRequest in body

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record updated)

        400: Bad Request - ResponseErrorResponse (malformed request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (regionial QoS record not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QoSRegionsUpdate.create(
        body=body,
        region=region,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QoSRegionsUpdate)
async def qo_s_regions_update_async(
    body: ApiUpdateServerRequest,
    region: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update the status of a QoS region (QoSRegionsUpdate)

    ```
    Required Permission: ADMIN:NAMESPACE:{namespace}:QOS:SERVER [UPDATE]

    This endpoint updates the registered QoS service's configurable configuration.

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/qos/{region}

        method: PATCH

        tags: ["AMS QoS"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiUpdateServerRequest in body

        namespace: (namespace) REQUIRED str in path

        region: (region) REQUIRED str in path

    Responses:
        204: No Content - (record updated)

        400: Bad Request - ResponseErrorResponse (malformed request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (regionial QoS record not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QoSRegionsUpdate.create(
        body=body,
        region=region,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
