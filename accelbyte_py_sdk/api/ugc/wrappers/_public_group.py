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

from ..models import ModelsCreateGroupRequest
from ..models import ModelsCreateGroupResponse
from ..models import ModelsPaginatedContentDownloadResponse
from ..models import ModelsPaginatedContentDownloadResponseV2
from ..models import ModelsPaginatedGroupResponse
from ..models import ResponseError

from ..operations.public_group import CreateGroup
from ..operations.public_group import DeleteGroup
from ..operations.public_group import GetGroup
from ..operations.public_group import GetGroupContent
from ..operations.public_group import GetGroups
from ..operations.public_group import PublicGetGroupContentsV2
from ..operations.public_group import UpdateGroup


@same_doc_as(CreateGroup)
def create_group(
    body: ModelsCreateGroupRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create groups (CreateGroup)

    Create group

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups

        method: POST

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupResponse (Group Created)

        400: Bad Request - ResponseError (772101: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772102: Unable to create group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateGroup.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateGroup)
async def create_group_async(
    body: ModelsCreateGroupRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create groups (CreateGroup)

    Create group

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups

        method: POST

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupResponse (Group Created)

        400: Bad Request - ResponseError (772101: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772102: Unable to create group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateGroup.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteGroup)
def delete_group(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group (DeleteGroup)

    Delete user group by group ID

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: DELETE

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Group deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772403: Group not found)

        500: Internal Server Error - ResponseError (772402: Unable delete groups)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteGroup)
async def delete_group_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group (DeleteGroup)

    Delete user group by group ID

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: DELETE

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Group deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772403: Group not found)

        500: Internal Server Error - ResponseError (772402: Unable delete groups)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroup)
def get_group(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's groups (GetGroup)

    Get user groups by group ID

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Get user's group)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773002: Group not found)

        500: Internal Server Error - ResponseError (773001: Unable get group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroup)
async def get_group_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get user's groups (GetGroup)

    Get user groups by group ID

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Get user's group)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773002: Group not found)

        500: Internal Server Error - ResponseError (773001: Unable get group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupContent)
def get_group_content(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Get contents belong to a group (GetGroupContent)

    Get content that belong to a group

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get contents belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupContent.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupContent)
async def get_group_content_async(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Get contents belong to a group (GetGroupContent)

    Get content that belong to a group

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get contents belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupContent.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroups)
def get_groups(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user groups (GetGroups)

    Get user groups paginated

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGroupResponse (Get all user group)

        400: Bad Request - ResponseError (772301: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772302: Unable get groups)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroups.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroups)
async def get_groups_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user groups (GetGroups)

    Get user groups paginated

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGroupResponse (Get all user group)

        400: Bad Request - ResponseError (772301: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772302: Unable get groups)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroups.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetGroupContentsV2)
def public_get_group_contents_v2(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents belong to a group (PublicGetGroupContentsV2)

    Get content belong to a group

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get content belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetGroupContentsV2.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetGroupContentsV2)
async def public_get_group_contents_v2_async(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents belong to a group (PublicGetGroupContentsV2)

    Get content belong to a group

    Properties:
        url: /ugc/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get content belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetGroupContentsV2.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateGroup)
def update_group(
    body: ModelsCreateGroupRequest,
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group (UpdateGroup)

    Replace group name and contents with new ones

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: PUT

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Group updated)

        400: Bad Request - ResponseError (772201: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772203: Group not found)

        500: Internal Server Error - ResponseError (772202: Unable to update group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroup.create(
        body=body,
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateGroup)
async def update_group_async(
    body: ModelsCreateGroupRequest,
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group (UpdateGroup)

    Replace group name and contents with new ones

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: PUT

        tags: ["Public Group"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Group updated)

        400: Bad Request - ResponseError (772201: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772203: Group not found)

        500: Internal Server Error - ResponseError (772202: Unable to update group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateGroup.create(
        body=body,
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
