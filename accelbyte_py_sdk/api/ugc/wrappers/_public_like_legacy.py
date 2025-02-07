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

from ..models import ModelsContentLikeRequest
from ..models import ModelsContentLikeResponse
from ..models import ModelsPaginatedContentDownloadResponse
from ..models import ResponseError

from ..operations.public_like_legacy import GetLikedContent
from ..operations.public_like_legacy import UpdateContentLikeStatus


@same_doc_as(GetLikedContent)
def get_liked_content(
    isofficial: Optional[bool] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    subtype: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get liked contents (GetLikedContent)

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses ( ) for priority. e.g:


    *tags=red*
    *tags=red&animal;*
    *tags=red|animal*
    *tags=red&animal;|wild*
    *tags=red&(animal|wild)*

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore _ and dash -

    Allowed character for operator: & | ( )


    **Please note that value of tags query param should be URL encoded**

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/liked

        method: GET

        tags: ["Public Like (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        isofficial: (isofficial) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get liked contents)

        400: Bad Request - ResponseError (771100: unable to parse isofficial param)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771101: Unable to get ugc content: database error | 770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLikedContent.create(
        isofficial=isofficial,
        limit=limit,
        name=name,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        subtype=subtype,
        tags=tags,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetLikedContent)
async def get_liked_content_async(
    isofficial: Optional[bool] = None,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    subtype: Optional[str] = None,
    tags: Optional[List[str]] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get liked contents (GetLikedContent)

    For advance tag filtering supports & as AND operator and | as OR operator and parentheses ( ) for priority. e.g:


    *tags=red*
    *tags=red&animal;*
    *tags=red|animal*
    *tags=red&animal;|wild*
    *tags=red&(animal|wild)*

    The precedence of logical operator is AND > OR, so if no parentheses, AND logical operator will be executed first.

    Allowed character for operand: alphanumeric, underscore _ and dash -

    Allowed character for operator: & | ( )


    **Please note that value of tags query param should be URL encoded**

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/liked

        method: GET

        tags: ["Public Like (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        isofficial: (isofficial) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

        subtype: (subtype) OPTIONAL str in query

        tags: (tags) OPTIONAL List[str] in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get liked contents)

        400: Bad Request - ResponseError (771100: unable to parse isofficial param)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771101: Unable to get ugc content: database error | 770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetLikedContent.create(
        isofficial=isofficial,
        limit=limit,
        name=name,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        subtype=subtype,
        tags=tags,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateContentLikeStatus)
def update_content_like_status(
    body: ModelsContentLikeRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update like/unlike status to a content (UpdateContentLikeStatus)

    This endpoint will update like/unlike state from a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like

        method: PUT

        tags: ["Public Like (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsContentLikeRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentLikeResponse (Update like/unlike status to a content)

        400: Bad Request - ResponseError (771000: Malformed request/Content not found/Unable to update like status: content not found)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (771000: Malformed request/Content not found/Unable to update like status: content not found | 771001: unable to like content/Unable to update like status: database error | 771000: Malformed request/Content not found/Unable to update like status: content not found)

        500: Internal Server Error - ResponseError (771001: unable to like content/Unable to update like status: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentLikeStatus.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateContentLikeStatus)
async def update_content_like_status_async(
    body: ModelsContentLikeRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update like/unlike status to a content (UpdateContentLikeStatus)

    This endpoint will update like/unlike state from a content

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/{contentId}/like

        method: PUT

        tags: ["Public Like (Legacy)"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsContentLikeRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsContentLikeResponse (Update like/unlike status to a content)

        400: Bad Request - ResponseError (771000: Malformed request/Content not found/Unable to update like status: content not found)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (771000: Malformed request/Content not found/Unable to update like status: content not found | 771001: unable to like content/Unable to update like status: database error | 771000: Malformed request/Content not found/Unable to update like status: content not found)

        500: Internal Server Error - ResponseError (771001: unable to like content/Unable to update like status: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentLikeStatus.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
