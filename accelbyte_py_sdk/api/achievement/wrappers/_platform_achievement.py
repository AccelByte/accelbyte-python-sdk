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

from ..models import ModelsBulkCreatePSNEventResponse
from ..models import ModelsBulkCreatePSNEvents
from ..models import ResponseError

from ..operations.platform_achievement import BulkCreatePSNEvent


@same_doc_as(BulkCreatePSNEvent)
def bulk_create_psn_event(
    body: ModelsBulkCreatePSNEvents,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create PSN UDS events (BulkCreatePSNEvent)

    Create PSN UDS events. Player need to login first using playstation token to IAM service.

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk

        method: POST

        tags: ["Platform Achievement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkCreatePSNEvents in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkCreatePSNEventResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCreatePSNEvent.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(BulkCreatePSNEvent)
async def bulk_create_psn_event_async(
    body: ModelsBulkCreatePSNEvents,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create PSN UDS events (BulkCreatePSNEvent)

    Create PSN UDS events. Player need to login first using playstation token to IAM service.

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk

        method: POST

        tags: ["Platform Achievement"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBulkCreatePSNEvents in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsBulkCreatePSNEventResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        403: Forbidden - ResponseError (Forbidden)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = BulkCreatePSNEvent.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
