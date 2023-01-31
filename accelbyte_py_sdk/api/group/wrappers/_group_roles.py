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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
    if namespace is None:
        namespace, error = get_services_namespace()
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
