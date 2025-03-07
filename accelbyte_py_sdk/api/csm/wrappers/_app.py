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
from ....core import deprecated
from ....core import same_doc_as

from ..models import GeneratedCreateAppV1Request
from ..models import GeneratedCreateAppV1Response
from ..models import GeneratedGetAppListV1Request
from ..models import GeneratedGetAppListV1Response
from ..models import GeneratedGetAppReleaseV1Response
from ..models import GeneratedGetAppV1Response
from ..models import GeneratedStartAppV1Request
from ..models import GeneratedStartAppV1Response
from ..models import GeneratedStopAppV1Request
from ..models import GeneratedStopAppV1Response
from ..models import GeneratedUpdateAppV1Request
from ..models import GeneratedUpdateAppV1Response
from ..models import ResponseErrorResponse

from ..operations.app import CreateAppV1
from ..operations.app import DeleteAppV1
from ..operations.app import GetAppListV1
from ..operations.app import GetAppReleaseV1
from ..operations.app import GetAppV1
from ..operations.app import StartAppV1
from ..operations.app import StopAppV1
from ..operations.app import UpdateAppV1


@deprecated
@same_doc_as(CreateAppV1)
def create_app_v1(
    app: str,
    body: GeneratedCreateAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates new App for AB-Extend Customers (CreateAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

    Creates new App for AB-Extend Customers

    Available scenario:
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`
    - scenario 1: `function-override`

    Default: `function-override`

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: PUT

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedCreateAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedCreateAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateAppV1)
async def create_app_v1_async(
    app: str,
    body: GeneratedCreateAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Creates new App for AB-Extend Customers (CreateAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

    Creates new App for AB-Extend Customers

    Available scenario:
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`
    - scenario 1: `function-override`

    Default: `function-override`

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: PUT

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedCreateAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedCreateAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteAppV1)
def delete_app_v1(
    app: str,
    forced: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete App by Åpp Name (DeleteAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [DELETE]`

    Delete App by given DeploymentID

    This endpoint intended to delete ECR repo, ECR manifests, service images, uninstall helm-release,
    and update the deleted_at in DB by given App Name.

    Required: Valid Access Token

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: DELETE

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        forced: (forced) OPTIONAL str in query

    Responses:
        204: No Content -

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppV1.create(
        app=app,
        forced=forced,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteAppV1)
async def delete_app_v1_async(
    app: str,
    forced: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete App by Åpp Name (DeleteAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [DELETE]`

    Delete App by given DeploymentID

    This endpoint intended to delete ECR repo, ECR manifests, service images, uninstall helm-release,
    and update the deleted_at in DB by given App Name.

    Required: Valid Access Token

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: DELETE

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        forced: (forced) OPTIONAL str in query

    Responses:
        204: No Content -

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppV1.create(
        app=app,
        forced=forced,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAppListV1)
def get_app_list_v1(
    body: GeneratedGetAppListV1Request,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Gets the List of Apps for AB-Extend Customer (GetAppListV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Gets the List of Apps for AB-Extend Customer

    Available scenario:
    - scenario 1: `function-override`
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps

        method: POST

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedGetAppListV1Request in body

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - GeneratedGetAppListV1Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppListV1.create(
        body=body,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAppListV1)
async def get_app_list_v1_async(
    body: GeneratedGetAppListV1Request,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Gets the List of Apps for AB-Extend Customer (GetAppListV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Gets the List of Apps for AB-Extend Customer

    Available scenario:
    - scenario 1: `function-override`
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps

        method: POST

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedGetAppListV1Request in body

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - GeneratedGetAppListV1Response

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppListV1.create(
        body=body,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAppReleaseV1)
def get_app_release_v1(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Gets the Latest Release Version info of this App (GetAppReleaseV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Gets the Latest Release Version info of this App

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/release

        method: GET

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedGetAppReleaseV1Response

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppReleaseV1.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAppReleaseV1)
async def get_app_release_v1_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Gets the Latest Release Version info of this App (GetAppReleaseV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Gets the Latest Release Version info of this App

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/release

        method: GET

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedGetAppReleaseV1Response

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppReleaseV1.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetAppV1)
def get_app_v1(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Gets the App By Name (GetAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Gets the App By Name

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: GET

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedGetAppV1Response

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppV1.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetAppV1)
async def get_app_v1_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Gets the App By Name (GetAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Gets the App By Name

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: GET

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedGetAppV1Response

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppV1.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(StartAppV1)
def start_app_v1(
    app: str,
    body: GeneratedStartAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Starts the Application (StartAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Starts the Application

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/start

        method: PUT

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedStartAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedStartAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StartAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(StartAppV1)
async def start_app_v1_async(
    app: str,
    body: GeneratedStartAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Starts the Application (StartAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Starts the Application

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/start

        method: PUT

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedStartAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedStartAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StartAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(StopAppV1)
def stop_app_v1(
    app: str,
    body: GeneratedStopAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stops the Application (StopAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Stops the Application

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop

        method: PUT

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedStopAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedStopAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StopAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(StopAppV1)
async def stop_app_v1_async(
    app: str,
    body: GeneratedStopAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stops the Application (StopAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Stops the Application

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop

        method: PUT

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedStopAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedStopAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = StopAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateAppV1)
def update_app_v1(
    app: str,
    body: GeneratedUpdateAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update App Partially (UpdateAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update App Partially

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: PATCH

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedUpdateAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedUpdateAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateAppV1)
async def update_app_v1_async(
    app: str,
    body: GeneratedUpdateAppV1Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update App Partially (UpdateAppV1)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update App Partially

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/apps/{app}

        method: PATCH

        tags: ["App"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED GeneratedUpdateAppV1Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - GeneratedUpdateAppV1Response (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateAppV1.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
