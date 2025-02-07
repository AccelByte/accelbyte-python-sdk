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

from ..models import ModelsPaginatedTagResponse
from ..models import ResponseError

from ..operations.tags import AdminListTags
from ..operations.tags import AdminListTagsSortByEnum
from ..operations.tags import PublicListTags
from ..operations.tags import PublicListTagsSortByEnum


@same_doc_as(AdminListTags)
def admin_list_tags(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListTagsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query tags (AdminListTags)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Tags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedTagResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListTags.create(
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListTags)
async def admin_list_tags_async(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, AdminListTagsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query tags (AdminListTags)

    Required permission
    `ADMIN:NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Tags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedTagResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminListTags.create(
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListTags)
def public_list_tags(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListTagsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query tags (PublicListTags)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/tags

        method: GET

        tags: ["Tags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedTagResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListTags.create(
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListTags)
async def public_list_tags_async(
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    sort_by: Optional[Union[str, PublicListTagsSortByEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query tags (PublicListTags)

    Required permission
    `NAMESPACE:{namespace}:ACHIEVEMENT [READ]` and scope `social`

    Properties:
        url: /achievement/v1/public/namespaces/{namespace}/tags

        method: GET

        tags: ["Tags"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

    Responses:
        200: OK - ModelsPaginatedTagResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListTags.create(
        limit=limit,
        name=name,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
