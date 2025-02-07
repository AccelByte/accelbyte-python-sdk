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

from ..models import ModelsAddInboxCategoryRequest
from ..models import ModelsAddInboxCategoryResponse
from ..models import ModelsGetInboxCategoriesResponseItem
from ..models import ModelsGetInboxMessagesResponse
from ..models import ModelsGetInboxStatsResponse
from ..models import ModelsGetInboxUsersResponse
from ..models import ModelsJSONSchemaType
from ..models import ModelsSaveInboxMessageRequest
from ..models import ModelsSaveInboxMessageResponse
from ..models import ModelsSendInboxMessageRequest
from ..models import ModelsSendInboxMessageResponse
from ..models import ModelsUnsendInboxMessageRequest
from ..models import ModelsUnsendInboxMessageResponse
from ..models import ModelsUpdateInboxCategoryRequest
from ..models import ModelsUpdateInboxMessageRequest
from ..models import RestapiErrorResponseBody

from ..operations.inbox import AdminAddInboxCategory
from ..operations.inbox import AdminDeleteInboxCategory
from ..operations.inbox import AdminDeleteInboxMessage
from ..operations.inbox import AdminGetCategorySchema
from ..operations.inbox import AdminGetInboxCategories
from ..operations.inbox import AdminGetInboxMessages
from ..operations.inbox import (
    AdminGetInboxMessagesScopeEnum,
    AdminGetInboxMessagesStatusEnum,
)
from ..operations.inbox import AdminGetInboxStats
from ..operations.inbox import AdminGetInboxUsers
from ..operations.inbox import AdminGetInboxUsersStatusEnum
from ..operations.inbox import AdminSaveInboxMessage
from ..operations.inbox import AdminSendInboxMessage
from ..operations.inbox import AdminUnsendInboxMessage
from ..operations.inbox import AdminUpdateInboxCategory
from ..operations.inbox import AdminUpdateInboxMessage
from ..models import (
    ModelsSaveInboxMessageRequestScopeEnum,
    ModelsSaveInboxMessageRequestStatusEnum,
)
from ..models import (
    ModelsSaveInboxMessageResponseScopeEnum,
    ModelsSaveInboxMessageResponseStatusEnum,
)
from ..models import ModelsUpdateInboxMessageRequestScopeEnum


@same_doc_as(AdminAddInboxCategory)
def admin_add_inbox_category(
    body: ModelsAddInboxCategoryRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """add inbox category (adminAddInboxCategory)

    Add inbox category.

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAddInboxCategoryRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAddInboxCategoryResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddInboxCategory.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminAddInboxCategory)
async def admin_add_inbox_category_async(
    body: ModelsAddInboxCategoryRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """add inbox category (adminAddInboxCategory)

    Add inbox category.

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsAddInboxCategoryRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsAddInboxCategoryResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminAddInboxCategory.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteInboxCategory)
def admin_delete_inbox_category(
    category: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin delete inbox category (adminDeleteInboxCategory)

    Delete inbox category

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}

        method: DELETE

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category: (category) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteInboxCategory.create(
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteInboxCategory)
async def admin_delete_inbox_category_async(
    category: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin delete inbox category (adminDeleteInboxCategory)

    Delete inbox category

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}

        method: DELETE

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category: (category) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteInboxCategory.create(
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteInboxMessage)
def admin_delete_inbox_message(
    message_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin delete inbox message (adminDeleteInboxMessage)

    Delete inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}

        method: DELETE

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        message_id: (messageId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteInboxMessage.create(
        message_id=message_id,
        force=force,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteInboxMessage)
async def admin_delete_inbox_message_async(
    message_id: str,
    force: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin delete inbox message (adminDeleteInboxMessage)

    Delete inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/message/{messageId}

        method: DELETE

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        message_id: (messageId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        force: (force) OPTIONAL bool in query

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminDeleteInboxMessage.create(
        message_id=message_id,
        force=force,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetCategorySchema)
def admin_get_category_schema(
    category: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get category schema (adminGetCategorySchema)

    Get category schema.

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category: (category) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsJSONSchemaType (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetCategorySchema.create(
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetCategorySchema)
async def admin_get_category_schema_async(
    category: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get category schema (adminGetCategorySchema)

    Get category schema.

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}/schema.json

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        category: (category) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsJSONSchemaType (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetCategorySchema.create(
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInboxCategories)
def admin_get_inbox_categories(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox categories (adminGetInboxCategories)

    Get inbox categories

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsGetInboxCategoriesResponseItem] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxCategories.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInboxCategories)
async def admin_get_inbox_categories_async(
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox categories (adminGetInboxCategories)

    Get inbox categories

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelsGetInboxCategoriesResponseItem] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxCategories.create(
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInboxMessages)
def admin_get_inbox_messages(
    active_only: Optional[bool] = None,
    end_created_at: Optional[int] = None,
    limit: Optional[int] = None,
    message_id: Optional[List[str]] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    scope: Optional[Union[str, AdminGetInboxMessagesScopeEnum]] = None,
    start_created_at: Optional[int] = None,
    status: Optional[Union[str, AdminGetInboxMessagesStatusEnum]] = None,
    transient: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox messages (adminGetInboxMessages)

    Get inbox messages

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        end_created_at: (endCreatedAt) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        message_id: (messageId) OPTIONAL List[str] in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        scope: (scope) OPTIONAL Union[str, ScopeEnum] in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        transient: (transient) OPTIONAL bool in query

    Responses:
        200: OK - ModelsGetInboxMessagesResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxMessages.create(
        active_only=active_only,
        end_created_at=end_created_at,
        limit=limit,
        message_id=message_id,
        offset=offset,
        order=order,
        scope=scope,
        start_created_at=start_created_at,
        status=status,
        transient=transient,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInboxMessages)
async def admin_get_inbox_messages_async(
    active_only: Optional[bool] = None,
    end_created_at: Optional[int] = None,
    limit: Optional[int] = None,
    message_id: Optional[List[str]] = None,
    offset: Optional[int] = None,
    order: Optional[str] = None,
    scope: Optional[Union[str, AdminGetInboxMessagesScopeEnum]] = None,
    start_created_at: Optional[int] = None,
    status: Optional[Union[str, AdminGetInboxMessagesStatusEnum]] = None,
    transient: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox messages (adminGetInboxMessages)

    Get inbox messages

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        end_created_at: (endCreatedAt) OPTIONAL int in query

        limit: (limit) OPTIONAL int in query

        message_id: (messageId) OPTIONAL List[str] in query

        offset: (offset) OPTIONAL int in query

        order: (order) OPTIONAL str in query

        scope: (scope) OPTIONAL Union[str, ScopeEnum] in query

        start_created_at: (startCreatedAt) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        transient: (transient) OPTIONAL bool in query

    Responses:
        200: OK - ModelsGetInboxMessagesResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxMessages.create(
        active_only=active_only,
        end_created_at=end_created_at,
        limit=limit,
        message_id=message_id,
        offset=offset,
        order=order,
        scope=scope,
        start_created_at=start_created_at,
        status=status,
        transient=transient,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInboxStats)
def admin_get_inbox_stats(
    message_id: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox stats (adminGetInboxStats)

    Get inbox stats

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/stats

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        message_id: (messageId) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsGetInboxStatsResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxStats.create(
        message_id=message_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInboxStats)
async def admin_get_inbox_stats_async(
    message_id: Optional[List[str]] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox stats (adminGetInboxStats)

    Get inbox stats

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/stats

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        message_id: (messageId) OPTIONAL List[str] in query

    Responses:
        200: OK - ModelsGetInboxStatsResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxStats.create(
        message_id=message_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetInboxUsers)
def admin_get_inbox_users(
    inbox: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, AdminGetInboxUsersStatusEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox users (adminGetInboxUsers)

    Get inbox users

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inbox: (inbox) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsGetInboxUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxUsers.create(
        inbox=inbox,
        limit=limit,
        offset=offset,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetInboxUsers)
async def admin_get_inbox_users_async(
    inbox: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    status: Optional[Union[str, AdminGetInboxUsersStatusEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get inbox users (adminGetInboxUsers)

    Get inbox users

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/users

        method: GET

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inbox: (inbox) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - ModelsGetInboxUsersResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminGetInboxUsers.create(
        inbox=inbox,
        limit=limit,
        offset=offset,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSaveInboxMessage)
def admin_save_inbox_message(
    body: ModelsSaveInboxMessageRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin save inbox message (adminSaveInboxMessage)

    Save inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSaveInboxMessageRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSaveInboxMessageResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSaveInboxMessage.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSaveInboxMessage)
async def admin_save_inbox_message_async(
    body: ModelsSaveInboxMessageRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin save inbox message (adminSaveInboxMessage)

    Save inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSaveInboxMessageRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSaveInboxMessageResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSaveInboxMessage.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminSendInboxMessage)
def admin_send_inbox_message(
    body: ModelsSendInboxMessageRequest,
    message_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin send inbox message (adminSendInboxMessage)

    Send inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSendInboxMessageRequest in body

        message_id: (messageId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSendInboxMessageResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSendInboxMessage.create(
        body=body,
        message_id=message_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminSendInboxMessage)
async def admin_send_inbox_message_async(
    body: ModelsSendInboxMessageRequest,
    message_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin send inbox message (adminSendInboxMessage)

    Send inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}/send

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsSendInboxMessageRequest in body

        message_id: (messageId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsSendInboxMessageResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminSendInboxMessage.create(
        body=body,
        message_id=message_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUnsendInboxMessage)
def admin_unsend_inbox_message(
    body: ModelsUnsendInboxMessageRequest,
    inbox: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin unsend inbox message (adminUnsendInboxMessage)

    Unsend inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUnsendInboxMessageRequest in body

        inbox: (inbox) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUnsendInboxMessageResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnsendInboxMessage.create(
        body=body,
        inbox=inbox,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUnsendInboxMessage)
async def admin_unsend_inbox_message_async(
    body: ModelsUnsendInboxMessageRequest,
    inbox: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin unsend inbox message (adminUnsendInboxMessage)

    Unsend inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{inbox}/unsend

        method: POST

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUnsendInboxMessageRequest in body

        inbox: (inbox) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsUnsendInboxMessageResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUnsendInboxMessage.create(
        body=body,
        inbox=inbox,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateInboxCategory)
def admin_update_inbox_category(
    body: ModelsUpdateInboxCategoryRequest,
    category: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update inbox category (adminUpdateInboxCategory)

    Update inbox category

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}

        method: PATCH

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateInboxCategoryRequest in body

        category: (category) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInboxCategory.create(
        body=body,
        category=category,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateInboxCategory)
async def admin_update_inbox_category_async(
    body: ModelsUpdateInboxCategoryRequest,
    category: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update inbox category (adminUpdateInboxCategory)

    Update inbox category

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/categories/{category}

        method: PATCH

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateInboxCategoryRequest in body

        category: (category) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInboxCategory.create(
        body=body,
        category=category,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateInboxMessage)
def admin_update_inbox_message(
    body: ModelsUpdateInboxMessageRequest,
    message_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update inbox message (adminUpdateInboxMessage)

    Update inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}

        method: PATCH

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateInboxMessageRequest in body

        message_id: (messageId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInboxMessage.create(
        body=body,
        message_id=message_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateInboxMessage)
async def admin_update_inbox_message_async(
    body: ModelsUpdateInboxMessageRequest,
    message_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin update inbox message (adminUpdateInboxMessage)

    Update inbox message

    Properties:
        url: /chat/v1/admin/inbox/namespaces/{namespace}/messages/{messageId}

        method: PATCH

        tags: ["inbox"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateInboxMessageRequest in body

        message_id: (messageId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = AdminUpdateInboxMessage.create(
        body=body,
        message_id=message_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
