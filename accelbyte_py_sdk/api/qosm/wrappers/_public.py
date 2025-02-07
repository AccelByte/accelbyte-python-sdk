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

from ..models import ModelsListServerResponse
from ..models import ResponseError

from ..operations.public import ListServer
from ..operations.public import ListServerPerNamespace


@same_doc_as(ListServer)
def list_server(x_additional_headers: Optional[Dict[str, str]] = None, **kwargs):
    """Get list of QoS services (ListServer)

    ```
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
    ```

    Properties:
        url: /qosm/public/qos

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsListServerResponse (list of QoS services returned)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListServer.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListServer)
async def list_server_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of QoS services (ListServer)

    ```
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
    ```

    Properties:
        url: /qosm/public/qos

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsListServerResponse (list of QoS services returned)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = ListServer.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListServerPerNamespace)
def list_server_per_namespace(
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of QoS services per region (ListServerPerNamespace)

    ```
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
    ```

    Properties:
        url: /qosm/public/namespaces/{namespace}/qos

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ModelsListServerResponse (list of QoS services returned)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListServerPerNamespace.create(
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListServerPerNamespace)
async def list_server_per_namespace_async(
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of QoS services per region (ListServerPerNamespace)

    ```
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
    ```

    Properties:
        url: /qosm/public/namespaces/{namespace}/qos

        method: GET

        tags: ["Public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ModelsListServerResponse (list of QoS services returned)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListServerPerNamespace.create(
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
