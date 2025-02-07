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

from ..models import ModelsAssignRoleToMemberRequestV1
from ..models import ModelsCreateMemberRoleRequestV1
from ..models import ModelsGetMemberRolesListResponseV1
from ..models import ModelsGetUserGroupInformationResponseV1
from ..models import ModelsMemberRoleResponseV1
from ..models import ModelsRemoveRoleFromMemberRequestV1
from ..models import ModelsUpdateMemberRolePermissionsRequestV1
from ..models import ModelsUpdateMemberRoleRequestV1
from ..models import ResponseErrorResponse

from ..operations.group_roles import CreateMemberRoleAdminV1
from ..operations.group_roles import DeleteMemberRoleAdminV1
from ..operations.group_roles import DeleteMemberRolePublicV1
from ..operations.group_roles import DeleteMemberRolePublicV2
from ..operations.group_roles import GetMemberRolesListAdminV1
from ..operations.group_roles import GetMemberRolesListPublicV1
from ..operations.group_roles import GetMemberRolesListPublicV2
from ..operations.group_roles import GetSingleMemberRoleAdminV1
from ..operations.group_roles import UpdateMemberRoleAdminV1
from ..operations.group_roles import UpdateMemberRolePermissionAdminV1
from ..operations.group_roles import UpdateMemberRolePublicV1
from ..operations.group_roles import UpdateMemberRolePublicV2


@same_doc_as(CreateMemberRoleAdminV1)
def create_member_role_admin_v1(
    body: ModelsCreateMemberRoleRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new member role (createMemberRoleAdminV1)

    This endpoint is used to create new member role

    Action Code: 73202



    memberRolePermissions example value :

    "action": 1

    "resourceName": "GROUP:ROLE"

    The changes will give user with that role have a permission to create a role for new group member

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles

        method: POST

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateMemberRoleRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsMemberRoleResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateMemberRoleAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CreateMemberRoleAdminV1)
async def create_member_role_admin_v1_async(
    body: ModelsCreateMemberRoleRequestV1,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """create new member role (createMemberRoleAdminV1)

    This endpoint is used to create new member role

    Action Code: 73202



    memberRolePermissions example value :

    "action": 1

    "resourceName": "GROUP:ROLE"

    The changes will give user with that role have a permission to create a role for new group member

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles

        method: POST

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsCreateMemberRoleRequestV1 in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsMemberRoleResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions | 20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CreateMemberRoleAdminV1.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteMemberRoleAdminV1)
def delete_member_role_admin_v1(
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete member role (deleteMemberRoleAdminV1)

    This endpoint is used to delete member role. Any member role can't be deleted if the specific role is applied to the configuration (admin and member role)

    Action Code: 73207

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}

        method: DELETE

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteMemberRoleAdminV1.create(
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteMemberRoleAdminV1)
async def delete_member_role_admin_v1_async(
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """delete member role (deleteMemberRoleAdminV1)

    This endpoint is used to delete member role. Any member role can't be deleted if the specific role is applied to the configuration (admin and member role)

    Action Code: 73207

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}

        method: DELETE

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteMemberRoleAdminV1.create(
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteMemberRolePublicV1)
def delete_member_role_public_v1(
    body: ModelsRemoveRoleFromMemberRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove role from group member (deleteMemberRolePublicV1)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]"

    This endpoint is used to remove role from group member

    Action Code: 73204

    Properties:
        url: /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members

        method: DELETE

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRemoveRoleFromMemberRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        422: Unprocessable Entity - ResponseErrorResponse (73444: member must have role)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteMemberRolePublicV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteMemberRolePublicV1)
async def delete_member_role_public_v1_async(
    body: ModelsRemoveRoleFromMemberRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove role from group member (deleteMemberRolePublicV1)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]"

    This endpoint is used to remove role from group member

    Action Code: 73204

    Properties:
        url: /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members

        method: DELETE

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRemoveRoleFromMemberRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        422: Unprocessable Entity - ResponseErrorResponse (73444: member must have role)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteMemberRolePublicV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(DeleteMemberRolePublicV2)
def delete_member_role_public_v2(
    body: ModelsRemoveRoleFromMemberRequestV1,
    group_id: str,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove role from group member (deleteMemberRolePublicV2)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]"

    This endpoint is used to remove role from group member

    Action Code: 73204

    Properties:
        url: /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members

        method: DELETE

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRemoveRoleFromMemberRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        422: Unprocessable Entity - ResponseErrorResponse (73444: member must have role)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteMemberRolePublicV2.create(
        body=body,
        group_id=group_id,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteMemberRolePublicV2)
async def delete_member_role_public_v2_async(
    body: ModelsRemoveRoleFromMemberRequestV1,
    group_id: str,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Remove role from group member (deleteMemberRolePublicV2)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]"

    This endpoint is used to remove role from group member

    Action Code: 73204

    Properties:
        url: /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members

        method: DELETE

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsRemoveRoleFromMemberRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        422: Unprocessable Entity - ResponseErrorResponse (73444: member must have role)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteMemberRolePublicV2.create(
        body=body,
        group_id=group_id,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMemberRolesListAdminV1)
def get_member_roles_list_admin_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all list of member roles (getMemberRolesListAdminV1)

    This endpoint is used to get list of member roles

    Action Code: 73201

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRolesListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMemberRolesListAdminV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMemberRolesListAdminV1)
async def get_member_roles_list_admin_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all list of member roles (getMemberRolesListAdminV1)

    This endpoint is used to get list of member roles

    Action Code: 73201

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRolesListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMemberRolesListAdminV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMemberRolesListPublicV1)
def get_member_roles_list_public_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all list of member roles (getMemberRolesListPublicV1)

    Required Member Role Permission: "GROUP:ROLE [READ]"

    This endpoint is used to get list of member roles

    Action Code: 73201

    Properties:
        url: /group/v1/public/namespaces/{namespace}/roles

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRolesListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMemberRolesListPublicV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMemberRolesListPublicV1)
async def get_member_roles_list_public_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all list of member roles (getMemberRolesListPublicV1)

    Required Member Role Permission: "GROUP:ROLE [READ]"

    This endpoint is used to get list of member roles

    Action Code: 73201

    Properties:
        url: /group/v1/public/namespaces/{namespace}/roles

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRolesListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMemberRolesListPublicV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMemberRolesListPublicV2)
def get_member_roles_list_public_v2(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all list of member roles (getMemberRolesListPublicV2)

    This endpoint is used to get list of member roles

    Action Code: 73201

    Properties:
        url: /group/v2/public/namespaces/{namespace}/roles

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRolesListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMemberRolesListPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMemberRolesListPublicV2)
async def get_member_roles_list_public_v2_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get all list of member roles (getMemberRolesListPublicV2)

    This endpoint is used to get list of member roles

    Action Code: 73201

    Properties:
        url: /group/v2/public/namespaces/{namespace}/roles

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRolesListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMemberRolesListPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetSingleMemberRoleAdminV1)
def get_single_member_role_admin_v1(
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get member role (getSingleMemberRoleAdminV1)

    This endpoint is used to get member role based on the role ID

    Action Code: 73203

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRoleResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleMemberRoleAdminV1.create(
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetSingleMemberRoleAdminV1)
async def get_single_member_role_admin_v1_async(
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """get member role (getSingleMemberRoleAdminV1)

    This endpoint is used to get member role based on the role ID

    Action Code: 73203

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}

        method: GET

        tags: ["Group Roles"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRoleResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetSingleMemberRoleAdminV1.create(
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMemberRoleAdminV1)
def update_member_role_admin_v1(
    body: ModelsUpdateMemberRoleRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update member role (updateMemberRoleAdminV1)

    This endpoint is used to update member role

    Action Code: 73204

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}

        method: PATCH

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateMemberRoleRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRoleResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRoleAdminV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMemberRoleAdminV1)
async def update_member_role_admin_v1_async(
    body: ModelsUpdateMemberRoleRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update member role (updateMemberRoleAdminV1)

    This endpoint is used to update member role

    Action Code: 73204

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}

        method: PATCH

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateMemberRoleRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRoleResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRoleAdminV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMemberRolePermissionAdminV1)
def update_member_role_permission_admin_v1(
    body: ModelsUpdateMemberRolePermissionsRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update member role permission (updateMemberRolePermissionAdminV1)

    This endpoint is used to update member role permission. It will replace the existing permission based on the request from this endpoint

    Action Code: 73205



    memberRolePermissions example value :

    "action": 2

    "resourceName": "GROUP:ROLE"

    The changes will update user role to be able to read a role of other member

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions

        method: PUT

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateMemberRolePermissionsRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRoleResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRolePermissionAdminV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMemberRolePermissionAdminV1)
async def update_member_role_permission_admin_v1_async(
    body: ModelsUpdateMemberRolePermissionsRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """update member role permission (updateMemberRolePermissionAdminV1)

    This endpoint is used to update member role permission. It will replace the existing permission based on the request from this endpoint

    Action Code: 73205



    memberRolePermissions example value :

    "action": 2

    "resourceName": "GROUP:ROLE"

    The changes will update user role to be able to read a role of other member

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/roles/{memberRoleId}/permissions

        method: PUT

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateMemberRolePermissionsRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRoleResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRolePermissionAdminV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMemberRolePublicV1)
def update_member_role_public_v1(
    body: ModelsAssignRoleToMemberRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Assign role to group member (updateMemberRolePublicV1)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]

    This endpoint is used to assign role to group member

    Action Code: 73204

    Properties:
        url: /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members

        method: POST

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAssignRoleToMemberRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRolePublicV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMemberRolePublicV1)
async def update_member_role_public_v1_async(
    body: ModelsAssignRoleToMemberRequestV1,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Assign role to group member (updateMemberRolePublicV1)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]

    This endpoint is used to assign role to group member

    Action Code: 73204

    Properties:
        url: /group/v1/public/namespaces/{namespace}/roles/{memberRoleId}/members

        method: POST

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAssignRoleToMemberRequestV1 in body

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRolePublicV1.create(
        body=body,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateMemberRolePublicV2)
def update_member_role_public_v2(
    body: ModelsAssignRoleToMemberRequestV1,
    group_id: str,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Assign role to group member (updateMemberRolePublicV2)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]

    This endpoint is used to assign role to group member

    Action Code: 73204

    Properties:
        url: /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members

        method: POST

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAssignRoleToMemberRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRolePublicV2.create(
        body=body,
        group_id=group_id,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateMemberRolePublicV2)
async def update_member_role_public_v2_async(
    body: ModelsAssignRoleToMemberRequestV1,
    group_id: str,
    member_role_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Assign role to group member (updateMemberRolePublicV2)

    Required Member Role Permission: "GROUP:ROLE [UPDATE]

    This endpoint is used to assign role to group member

    Action Code: 73204

    Properties:
        url: /group/v2/public/namespaces/{namespace}/roles/{memberRoleId}/groups/{groupId}/members

        method: POST

        tags: ["Group Roles"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAssignRoleToMemberRequestV1 in body

        group_id: (groupId) REQUIRED str in path

        member_role_id: (memberRoleId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 20019: unable to parse request body)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 20013: insufficient permissions)

        404: Not Found - ResponseErrorResponse (73232: member role not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateMemberRolePublicV2.create(
        body=body,
        group_id=group_id,
        member_role_id=member_role_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
