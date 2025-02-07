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

from ..models import ApimodelAppItem
from ..models import ApimodelCreateAppV2Request
from ..models import ApimodelGetAppListV2Request
from ..models import ApimodelGetAppListV2Response
from ..models import ApimodelIncreaseLimitFormRequest
from ..models import ApimodelUpdateAppResourceRequest
from ..models import ApimodelUpdateAppV2Request
from ..models import ResponseErrorResponse

from ..operations.app_v2 import CreateAppV2
from ..operations.app_v2 import DeleteAppV2
from ..operations.app_v2 import GetAppListV2
from ..operations.app_v2 import GetAppV2
from ..operations.app_v2 import StartAppV2
from ..operations.app_v2 import StopAppV2
from ..operations.app_v2 import UpdateAppResourcesResourceLimitFormV2
from ..operations.app_v2 import UpdateAppResourcesV2
from ..operations.app_v2 import UpdateAppV2


@same_doc_as(CreateAppV2)
def create_app_v2(
    app: str,
    body: ApimodelCreateAppV2Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create new extend app (CreateAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

    Create new extend app with name provided by {app} path parameter and specified scenario type

    Available scenario:
    - scenario 1: `function-override`
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`


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
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: POST

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateAppV2Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem (OK)

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
    request = CreateAppV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateAppV2)
async def create_app_v2_async(
    app: str,
    body: ApimodelCreateAppV2Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create new extend app (CreateAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [CREATE]`

    Create new extend app with name provided by {app} path parameter and specified scenario type

    Available scenario:
    - scenario 1: `function-override`
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`


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
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: POST

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateAppV2Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem (OK)

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
    request = CreateAppV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAppV2)
def delete_app_v2(
    app: str,
    forced: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete extend app by name (DeleteAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [DELETE]`

    Delete extend app by given {app} name

    This endpoint will delete app information, configuration, deployments and all related manifest from
    db, storage and cluster

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: DELETE

        tags: ["App V2"]

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
    request = DeleteAppV2.create(
        app=app,
        forced=forced,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAppV2)
async def delete_app_v2_async(
    app: str,
    forced: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete extend app by name (DeleteAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [DELETE]`

    Delete extend app by given {app} name

    This endpoint will delete app information, configuration, deployments and all related manifest from
    db, storage and cluster

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: DELETE

        tags: ["App V2"]

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
    request = DeleteAppV2.create(
        app=app,
        forced=forced,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAppListV2)
def get_app_list_v2(
    body: ApimodelGetAppListV2Request,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of extend apps on a given game namespace (GetAppListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Get list of extend apps on a given game namespace

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps

        method: POST

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelGetAppListV2Request in body

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelGetAppListV2Response (List of apps)

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
    request = GetAppListV2.create(
        body=body,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAppListV2)
async def get_app_list_v2_async(
    body: ApimodelGetAppListV2Request,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of extend apps on a given game namespace (GetAppListV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Get list of extend apps on a given game namespace

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps

        method: POST

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelGetAppListV2Request in body

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelGetAppListV2Response (List of apps)

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
    request = GetAppListV2.create(
        body=body,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetAppV2)
def get_app_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get extend app by name (GetAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Get extend app by name

    Available scenario:
    - scenario 1: `function-override`
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`


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
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: GET

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetAppV2)
async def get_app_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get extend app by name (GetAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [READ]`

    Get extend app by name

    Available scenario:
    - scenario 1: `function-override`
    - scenario 2: `service-extension`
    - scenario 3: `event-handler`


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
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: GET

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetAppV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(StartAppV2)
def start_app_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Starts the Application (StartAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Starts the Application

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/start

        method: PUT

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (This means the request to start the application is accepted, and it will be processed in the background.)

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
    request = StartAppV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(StartAppV2)
async def start_app_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Starts the Application (StartAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Starts the Application

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/start

        method: PUT

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (This means the request to start the application is accepted, and it will be processed in the background.)

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
    request = StartAppV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(StopAppV2)
def stop_app_v2(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stops the Application (StopAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Stops the Application

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop

        method: PUT

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (This means the request to stop the application is accepted, and it will be processed in the background.)

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
    request = StopAppV2.create(
        app=app,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(StopAppV2)
async def stop_app_v2_async(
    app: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Stops the Application (StopAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Stops the Application

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop

        method: PUT

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        202: Accepted - (This means the request to stop the application is accepted, and it will be processed in the background.)

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
    request = StopAppV2.create(
        app=app,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAppResourcesResourceLimitFormV2)
def update_app_resources_resource_limit_form_v2(
    app: str,
    body: ApimodelIncreaseLimitFormRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Resource Limit to be increased (UpdateAppResourcesResourceLimitFormV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update app resources provided on request body

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form

        method: POST

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelIncreaseLimitFormRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = UpdateAppResourcesResourceLimitFormV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAppResourcesResourceLimitFormV2)
async def update_app_resources_resource_limit_form_v2_async(
    app: str,
    body: ApimodelIncreaseLimitFormRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Request Resource Limit to be increased (UpdateAppResourcesResourceLimitFormV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update app resources provided on request body

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form

        method: POST

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelIncreaseLimitFormRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

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
    request = UpdateAppResourcesResourceLimitFormV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAppResourcesV2)
def update_app_resources_v2(
    app: str,
    body: ApimodelUpdateAppResourceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update app info (UpdateAppResourcesV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update app resources provided on request body

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources

        method: PATCH

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelUpdateAppResourceRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem (OK)

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
    request = UpdateAppResourcesV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAppResourcesV2)
async def update_app_resources_v2_async(
    app: str,
    body: ApimodelUpdateAppResourceRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update app info (UpdateAppResourcesV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update app resources provided on request body

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources

        method: PATCH

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelUpdateAppResourceRequest in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem (OK)

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
    request = UpdateAppResourcesV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateAppV2)
def update_app_v2(
    app: str,
    body: ApimodelUpdateAppV2Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update app info (UpdateAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update app info provided on request body

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: PATCH

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelUpdateAppV2Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem (OK)

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
    request = UpdateAppV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateAppV2)
async def update_app_v2_async(
    app: str,
    body: ApimodelUpdateAppV2Request,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update app info (UpdateAppV2)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APP [UPDATE]`

    Update app info provided on request body

    Properties:
        url: /csm/v2/admin/namespaces/{namespace}/apps/{app}

        method: PATCH

        tags: ["App V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelUpdateAppV2Request in body

        app: (app) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApimodelAppItem (OK)

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
    request = UpdateAppV2.create(
        app=app,
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
