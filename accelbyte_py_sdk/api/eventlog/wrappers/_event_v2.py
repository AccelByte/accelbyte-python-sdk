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

from ..models import ModelsEventResponseV2
from ..models import ModelsGenericQueryPayload

from ..operations.event_v2 import GetEventSpecificUserV2Handler
from ..operations.event_v2 import GetPublicEditHistory
from ..operations.event_v2 import GetUserEventsV2Public
from ..operations.event_v2 import QueryEventStreamHandler


@same_doc_as(GetEventSpecificUserV2Handler)
def get_event_specific_user_v2_handler(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get events from a specific user (GetEventSpecificUserV2Handler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/v2/admin/namespaces/{namespace}/users/{userId}/event

        method: GET

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        event_name: (eventName) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventSpecificUserV2Handler.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetEventSpecificUserV2Handler)
async def get_event_specific_user_v2_handler_async(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get events from a specific user (GetEventSpecificUserV2Handler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/v2/admin/namespaces/{namespace}/users/{userId}/event

        method: GET

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        event_name: (eventName) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventSpecificUserV2Handler.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetPublicEditHistory)
def get_public_edit_history(
    user_id: str,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a user edit history based on the provided type (GetPublicEditHistory)

    Available Type:






      * email


      * password


      * displayname


      * dateofbirth


      * country


      * language





    Requires a valid user access token

    Properties:
        url: /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory

        method: GET

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Not Implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublicEditHistory.create(
        user_id=user_id,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        type_=type_,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetPublicEditHistory)
async def get_public_edit_history_async(
    user_id: str,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    type_: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get a user edit history based on the provided type (GetPublicEditHistory)

    Available Type:






      * email


      * password


      * displayname


      * dateofbirth


      * country


      * language





    Requires a valid user access token

    Properties:
        url: /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory

        method: GET

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Not Implemented)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetPublicEditHistory.create(
        user_id=user_id,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        type_=type_,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetUserEventsV2Public)
def get_user_events_v2_public(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get events from a specific user (GetUserEventsV2Public)

    Requires valid user access token

    Properties:
        url: /event/v2/public/namespaces/{namespace}/users/{userId}/event

        method: GET

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        event_name: (eventName) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEventsV2Public.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetUserEventsV2Public)
async def get_user_events_v2_public_async(
    user_id: str,
    end_date: Optional[str] = None,
    event_name: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get events from a specific user (GetUserEventsV2Public)

    Requires valid user access token

    Properties:
        url: /event/v2/public/namespaces/{namespace}/users/{userId}/event

        method: GET

        tags: ["Event V2"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        event_name: (eventName) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetUserEventsV2Public.create(
        user_id=user_id,
        end_date=end_date,
        event_name=event_name,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryEventStreamHandler)
def query_event_stream_handler(
    body: ModelsGenericQueryPayload,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """A generic query to get a set of events based on the provided filters (QueryEventStreamHandler)

    This endpoint is using POST which is somewhat unfamiliar,
    but it's logical that we have to send/post a filter (search term) in order to get the data.




    This endpoint will not return anything if you give it an empty filters in the request body.




    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]` and scope `"+scope+"`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Properties:
        url: /event/v2/admin/namespaces/{namespace}/query

        method: POST

        tags: ["Event V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenericQueryPayload in body

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEventStreamHandler.create(
        body=body,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryEventStreamHandler)
async def query_event_stream_handler_async(
    body: ModelsGenericQueryPayload,
    end_date: Optional[str] = None,
    offset: Optional[int] = None,
    page_size: Optional[int] = None,
    start_date: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """A generic query to get a set of events based on the provided filters (QueryEventStreamHandler)

    This endpoint is using POST which is somewhat unfamiliar,
    but it's logical that we have to send/post a filter (search term) in order to get the data.




    This endpoint will not return anything if you give it an empty filters in the request body.




    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]` and scope `"+scope+"`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Properties:
        url: /event/v2/admin/namespaces/{namespace}/query

        method: POST

        tags: ["Event V2"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsGenericQueryPayload in body

        namespace: (namespace) REQUIRED str in path

        end_date: (endDate) OPTIONAL str in query

        offset: (offset) OPTIONAL int in query

        page_size: (pageSize) OPTIONAL int in query

        start_date: (startDate) OPTIONAL str in query

    Responses:
        200: OK - ModelsEventResponseV2 (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)

        501: Not Implemented - (Internal Server Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = QueryEventStreamHandler.create(
        body=body,
        end_date=end_date,
        offset=offset,
        page_size=page_size,
        start_date=start_date,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
