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

from ..models import ModelChatMessageResponse
from ..models import RestapiErrorResponseBody

from ..operations.chat import AdminChatHistory
from ..operations.chat import GetPersonalChatHistoryV1Public
from ..operations.chat import PersonalChatHistory


@same_doc_as(AdminChatHistory)
def admin_chat_history(
    friend_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get chat history (adminChatHistory)

    Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

    get chat history in a namespace.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/chat/namespaces/{namespace}/users/{userId}/friends/{friendId}

        method: GET

        tags: ["chat"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminChatHistory.create(
        friend_id=friend_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminChatHistory)
async def admin_chat_history_async(
    friend_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """admin get chat history (adminChatHistory)

    Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

    get chat history in a namespace.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/v1/admin/chat/namespaces/{namespace}/users/{userId}/friends/{friendId}

        method: GET

        tags: ["chat"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminChatHistory.create(
        friend_id=friend_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPersonalChatHistoryV1Public)
def get_personal_chat_history_v1_public(
    friend_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """load personal chat history (getPersonalChatHistoryV1Public)

    Required valid user authorization


    load personal chat history in a namespace based on Friend User ID

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}

        method: GET

        tags: ["chat"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPersonalChatHistoryV1Public.create(
        friend_id=friend_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPersonalChatHistoryV1Public)
async def get_personal_chat_history_v1_public_async(
    friend_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """load personal chat history (getPersonalChatHistoryV1Public)

    Required valid user authorization


    load personal chat history in a namespace based on Friend User ID

    Action Code: 50101

    Properties:
        url: /lobby/v1/public/chat/namespaces/{namespace}/users/me/friends/{friendId}

        method: GET

        tags: ["chat"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - List[ModelChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPersonalChatHistoryV1Public.create(
        friend_id=friend_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PersonalChatHistory)
def personal_chat_history(
    friend_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """load personal chat history (personalChatHistory)

    Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

    load personal chat history in a namespace.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}

        method: GET

        tags: ["chat", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PersonalChatHistory.create(
        friend_id=friend_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PersonalChatHistory)
async def personal_chat_history_async(
    friend_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """load personal chat history (personalChatHistory)

    Required permission : `NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]` with scope `social`

    load personal chat history in a namespace.

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHAT [READ]

    Required Scope(s):
        - social

    Properties:
        url: /lobby/chat/namespaces/{namespace}/users/{userId}/friend/{friendId}

        method: GET

        tags: ["chat", "public"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        friend_id: (friendId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - List[ModelChatMessageResponse] (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        403: Forbidden - RestapiErrorResponseBody (Forbidden)

        404: Not Found - RestapiErrorResponseBody (Not Found)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = PersonalChatHistory.create(
        friend_id=friend_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
