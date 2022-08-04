# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

from ..operations.public_like import GetLikedContent
from ..operations.public_like import UpdateContentLikeStatus


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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
