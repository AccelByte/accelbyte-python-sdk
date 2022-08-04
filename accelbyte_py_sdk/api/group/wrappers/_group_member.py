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

from ..models import ModelsGetGroupMemberListResponseV1
from ..models import ModelsGetUserGroupInformationResponseV1
from ..models import ModelsJoinGroupResponseV1
from ..models import ModelsKickGroupMemberResponseV1
from ..models import ModelsLeaveGroupResponseV1
from ..models import ModelsMemberRequestGroupResponseV1
from ..models import ModelsUserInvitationResponseV1
from ..models import ResponseErrorResponse

from ..operations.group_member import AcceptGroupInvitationPublicV1
from ..operations.group_member import AcceptGroupJoinRequestPublicV1
from ..operations.group_member import CancelGroupJoinRequestV1
from ..operations.group_member import GetGroupMembersListAdminV1
from ..operations.group_member import GetGroupMembersListPublicV1
from ..operations.group_member import GetUserGroupInformationPublicV1
from ..operations.group_member import InviteGroupPublicV1
from ..operations.group_member import JoinGroupV1
from ..operations.group_member import KickGroupMemberPublicV1
from ..operations.group_member import LeaveGroupPublicV1
from ..operations.group_member import RejectGroupInvitationPublicV1
from ..operations.group_member import RejectGroupJoinRequestPublicV1


@same_doc_as(AcceptGroupInvitationPublicV1)
def accept_group_invitation_public_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcceptGroupInvitationPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcceptGroupInvitationPublicV1)
async def accept_group_invitation_public_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcceptGroupInvitationPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AcceptGroupJoinRequestPublicV1)
def accept_group_join_request_public_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcceptGroupJoinRequestPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcceptGroupJoinRequestPublicV1)
async def accept_group_join_request_public_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AcceptGroupJoinRequestPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CancelGroupJoinRequestV1)
def cancel_group_join_request_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CancelGroupJoinRequestV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CancelGroupJoinRequestV1)
async def cancel_group_join_request_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = CancelGroupJoinRequestV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupMembersListAdminV1)
def get_group_members_list_admin_v1(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGroupMembersListAdminV1.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupMembersListAdminV1)
async def get_group_members_list_admin_v1_async(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGroupMembersListAdminV1.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupMembersListPublicV1)
def get_group_members_list_public_v1(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGroupMembersListPublicV1.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupMembersListPublicV1)
async def get_group_members_list_public_v1_async(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetGroupMembersListPublicV1.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        order=order,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserGroupInformationPublicV1)
def get_user_group_information_public_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserGroupInformationPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserGroupInformationPublicV1)
async def get_user_group_information_public_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserGroupInformationPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(InviteGroupPublicV1)
def invite_group_public_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = InviteGroupPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(InviteGroupPublicV1)
async def invite_group_public_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = InviteGroupPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(JoinGroupV1)
def join_group_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = JoinGroupV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(JoinGroupV1)
async def join_group_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = JoinGroupV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(KickGroupMemberPublicV1)
def kick_group_member_public_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = KickGroupMemberPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(KickGroupMemberPublicV1)
async def kick_group_member_public_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = KickGroupMemberPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(LeaveGroupPublicV1)
def leave_group_public_v1(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = LeaveGroupPublicV1.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(LeaveGroupPublicV1)
async def leave_group_public_v1_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = LeaveGroupPublicV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RejectGroupInvitationPublicV1)
def reject_group_invitation_public_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RejectGroupInvitationPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RejectGroupInvitationPublicV1)
async def reject_group_invitation_public_v1_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RejectGroupInvitationPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RejectGroupJoinRequestPublicV1)
def reject_group_join_request_public_v1(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RejectGroupJoinRequestPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RejectGroupJoinRequestPublicV1)
async def reject_group_join_request_public_v1_async(
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = RejectGroupJoinRequestPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
