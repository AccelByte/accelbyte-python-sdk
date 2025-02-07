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

from ..models import ModelsCreatorResponse
from ..models import ModelsPaginatedCreatorOverviewResponse
from ..models import ResponseError

from ..operations.public_creator import PublicGetCreator
from ..operations.public_creator import PublicSearchCreator


@same_doc_as(PublicGetCreator)
def public_get_creator(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get creator stats: number of total like by other user, number of total following and follower user (PublicGetCreator)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Public Creator"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreatorResponse (Get creator stats)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (771601: Creator not found)

        500: Internal Server Error - ResponseError (771103: Unable to get total liked content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCreator.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetCreator)
async def public_get_creator_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get creator stats: number of total like by other user, number of total following and follower user (PublicGetCreator)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Public Creator"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreatorResponse (Get creator stats)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (771601: Creator not found)

        500: Internal Server Error - ResponseError (771103: Unable to get total liked content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetCreator.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicSearchCreator)
def public_search_creator(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search creator (PublicSearchCreator)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users

        method: GET

        tags: ["Public Creator"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Search creator)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchCreator.create(
        limit=limit,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicSearchCreator)
async def public_search_creator_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    orderby: Optional[str] = None,
    sortby: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Search creator (PublicSearchCreator)

    Public user can access without token or if token specified, requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users

        method: GET

        tags: ["Public Creator"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        orderby: (orderby) OPTIONAL str in query

        sortby: (sortby) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Search creator)

        400: Bad Request - ResponseError (770800: invalid paging parameter/max allowed number of tags is {maxTags}/invalid official parameter/invalid ishidden parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770801: Unable to get ugc content: database/Unable to get creator)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicSearchCreator.create(
        limit=limit,
        offset=offset,
        orderby=orderby,
        sortby=sortby,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
