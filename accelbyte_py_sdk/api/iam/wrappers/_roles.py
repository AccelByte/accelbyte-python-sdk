# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: justice_py_sdk_codegen/__main__.py

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

from ..models import AccountcommonPermissionsV3
from ..models import AccountcommonRoleV3
from ..models import ModelAssignUserV4Request
from ..models import ModelAssignedUserV4Response
from ..models import ModelListAssignedUsersV4Response
from ..models import ModelListRoleV4Response
from ..models import ModelRevokeUserV4Request
from ..models import ModelRoleAdminStatusResponseV3
from ..models import ModelRoleCreateV3Request
from ..models import ModelRoleManagersRequestV3
from ..models import ModelRoleManagersResponsesV3
from ..models import ModelRoleMembersRequestV3
from ..models import ModelRoleMembersResponseV3
from ..models import ModelRoleNamesResponseV3
from ..models import ModelRoleResponse
from ..models import ModelRoleResponseV3
from ..models import ModelRoleResponseWithManagersAndPaginationV3
from ..models import ModelRoleUpdateRequestV3
from ..models import ModelRoleV4Request
from ..models import ModelRoleV4Response
from ..models import RestErrorResponse
from ..models import RestapiErrorResponse

from ..operations.roles import AdminAddRoleManagersV3
from ..operations.roles import AdminAddRoleMembersV3
from ..operations.roles import AdminAddRolePermissionsV3
from ..operations.roles import AdminAddRolePermissionsV4
from ..operations.roles import AdminAssignUserToRoleV4
from ..operations.roles import AdminCreateRoleV3
from ..operations.roles import AdminCreateRoleV4
from ..operations.roles import AdminDeleteRolePermissionV3
from ..operations.roles import AdminDeleteRolePermissionsV3
from ..operations.roles import AdminDeleteRolePermissionsV4
from ..operations.roles import AdminDeleteRoleV3
from ..operations.roles import AdminDeleteRoleV4
from ..operations.roles import AdminGetRoleAdminStatusV3
from ..operations.roles import AdminGetRoleManagersV3
from ..operations.roles import AdminGetRoleMembersV3
from ..operations.roles import AdminGetRoleV3
from ..operations.roles import AdminGetRoleV4
from ..operations.roles import AdminGetRolesV3
from ..operations.roles import AdminGetRolesV4
from ..operations.roles import AdminListAssignedUsersV4
from ..operations.roles import AdminRemoveRoleAdminV3
from ..operations.roles import AdminRemoveRoleManagersV3
from ..operations.roles import AdminRemoveRoleMembersV3
from ..operations.roles import AdminRevokeUserFromRoleV4
from ..operations.roles import AdminUpdateAdminRoleStatusV3
from ..operations.roles import AdminUpdateRolePermissionsV3
from ..operations.roles import AdminUpdateRolePermissionsV4
from ..operations.roles import AdminUpdateRoleV3
from ..operations.roles import AdminUpdateRoleV4
from ..operations.roles import PublicGetRoleV3
from ..operations.roles import PublicGetRolesV3


@same_doc_as(AdminAddRoleManagersV3)
def admin_add_role_managers_v3(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRoleManagersV3)
async def admin_add_role_managers_v3_async(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddRoleMembersV3)
def admin_add_role_members_v3(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRoleMembersV3)
async def admin_add_role_members_v3_async(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddRolePermissionsV3)
def admin_add_role_permissions_v3(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRolePermissionsV3)
async def admin_add_role_permissions_v3_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAddRolePermissionsV4)
def admin_add_role_permissions_v4(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddRolePermissionsV4)
async def admin_add_role_permissions_v4_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAddRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminAssignUserToRoleV4)
def admin_assign_user_to_role_v4(
    body: ModelAssignUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAssignUserToRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAssignUserToRoleV4)
async def admin_assign_user_to_role_v4_async(
    body: ModelAssignUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminAssignUserToRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateRoleV3)
def admin_create_role_v3(
    body: ModelRoleCreateV3Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminCreateRoleV3.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateRoleV3)
async def admin_create_role_v3_async(
    body: ModelRoleCreateV3Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminCreateRoleV3.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateRoleV4)
def admin_create_role_v4(
    body: ModelRoleV4Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminCreateRoleV4.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateRoleV4)
async def admin_create_role_v4_async(
    body: ModelRoleV4Request,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminCreateRoleV4.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRolePermissionV3)
def admin_delete_role_permission_v3(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminDeleteRolePermissionV3.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRolePermissionV3)
async def admin_delete_role_permission_v3_async(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminDeleteRolePermissionV3.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRolePermissionsV3)
def admin_delete_role_permissions_v3(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminDeleteRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRolePermissionsV3)
async def admin_delete_role_permissions_v3_async(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminDeleteRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRolePermissionsV4)
def admin_delete_role_permissions_v4(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminDeleteRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRolePermissionsV4)
async def admin_delete_role_permissions_v4_async(
    body: List[str],
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminDeleteRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRoleV3)
def admin_delete_role_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminDeleteRoleV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRoleV3)
async def admin_delete_role_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminDeleteRoleV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteRoleV4)
def admin_delete_role_v4(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminDeleteRoleV4.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteRoleV4)
async def admin_delete_role_v4_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminDeleteRoleV4.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleAdminStatusV3)
def admin_get_role_admin_status_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetRoleAdminStatusV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleAdminStatusV3)
async def admin_get_role_admin_status_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetRoleAdminStatusV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleManagersV3)
def admin_get_role_managers_v3(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRoleManagersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleManagersV3)
async def admin_get_role_managers_v3_async(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRoleManagersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleMembersV3)
def admin_get_role_members_v3(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRoleMembersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleMembersV3)
async def admin_get_role_members_v3_async(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRoleMembersV3.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleV3)
def admin_get_role_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetRoleV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleV3)
async def admin_get_role_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetRoleV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRoleV4)
def admin_get_role_v4(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetRoleV4.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRoleV4)
async def admin_get_role_v4_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminGetRoleV4.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRolesV3)
def admin_get_roles_v3(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRolesV3)
async def admin_get_roles_v3_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetRolesV4)
def admin_get_roles_v4(
    admin_role: Optional[bool] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRolesV4.create(
        admin_role=admin_role,
        is_wildcard=is_wildcard,
        limit=limit,
        offset=offset,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetRolesV4)
async def admin_get_roles_v4_async(
    admin_role: Optional[bool] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminGetRolesV4.create(
        admin_role=admin_role,
        is_wildcard=is_wildcard,
        limit=limit,
        offset=offset,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminListAssignedUsersV4)
def admin_list_assigned_users_v4(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminListAssignedUsersV4.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminListAssignedUsersV4)
async def admin_list_assigned_users_v4_async(
    role_id: str,
    after: Optional[str] = None,
    before: Optional[str] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminListAssignedUsersV4.create(
        role_id=role_id,
        after=after,
        before=before,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRemoveRoleAdminV3)
def admin_remove_role_admin_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminRemoveRoleAdminV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRemoveRoleAdminV3)
async def admin_remove_role_admin_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminRemoveRoleAdminV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRemoveRoleManagersV3)
def admin_remove_role_managers_v3(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminRemoveRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRemoveRoleManagersV3)
async def admin_remove_role_managers_v3_async(
    body: ModelRoleManagersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminRemoveRoleManagersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRemoveRoleMembersV3)
def admin_remove_role_members_v3(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminRemoveRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRemoveRoleMembersV3)
async def admin_remove_role_members_v3_async(
    body: ModelRoleMembersRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminRemoveRoleMembersV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRevokeUserFromRoleV4)
def admin_revoke_user_from_role_v4(
    body: ModelRevokeUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminRevokeUserFromRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRevokeUserFromRoleV4)
async def admin_revoke_user_from_role_v4_async(
    body: ModelRevokeUserV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminRevokeUserFromRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateAdminRoleStatusV3)
def admin_update_admin_role_status_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminUpdateAdminRoleStatusV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateAdminRoleStatusV3)
async def admin_update_admin_role_status_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = AdminUpdateAdminRoleStatusV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRolePermissionsV3)
def admin_update_role_permissions_v3(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRolePermissionsV3)
async def admin_update_role_permissions_v3_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRolePermissionsV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRolePermissionsV4)
def admin_update_role_permissions_v4(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRolePermissionsV4)
async def admin_update_role_permissions_v4_async(
    body: AccountcommonPermissionsV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRolePermissionsV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRoleV3)
def admin_update_role_v3(
    body: ModelRoleUpdateRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRoleV3.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRoleV3)
async def admin_update_role_v3_async(
    body: ModelRoleUpdateRequestV3,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRoleV3.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateRoleV4)
def admin_update_role_v4(
    body: ModelRoleV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateRoleV4)
async def admin_update_role_v4_async(
    body: ModelRoleV4Request,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AdminUpdateRoleV4.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetRoleV3)
def public_get_role_v3(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = PublicGetRoleV3.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetRoleV3)
async def public_get_role_v3_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = PublicGetRoleV3.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetRolesV3)
def public_get_roles_v3(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PublicGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetRolesV3)
async def public_get_roles_v3_async(
    after: Optional[str] = None,
    before: Optional[str] = None,
    is_wildcard: Optional[bool] = None,
    limit: Optional[int] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = PublicGetRolesV3.create(
        after=after,
        before=before,
        is_wildcard=is_wildcard,
        limit=limit,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
