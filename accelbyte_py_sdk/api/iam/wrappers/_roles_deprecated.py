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
from ....core import deprecated
from ....core import same_doc_as

from ..models import AccountcommonPermissions
from ..models import AccountcommonRole
from ..models import ModelRoleAdminStatusResponse
from ..models import ModelRoleCreateRequest
from ..models import ModelRoleManagersRequest
from ..models import ModelRoleManagersResponse
from ..models import ModelRoleMembersRequest
from ..models import ModelRoleMembersResponse
from ..models import ModelRoleResponse
from ..models import ModelRoleResponseWithManagers
from ..models import ModelRoleUpdateRequest
from ..models import ModelUpdatePermissionScheduleRequest

from ..operations.roles_deprecated import AddRoleManagers
from ..operations.roles_deprecated import AddRoleMembers
from ..operations.roles_deprecated import AddRolePermission
from ..operations.roles_deprecated import CreateRole
from ..operations.roles_deprecated import DeleteRole
from ..operations.roles_deprecated import DeleteRolePermission
from ..operations.roles_deprecated import GetRole
from ..operations.roles_deprecated import GetRoleAdminStatus
from ..operations.roles_deprecated import GetRoleManagers
from ..operations.roles_deprecated import GetRoleMembers
from ..operations.roles_deprecated import GetRoles
from ..operations.roles_deprecated import RemoveRoleAdmin
from ..operations.roles_deprecated import RemoveRoleManagers
from ..operations.roles_deprecated import RemoveRoleMembers
from ..operations.roles_deprecated import SetRoleAsAdmin
from ..operations.roles_deprecated import UpdateRole
from ..operations.roles_deprecated import UpdateRolePermissions


@deprecated
@same_doc_as(AddRoleManagers)
def add_role_managers(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AddRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddRoleManagers)
async def add_role_managers_async(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AddRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AddRoleMembers)
def add_role_members(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AddRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddRoleMembers)
async def add_role_members_async(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AddRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AddRolePermission)
def add_role_permission(
    action: int,
    body: ModelUpdatePermissionScheduleRequest,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AddRolePermission.create(
        action=action,
        body=body,
        resource=resource,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AddRolePermission)
async def add_role_permission_async(
    action: int,
    body: ModelUpdatePermissionScheduleRequest,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = AddRolePermission.create(
        action=action,
        body=body,
        resource=resource,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(CreateRole)
def create_role(
    body: ModelRoleCreateRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateRole.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(CreateRole)
async def create_role_async(
    body: ModelRoleCreateRequest,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = CreateRole.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteRole)
def delete_role(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = DeleteRole.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteRole)
async def delete_role_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = DeleteRole.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(DeleteRolePermission)
def delete_role_permission(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = DeleteRolePermission.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(DeleteRolePermission)
async def delete_role_permission_async(
    action: int,
    resource: str,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = DeleteRolePermission.create(
        action=action,
        resource=resource,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRole)
def get_role(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRole.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRole)
async def get_role_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRole.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoleAdminStatus)
def get_role_admin_status(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRoleAdminStatus.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoleAdminStatus)
async def get_role_admin_status_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRoleAdminStatus.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoleManagers)
def get_role_managers(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRoleManagers.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoleManagers)
async def get_role_managers_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRoleManagers.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoleMembers)
def get_role_members(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRoleMembers.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoleMembers)
async def get_role_members_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRoleMembers.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRoles)
def get_roles(
    is_wildcard: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = GetRoles.create(
        is_wildcard=is_wildcard,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRoles)
async def get_roles_async(
    is_wildcard: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = GetRoles.create(
        is_wildcard=is_wildcard,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RemoveRoleAdmin)
def remove_role_admin(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RemoveRoleAdmin.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RemoveRoleAdmin)
async def remove_role_admin_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = RemoveRoleAdmin.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RemoveRoleManagers)
def remove_role_managers(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RemoveRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RemoveRoleManagers)
async def remove_role_managers_async(
    body: ModelRoleManagersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RemoveRoleManagers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RemoveRoleMembers)
def remove_role_members(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RemoveRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RemoveRoleMembers)
async def remove_role_members_async(
    body: ModelRoleMembersRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RemoveRoleMembers.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SetRoleAsAdmin)
def set_role_as_admin(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = SetRoleAsAdmin.create(
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SetRoleAsAdmin)
async def set_role_as_admin_async(
    role_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = SetRoleAsAdmin.create(
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateRole)
def update_role(
    body: ModelRoleUpdateRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateRole.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateRole)
async def update_role_async(
    body: ModelRoleUpdateRequest,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateRole.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateRolePermissions)
def update_role_permissions(
    body: AccountcommonPermissions,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateRolePermissions.create(
        body=body,
        role_id=role_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateRolePermissions)
async def update_role_permissions_async(
    body: AccountcommonPermissions,
    role_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateRolePermissions.create(
        body=body,
        role_id=role_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
