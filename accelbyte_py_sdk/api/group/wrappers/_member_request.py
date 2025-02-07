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

from ..models import ModelsGetMemberRequestsListResponseV1
from ..models import ResponseErrorResponse

from ..operations.member_request import GetGroupInvitationRequestPublicV1
from ..operations.member_request import GetGroupInviteRequestPublicV2
from ..operations.member_request import GetGroupJoinRequestPublicV1
from ..operations.member_request import GetGroupJoinRequestPublicV2
from ..operations.member_request import GetMyGroupJoinRequestV2


@same_doc_as(GetGroupInvitationRequestPublicV1)
def get_group_invitation_request_public_v1(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Invitation Request List (getGroupInvitationRequestPublicV1)

    Required valid user authentication

    This endpoint is used to Get Group Invitation Request List

    Get Group Invitation Request List for the user calling this endpoint. It will check any group invitation for this user

    Action Code: 73502

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/me/invite/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupInvitationRequestPublicV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupInvitationRequestPublicV1)
async def get_group_invitation_request_public_v1_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Invitation Request List (getGroupInvitationRequestPublicV1)

    Required valid user authentication

    This endpoint is used to Get Group Invitation Request List

    Get Group Invitation Request List for the user calling this endpoint. It will check any group invitation for this user

    Action Code: 73502

    Properties:
        url: /group/v1/public/namespaces/{namespace}/users/me/invite/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupInvitationRequestPublicV1.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupInviteRequestPublicV2)
def get_group_invite_request_public_v2(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Invite Request List (getGroupInviteRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [READ]"

    This endpoint is used to Get Group Invite Request List

    Get Group Invite Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint

    Action Code: 73501

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupInviteRequestPublicV2.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupInviteRequestPublicV2)
async def get_group_invite_request_public_v2_async(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Invite Request List (getGroupInviteRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [READ]"

    This endpoint is used to Get Group Invite Request List

    Get Group Invite Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint

    Action Code: 73501

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/invite/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupInviteRequestPublicV2.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupJoinRequestPublicV1)
def get_group_join_request_public_v1(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Join Request List (getGroupJoinRequestPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [READ]"

    This endpoint is used to Get Group Join Request List

    Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint

    Action Code: 73501

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupJoinRequestPublicV1.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupJoinRequestPublicV1)
async def get_group_join_request_public_v1_async(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Join Request List (getGroupJoinRequestPublicV1)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [READ]"

    This endpoint is used to Get Group Join Request List

    Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint

    Action Code: 73501

    Properties:
        url: /group/v1/public/namespaces/{namespace}/groups/{groupId}/join/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupJoinRequestPublicV1.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetGroupJoinRequestPublicV2)
def get_group_join_request_public_v2(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Join Request List (getGroupJoinRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [READ]"

    This endpoint is used to Get Group Join Request List

    Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint

    Action Code: 73501

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/join/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupJoinRequestPublicV2.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetGroupJoinRequestPublicV2)
async def get_group_join_request_public_v2_async(
    group_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Group Join Request List (getGroupJoinRequestPublicV2)

    Required valid user authentication

    Required Member Role Permission: "GROUP:JOIN [READ]"

    This endpoint is used to Get Group Join Request List

    Get Group Join Request List for specific group. Group members needs to have permission and also belong to the group to access this endpoint

    Action Code: 73501

    Properties:
        url: /group/v2/public/namespaces/{namespace}/groups/{groupId}/join/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        group_id: (groupId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token | 73036: insufficient member role permission)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetGroupJoinRequestPublicV2.create(
        group_id=group_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetMyGroupJoinRequestV2)
def get_my_group_join_request_v2(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My Join Request To The Groups (GetMyGroupJoinRequestV2)

    Required valid user authentication

    This endpoint is used to Get My Join Request To The Groups

    Get My Join Request To The Groups for the user calling this endpoint. It will check any join request group for this user

    Action Code: 73502

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/me/join/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyGroupJoinRequestV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetMyGroupJoinRequestV2)
async def get_my_group_join_request_v2_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get My Join Request To The Groups (GetMyGroupJoinRequestV2)

    Required valid user authentication

    This endpoint is used to Get My Join Request To The Groups

    Get My Join Request To The Groups for the user calling this endpoint. It will check any join request group for this user

    Action Code: 73502

    Properties:
        url: /group/v2/public/namespaces/{namespace}/users/me/join/request

        method: GET

        tags: ["Member Request"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsGetMemberRequestsListResponseV1 (OK)

        400: Bad Request - ResponseErrorResponse (20002: validation error)

        401: Unauthorized - ResponseErrorResponse (20001: unauthorized access)

        403: Forbidden - ResponseErrorResponse (20022: token is not user token)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetMyGroupJoinRequestV2.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
