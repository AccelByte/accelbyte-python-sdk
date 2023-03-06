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

from ..models import ModelsChannelRequest
from ..models import ModelsChannelResponse
from ..models import ModelsPaginatedGetChannelResponse
from ..models import ResponseError

from ..operations.admin_channel import AdminCreateChannel
from ..operations.admin_channel import AdminDeleteChannel
from ..operations.admin_channel import AdminGetChannel
from ..operations.admin_channel import AdminUpdateChannel
from ..operations.admin_channel import SingleAdminDeleteChannel
from ..operations.admin_channel import SingleAdminGetChannel
from ..operations.admin_channel import SingleAdminUpdateChannel


@same_doc_as(AdminCreateChannel)
def admin_create_channel(
    body: ModelsChannelRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Channel (AdminCreateChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels

        method: POST

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsChannelResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateChannel.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminCreateChannel)
async def admin_create_channel_async(
    body: ModelsChannelRequest,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Channel (AdminCreateChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels

        method: POST

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        201: Created - ModelsChannelResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminCreateChannel.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminDeleteChannel)
def admin_delete_channel(
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Channel (AdminDeleteChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: DELETE

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteChannel.create(
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminDeleteChannel)
async def admin_delete_channel_async(
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Channel (AdminDeleteChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: DELETE

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminDeleteChannel.create(
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminGetChannel)
def admin_get_channel(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Channels (AdminGetChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels

        method: GET

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetChannelResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetChannel.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminGetChannel)
async def admin_get_channel_async(
    user_id: str,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Channels (AdminGetChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels

        method: GET

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetChannelResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetChannel.create(
        user_id=user_id,
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(AdminUpdateChannel)
def admin_update_channel(
    body: ModelsChannelRequest,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Channel (AdminUpdateChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: PUT

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateChannel.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(AdminUpdateChannel)
async def admin_update_channel_async(
    body: ModelsChannelRequest,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Channel (AdminUpdateChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: PUT

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminUpdateChannel.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminDeleteChannel)
def single_admin_delete_channel(
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Channel (SingleAdminDeleteChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}

        method: DELETE

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SingleAdminDeleteChannel.create(
        channel_id=channel_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminDeleteChannel)
async def single_admin_delete_channel_async(
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Channel (SingleAdminDeleteChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}

        method: DELETE

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SingleAdminDeleteChannel.create(
        channel_id=channel_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminGetChannel)
def single_admin_get_channel(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Channels (SingleAdminGetChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels

        method: GET

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetChannelResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SingleAdminGetChannel.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminGetChannel)
async def single_admin_get_channel_async(
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Channels (SingleAdminGetChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels

        method: GET

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetChannelResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SingleAdminGetChannel.create(
        limit=limit,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(SingleAdminUpdateChannel)
def single_admin_update_channel(
    body: ModelsChannelRequest,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Channel (SingleAdminUpdateChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}

        method: PUT

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SingleAdminUpdateChannel.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(SingleAdminUpdateChannel)
async def single_admin_update_channel_async(
    body: ModelsChannelRequest,
    channel_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Channel (SingleAdminUpdateChannel)

    Required permission ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Properties:
        url: /ugc/v1/admin/namespaces/{namespace}/channels/{channelId}

        method: PUT

        tags: ["Admin Channel"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsChannelRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelResponse (OK)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = SingleAdminUpdateChannel.create(
        body=body,
        channel_id=channel_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
