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

from ..models import ModelsPaginatedListStagingContentResponse
from ..models import ModelsStagingContentResponse
from ..models import ModelsUpdateStagingContentRequest
from ..models import ResponseError

from ..operations.public_staging_content import DeleteUserStagingContentByID
from ..operations.public_staging_content import GetUserStagingContentByID
from ..operations.public_staging_content import ListUserStagingContents
from ..operations.public_staging_content import UpdateStagingContent
from ..models import ModelsStagingContentResponseStatusEnum


@same_doc_as(DeleteUserStagingContentByID)
def delete_user_staging_content_by_id(
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user staging content by id (DeleteUserStagingContentByID)

    Delete user staging content by ID

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}

        method: DELETE

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (staging content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774417: staging content not found)

        500: Internal Server Error - ResponseError (774418: unable to delete staging content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStagingContentByID.create(
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteUserStagingContentByID)
async def delete_user_staging_content_by_id_async(
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete user staging content by id (DeleteUserStagingContentByID)

    Delete user staging content by ID

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}

        method: DELETE

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (staging content deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774417: staging content not found)

        500: Internal Server Error - ResponseError (774418: unable to delete staging content)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteUserStagingContentByID.create(
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserStagingContentByID)
def get_user_staging_content_by_id(
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user staging content by id (GetUserStagingContentByID)

    Get user staging content by ID

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}

        method: GET

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsStagingContentResponse (staging content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774401: staging content not found)

        500: Internal Server Error - ResponseError (774402: unable to get staging content | 774403: unable to generate presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStagingContentByID.create(
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserStagingContentByID)
async def get_user_staging_content_by_id_async(
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user staging content by id (GetUserStagingContentByID)

    Get user staging content by ID

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}

        method: GET

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsStagingContentResponse (staging content)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774401: staging content not found)

        500: Internal Server Error - ResponseError (774402: unable to get staging content | 774403: unable to generate presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserStagingContentByID.create(
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ListUserStagingContents)
def list_user_staging_contents(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user staging contents (ListUserStagingContents)

    List user staging contents

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents

        method: GET

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedListStagingContentResponse (list user's staging content)

        400: Bad Request - ResponseError (774301: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (774302: unable to get staging content | 774303: unable to generate presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserStagingContents.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ListUserStagingContents)
async def list_user_staging_contents_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user staging contents (ListUserStagingContents)

    List user staging contents

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents

        method: GET

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ModelsPaginatedListStagingContentResponse (list user's staging content)

        400: Bad Request - ResponseError (774301: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        500: Internal Server Error - ResponseError (774302: unable to get staging content | 774303: unable to generate presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = ListUserStagingContents.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateStagingContent)
def update_staging_content(
    body: ModelsUpdateStagingContentRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update staging content (UpdateStagingContent)

    Update staging content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}

        method: PUT

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateStagingContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsStagingContentResponse (staging content updated)

        400: Bad Request - ResponseError (774411: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (774412: user has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (774413: staging content not found)

        500: Internal Server Error - ResponseError (774414: unable to update staging content | 774415: unable to generate presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateStagingContent.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateStagingContent)
async def update_staging_content_async(
    body: ModelsUpdateStagingContentRequest,
    content_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update staging content (UpdateStagingContent)

    Update staging content

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/staging-contents/{contentId}

        method: PUT

        tags: ["Public Staging Content"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateStagingContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsStagingContentResponse (staging content updated)

        400: Bad Request - ResponseError (774411: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (774412: user has been banned to update content | 20013: insufficient permission)

        404: Not Found - ResponseError (774413: staging content not found)

        500: Internal Server Error - ResponseError (774414: unable to update staging content | 774415: unable to generate presigned URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateStagingContent.create(
        body=body,
        content_id=content_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
