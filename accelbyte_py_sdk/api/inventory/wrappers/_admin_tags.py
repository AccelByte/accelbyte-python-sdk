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

from ..models import ApimodelsCreateTagReq
from ..models import ApimodelsCreateTagResp
from ..models import ApimodelsErrorResponse
from ..models import ApimodelsListTagsResp

from ..operations.admin_tags import AdminCreateTag
from ..operations.admin_tags import AdminDeleteTag
from ..operations.admin_tags import AdminListTags
from ..operations.admin_tags import AdminListTagsSortByEnum
from ..models import ApimodelsCreateTagReqOwnerEnum
from ..models import ApimodelsCreateTagRespOwnerEnum


@same_doc_as(AdminCreateTag)
def admin_create_tag(
    body: ApimodelsCreateTagReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create a tag (AdminCreateTag)


    This endpoint will create a new tag.
    The tag name must be unique per namespace.
    It is safe to call this endpoint even if the tag already exists.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["Admin Tags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateTagReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsCreateTagResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateTag.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateTag)
async def admin_create_tag_async(
    body: ApimodelsCreateTagReq,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To create a tag (AdminCreateTag)


    This endpoint will create a new tag.
    The tag name must be unique per namespace.
    It is safe to call this endpoint even if the tag already exists.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [CREATE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["Admin Tags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApimodelsCreateTagReq in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ApimodelsCreateTagResp (Created)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        409: Conflict - ApimodelsErrorResponse (Conflict)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateTag.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteTag)
def admin_delete_tag(
    tag_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete a tag (AdminDeleteTag)


    This endpoint will delete a tag by tagName in a specified namespace.
    If the tagName doesn't exist in a namespace, it'll return not found.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/tags/{tagName}

        method: DELETE

        tags: ["Admin Tags"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag_name: (tagName) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTag.create(
        tag_name=tag_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteTag)
async def admin_delete_tag_async(
    tag_name: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To delete a tag (AdminDeleteTag)


    This endpoint will delete a tag by tagName in a specified namespace.
    If the tagName doesn't exist in a namespace, it'll return not found.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [DELETE]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/tags/{tagName}

        method: DELETE

        tags: ["Admin Tags"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag_name: (tagName) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        404: Not Found - ApimodelsErrorResponse (Not Found)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTag.create(
        tag_name=tag_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListTags)
def admin_list_tags(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    owner: Optional[str] = None,
    sort_by: Optional[Union[str, AdminListTagsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list tags (AdminListTags)


    This endpoint will list all tags in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Admin Tags"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        owner: (owner) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListTagsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListTags.create(
        limit=limit,
        offset=offset,
        owner=owner,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListTags)
async def admin_list_tags_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    owner: Optional[str] = None,
    sort_by: Optional[Union[str, AdminListTagsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """To list tags (AdminListTags)


    This endpoint will list all tags in a namespace.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:INVENTORY:TAG [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Admin Tags"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        owner: (owner) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ApimodelsListTagsResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListTags.create(
        limit=limit,
        offset=offset,
        owner=owner,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
