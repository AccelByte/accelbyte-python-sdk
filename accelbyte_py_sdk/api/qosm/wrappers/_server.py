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

from ..models import ModelsHeartbeatRequest
from ..models import ResponseError

from ..operations.server import Heartbeat


@same_doc_as(Heartbeat)
def heartbeat(
    body: ModelsHeartbeatRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send heartbeat (Heartbeat)

    ```
    Required permission: QOS:SERVER [CREATE][UPDATE]
    Required scope: social

    This endpoint is intended to be called by QoS service
    to register and periodically let QoS Manager know that it is still alive.
    ```

    Properties:
        url: /qosm/servers/heartbeat

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsHeartbeatRequest in body

    Responses:
        204: No Content - (heartbeat received)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = Heartbeat.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(Heartbeat)
async def heartbeat_async(
    body: ModelsHeartbeatRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Send heartbeat (Heartbeat)

    ```
    Required permission: QOS:SERVER [CREATE][UPDATE]
    Required scope: social

    This endpoint is intended to be called by QoS service
    to register and periodically let QoS Manager know that it is still alive.
    ```

    Properties:
        url: /qosm/servers/heartbeat

        method: POST

        tags: ["Server"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsHeartbeatRequest in body

    Responses:
        204: No Content - (heartbeat received)

        400: Bad Request - ResponseError (malformed request)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    request = Heartbeat.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
