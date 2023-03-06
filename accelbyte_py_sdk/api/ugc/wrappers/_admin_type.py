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

from ..models import ModelsCreateTypeRequest
from ..models import ModelsCreateTypeResponse
from ..models import ModelsPaginatedGetTypeResponse
from ..models import ResponseError

from ..operations.admin_type import AdminCreateType
from ..operations.admin_type import AdminDeleteType
from ..operations.admin_type import AdminGetType
from ..operations.admin_type import AdminUpdateType


@same_doc_as(AdminCreateType)
def admin_create_type(
    body: ModelsCreateTypeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create types (AdminCreateType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [CREATE]
    creates a new type and subtype

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [CREATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types

        method: POST

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTypeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateTypeResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateType.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateType)
async def admin_create_type_async(
    body: ModelsCreateTypeRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create types (AdminCreateType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [CREATE]
    creates a new type and subtype

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [CREATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types

        method: POST

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTypeRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateTypeResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateType.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteType)
def admin_delete_type(
    type_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete types (AdminDeleteType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types/{typeId}

        method: DELETE

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        type_id: (typeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteType.create(
        type_id=type_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteType)
async def admin_delete_type_async(
    type_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete types (AdminDeleteType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types/{typeId}

        method: DELETE

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        type_id: (typeId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteType.create(
        type_id=type_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetType)
def admin_get_type(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get types (AdminGetType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types

        method: GET

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetTypeResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetType.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetType)
async def admin_get_type_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get types (AdminGetType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [READ]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types

        method: GET

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetTypeResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetType.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateType)
def admin_update_type(
    body: ModelsCreateTypeRequest,
    type_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update types (AdminUpdateType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE]
    updates a type and subtype

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types/{typeId}

        method: PUT

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTypeRequest in body

        namespace: (namespace) REQUIRED str in path

        type_id: (typeId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateTypeResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateType.create(
        body=body,
        type_id=type_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateType)
async def admin_update_type_async(
    body: ModelsCreateTypeRequest,
    type_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update types (AdminUpdateType)

    Required permission ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE]
    updates a type and subtype

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:UGCCONFIG [UPDATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/types/{typeId}

        method: PUT

        tags: ["Admin Type"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTypeRequest in body

        namespace: (namespace) REQUIRED str in path

        type_id: (typeId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateTypeResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        409: Conflict - ResponseError (Conflict)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateType.create(
        body=body,
        type_id=type_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
