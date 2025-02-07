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
from ..models import ModelsPaginatedContentLikersResponse
from ..models import ResponseError

from ..operations.public_like_v2 import PublicListContentLikeV2
from ..operations.public_like_v2 import UpdateContentLikeStatusV2


@same_doc_as(PublicListContentLikeV2)
def public_list_content_like_v2(
    content_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve list of user that like specified content. (PublicListContentLikeV2)

    This endpoint will only display the list of users who performed like from v2 endpoint.

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like

        method: GET

        tags: ["Public Like V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentLikersResponse (Retrieve list of user liked content)

        400: Bad Request - ResponseError (771004: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771006: unable to get list of content like: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListContentLikeV2.create(
        content_id=content_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListContentLikeV2)
async def public_list_content_like_v2_async(
    content_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Retrieve list of user that like specified content. (PublicListContentLikeV2)

    This endpoint will only display the list of users who performed like from v2 endpoint.

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like

        method: GET

        tags: ["Public Like V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentLikersResponse (Retrieve list of user liked content)

        400: Bad Request - ResponseError (771004: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771006: unable to get list of content like: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListContentLikeV2.create(
        content_id=content_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateContentLikeStatusV2)
def update_content_like_status_v2(
    body: ModelsContentLikeRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update like/unlike status to a content (UpdateContentLikeStatusV2)

    This endpoint will update like/unlike state from a content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like

        method: PUT

        tags: ["Public Like V2"]

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

        404: Not Found - ResponseError (770200: Content not found | 771001: unable to like content/Unable to update like status: database error | 771000: Malformed request/Content not found/Unable to update like status: content not found)

        429: Too Many Requests - ResponseError (771003: Unable to like content: too many request)

        500: Internal Server Error - ResponseError (771001: unable to like content/Unable to update like status: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentLikeStatusV2.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateContentLikeStatusV2)
async def update_content_like_status_v2_async(
    body: ModelsContentLikeRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update like/unlike status to a content (UpdateContentLikeStatusV2)

    This endpoint will update like/unlike state from a content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/like

        method: PUT

        tags: ["Public Like V2"]

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

        404: Not Found - ResponseError (770200: Content not found | 771001: unable to like content/Unable to update like status: database error | 771000: Malformed request/Content not found/Unable to update like status: content not found)

        429: Too Many Requests - ResponseError (771003: Unable to like content: too many request)

        500: Internal Server Error - ResponseError (771001: unable to like content/Unable to update like status: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateContentLikeStatusV2.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
