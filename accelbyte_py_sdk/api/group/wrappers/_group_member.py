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

from ..models import ModelsCancelInvitationGroupResponseV2
from ..models import ModelsGetGroupMemberListResponseV1
from ..models import ModelsGetUserGroupInformationResponseV1
from ..models import ModelsJoinGroupResponseV1
from ..models import ModelsKickGroupMemberResponseV1
from ..models import ModelsLeaveGroupResponseV1
from ..models import ModelsMemberRequestGroupResponseV1
from ..models import ModelsUserInvitationResponseV1
from ..models import ResponseErrorResponse

from ..operations.group_member import AcceptGroupInvitationPublicV1
from ..operations.group_member import AcceptGroupInvitationPublicV2
from ..operations.group_member import AcceptGroupJoinRequestPublicV1
from ..operations.group_member import AcceptGroupJoinRequestPublicV2
from ..operations.group_member import AdminGetUserGroupStatusInformationV2
from ..operations.group_member import CancelGroupJoinRequestV1
from ..operations.group_member import CancelInvitationGroupMemberV2
from ..operations.group_member import GetGroupMembersListAdminV1
from ..operations.group_member import GetGroupMembersListPublicV1
from ..operations.group_member import GetUserGroupInformationPublicV1
from ..operations.group_member import GetUserGroupInformationPublicV2
from ..operations.group_member import GetUserGroupStatusInformationV2
from ..operations.group_member import GetUserJoinedGroupInformationPublicV2
from ..operations.group_member import InviteGroupPublicV1
from ..operations.group_member import InviteGroupPublicV2
from ..operations.group_member import JoinGroupV1
from ..operations.group_member import JoinGroupV2
from ..operations.group_member import KickGroupMemberPublicV1
from ..operations.group_member import KickGroupMemberPublicV2
from ..operations.group_member import LeaveGroupPublicV1
from ..operations.group_member import LeaveGroupPublicV2
from ..operations.group_member import RejectGroupInvitationPublicV1
from ..operations.group_member import RejectGroupInvitationPublicV2
from ..operations.group_member import RejectGroupJoinRequestPublicV1
from ..operations.group_member import RejectGroupJoinRequestPublicV2


@same_doc_as(AcceptGroupInvitationPublicV1)
def accept_group_invitation_public_v1(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept Group Invitation (acceptGroupInvitationPublicV1)

    Required valid user authentication

    This endpoint is used to accept group invitation.

    Accept group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    This endpoint will also check if the user who access this endpoint is already joined to specific group

    Accessing this endpoint will make all requests (invite / join request) will be deleted for the user who access this endpoint

    Existing members will receive notification of newly accepted member.

    Action Code: 73401

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Accept Group Invitation (acceptGroupInvitationPublicV1)

    Required valid user authentication

    This endpoint is used to accept group invitation.

    Accept group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    This endpoint will also check if the user who access this endpoint is already joined to specific group

    Accessing this endpoint will make all requests (invite / join request) will be deleted for the user who access this endpoint

    Existing members will receive notification of newly accepted member.

    Action Code: 73401

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcceptGroupInvitationPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AcceptGroupInvitationPublicV2)
def accept_group_invitation_public_v2(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept Group Invitation (acceptGroupInvitationPublicV2)

    Required valid user authentication

    This endpoint is used to accept group invitation.

    Accept group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    This endpoint will also check if the user who access this endpoint is already joined to specific group

    Accessing this endpoint will make all requests (invite / join request) will be deleted for the user who access this endpoint

    Existing members will receive notification of newly accepted member.

    Action Code: 73401

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcceptGroupInvitationPublicV2.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcceptGroupInvitationPublicV2)
async def accept_group_invitation_public_v2_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept Group Invitation (acceptGroupInvitationPublicV2)

    Required valid user authentication

    This endpoint is used to accept group invitation.

    Accept group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    This endpoint will also check if the user who access this endpoint is already joined to specific group

    Accessing this endpoint will make all requests (invite / join request) will be deleted for the user who access this endpoint

    Existing members will receive notification of newly accepted member.

    Action Code: 73401

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcceptGroupInvitationPublicV2.create(
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
    """Accept Group Join Request (acceptGroupJoinRequestPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to accept group join request.

    Accept group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73407

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Accept Group Join Request (acceptGroupJoinRequestPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to accept group join request.

    Accept group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73407

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/join/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcceptGroupJoinRequestPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AcceptGroupJoinRequestPublicV2)
def accept_group_join_request_public_v2(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept Group Join Request (acceptGroupJoinRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to accept group join request.

    Accept group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73407

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcceptGroupJoinRequestPublicV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AcceptGroupJoinRequestPublicV2)
async def accept_group_join_request_public_v2_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Accept Group Join Request (acceptGroupJoinRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to accept group join request.

    Accept group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73407

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/accept

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AcceptGroupJoinRequestPublicV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetUserGroupStatusInformationV2)
def admin_get_user_group_status_information_v2(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """User Group Status Information (AdminGetUserGroupStatusInformationV2)

    This endpoint is used to get user group status information.

    Properties:
        url: /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserGroupStatusInformationV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetUserGroupStatusInformationV2)
async def admin_get_user_group_status_information_v2_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """User Group Status Information (AdminGetUserGroupStatusInformationV2)

    This endpoint is used to get user group status information.

    Properties:
        url: /group/v2/admin/namespaces/{namespace}/users/{userId}/groups/{groupId}/status

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetUserGroupStatusInformationV2.create(
        group_id=group_id,
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
    """Cancel request to join group (CancelGroupJoinRequestV1)

    Requires valid user authentication

    This endpoint allows user to cancel request to join specific group.

    Action Code: 73411

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Cancel request to join group (CancelGroupJoinRequestV1)

    Requires valid user authentication

    This endpoint allows user to cancel request to join specific group.

    Action Code: 73411

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/cancel

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CancelGroupJoinRequestV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(CancelInvitationGroupMemberV2)
def cancel_invitation_group_member_v2(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel Invitation Group Member (CancelInvitationGroupMemberV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:INVITE [DELETE]"

    This endpoint is used to cancel invitation group member.

    cancel invitation group member. This endpoint will cancel invitation to specific user, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCancelInvitationGroupResponseV2 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CancelInvitationGroupMemberV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(CancelInvitationGroupMemberV2)
async def cancel_invitation_group_member_v2_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Cancel Invitation Group Member (CancelInvitationGroupMemberV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:INVITE [DELETE]"

    This endpoint is used to cancel invitation group member.

    cancel invitation group member. This endpoint will cancel invitation to specific user, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite/cancel

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsCancelInvitationGroupResponseV2 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = CancelInvitationGroupMemberV2.create(
        group_id=group_id,
        user_id=user_id,
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
    """Get list of group members (getGroupMembersListAdminV1)

    This endpoint is used to get list of group members.

    Action Code: 73410

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups/{groupId}/members

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73433: member group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get list of group members (getGroupMembersListAdminV1)

    This endpoint is used to get list of group members.

    Action Code: 73410

    Properties:
        url: /group/v1/admin/namespaces/{namespace}/groups/{groupId}/members

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73433: member group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get list of group members (getGroupMembersListPublicV1)

    Required valid user authentication

    This endpoint is used to get list of group members.

    Action Code: 73410

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/members

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73433: member group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get list of group members (getGroupMembersListPublicV1)

    Required valid user authentication

    This endpoint is used to get list of group members.

    Action Code: 73410

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/members

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73433: member group not found)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get User Group Information (getUserGroupInformationPublicV1)

    Required valid user authentication

    This endpoint is used to get user group information.

    Get user group information. If user does not belong to any group, it will return warning to give information about it

    Group Member Status:

    * JOIN : status of user requested to join group
    * INVITE: status of user invited to a group
    * JOINED: status of user already joined to a group

    Action Code: 73405

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Get User Group Information (getUserGroupInformationPublicV1)

    Required valid user authentication

    This endpoint is used to get user group information.

    Get user group information. If user does not belong to any group, it will return warning to give information about it

    Group Member Status:

    * JOIN : status of user requested to join group
    * INVITE: status of user invited to a group
    * JOINED: status of user already joined to a group

    Action Code: 73405

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserGroupInformationPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserGroupInformationPublicV2)
def get_user_group_information_public_v2(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Joined Group Information (getUserGroupInformationPublicV2)

    Required valid user authentication

    This endpoint is used to get user joined group information.

    Get user group joined information. If user does not belong to any group, it will return warning to give information about it

    Group Member Status:

    * JOINED: status of user already joined to a group

    Action Code: 73405

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/me/groups

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserGroupInformationPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserGroupInformationPublicV2)
async def get_user_group_information_public_v2_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Joined Group Information (getUserGroupInformationPublicV2)

    Required valid user authentication

    This endpoint is used to get user joined group information.

    Get user group joined information. If user does not belong to any group, it will return warning to give information about it

    Group Member Status:

    * JOINED: status of user already joined to a group

    Action Code: 73405

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/me/groups

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserGroupInformationPublicV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserGroupStatusInformationV2)
def get_user_group_status_information_v2(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """User Group Status Information (GetUserGroupStatusInformationV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [READ]"

    This endpoint is used to get user group status information.

    get user group status information. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserGroupStatusInformationV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserGroupStatusInformationV2)
async def get_user_group_status_information_v2_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """User Group Status Information (GetUserGroupStatusInformationV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP [READ]"

    This endpoint is used to get user group status information.

    get user group status information. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/status

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsGetUserGroupInformationResponseV1 (OK)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserGroupStatusInformationV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserJoinedGroupInformationPublicV2)
def get_user_joined_group_information_public_v2(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Joined Group Information (getUserJoinedGroupInformationPublicV2)

    Required valid user authentication

    This endpoint is used to get user joined group information.

    Get user group joined information. If user does not belong to any group, it will return warning to give information about it

    Group Member Status:

    * JOINED: status of user already joined to a group

    Properties:
        url: /group/v2/admin/namespaces/{namespace}/users/{userId}/groups

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserJoinedGroupInformationPublicV2.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserJoinedGroupInformationPublicV2)
async def get_user_joined_group_information_public_v2_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get User Joined Group Information (getUserJoinedGroupInformationPublicV2)

    Required valid user authentication

    This endpoint is used to get user joined group information.

    Get user group joined information. If user does not belong to any group, it will return warning to give information about it

    Group Member Status:

    * JOINED: status of user already joined to a group

    Properties:
        url: /group/v2/admin/namespaces/{namespace}/users/{userId}/groups

        method: GET

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetGroupMemberListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetUserJoinedGroupInformationPublicV2.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
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
    """Invite user to group (inviteGroupPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:INVITE [CREATE]"

    This endpoint is used to invite specific user to the group.

    invite specific user to the group. If specific user is already have the join request to the group, this endpoint will notify if this user already have join request that needs to be accepted / rejected

    Invited user will receive notification through lobby.

    Action Code: 73406



    memberRolePermissions example value :

    "action": 1

    "resourceName": "GROUP:INVITE"

    The invited user will have a permission to invite another user to the group

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/invite

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserInvitationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group | 73437: user already invited | 73438: user already requested to join)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Invite user to group (inviteGroupPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:INVITE [CREATE]"

    This endpoint is used to invite specific user to the group.

    invite specific user to the group. If specific user is already have the join request to the group, this endpoint will notify if this user already have join request that needs to be accepted / rejected

    Invited user will receive notification through lobby.

    Action Code: 73406



    memberRolePermissions example value :

    "action": 1

    "resourceName": "GROUP:INVITE"

    The invited user will have a permission to invite another user to the group

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/invite

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserInvitationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group | 73437: user already invited | 73438: user already requested to join)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = InviteGroupPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(InviteGroupPublicV2)
def invite_group_public_v2(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite user to group (inviteGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:INVITE [CREATE]"

    This endpoint is used to invite specific user to the group.

    invite specific user to the group. If specific user is already have the join request to the group, this endpoint will notify if this user already have join request that needs to be accepted / rejected

    Invited user will receive notification through lobby.

    Action Code: 73406



    memberRolePermissions example value :

    "action": 1

    "resourceName": "GROUP:INVITE"

    The invited user will have a permission to invite another user to the group

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserInvitationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group | 73437: user already invited | 73438: user already requested to join)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = InviteGroupPublicV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(InviteGroupPublicV2)
async def invite_group_public_v2_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Invite user to group (inviteGroupPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:INVITE [CREATE]"

    This endpoint is used to invite specific user to the group.

    invite specific user to the group. If specific user is already have the join request to the group, this endpoint will notify if this user already have join request that needs to be accepted / rejected

    Invited user will receive notification through lobby.

    Action Code: 73406



    memberRolePermissions example value :

    "action": 1

    "resourceName": "GROUP:INVITE"

    The invited user will have a permission to invite another user to the group

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/invite

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsUserInvitationResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group | 73437: user already invited | 73438: user already requested to join)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = InviteGroupPublicV2.create(
        group_id=group_id,
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
    """Join to group (JoinGroupV1)

    Required valid user authentication

    This endpoint is used to join as group member

    Join to the group. This endpoint will check the the the type of the group based on the groupID.

    Additional Information:

    * User cannot join to the group with PRIVATE type
    * Joining PUBLIC group type will create join request and need approval from the privileged group member to accept the request to become the member
    * Joining OPEN group type will make this user become member of that group immediately

    This endpoint will return status field to give information whether the user is JOINED or REQUESTED to join to the specific group

    Action Code: 73403

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/join

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsJoinGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Join to group (JoinGroupV1)

    Required valid user authentication

    This endpoint is used to join as group member

    Join to the group. This endpoint will check the the the type of the group based on the groupID.

    Additional Information:

    * User cannot join to the group with PRIVATE type
    * Joining PUBLIC group type will create join request and need approval from the privileged group member to accept the request to become the member
    * Joining OPEN group type will make this user become member of that group immediately

    This endpoint will return status field to give information whether the user is JOINED or REQUESTED to join to the specific group

    Action Code: 73403

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/join

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsJoinGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = JoinGroupV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(JoinGroupV2)
def join_group_v2(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join to group (JoinGroupV2)

    Required valid user authentication

    This endpoint is used to join as group member

    Join to the group. This endpoint will check the the the type of the group based on the groupID.

    Additional Information:

    * User cannot join to the group with PRIVATE type
    * Joining PUBLIC group type will create join request and need approval from the privileged group member to accept the request to become the member
    * Joining OPEN group type will make this user become member of that group immediately

    This endpoint will return status field to give information whether the user is JOINED or REQUESTED to join to the specific group

    Action Code: 73403

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/join

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsJoinGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = JoinGroupV2.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(JoinGroupV2)
async def join_group_v2_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Join to group (JoinGroupV2)

    Required valid user authentication

    This endpoint is used to join as group member

    Join to the group. This endpoint will check the the the type of the group based on the groupID.

    Additional Information:

    * User cannot join to the group with PRIVATE type
    * Joining PUBLIC group type will create join request and need approval from the privileged group member to accept the request to become the member
    * Joining OPEN group type will make this user become member of that group immediately

    This endpoint will return status field to give information whether the user is JOINED or REQUESTED to join to the specific group

    Action Code: 73403

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/join

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsJoinGroupResponseV1 (Created)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = JoinGroupV2.create(
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
    """Kick Group Member (kickGroupMemberPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:KICK [CREATE]"

    This endpoint is used to kick group member.

    Kick group member. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/kick

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsKickGroupMemberResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Kick Group Member (kickGroupMemberPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:KICK [CREATE]"

    This endpoint is used to kick group member.

    Kick group member. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/kick

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsKickGroupMemberResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = KickGroupMemberPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(KickGroupMemberPublicV2)
def kick_group_member_public_v2(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick Group Member (kickGroupMemberPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:KICK [CREATE]"

    This endpoint is used to kick group member.

    Kick group member. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsKickGroupMemberResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = KickGroupMemberPublicV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(KickGroupMemberPublicV2)
async def kick_group_member_public_v2_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Kick Group Member (kickGroupMemberPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:KICK [CREATE]"

    This endpoint is used to kick group member.

    Kick group member. This endpoint will check the member and group information, and also the role permission of the the user who accesses this endpoint

    Action Code: 73409

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/kick

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsKickGroupMemberResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73433: member group not found | 73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = KickGroupMemberPublicV2.create(
        group_id=group_id,
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
    """Leave group (leaveGroupPublicV1)

    Required valid user authentication

    This endpoint is used to leave from group.

    leave from group. Admin is not allowed to leave the group. This endpoint will also give response if the user does not belong to any group.

    Action Code: 73404

    Properties:
        url: /group/v1/public/namespaces/{namespace}/leave

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsLeaveGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 73440: group admin cannot leave group)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Leave group (leaveGroupPublicV1)

    Required valid user authentication

    This endpoint is used to leave from group.

    leave from group. Admin is not allowed to leave the group. This endpoint will also give response if the user does not belong to any group.

    Action Code: 73404

    Properties:
        url: /group/v1/public/namespaces/{namespace}/leave

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsLeaveGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 73440: group admin cannot leave group)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = LeaveGroupPublicV1.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(LeaveGroupPublicV2)
def leave_group_public_v2(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Leave group (leaveGroupPublicV2)

    Required valid user authentication

    This endpoint is used to leave from group.

    leave from group. Admin is not allowed to leave the group. This endpoint will also give response if the user does not belong to any group.

    Action Code: 73404

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsLeaveGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 73440: group admin cannot leave group)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = LeaveGroupPublicV2.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(LeaveGroupPublicV2)
async def leave_group_public_v2_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Leave group (leaveGroupPublicV2)

    Required valid user authentication

    This endpoint is used to leave from group.

    leave from group. Admin is not allowed to leave the group. This endpoint will also give response if the user does not belong to any group.

    Action Code: 73404

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/leave

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsLeaveGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error | 73440: group admin cannot leave group)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73034: user not belong to any group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = LeaveGroupPublicV2.create(
        group_id=group_id,
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
    """Reject Group Invitation (rejectGroupInvitationPublicV1)

    Required valid user authentication

    This endpoint is used to reject group invitation.

    Reject group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    Action Code: 73402

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Reject Group Invitation (rejectGroupInvitationPublicV1)

    Required valid user authentication

    This endpoint is used to reject group invitation.

    Reject group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    Action Code: 73402

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/invite/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RejectGroupInvitationPublicV1.create(
        group_id=group_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RejectGroupInvitationPublicV2)
def reject_group_invitation_public_v2(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject Group Invitation (rejectGroupInvitationPublicV2)

    Required valid user authentication

    This endpoint is used to reject group invitation.

    Reject group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    Action Code: 73402

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RejectGroupInvitationPublicV2.create(
        group_id=group_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RejectGroupInvitationPublicV2)
async def reject_group_invitation_public_v2_async(
    group_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject Group Invitation (rejectGroupInvitationPublicV2)

    Required valid user authentication

    This endpoint is used to reject group invitation.

    Reject group invitation. If specific user is not invited in the specific group ID, it will show the the error to show if the user is not invited yet.

    Action Code: 73402

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RejectGroupInvitationPublicV2.create(
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
    """Reject Group Join Request (rejectGroupJoinRequestPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to reject group join request.

    Reject group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73408

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
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
    """Reject Group Join Request (rejectGroupJoinRequestPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to reject group join request.

    Reject group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73408

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/{userId}/join/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RejectGroupJoinRequestPublicV1.create(
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(RejectGroupJoinRequestPublicV2)
def reject_group_join_request_public_v2(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject Group Join Request (rejectGroupJoinRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to reject group join request.

    Reject group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73408

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RejectGroupJoinRequestPublicV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(RejectGroupJoinRequestPublicV2)
async def reject_group_join_request_public_v2_async(
    group_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Reject Group Join Request (rejectGroupJoinRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [CREATE]"

    This endpoint is used to reject group join request.

    Reject group join request. If specific user is not asked to join the specific group ID, it will show the the error to show if the user is not asked to join yet.

    This endpoint will also check if the specific user is already joined to specific group

    Action Code: 73408

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/{userId}/groups/{groupId}/join/reject

        method: POST

        tags: ["Group Member"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsMemberRequestGroupResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        404: Not Found - ResponseErrorResponse (73443: member request not found)

        409: Conflict - ResponseErrorResponse (73442: user already joined in another group)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = RejectGroupJoinRequestPublicV2.create(
        group_id=group_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
