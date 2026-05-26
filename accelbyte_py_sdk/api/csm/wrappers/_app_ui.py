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

from ..models import ApimodelAppUIResponse
from ..models import ApimodelCreateAppUIRequest
from ..models import ApimodelListAppUIResponse
from ..models import ApimodelUploadFileResponse
from ..models import ResponseErrorResponse

from ..operations.app_ui import CreateAppUI
from ..operations.app_ui import DeleteAppUI
from ..operations.app_ui import ListAppUI
from ..operations.app_ui import UploadAppUIFile


@same_doc_as(CreateAppUI)
def create_app_ui(
    body: ApimodelCreateAppUIRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a new App UI instance (CreateAppUI)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [CREATE]`

    Creates a new App UI configuration. The App UI can be hosted either by AccelByte (default) or externally.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui

        method: POST

        tags: ["App UI"]

        consumes: ["application/json", "multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateAppUIRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelAppUIResponse (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateAppUI.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateAppUI)
async def create_app_ui_async(
    body: ApimodelCreateAppUIRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create a new App UI instance (CreateAppUI)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [CREATE]`

    Creates a new App UI configuration. The App UI can be hosted either by AccelByte (default) or externally.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui

        method: POST

        tags: ["App UI"]

        consumes: ["application/json", "multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelCreateAppUIRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelAppUIResponse (Created)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        409: Conflict - ResponseErrorResponse (Conflict)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateAppUI.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteAppUI)
def delete_app_ui(
    app_ui_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an App UI instance (DeleteAppUI)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [DELETE]`

    Permanently deletes an App UI instance and schedules cleanup of associated S3 assets.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}

        method: DELETE

        tags: ["App UI"]

        consumes: ["application/json", "multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app_ui_name: (appUiName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppUI.create(
        app_ui_name=app_ui_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteAppUI)
async def delete_app_ui_async(
    app_ui_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete an App UI instance (DeleteAppUI)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [DELETE]`

    Permanently deletes an App UI instance and schedules cleanup of associated S3 assets.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}

        method: DELETE

        tags: ["App UI"]

        consumes: ["application/json", "multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        app_ui_name: (appUiName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteAppUI.create(
        app_ui_name=app_ui_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListAppUI)
def list_app_ui(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all App UI instances in the namespace (ListAppUI)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [READ]`

    Retrieves a paginated list of App UI instances. Supports filtering by name and pagination using limit/offset.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui

        method: GET

        tags: ["App UI"]

        consumes: ["application/json", "multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelListAppUIResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAppUI.create(
        limit=limit,
        name=name,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListAppUI)
async def list_app_ui_async(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List all App UI instances in the namespace (ListAppUI)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [READ]`

    Retrieves a paginated list of App UI instances. Supports filtering by name and pagination using limit/offset.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui

        method: GET

        tags: ["App UI"]

        consumes: ["application/json", "multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelListAppUIResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListAppUI.create(
        limit=limit,
        name=name,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UploadAppUIFile)
def upload_app_ui_file(
    app_ui_name: str,
    file: Any,
    version: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload App UI assets as a zip file (UploadAppUIFile)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [UPDATE]`

    Uploads a ZIP archive containing App UI static assets (HTML, CSS, JS, etc.). Files are stored in S3 and served with immutable caching.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload

        method: POST

        tags: ["App UI"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

        app_ui_name: (appUiName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) OPTIONAL str in query

    Responses:
        200: OK - ApimodelUploadFileResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        502: Bad Gateway - ResponseErrorResponse (Bad Gateway)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadAppUIFile.create(
        app_ui_name=app_ui_name,
        file=file,
        version=version,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UploadAppUIFile)
async def upload_app_ui_file_async(
    app_ui_name: str,
    file: Any,
    version: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Upload App UI assets as a zip file (UploadAppUIFile)

    Required permission : `ADMIN:NAMESPACE:{namespace}:EXTEND:APPUI [UPDATE]`

    Uploads a ZIP archive containing App UI static assets (HTML, CSS, JS, etc.). Files are stored in S3 and served with immutable caching.

    Properties:
        url: /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload

        method: POST

        tags: ["App UI"]

        consumes: ["multipart/form-data"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        file: (file) REQUIRED Any in form_data

        app_ui_name: (appUiName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        version: (version) OPTIONAL str in query

    Responses:
        200: OK - ApimodelUploadFileResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        404: Not Found - ResponseErrorResponse (Not Found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

        502: Bad Gateway - ResponseErrorResponse (Bad Gateway)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UploadAppUIFile.create(
        app_ui_name=app_ui_name,
        file=file,
        version=version,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
