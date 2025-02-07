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

from ..models import ClawbackInfo
from ..models import IAPClawbackPagingSlicedResult
from ..models import StreamEvent
from ..models import XblClawbackEvent

from ..operations.clawback import MockPlayStationStreamEvent
from ..operations.clawback import MockXblClawbackEvent
from ..operations.clawback import QueryIAPClawbackHistory
from ..operations.clawback import (
    QueryIAPClawbackHistoryEventTypeEnum,
    QueryIAPClawbackHistoryStatusEnum,
)
from ..models import ClawbackInfoFeedbackStatusEnum, ClawbackInfoStatusEnum


@same_doc_as(MockPlayStationStreamEvent)
def mock_play_station_stream_event(
    body: Optional[StreamEvent] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock Sync PlayStation Clawback event. (mockPlayStationStreamEvent)

    Mock Sync PlayStation Clawback event..

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock

        method: POST

        tags: ["Clawback"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL StreamEvent in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClawbackInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = MockPlayStationStreamEvent.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MockPlayStationStreamEvent)
async def mock_play_station_stream_event_async(
    body: Optional[StreamEvent] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock Sync PlayStation Clawback event. (mockPlayStationStreamEvent)

    Mock Sync PlayStation Clawback event..

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/clawback/playstation/mock

        method: POST

        tags: ["Clawback"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL StreamEvent in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClawbackInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = MockPlayStationStreamEvent.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(MockXblClawbackEvent)
def mock_xbl_clawback_event(
    body: Optional[XblClawbackEvent] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock Sync XBox Clawback event. (mockXblClawbackEvent)

    Mock Sync XBox Clawback event.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/clawback/xbl/mock

        method: POST

        tags: ["Clawback"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblClawbackEvent in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClawbackInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = MockXblClawbackEvent.create(
        body=body,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(MockXblClawbackEvent)
async def mock_xbl_clawback_event_async(
    body: Optional[XblClawbackEvent] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Mock Sync XBox Clawback event. (mockXblClawbackEvent)

    Mock Sync XBox Clawback event.

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/clawback/xbl/mock

        method: POST

        tags: ["Clawback"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) OPTIONAL XblClawbackEvent in body

        namespace: (namespace) REQUIRED str in path

    Responses:
        200: OK - ClawbackInfo (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = MockXblClawbackEvent.create(
        body=body,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(QueryIAPClawbackHistory)
def query_iap_clawback_history(
    end_time: Optional[str] = None,
    event_type: Optional[Union[str, QueryIAPClawbackHistoryEventTypeEnum]] = None,
    external_order_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryIAPClawbackHistoryStatusEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query clawback history (queryIAPClawbackHistory)

    Query clawback history.
    Other detail info:

      * Returns : paginated clawback history

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/clawback/histories

        method: GET

        tags: ["Clawback"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        event_type: (eventType) OPTIONAL Union[str, EventTypeEnum] in query

        external_order_id: (externalOrderId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - IAPClawbackPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryIAPClawbackHistory.create(
        end_time=end_time,
        event_type=event_type,
        external_order_id=external_order_id,
        limit=limit,
        offset=offset,
        start_time=start_time,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(QueryIAPClawbackHistory)
async def query_iap_clawback_history_async(
    end_time: Optional[str] = None,
    event_type: Optional[Union[str, QueryIAPClawbackHistoryEventTypeEnum]] = None,
    external_order_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    status: Optional[Union[str, QueryIAPClawbackHistoryStatusEnum]] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Query clawback history (queryIAPClawbackHistory)

    Query clawback history.
    Other detail info:

      * Returns : paginated clawback history

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/clawback/histories

        method: GET

        tags: ["Clawback"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        event_type: (eventType) OPTIONAL Union[str, EventTypeEnum] in query

        external_order_id: (externalOrderId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - IAPClawbackPagingSlicedResult (successful operation)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = QueryIAPClawbackHistory.create(
        end_time=end_time,
        event_type=event_type,
        external_order_id=external_order_id,
        limit=limit,
        offset=offset,
        start_time=start_time,
        status=status,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
