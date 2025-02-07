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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ApiAddMemberParams
from ..models import ApiCreateNamespaceTopicParams
from ..models import ApiCreateTopicParams
from ..models import ApiCreateTopicResponse
from ..models import ApiMuteUserRequest
from ..models import ApiMutedTopicResponse
from ..models import ApiSendChatParams
from ..models import ApiUnmuteUserRequest
from ..models import ApiUpdateTopicParams
from ..models import MessageActionAddUserToTopicResult
from ..models import MessageActionDeleteTopicResult
from ..models import ModelsBanTopicMemberParam
from ..models import ModelsBanTopicMemberResult
from ..models import ModelsChannelTopicResponse
from ..models import ModelsChannelTopicSummaryResponse
from ..models import ModelsChannelTopicWithPaginationResponse
from ..models import ModelsChatMessageResponse
from ..models import ModelsChatMessageWithPaginationResponse
from ..models import ModelsMessageRequest
from ..models import ModelsMessageResultWithAttributes
from ..models import ModelsPublicBanTopicMembersRequest
from ..models import ModelsPublicBanTopicMembersResponse
from ..models import ModelsPublicUnbanTopicMembersRequest
from ..models import ModelsPublicUnbanTopicMembersResponse
from ..models import ModelsTopicInfo
from ..models import ModelsTopicLogWithPaginationResponse
from ..models import ModelsTopicMemberWithPaginationResponse
from ..models import ModelsTopicResponse
from ..models import ModelsUnbanTopicMemberParam
from ..models import ModelsUnbanTopicMemberResult
from ..models import RestapiErrorResponseBody

from ..operations.topic import AdminAddTopicMember
from ..operations.topic import AdminBanTopicMembers
from ..operations.topic import AdminChannelTopicInfo
from ..operations.topic import AdminChannelTopicList
from ..operations.topic import AdminChannelTopicSummary
from ..operations.topic import AdminChatHistory
from ..operations.topic import AdminCreateNamespaceTopic
from ..operations.topic import AdminCreateTopic
from ..operations.topic import AdminDeleteChat
from ..operations.topic import AdminDeleteTopic
from ..operations.topic import AdminFilterChatMessage
from ..operations.topic import AdminQueryTopic
from ..operations.topic import (
    AdminQueryTopicTopicSubTypeEnum,
    AdminQueryTopicTopicTypeEnum,
)
from ..operations.topic import AdminQueryTopicLog
from ..operations.topic import AdminQueryUsersTopic
from ..operations.topic import (
    AdminQueryUsersTopicTopicSubTypeEnum,
    AdminQueryUsersTopicTopicTypeEnum,
)
from ..operations.topic import AdminRemoveTopicMember
from ..operations.topic import AdminSendChat
from ..operations.topic import AdminTopicChatHistory
from ..operations.topic import AdminTopicList
from ..operations.topic import AdminTopicMembers
from ..operations.topic import AdminTopicShards
from ..operations.topic import AdminUnbanTopicMembers
from ..operations.topic import AdminUpdateTopic
from ..operations.topic import PublicBanTopicMembers
from ..operations.topic import PublicChatHistory
from ..operations.topic import PublicDeleteChat
from ..operations.topic import PublicGetMutedTopics
from ..operations.topic import PublicMuteUser
from ..operations.topic import PublicTopicList
from ..operations.topic import PublicUnbanTopicMembers
from ..operations.topic import PublicUnmuteUser
from ..models import ModelsMessageRequestTopicTypeEnum


@same_doc_as(AdminAddTopicMember)
def admin_add_topic_member(
    body: ApiAddMemberParams,
    topic: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin add user to topic (adminAddTopicMember)

    Add new member for topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiAddMemberParams in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - MessageActionAddUserToTopicResult
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddTopicMember.create(
        body=body,
        topic=topic,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddTopicMember)
async def admin_add_topic_member_async(
    body: ApiAddMemberParams,
    topic: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin add user to topic (adminAddTopicMember)

    Add new member for topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiAddMemberParams in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - MessageActionAddUserToTopicResult
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddTopicMember.create(
        body=body,
        topic=topic,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminBanTopicMembers)
def admin_ban_topic_members(
    body: ModelsBanTopicMemberParam,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins ban user in group topic (adminBanTopicMembers)

    Ban users in some topic. banned user not assigned to shard for channel topic, and cannot send and query chat.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/ban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBanTopicMemberParam in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsBanTopicMemberResult (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminBanTopicMembers)
async def admin_ban_topic_members_async(
    body: ModelsBanTopicMemberParam,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins ban user in group topic (adminBanTopicMembers)

    Ban users in some topic. banned user not assigned to shard for channel topic, and cannot send and query chat.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/ban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsBanTopicMemberParam in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsBanTopicMemberResult (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminBanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminChannelTopicInfo)
def admin_channel_topic_info(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get channel topic detail (adminChannelTopicInfo)

    Get chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/channel

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelTopicResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Bad Request)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChannelTopicInfo.create(
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminChannelTopicInfo)
async def admin_channel_topic_info_async(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get channel topic detail (adminChannelTopicInfo)

    Get chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/channel

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelTopicResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Bad Request)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChannelTopicInfo.create(
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminChannelTopicList)
def admin_channel_topic_list(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get list of channel topic (adminChannelTopicList)

    Get channel chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/channel

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_name: (topicName) OPTIONAL str in query

    Responses:
        200: OK - ModelsChannelTopicWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChannelTopicList.create(
        limit=limit,
        offset=offset,
        topic_name=topic_name,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminChannelTopicList)
async def admin_channel_topic_list_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_name: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get list of channel topic (adminChannelTopicList)

    Get channel chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/channel

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_name: (topicName) OPTIONAL str in query

    Responses:
        200: OK - ModelsChannelTopicWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChannelTopicList.create(
        limit=limit,
        offset=offset,
        topic_name=topic_name,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminChannelTopicSummary)
def admin_channel_topic_summary(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get channel topic summary (adminChannelTopicSummary)

    Get chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/channel/summary

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelTopicSummaryResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChannelTopicSummary.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminChannelTopicSummary)
async def admin_channel_topic_summary_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get channel topic summary (adminChannelTopicSummary)

    Get chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/channel/summary

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelTopicSummaryResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChannelTopicSummary.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminChatHistory)
def admin_chat_history(
    chat_id: Optional[List[str]] = None,
    end_created_at: Optional[int] = None,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    sender_user_id: Optional[str] = None,
    shard_id: Optional[str] = None,
    start_created_at: Optional[int] = None,
    topic: Optional[List[str]] = None,
    unfiltered: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get chat history (adminChatHistory)

    Get chat history in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/chats

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        chat_id: (chatId) OPTIONAL List[str] in query

        end_created_at: (endCreatedAt) OPTIONAL int in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        sender_user_id: (senderUserId) OPTIONAL str in query

        shard_id: (shardId) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        topic: (topic) OPTIONAL List[str] in query

        unfiltered: (unfiltered) OPTIONAL bool in query

    Responses:
        200: OK - ModelsChatMessageWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChatHistory.create(
        chat_id=chat_id,
        end_created_at=end_created_at,
        keyword=keyword,
        limit=limit,
        offset=offset,
        order=order,
        sender_user_id=sender_user_id,
        shard_id=shard_id,
        start_created_at=start_created_at,
        topic=topic,
        unfiltered=unfiltered,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminChatHistory)
async def admin_chat_history_async(
    chat_id: Optional[List[str]] = None,
    end_created_at: Optional[int] = None,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    sender_user_id: Optional[str] = None,
    shard_id: Optional[str] = None,
    start_created_at: Optional[int] = None,
    topic: Optional[List[str]] = None,
    unfiltered: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get chat history (adminChatHistory)

    Get chat history in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/chats

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        chat_id: (chatId) OPTIONAL List[str] in query

        end_created_at: (endCreatedAt) OPTIONAL int in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        sender_user_id: (senderUserId) OPTIONAL str in query

        shard_id: (shardId) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        topic: (topic) OPTIONAL List[str] in query

        unfiltered: (unfiltered) OPTIONAL bool in query

    Responses:
        200: OK - ModelsChatMessageWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminChatHistory.create(
        chat_id=chat_id,
        end_created_at=end_created_at,
        keyword=keyword,
        limit=limit,
        offset=offset,
        order=order,
        sender_user_id=sender_user_id,
        shard_id=shard_id,
        start_created_at=start_created_at,
        topic=topic,
        unfiltered=unfiltered,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateNamespaceTopic)
def admin_create_namespace_topic(
    body: ApiCreateNamespaceTopicParams,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to create namespace group. Message that send to this group send to connected user in a namespace (adminCreateNamespaceTopic)

    Create new namespace group topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/namespace-topic

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiCreateNamespaceTopicParams in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiCreateTopicResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateNamespaceTopic.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateNamespaceTopic)
async def admin_create_namespace_topic_async(
    body: ApiCreateNamespaceTopicParams,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to create namespace group. Message that send to this group send to connected user in a namespace (adminCreateNamespaceTopic)

    Create new namespace group topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/namespace-topic

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiCreateNamespaceTopicParams in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiCreateTopicResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateNamespaceTopic.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminCreateTopic)
def admin_create_topic(
    body: ApiCreateTopicParams,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to create group. Only group admin can use this operation (adminCreateTopic)

    Create new group topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiCreateTopicParams in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiCreateTopicResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateTopic.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateTopic)
async def admin_create_topic_async(
    body: ApiCreateTopicParams,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to create group. Only group admin can use this operation (adminCreateTopic)

    Create new group topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiCreateTopicParams in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ApiCreateTopicResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminCreateTopic.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteChat)
def admin_delete_chat(
    chat_id: str,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins delete chat (adminDeleteChat)

    Delete chat.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        chat_id: (chatId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteChat.create(
        chat_id=chat_id,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteChat)
async def admin_delete_chat_async(
    chat_id: str,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins delete chat (adminDeleteChat)

    Delete chat.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/chats/{chatId}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        chat_id: (chatId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteChat.create(
        chat_id=chat_id,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteTopic)
def admin_delete_topic(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to delete group. Only group admin can use this operation (adminDeleteTopic)

    Delete topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - MessageActionDeleteTopicResult
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTopic.create(
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteTopic)
async def admin_delete_topic_async(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to delete group. Only group admin can use this operation (adminDeleteTopic)

    Delete topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - MessageActionDeleteTopicResult
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteTopic.create(
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminFilterChatMessage)
def admin_filter_chat_message(
    body: ModelsMessageRequest,
    detail: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Return filtered chat message (adminFilterChatMessage)

    For testing purpose, doesn't send any message to the topic. Always do filter regardless of enableProfanityFilter configuration.

    Properties:
        url: /chat/admin/namespaces/{namespace}/chat/filter

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMessageRequest in body

        namespace: (namespace) REQUIRED str in path

        detail: (detail) OPTIONAL bool in query

    Responses:
        200: OK - ModelsMessageResultWithAttributes (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminFilterChatMessage.create(
        body=body,
        detail=detail,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminFilterChatMessage)
async def admin_filter_chat_message_async(
    body: ModelsMessageRequest,
    detail: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Return filtered chat message (adminFilterChatMessage)

    For testing purpose, doesn't send any message to the topic. Always do filter regardless of enableProfanityFilter configuration.

    Properties:
        url: /chat/admin/namespaces/{namespace}/chat/filter

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsMessageRequest in body

        namespace: (namespace) REQUIRED str in path

        detail: (detail) OPTIONAL bool in query

    Responses:
        200: OK - ModelsMessageResultWithAttributes (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminFilterChatMessage.create(
        body=body,
        detail=detail,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryTopic)
def admin_query_topic(
    include_members: Optional[bool] = None,
    include_past_members: Optional[bool] = None,
    include_past_topics: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic: Optional[List[str]] = None,
    topic_sub_type: Optional[Union[str, AdminQueryTopicTopicSubTypeEnum]] = None,
    topic_type: Optional[Union[str, AdminQueryTopicTopicTypeEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query topics (adminQueryTopic)

    Get topics in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topics

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        include_members: (includeMembers) OPTIONAL bool in query

        include_past_members: (includePastMembers) OPTIONAL bool in query

        include_past_topics: (includePastTopics) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic: (topic) OPTIONAL List[str] in query

        topic_sub_type: (topicSubType) OPTIONAL Union[str, TopicSubTypeEnum] in query

        topic_type: (topicType) OPTIONAL Union[str, TopicTypeEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsTopicInfo] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTopic.create(
        include_members=include_members,
        include_past_members=include_past_members,
        include_past_topics=include_past_topics,
        limit=limit,
        offset=offset,
        topic=topic,
        topic_sub_type=topic_sub_type,
        topic_type=topic_type,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryTopic)
async def admin_query_topic_async(
    include_members: Optional[bool] = None,
    include_past_members: Optional[bool] = None,
    include_past_topics: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic: Optional[List[str]] = None,
    topic_sub_type: Optional[Union[str, AdminQueryTopicTopicSubTypeEnum]] = None,
    topic_type: Optional[Union[str, AdminQueryTopicTopicTypeEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query topics (adminQueryTopic)

    Get topics in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topics

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        include_members: (includeMembers) OPTIONAL bool in query

        include_past_members: (includePastMembers) OPTIONAL bool in query

        include_past_topics: (includePastTopics) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic: (topic) OPTIONAL List[str] in query

        topic_sub_type: (topicSubType) OPTIONAL Union[str, TopicSubTypeEnum] in query

        topic_type: (topicType) OPTIONAL Union[str, TopicTypeEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsTopicInfo] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTopic.create(
        include_members=include_members,
        include_past_members=include_past_members,
        include_past_topics=include_past_topics,
        limit=limit,
        offset=offset,
        topic=topic,
        topic_sub_type=topic_sub_type,
        topic_type=topic_type,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryTopicLog)
def admin_query_topic_log(
    end_created_at: Optional[int] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sender_user_id: Optional[str] = None,
    start_created_at: Optional[int] = None,
    topic_id: Optional[str] = None,
    topic_ids: Optional[List[str]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query topic log (adminQueryTopicLog)

    Get chat log of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/log

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_created_at: (endCreatedAt) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sender_user_id: (senderUserId) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        topic_id: (topicId) OPTIONAL str in query

        topic_ids: (topicIds) OPTIONAL List[str] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsTopicLogWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTopicLog.create(
        end_created_at=end_created_at,
        limit=limit,
        offset=offset,
        sender_user_id=sender_user_id,
        start_created_at=start_created_at,
        topic_id=topic_id,
        topic_ids=topic_ids,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryTopicLog)
async def admin_query_topic_log_async(
    end_created_at: Optional[int] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    sender_user_id: Optional[str] = None,
    start_created_at: Optional[int] = None,
    topic_id: Optional[str] = None,
    topic_ids: Optional[List[str]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query topic log (adminQueryTopicLog)

    Get chat log of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/log

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_created_at: (endCreatedAt) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sender_user_id: (senderUserId) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        topic_id: (topicId) OPTIONAL str in query

        topic_ids: (topicIds) OPTIONAL List[str] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsTopicLogWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryTopicLog.create(
        end_created_at=end_created_at,
        limit=limit,
        offset=offset,
        sender_user_id=sender_user_id,
        start_created_at=start_created_at,
        topic_id=topic_id,
        topic_ids=topic_ids,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminQueryUsersTopic)
def admin_query_users_topic(
    user_id: str,
    include_past_topics: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_sub_type: Optional[Union[str, AdminQueryUsersTopicTopicSubTypeEnum]] = None,
    topic_type: Optional[Union[str, AdminQueryUsersTopicTopicTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query user's topics (adminQueryUsersTopic)

    Get user's topics in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/users/{userId}/topics

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        include_past_topics: (includePastTopics) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_sub_type: (topicSubType) OPTIONAL Union[str, TopicSubTypeEnum] in query

        topic_type: (topicType) OPTIONAL Union[str, TopicTypeEnum] in query

    Responses:
        200: OK - ModelsTopicLogWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryUsersTopic.create(
        user_id=user_id,
        include_past_topics=include_past_topics,
        limit=limit,
        offset=offset,
        topic_sub_type=topic_sub_type,
        topic_type=topic_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminQueryUsersTopic)
async def admin_query_users_topic_async(
    user_id: str,
    include_past_topics: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_sub_type: Optional[Union[str, AdminQueryUsersTopicTopicSubTypeEnum]] = None,
    topic_type: Optional[Union[str, AdminQueryUsersTopicTopicTypeEnum]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin query user's topics (adminQueryUsersTopic)

    Get user's topics in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/users/{userId}/topics

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        include_past_topics: (includePastTopics) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_sub_type: (topicSubType) OPTIONAL Union[str, TopicSubTypeEnum] in query

        topic_type: (topicType) OPTIONAL Union[str, TopicTypeEnum] in query

    Responses:
        200: OK - ModelsTopicLogWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminQueryUsersTopic.create(
        user_id=user_id,
        include_past_topics=include_past_topics,
        limit=limit,
        offset=offset,
        topic_sub_type=topic_sub_type,
        topic_type=topic_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminRemoveTopicMember)
def admin_remove_topic_member(
    topic: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin remove user from topic (adminRemoveTopicMember)

    Remove member from topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - MessageActionAddUserToTopicResult
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRemoveTopicMember.create(
        topic=topic,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminRemoveTopicMember)
async def admin_remove_topic_member_async(
    topic: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin remove user from topic (adminRemoveTopicMember)

    Remove member from topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/user/{userId}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - MessageActionAddUserToTopicResult
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminRemoveTopicMember.create(
        topic=topic,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSendChat)
def admin_send_chat(
    body: ApiSendChatParams,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins send chat to group topic (adminSendChat)

    Send message to chat topic as system.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/chats

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiSendChatParams in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - List[ModelsChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSendChat.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSendChat)
async def admin_send_chat_async(
    body: ApiSendChatParams,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins send chat to group topic (adminSendChat)

    Send message to chat topic as system.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/chats

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiSendChatParams in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - List[ModelsChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSendChat.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(AdminTopicChatHistory)
def admin_topic_chat_history(
    topic: str,
    end_created_at: Optional[int] = None,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    sender_user_id: Optional[str] = None,
    shard_id: Optional[str] = None,
    start_created_at: Optional[int] = None,
    unfiltered: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get chat history (adminTopicChatHistory)

    Get chat history in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/chats

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        end_created_at: (endCreatedAt) OPTIONAL int in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        sender_user_id: (senderUserId) OPTIONAL str in query

        shard_id: (shardId) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        unfiltered: (unfiltered) OPTIONAL bool in query

    Responses:
        200: OK - ModelsChatMessageWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicChatHistory.create(
        topic=topic,
        end_created_at=end_created_at,
        keyword=keyword,
        limit=limit,
        offset=offset,
        order=order,
        sender_user_id=sender_user_id,
        shard_id=shard_id,
        start_created_at=start_created_at,
        unfiltered=unfiltered,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AdminTopicChatHistory)
async def admin_topic_chat_history_async(
    topic: str,
    end_created_at: Optional[int] = None,
    keyword: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    sender_user_id: Optional[str] = None,
    shard_id: Optional[str] = None,
    start_created_at: Optional[int] = None,
    unfiltered: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get chat history (adminTopicChatHistory)

    Get chat history in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/chats

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        end_created_at: (endCreatedAt) OPTIONAL int in query

        keyword: (keyword) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        sender_user_id: (senderUserId) OPTIONAL str in query

        shard_id: (shardId) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        unfiltered: (unfiltered) OPTIONAL bool in query

    Responses:
        200: OK - ModelsChatMessageWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicChatHistory.create(
        topic=topic,
        end_created_at=end_created_at,
        keyword=keyword,
        limit=limit,
        offset=offset,
        order=order,
        sender_user_id=sender_user_id,
        shard_id=shard_id,
        start_created_at=start_created_at,
        unfiltered=unfiltered,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminTopicList)
def admin_topic_list(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get list of topic (adminTopicList)

    Get chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_type: (topicType) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsTopicResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicList.create(
        limit=limit,
        offset=offset,
        topic_type=topic_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminTopicList)
async def admin_topic_list_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get list of topic (adminTopicList)

    Get chat list of topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_type: (topicType) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsTopicResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicList.create(
        limit=limit,
        offset=offset,
        topic_type=topic_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminTopicMembers)
def admin_topic_members(
    topic: str,
    is_banned: Optional[bool] = None,
    is_moderator: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    shard_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get topic member (adminTopicMembers)

    Get topic members.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/members

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        is_banned: (isBanned) OPTIONAL bool in query

        is_moderator: (isModerator) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        shard_id: (shardId) OPTIONAL str in query

    Responses:
        200: OK - ModelsTopicMemberWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicMembers.create(
        topic=topic,
        is_banned=is_banned,
        is_moderator=is_moderator,
        limit=limit,
        offset=offset,
        shard_id=shard_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminTopicMembers)
async def admin_topic_members_async(
    topic: str,
    is_banned: Optional[bool] = None,
    is_moderator: Optional[bool] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    shard_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get topic member (adminTopicMembers)

    Get topic members.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/members

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        is_banned: (isBanned) OPTIONAL bool in query

        is_moderator: (isModerator) OPTIONAL bool in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        shard_id: (shardId) OPTIONAL str in query

    Responses:
        200: OK - ModelsTopicMemberWithPaginationResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicMembers.create(
        topic=topic,
        is_banned=is_banned,
        is_moderator=is_moderator,
        limit=limit,
        offset=offset,
        shard_id=shard_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminTopicShards)
def admin_topic_shards(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get shard list of topic (adminTopicShards)

    Get shard list from topic.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/shards

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - List[str] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicShards.create(
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminTopicShards)
async def admin_topic_shards_async(
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get shard list of topic (adminTopicShards)

    Get shard list from topic.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/shards

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - List[str] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminTopicShards.create(
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUnbanTopicMembers)
def admin_unban_topic_members(
    body: ModelsUnbanTopicMemberParam,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins unban user in group topic (adminUnbanTopicMembers)

    Unban users in some topic.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUnbanTopicMemberParam in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsUnbanTopicMemberResult (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnbanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUnbanTopicMembers)
async def admin_unban_topic_members_async(
    body: ModelsUnbanTopicMemberParam,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admins unban user in group topic (adminUnbanTopicMembers)

    Unban users in some topic.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}/unban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUnbanTopicMemberParam in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsUnbanTopicMemberResult (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnbanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateTopic)
def admin_update_topic(
    body: ApiUpdateTopicParams,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to update group information. Only group admin can use this operation (adminUpdateTopic)

    Update group topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}

        method: PUT

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiUpdateTopicParams in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ApiCreateTopicResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTopic.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateTopic)
async def admin_update_topic_async(
    body: ApiUpdateTopicParams,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Use to update group information. Only group admin can use this operation (adminUpdateTopic)

    Update group topic in a namespace.

    Properties:
        url: /chat/admin/namespaces/{namespace}/topic/{topic}

        method: PUT

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiUpdateTopicParams in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ApiCreateTopicResponse
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateTopic.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicBanTopicMembers)
def public_ban_topic_members(
    body: ModelsPublicBanTopicMembersRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public ban topic members in a group topic (publicBanTopicMembers)

    Ban topic members in a group topic.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/ban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicBanTopicMembersRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsPublicBanTopicMembersResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicBanTopicMembers)
async def public_ban_topic_members_async(
    body: ModelsPublicBanTopicMembersRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public ban topic members in a group topic (publicBanTopicMembers)

    Ban topic members in a group topic.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/ban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicBanTopicMembersRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsPublicBanTopicMembersResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicBanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicChatHistory)
def public_chat_history(
    topic: str,
    limit: Optional[int] = None,
    order: Optional[str] = None,
    start_created_at: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public get chat history (publicChatHistory)

    get chat history in a namespace.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/chats

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

    Responses:
        200: OK - List[ModelsChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicChatHistory.create(
        topic=topic,
        limit=limit,
        order=order,
        start_created_at=start_created_at,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicChatHistory)
async def public_chat_history_async(
    topic: str,
    limit: Optional[int] = None,
    order: Optional[str] = None,
    start_created_at: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public get chat history (publicChatHistory)

    get chat history in a namespace.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/chats

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

    Responses:
        200: OK - List[ModelsChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicChatHistory.create(
        topic=topic,
        limit=limit,
        order=order,
        start_created_at=start_created_at,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicDeleteChat)
def public_delete_chat(
    chat_id: str,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public delete chat (publicDeleteChat)

    Delete chat.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        chat_id: (chatId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeleteChat.create(
        chat_id=chat_id,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicDeleteChat)
async def public_delete_chat_async(
    chat_id: str,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public delete chat (publicDeleteChat)

    Delete chat.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/chats/{chatId}

        method: DELETE

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        chat_id: (chatId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicDeleteChat.create(
        chat_id=chat_id,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicGetMutedTopics)
def public_get_muted_topics(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public get muted at topics (publicGetMutedTopics)

    get chat muted topics in a namespace.

    Properties:
        url: /chat/public/namespaces/{namespace}/muted

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ApiMutedTopicResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMutedTopics.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicGetMutedTopics)
async def public_get_muted_topics_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public get muted at topics (publicGetMutedTopics)

    get chat muted topics in a namespace.

    Properties:
        url: /chat/public/namespaces/{namespace}/muted

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ApiMutedTopicResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicGetMutedTopics.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicMuteUser)
def public_mute_user(
    body: ApiMuteUserRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public mute user in a topic (publicMuteUser)

    Mute user.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/mute

        method: PUT

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMuteUserRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicMuteUser.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicMuteUser)
async def public_mute_user_async(
    body: ApiMuteUserRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public mute user in a topic (publicMuteUser)

    Mute user.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/mute

        method: PUT

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiMuteUserRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicMuteUser.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicTopicList)
def public_topic_list(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public get list of topic (publicTopicList)

    get chat list of topic in a namespace.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_type: (topicType) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicTopicList.create(
        limit=limit,
        offset=offset,
        topic_type=topic_type,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicTopicList)
async def public_topic_list_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    topic_type: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public get list of topic (publicTopicList)

    get chat list of topic in a namespace.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic

        method: GET

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        topic_type: (topicType) OPTIONAL str in query

    Responses:
        200: OK - List[ModelsChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicTopicList.create(
        limit=limit,
        offset=offset,
        topic_type=topic_type,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUnbanTopicMembers)
def public_unban_topic_members(
    body: ModelsPublicUnbanTopicMembersRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public unban topic members in a group topic (publicUnbanTopicMembers)

    Unban topic members in a group topic.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/unban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicUnbanTopicMembersRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsPublicUnbanTopicMembersResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUnbanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUnbanTopicMembers)
async def public_unban_topic_members_async(
    body: ModelsPublicUnbanTopicMembersRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public unban topic members in a group topic (publicUnbanTopicMembers)

    Unban topic members in a group topic.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/unban-members

        method: POST

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicUnbanTopicMembersRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        200: OK - ModelsPublicUnbanTopicMembersResponse

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUnbanTopicMembers.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicUnmuteUser)
def public_unmute_user(
    body: ApiUnmuteUserRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public unmute user in a topic (publicUnmuteUser)

    Unmute user.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/unmute

        method: PUT

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiUnmuteUserRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUnmuteUser.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicUnmuteUser)
async def public_unmute_user_async(
    body: ApiUnmuteUserRequest,
    topic: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """public unmute user in a topic (publicUnmuteUser)

    Unmute user.

    Properties:
        url: /chat/public/namespaces/{namespace}/topic/{topic}/unmute

        method: PUT

        tags: ["topic"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ApiUnmuteUserRequest in body

        namespace: (namespace) REQUIRED str in path

        topic: (topic) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicUnmuteUser.create(
        body=body,
        topic=topic,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
