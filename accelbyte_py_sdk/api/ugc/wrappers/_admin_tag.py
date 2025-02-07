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

from ..models import ModelsCreateTagRequest
from ..models import ModelsCreateTagResponse
from ..models import ModelsPaginatedGetTagResponse
from ..models import ResponseError

from ..operations.admin_tag import AdminCreateTag
from ..operations.admin_tag import AdminDeleteTag
from ..operations.admin_tag import AdminGetTag
from ..operations.admin_tag import AdminUpdateTag


@same_doc_as(AdminCreateTag)
def admin_create_tag(
    body: ModelsCreateTagRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create tags (AdminCreateTag)

    Creates a new tag

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTagRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateTagResponse (Tags created)

        400: Bad Request - ResponseError (771401: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        409: Conflict - ResponseError (771403: Conflicted resource indentifier)

        500: Internal Server Error - ResponseError (771402: Unable to save ugc tag)
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
    body: ModelsCreateTagRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create tags (AdminCreateTag)

    Creates a new tag

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags

        method: POST

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTagRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateTagResponse (Tags created)

        400: Bad Request - ResponseError (771401: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        409: Conflict - ResponseError (771403: Conflicted resource indentifier)

        500: Internal Server Error - ResponseError (771402: Unable to save ugc tag)
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
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete tags (AdminDeleteTag)

    Delete existing tag

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags/{tagId}

        method: DELETE

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        204: No Content - (Tags deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772003: Tag not found)

        500: Internal Server Error - ResponseError (772002: Unable delete tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTag.create(
        tag_id=tag_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteTag)
async def admin_delete_tag_async(
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete tags (AdminDeleteTag)

    Delete existing tag

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags/{tagId}

        method: DELETE

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        204: No Content - (Tags deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772003: Tag not found)

        500: Internal Server Error - ResponseError (772002: Unable delete tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTag.create(
        tag_id=tag_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetTag)
def admin_get_tag(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get tags (AdminGetTag)

    Get available tags paginated

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetTagResponse (Get Tags)

        400: Bad Request - ResponseError (771501: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771402: Unable to save ugc tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetTag.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetTag)
async def admin_get_tag_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get tags (AdminGetTag)

    Get available tags paginated

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags

        method: GET

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetTagResponse (Get Tags)

        400: Bad Request - ResponseError (771501: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771402: Unable to save ugc tag)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetTag.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateTag)
def admin_update_tag(
    body: ModelsCreateTagRequest,
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update tag (AdminUpdateTag)

    Update existing tag

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags/{tagId}

        method: PUT

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTagRequest in body

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateTagResponse (Tags updated)

        400: Bad Request - ResponseError (772801: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772803: Tag not found)

        409: Conflict - ResponseError (772804: Proposed Tag already exist)

        500: Internal Server Error - ResponseError (772802: Unable update tags)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTag.create(
        body=body,
        tag_id=tag_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateTag)
async def admin_update_tag_async(
    body: ModelsCreateTagRequest,
    tag_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update tag (AdminUpdateTag)

    Update existing tag

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/tags/{tagId}

        method: PUT

        tags: ["Admin Tag"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateTagRequest in body

        namespace: (namespace) REQUIRED str in path

        tag_id: (tagId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateTagResponse (Tags updated)

        400: Bad Request - ResponseError (772801: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772803: Tag not found)

        409: Conflict - ResponseError (772804: Proposed Tag already exist)

        500: Internal Server Error - ResponseError (772802: Unable update tags)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTag.create(
        body=body,
        tag_id=tag_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
