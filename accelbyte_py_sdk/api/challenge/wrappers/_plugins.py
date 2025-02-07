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

from ..models import IamErrorResponse
from ..models import ModelPluginAssignmentRequest
from ..models import ModelPluginAssignmentResponse
from ..models import ResponseError

from ..operations.plugins import AdminCreateAssignmentPlugin
from ..operations.plugins import AdminDeleteAssignmentPlugin
from ..operations.plugins import AdminGetAssignmentPlugin
from ..operations.plugins import AdminUpdateAssignmentPlugin
from ..models import ModelPluginAssignmentRequestExtendTypeEnum
from ..models import ModelPluginAssignmentResponseExtendTypeEnum


@same_doc_as(AdminCreateAssignmentPlugin)
def admin_create_assignment_plugin(
    body: ModelPluginAssignmentRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create assignment plugin (adminCreateAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [CREATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: POST

        tags: ["Plugins"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPluginAssignmentRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelPluginAssignmentResponse (Created)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateAssignmentPlugin.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateAssignmentPlugin)
async def admin_create_assignment_plugin_async(
    body: ModelPluginAssignmentRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create assignment plugin (adminCreateAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [CREATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: POST

        tags: ["Plugins"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPluginAssignmentRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelPluginAssignmentResponse (Created)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateAssignmentPlugin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteAssignmentPlugin)
def admin_delete_assignment_plugin(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete assignment plugin (adminDeleteAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [DELETE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: DELETE

        tags: ["Plugins"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAssignmentPlugin.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteAssignmentPlugin)
async def admin_delete_assignment_plugin_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete assignment plugin (adminDeleteAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [DELETE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: DELETE

        tags: ["Plugins"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteAssignmentPlugin.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAssignmentPlugin)
def admin_get_assignment_plugin(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get assignment plugin (adminGetAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: GET

        tags: ["Plugins"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelPluginAssignmentResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAssignmentPlugin.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAssignmentPlugin)
async def admin_get_assignment_plugin_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get assignment plugin (adminGetAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [READ]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: GET

        tags: ["Plugins"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelPluginAssignmentResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAssignmentPlugin.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateAssignmentPlugin)
def admin_update_assignment_plugin(
    body: ModelPluginAssignmentRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update assignment plugin (adminUpdateAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: PUT

        tags: ["Plugins"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPluginAssignmentRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelPluginAssignmentResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAssignmentPlugin.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateAssignmentPlugin)
async def admin_update_assignment_plugin_async(
    body: ModelPluginAssignmentRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update assignment plugin (adminUpdateAssignmentPlugin)

    - Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE:PLUGIN [UPDATE]

    Properties:
        url: /challenge/v1/admin/namespaces/{namespace}/plugins/assignment

        method: PUT

        tags: ["Plugins"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelPluginAssignmentRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelPluginAssignmentResponse (OK)

        400: Bad Request - ResponseError (20018: bad request: {{message}})

        401: Unauthorized - IamErrorResponse (20001: unauthorized access)

        403: Forbidden - IamErrorResponse (20013: insufficient permission)

        404: Not Found - IamErrorResponse (20029: not found)

        500: Internal Server Error - ResponseError (20000: internal server error: {{message}})
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateAssignmentPlugin.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
