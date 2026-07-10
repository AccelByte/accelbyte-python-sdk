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

from ..models import ApimodelGetAppStatusProgressResponse
from ..models import ResponseErrorResponse

from ..operations.app_status_progress_v4 import GetAppStatusProgressV4


@same_doc_as(GetAppStatusProgressV4)
def get_app_status_progress_v4(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get in-progress long-running operation steps for the extend app (stepper) (GetAppStatusProgressV4)

    Returns step rows for the current or last tracked operation.

    Properties:
        url: /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress

        method: GET

        tags: ["App Status Progress V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetAppStatusProgressResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppStatusProgressV4.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAppStatusProgressV4)
async def get_app_status_progress_v4_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get in-progress long-running operation steps for the extend app (stepper) (GetAppStatusProgressV4)

    Returns step rows for the current or last tracked operation.

    Properties:
        url: /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress

        method: GET

        tags: ["App Status Progress V4"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelGetAppStatusProgressResponse (OK)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppStatusProgressV4.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
