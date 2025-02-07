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

from ..models import ModelsPaginatedContentDownloadResponse
from ..models import ModelsPaginatedCreatorOverviewResponse
from ..models import ModelsUserFollowRequest
from ..models import ModelsUserFollowResponse
from ..models import ResponseError

from ..operations.public_follow import GetFollowedContent
from ..operations.public_follow import GetFollowedUsers
from ..operations.public_follow import GetPublicFollowers
from ..operations.public_follow import GetPublicFollowing
from ..operations.public_follow import UpdateUserFollowStatus


@same_doc_as(GetFollowedContent)
def get_followed_content(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents from followed creators (GetFollowedContent)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/followed

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get contents from followed creators)

        400: Bad Request - ResponseError (771311: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771310: Unable to get ugc content: database error | 770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetFollowedContent.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetFollowedContent)
async def get_followed_content_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents from followed creators (GetFollowedContent)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/contents/followed

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get contents from followed creators)

        400: Bad Request - ResponseError (771311: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771310: Unable to get ugc content: database error | 770801: Unable to get ugc content: database/Unable to get creator | 770803: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetFollowedContent.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetFollowedUsers)
def get_followed_users(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get followed creators (GetFollowedUsers)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/followed

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Get followed creators)

        400: Bad Request - ResponseError (771304: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771300: Unable to get creators: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetFollowedUsers.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetFollowedUsers)
async def get_followed_users_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get followed creators (GetFollowedUsers)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/followed

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Get followed creators)

        400: Bad Request - ResponseError (771304: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771300: Unable to get creators: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetFollowedUsers.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPublicFollowers)
def get_public_followers(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of followers (GetPublicFollowers)

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/followers

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Get list of followers)

        400: Bad Request - ResponseError (771304: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771303: Unable to get creators: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublicFollowers.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPublicFollowers)
async def get_public_followers_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of followers (GetPublicFollowers)

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/followers

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Get list of followers)

        400: Bad Request - ResponseError (771304: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771303: Unable to get creators: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublicFollowers.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPublicFollowing)
def get_public_following(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of following (GetPublicFollowing)

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/following

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Get list of following)

        400: Bad Request - ResponseError (771304: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771303: Unable to get creators: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublicFollowing.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPublicFollowing)
async def get_public_following_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get list of following (GetPublicFollowing)

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/following

        method: GET

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedCreatorOverviewResponse (Get list of following)

        400: Bad Request - ResponseError (771304: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771303: Unable to get creators: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetPublicFollowing.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateUserFollowStatus)
def update_user_follow_status(
    body: ModelsUserFollowRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update follow/unfollow status to a user (UpdateUserFollowStatus)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow

        method: PUT

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUserFollowRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserFollowResponse (update status follow/unfollow status to a user)

        400: Bad Request - ResponseError (771200: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771201: Unable to update follow status: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserFollowStatus.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateUserFollowStatus)
async def update_user_follow_status_async(
    body: ModelsUserFollowRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update follow/unfollow status to a user (UpdateUserFollowStatus)

    Requires valid user token

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/follow

        method: PUT

        tags: ["Public Follow"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUserFollowRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserFollowResponse (update status follow/unfollow status to a user)

        400: Bad Request - ResponseError (771200: Malformed request)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (771201: Unable to update follow status: database error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateUserFollowStatus.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
