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

from ..models import ApimodelsCreateItemTypeReq
from ..models import ApimodelsCreateItemTypeResp
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsListItemTypesResp

from ..operations.admin_item_types import AdminCreateItemType
from ..operations.admin_item_types import AdminDeleteItemType
from ..operations.admin_item_types import AdminListItemTypes
from ..operations.admin_item_types import AdminListItemTypesSortByEnum


@same_doc_as(AdminCreateItemType)
def admin_create_item_type(
    body: ApimodelsCreateItemTypeReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create an itemtype (AdminCreateItemType)


    This endpoint will create a new itemtype.
    The itemtype name must be unique per namespace.
    It is safe to call this endpoint even if the itemtype already exists.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/itemtypes

        method: POST

        tags: ["Admin Item Types"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateItemTypeReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsCreateItemTypeResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateItemType.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateItemType)
async def admin_create_item_type_async(
    body: ApimodelsCreateItemTypeReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create an itemtype (AdminCreateItemType)


    This endpoint will create a new itemtype.
    The itemtype name must be unique per namespace.
    It is safe to call this endpoint even if the itemtype already exists.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/itemtypes

        method: POST

        tags: ["Admin Item Types"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateItemTypeReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsCreateItemTypeResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateItemType.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteItemType)
def admin_delete_item_type(
    item_type_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete an item type (AdminDeleteItemType)


    This endpoint will delete a item type by itemtypeName in a specified namespace.
    If the itemtypeName doesn't exist in a namespace, it'll return not found.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}

        method: DELETE

        tags: ["Admin Item Types"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_type_name: (itemTypeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteItemType.create(
        item_type_name=item_type_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteItemType)
async def admin_delete_item_type_async(
    item_type_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete an item type (AdminDeleteItemType)


    This endpoint will delete a item type by itemtypeName in a specified namespace.
    If the itemtypeName doesn't exist in a namespace, it'll return not found.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName}

        method: DELETE

        tags: ["Admin Item Types"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        item_type_name: (itemTypeName) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteItemType.create(
        item_type_name=item_type_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListItemTypes)
def admin_list_item_types(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListItemTypesSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list itemtypes (AdminListItemTypes)


    This endpoint will list all item types in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/itemtypes

        method: GET

        tags: ["Admin Item Types"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListItemTypesResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListItemTypes.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListItemTypes)
async def admin_list_item_types_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListItemTypesSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list itemtypes (AdminListItemTypes)


    This endpoint will list all item types in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:ITEMTYPE [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/itemtypes

        method: GET

        tags: ["Admin Item Types"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListItemTypesResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListItemTypes.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
