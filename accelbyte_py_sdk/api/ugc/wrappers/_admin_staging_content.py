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

from ..models import ModelsApproveStagingContentRequest
from ..models import ModelsPaginatedListStagingContentResponse
from ..models import ModelsStagingContentResponse
from ..models import ResponseError

from ..operations.admin_staging_content import AdminApproveStagingContent
from ..operations.admin_staging_content import AdminGetStagingContentByID
from ..operations.admin_staging_content import AdminListStagingContents
from ..operations.admin_staging_content import AdminListUserStagingContents
from ..models import ModelsStagingContentResponseStatusEnum


@same_doc_as(AdminApproveStagingContent)
def admin_approve_staging_content(
    body: ModelsApproveStagingContentRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Approve or reject content (AdminApproveStagingContent)

    Approved content will shown to public player. Rejected content stays in staging area and couldn't be seen by other player

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve

        method: POST

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsApproveStagingContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsStagingContentResponse (content approval created)

        400: Bad Request - ResponseError (774405: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774406: staging content not found)

        500: Internal Server Error - ResponseError (774407: unable to approve staging content | 774408: nable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminApproveStagingContent.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminApproveStagingContent)
async def admin_approve_staging_content_async(
    body: ModelsApproveStagingContentRequest,
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Approve or reject content (AdminApproveStagingContent)

    Approved content will shown to public player. Rejected content stays in staging area and couldn't be seen by other player

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}/approve

        method: POST

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsApproveStagingContentRequest in body

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsStagingContentResponse (content approval created)

        400: Bad Request - ResponseError (774405: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        403: Forbidden - ResponseError (20013: insufficient permission)

        404: Not Found - ResponseError (774406: staging content not found)

        500: Internal Server Error - ResponseError (774407: unable to approve staging content | 774408: nable to save ugc content: shareCode exceed the limit)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminApproveStagingContent.create(
        body=body,
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetStagingContentByID)
def admin_get_staging_content_by_id(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get staging content by id (AdminGetStagingContentByID)

    Get staging content by ID

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}

        method: GET

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = AdminGetStagingContentByID.create(
        content_id=content_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetStagingContentByID)
async def admin_get_staging_content_by_id_async(
    content_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get staging content by id (AdminGetStagingContentByID)

    Get staging content by ID

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/staging-contents/{contentId}

        method: GET

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        content_id: (contentId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = AdminGetStagingContentByID.create(
        content_id=content_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListStagingContents)
def admin_list_staging_contents(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List staging contents (AdminListStagingContents)

    List content that need admin's approval

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/staging-contents

        method: GET

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = AdminListStagingContents.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListStagingContents)
async def admin_list_staging_contents_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List staging contents (AdminListStagingContents)

    List content that need admin's approval

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/staging-contents

        method: GET

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = AdminListStagingContents.create(
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListUserStagingContents)
def admin_list_user_staging_contents(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user staging contents (AdminListUserStagingContents)

    List user content's that need admin approval

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents

        method: GET

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

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
    request = AdminListUserStagingContents.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        sort_by=sort_by,
        status=status,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListUserStagingContents)
async def admin_list_user_staging_contents_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sort_by: Optional[str] = None,
    status: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """List user staging contents (AdminListUserStagingContents)

    List user content's that need admin approval

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/staging-contents

        method: GET

        tags: ["Admin Staging Content"]

        consumes: ["application/json"]

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
    request = AdminListUserStagingContents.create(
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
