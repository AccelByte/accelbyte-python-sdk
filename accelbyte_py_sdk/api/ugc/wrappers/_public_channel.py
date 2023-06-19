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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

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
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [DELETE]

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
        204: No Content - (No Content)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

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
        200: OK - ModelsPaginatedGetChannelResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [READ]

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
        200: OK - ModelsPaginatedGetChannelResponse (OK)

        401: Unauthorized - ResponseError (Unauthorized)

        404: Not Found - ResponseError (Not Found)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

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
        201: Created - ModelsChannelResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [CREATE]

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
        201: Created - ModelsChannelResponse (Created)

        400: Bad Request - ResponseError (Bad Request)

        401: Unauthorized - ResponseError (Unauthorized)

        500: Internal Server Error - ResponseError (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

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

    Required permission NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

    Required Permission(s):
        - NAMESPACE:{namespace}:USER:{userId}:CHANNEL [UPDATE]

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
    request = UpdateChannel.create(
        body=body,
        channel_id=channel_id,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
