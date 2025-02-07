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

from ..models import ModelsChannelResponse
from ..models import ModelsPaginatedGetChannelResponse
from ..models import ModelsPublicChannelRequest
from ..models import ModelsUpdateChannelRequest
from ..models import ResponseError

from ..operations.public_channel import DeleteChannel
from ..operations.public_channel import GetChannels
from ..operations.public_channel import PublicCreateChannel
from ..operations.public_channel import UpdateChannel


@same_doc_as(DeleteChannel)
def delete_channel(
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Channel (DeleteChannel)

    Delete user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: DELETE

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Channel deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772502: Channel not found)

        500: Internal Server Error - ResponseError (772501: Unable to delete channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteChannel.create(
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(DeleteChannel)
async def delete_channel_async(
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Delete Channel (DeleteChannel)

    Delete user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: DELETE

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        204: No Content - (Channel deleted)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (772502: Channel not found)

        500: Internal Server Error - ResponseError (772501: Unable to delete channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = DeleteChannel.create(
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetChannels)
def get_channels(
    user_id: str,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Channels (GetChannels)

    Get user channel paginated

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels

        method: GET

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetChannelResponse (Channel in namespace-level retrieved)

        400: Bad Request - ResponseError (770702: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770700: Unable get user channels)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChannels.create(
        user_id=user_id,
        limit=limit,
        name=name,
        offset=offset,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetChannels)
async def get_channels_async(
    user_id: str,
    limit: Optional[int] = None,
    name: Optional[str] = None,
    offset: Optional[int] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Channels (GetChannels)

    Get user channel paginated

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels

        method: GET

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        name: (name) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ModelsPaginatedGetChannelResponse (Channel in namespace-level retrieved)

        400: Bad Request - ResponseError (770702: invalid paging parameter)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770700: Unable get user channels)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetChannels.create(
        user_id=user_id,
        limit=limit,
        name=name,
        offset=offset,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(PublicCreateChannel)
def public_create_channel(
    body: ModelsPublicChannelRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Channel (PublicCreateChannel)

    Create user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels

        method: POST

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicChannelRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsChannelResponse (channel created)

        400: Bad Request - ResponseError (770500: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770502: Unable to save channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateChannel.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(PublicCreateChannel)
async def public_create_channel_async(
    body: ModelsPublicChannelRequest,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Create Channel (PublicCreateChannel)

    Create user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels

        method: POST

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsPublicChannelRequest in body

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        201: Created - ModelsChannelResponse (channel created)

        400: Bad Request - ResponseError (770500: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        500: Internal Server Error - ResponseError (770502: Unable to save channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = PublicCreateChannel.create(
        body=body,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(UpdateChannel)
def update_channel(
    body: ModelsUpdateChannelRequest,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Channel (UpdateChannel)

    Update user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: PUT

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateChannelRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelResponse (Channel updated)

        400: Bad Request - ResponseError (770600: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770603: Channel was not found)

        500: Internal Server Error - ResponseError (770602: Unable to save channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateChannel.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(UpdateChannel)
async def update_channel_async(
    body: ModelsUpdateChannelRequest,
    channel_id: str,
    user_id: str,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Update Channel (UpdateChannel)

    Update user channel

    Properties:
        url: /ugc/v1/public/namespaces/{namespace}/users/{userId}/channels/{channelId}

        method: PUT

        tags: ["Public Channel"]

        consumes: ["application/json", "application/octet-stream"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsUpdateChannelRequest in body

        channel_id: (channelId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

    Responses:
        200: OK - ModelsChannelResponse (Channel updated)

        400: Bad Request - ResponseError (770600: Invalid request body)

        401: Unauthorized - ResponseError (20001: unauthorized access)

        404: Not Found - ResponseError (770603: Channel was not found)

        500: Internal Server Error - ResponseError (770602: Unable to save channel)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = UpdateChannel.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
