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

from ..models import ModelsAddDownloadCountResponse
from ..models import ModelsPaginatedContentDownloaderResponse
from ..models import ResponseError

from ..operations.public_download_count_v2 import PublicAddDownloadCountV2
from ..operations.public_download_count_v2 import PublicListContentDownloaderV2


@same_doc_as(PublicAddDownloadCountV2)
def public_add_download_count_v2(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add unique download count to a content (PublicAddDownloadCountV2)

    This endpoint can be used to count how many the ugc downloaded

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount

        method: POST

        tags: ["Public Download Count V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAddDownloadCountResponse (Added download count to a content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772903: Unable to add content download: content not found)

        429: Too Many Requests - ResponseError (772906: Unable to add content download: too many request)

        500: Internal Server Error - ResponseError (772902: Unable to add content download: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicAddDownloadCountV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicAddDownloadCountV2)
async def public_add_download_count_v2_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Add unique download count to a content (PublicAddDownloadCountV2)

    This endpoint can be used to count how many the ugc downloaded

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloadcount

        method: POST

        tags: ["Public Download Count V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAddDownloadCountResponse (Added download count to a content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772903: Unable to add content download: content not found)

        429: Too Many Requests - ResponseError (772906: Unable to add content download: too many request)

        500: Internal Server Error - ResponseError (772902: Unable to add content download: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicAddDownloadCountV2.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicListContentDownloaderV2)
def public_list_content_downloader_v2(
    content_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List content downloader (PublicListContentDownloaderV2)

    This endpoint will only display the list of users who performed add download count from v2 endpoint.

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader

        method: GET

        tags: ["Public Download Count V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloaderResponse (List content downloader)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772904: Unable to list content downloader: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListContentDownloaderV2.create(
        content_id=content_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicListContentDownloaderV2)
async def public_list_content_downloader_v2_async(
    content_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List content downloader (PublicListContentDownloaderV2)

    This endpoint will only display the list of users who performed add download count from v2 endpoint.

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/contents/{contentId}/downloader

        method: GET

        tags: ["Public Download Count V2"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedContentDownloaderResponse (List content downloader)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772904: Unable to list content downloader: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicListContentDownloaderV2.create(
        content_id=content_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
