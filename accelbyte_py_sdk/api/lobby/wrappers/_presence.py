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

from ..models import HandlersGetUsersPresenceResponse
from ..models import ModelRequestUserPresence
from ..models import RestapiErrorResponseBody

from ..operations.presence import UsersPresenceHandlerV1
from ..operations.presence import UsersPresenceHandlerV2


@same_doc_as(UsersPresenceHandlerV1)
def users_presence_handler_v1(
    user_ids: str,
    count_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query users presence (UsersPresenceHandlerV1)

    Query users presence with given namespace and userIds.

    Properties:
        url: /lobby/v1/public/presence/namespaces/{namespace}/users/presence

        method: GET

        tags: ["presence"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count_only: (countOnly) OPTIONAL bool in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - HandlersGetUsersPresenceResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UsersPresenceHandlerV1.create(
        user_ids=user_ids,
        count_only=count_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UsersPresenceHandlerV1)
async def users_presence_handler_v1_async(
    user_ids: str,
    count_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query users presence (UsersPresenceHandlerV1)

    Query users presence with given namespace and userIds.

    Properties:
        url: /lobby/v1/public/presence/namespaces/{namespace}/users/presence

        method: GET

        tags: ["presence"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        count_only: (countOnly) OPTIONAL bool in query

        user_ids: (userIds) REQUIRED str in query

    Responses:
        200: OK - HandlersGetUsersPresenceResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UsersPresenceHandlerV1.create(
        user_ids=user_ids,
        count_only=count_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UsersPresenceHandlerV2)
def users_presence_handler_v2(
    body: ModelRequestUserPresence,
    count_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query users presence (UsersPresenceHandlerV2)

    Query users presence with given namespace and userIds.

    Properties:
        url: /lobby/v1/public/presence/namespaces/{namespace}/users/presence

        method: POST

        tags: ["presence"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRequestUserPresence in body

        namespace: (namespace) REQUIRED str in path

        count_only: (countOnly) OPTIONAL bool in query

    Responses:
        200: OK - HandlersGetUsersPresenceResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UsersPresenceHandlerV2.create(
        body=body,
        count_only=count_only,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UsersPresenceHandlerV2)
async def users_presence_handler_v2_async(
    body: ModelRequestUserPresence,
    count_only: Optional[bool] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query users presence (UsersPresenceHandlerV2)

    Query users presence with given namespace and userIds.

    Properties:
        url: /lobby/v1/public/presence/namespaces/{namespace}/users/presence

        method: POST

        tags: ["presence"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelRequestUserPresence in body

        namespace: (namespace) REQUIRED str in path

        count_only: (countOnly) OPTIONAL bool in query

    Responses:
        200: OK - HandlersGetUsersPresenceResponse (OK)

        400: Bad Request - RestapiErrorResponseBody (Bad Request)

        401: Unauthorized - RestapiErrorResponseBody (Unauthorized)

        500: Internal Server Error - RestapiErrorResponseBody (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UsersPresenceHandlerV2.create(
        body=body,
        count_only=count_only,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
