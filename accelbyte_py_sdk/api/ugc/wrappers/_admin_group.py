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

from ..operations.admin_group import AdminCreateGroup
from ..operations.admin_group import AdminDeleteGroup
from ..operations.admin_group import AdminGetAllGroups
from ..operations.admin_group import AdminGetGroup
from ..operations.admin_group import AdminGetGroupContents
from ..operations.admin_group import AdminGetOfficialGroupContentsV2
from ..operations.admin_group import AdminGetUserGroupContentsV2
from ..operations.admin_group import AdminUpdateGroup
from ..operations.admin_group import SingleAdminDeleteGroup
from ..operations.admin_group import SingleAdminGetAllGroups
from ..operations.admin_group import SingleAdminGetGroup
from ..operations.admin_group import SingleAdminGetGroupContents
from ..operations.admin_group import SingleAdminUpdateGroup


@same_doc_as(AdminCreateGroup)
def admin_create_group(
    body: ModelsCreateGroupRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create groups (AdminCreateGroup)

    Create group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups

        method: POST

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupResponse (groups created)

        400: Bad Request - ResponseError (772101: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772102: Unable to create group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateGroup.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateGroup)
async def admin_create_group_async(
    body: ModelsCreateGroupRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create groups (AdminCreateGroup)

    Create group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups

        method: POST

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsCreateGroupResponse (groups created)

        400: Bad Request - ResponseError (772101: Malformed request/Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772102: Unable to create group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateGroup.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteGroup)
def admin_delete_group(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group (AdminDeleteGroup)

    Delete group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: DELETE

        tags: ["Admin Group"]

        consumes: ["application/json"]

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
    request = AdminDeleteGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteGroup)
async def admin_delete_group_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group (AdminDeleteGroup)

    Delete group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: DELETE

        tags: ["Admin Group"]

        consumes: ["application/json"]

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
    request = AdminDeleteGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetAllGroups)
def admin_get_all_groups(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user groups (AdminGetAllGroups)

    Get user group paginated

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGroupResponse (Get all user groups)

        400: Bad Request - ResponseError (772301: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772302: Unable get groups)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllGroups.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetAllGroups)
async def admin_get_all_groups_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user groups (AdminGetAllGroups)

    Get user group paginated

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGroupResponse (Get all user groups)

        400: Bad Request - ResponseError (772301: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (772302: Unable get groups)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetAllGroups.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetGroup)
def admin_get_group(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific user group (AdminGetGroup)

    Get user group by group ID

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Get specific user group)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773002: Group not found)

        500: Internal Server Error - ResponseError (773001: Unable get group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetGroup)
async def admin_get_group_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific user group (AdminGetGroup)

    Get user group by group ID

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Get specific user group)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773002: Group not found)

        500: Internal Server Error - ResponseError (773001: Unable get group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetGroup.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetGroupContents)
def admin_get_group_contents(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Get contents belong to a group (AdminGetGroupContents)

    Get content belong to a group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get content belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetGroupContents.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetGroupContents)
async def admin_get_group_contents_async(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Get contents belong to a group (AdminGetGroupContents)

    Get content belong to a group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponse (Get content belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetGroupContents.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetOfficialGroupContentsV2)
def admin_get_official_group_contents_v2(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents belong to a group (AdminGetOfficialGroupContentsV2)

    Get contents belong to a group

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get contents belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetOfficialGroupContentsV2.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetOfficialGroupContentsV2)
async def admin_get_official_group_contents_v2_async(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents belong to a group (AdminGetOfficialGroupContentsV2)

    Get contents belong to a group

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get contents belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetOfficialGroupContentsV2.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserGroupContentsV2)
def admin_get_user_group_contents_v2(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents belong to a group (AdminGetUserGroupContentsV2)

    Get contents belong to a group

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get contents belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserGroupContentsV2.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserGroupContentsV2)
async def admin_get_user_group_contents_v2_async(
    group_id: str,
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get contents belong to a group (AdminGetUserGroupContentsV2)

    Get contents belong to a group

    Properties:
        url: /ugc/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedContentDownloadResponseV2 (Get contents belong to a group)

        400: Bad Request - ResponseError (773101: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773103: No group content was found)

        500: Internal Server Error - ResponseError (773102: Unable to get ugc content: database error | 770901: Unable to get ugc content: database error/Unable to get creator | 770801: Unable to get ugc content: database/Unable to get creator | 770903: Failed generate download URL)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserGroupContentsV2.create(
        group_id=group_id,
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateGroup)
def admin_update_group(
    body: ModelsCreateGroupRequest,
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group (AdminUpdateGroup)

    Replace group name and contents with new ones.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: PUT

        tags: ["Admin Group"]

        consumes: ["application/json"]

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
    request = AdminUpdateGroup.create(
        body=body,
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateGroup)
async def admin_update_group_async(
    body: ModelsCreateGroupRequest,
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group (AdminUpdateGroup)

    Replace group name and contents with new ones.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}

        method: PUT

        tags: ["Admin Group"]

        consumes: ["application/json"]

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
    request = AdminUpdateGroup.create(
        body=body,
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminDeleteGroup)
def single_admin_delete_group(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group (SingleAdminDeleteGroup)

    Delete group by group ID

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminDeleteGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminDeleteGroup)
async def single_admin_delete_group_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete group (SingleAdminDeleteGroup)

    Delete group by group ID

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: DELETE

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminDeleteGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminGetAllGroups)
def single_admin_get_all_groups(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user groups (SingleAdminGetAllGroups)

    Get user group paginated

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminGetAllGroups.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminGetAllGroups)
async def single_admin_get_all_groups_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get all user groups (SingleAdminGetAllGroups)

    Get user group paginated

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminGetAllGroups.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminGetGroup)
def single_admin_get_group(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific user group (SingleAdminGetGroup)

    Get user group by group ID

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Get specific group)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773002: Group not found)

        500: Internal Server Error - ResponseError (773001: Unable get group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SingleAdminGetGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminGetGroup)
async def single_admin_get_group_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific user group (SingleAdminGetGroup)

    Get user group by group ID

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsCreateGroupResponse (Get specific group)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (773002: Group not found)

        500: Internal Server Error - ResponseError (773001: Unable get group)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = SingleAdminGetGroup.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminGetGroupContents)
def single_admin_get_group_contents(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Get contents belong to a group (SingleAdminGetGroupContents)

    Get content belong to a group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminGetGroupContents.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminGetGroupContents)
async def single_admin_get_group_contents_async(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """(Legacy) Get contents belong to a group (SingleAdminGetGroupContents)

    Get content belong to a group

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}/contents

        method: GET

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminGetGroupContents.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminUpdateGroup)
def single_admin_update_group(
    body: ModelsCreateGroupRequest,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group (SingleAdminUpdateGroup)

    Replace group name and contents with new ones.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: PUT

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminUpdateGroup.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminUpdateGroup)
async def single_admin_update_group_async(
    body: ModelsCreateGroupRequest,
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update group (SingleAdminUpdateGroup)

    Replace group name and contents with new ones.

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/groups/{groupId}

        method: PUT

        tags: ["Admin Group"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateGroupRequest in body

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

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
    request = SingleAdminUpdateGroup.create(
        body=body,
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
