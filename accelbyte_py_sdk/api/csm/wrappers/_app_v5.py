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

from ..models import ApimodelAppItemV5
from ..models import ApimodelCreateAppV5Request
from ..models import ResponseErrorResponse

from ..operations.app_v5 import CreateAppV5


@same_doc_as(CreateAppV5)
def create_app_v5(
    app: str,
    body: ApimodelCreateAppV5Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create new extend app (v5) (CreateAppV5)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

    Create new extend app with name provided by {app} path parameter and specified scenario type

    Available scenario:
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`
    - scenario 1: `function-override`


    Available app status:
    - `app-creating`
    - `app-creation-failed`
    - `app-creation-timeout`
    - `app-undeployed`
    - `deployment-in-progress`
    - `deployment-failed`
    - `deployment-timeout`
    - `deployment-running`
    - `deployment-down`
    - `app-stopping`
    - `app-stop-failed`
    - `app-stop-timeout`
    - `app-stopped`
    - `app-removing`
    - `app-removed`
    - `app-remove-timeout`

    Properties:
        url: /csm/v5/admin/namespaces/{namespace}/apps/{app}

        method: POST

        tags: ["App V5"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateAppV5Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItemV5 (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateAppV5.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateAppV5)
async def create_app_v5_async(
    app: str,
    body: ApimodelCreateAppV5Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create new extend app (v5) (CreateAppV5)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

    Create new extend app with name provided by {app} path parameter and specified scenario type

    Available scenario:
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`
    - scenario 1: `function-override`


    Available app status:
    - `app-creating`
    - `app-creation-failed`
    - `app-creation-timeout`
    - `app-undeployed`
    - `deployment-in-progress`
    - `deployment-failed`
    - `deployment-timeout`
    - `deployment-running`
    - `deployment-down`
    - `app-stopping`
    - `app-stop-failed`
    - `app-stop-timeout`
    - `app-stopped`
    - `app-removing`
    - `app-removed`
    - `app-remove-timeout`

    Properties:
        url: /csm/v5/admin/namespaces/{namespace}/apps/{app}

        method: POST

        tags: ["App V5"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateAppV5Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItemV5 (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateAppV5.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
