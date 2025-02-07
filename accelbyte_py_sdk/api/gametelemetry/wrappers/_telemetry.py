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

from ..models import BaseErrorResponse
from ..models import HTTPValidationError
from ..models import ListBaseResponseStr
from ..models import PagedResponseGetNamespaceEventResponse

from ..operations.telemetry import (
    GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet,
)
from ..operations.telemetry import GetNamespacesGameTelemetryV1AdminNamespacesGet


@same_doc_as(GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet)
def get_events_game_telemetry_v1_admin_namespaces_namespace_events_get(
    device_type: Optional[str] = None,
    end_time: Optional[str] = None,
    event_id: Optional[str] = None,
    event_name: Optional[str] = None,
    event_payload: Optional[str] = None,
    flight_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Events (get_events_game_telemetry_v1_admin_namespaces__namespace__events_get)

    This endpoint requires valid JWT token and telemetry permission
    This endpoint retrieves event list

    Properties:
        url: /game-telemetry/v1/admin/namespaces/{namespace}/events

        method: GET

        tags: ["telemetry"]

        consumes: []

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        device_type: (deviceType) OPTIONAL str in query

        end_time: (endTime) OPTIONAL str in query

        event_id: (eventId) OPTIONAL str in query

        event_name: (eventName) OPTIONAL str in query

        event_payload: (eventPayload) OPTIONAL str in query

        flight_id: (flightId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - PagedResponseGetNamespaceEventResponse (Successful Response)

        400: Bad Request - BaseErrorResponse (Bad Request)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet.create(
        device_type=device_type,
        end_time=end_time,
        event_id=event_id,
        event_name=event_name,
        event_payload=event_payload,
        flight_id=flight_id,
        limit=limit,
        offset=offset,
        start_time=start_time,
        user_id=user_id,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet)
async def get_events_game_telemetry_v1_admin_namespaces_namespace_events_get_async(
    device_type: Optional[str] = None,
    end_time: Optional[str] = None,
    event_id: Optional[str] = None,
    event_name: Optional[str] = None,
    event_payload: Optional[str] = None,
    flight_id: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    user_id: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get Events (get_events_game_telemetry_v1_admin_namespaces__namespace__events_get)

    This endpoint requires valid JWT token and telemetry permission
    This endpoint retrieves event list

    Properties:
        url: /game-telemetry/v1/admin/namespaces/{namespace}/events

        method: GET

        tags: ["telemetry"]

        consumes: []

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        device_type: (deviceType) OPTIONAL str in query

        end_time: (endTime) OPTIONAL str in query

        event_id: (eventId) OPTIONAL str in query

        event_name: (eventName) OPTIONAL str in query

        event_payload: (eventPayload) OPTIONAL str in query

        flight_id: (flightId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - PagedResponseGetNamespaceEventResponse (Successful Response)

        400: Bad Request - BaseErrorResponse (Bad Request)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
    """
    if namespace is None:
        namespace, error = get_services_namespace(sdk=kwargs.get("sdk"))
        if error:
            return None, error
    request = GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet.create(
        device_type=device_type,
        end_time=end_time,
        event_id=event_id,
        event_name=event_name,
        event_payload=event_payload,
        flight_id=flight_id,
        limit=limit,
        offset=offset,
        start_time=start_time,
        user_id=user_id,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(GetNamespacesGameTelemetryV1AdminNamespacesGet)
def get_namespaces_game_telemetry_v1_admin_namespaces_get(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Namespaces (get_namespaces_game_telemetry_v1_admin_namespaces_get)

    This endpoint requires valid JWT token and telemetry permission
    This endpoint retrieves namespace list

    Properties:
        url: /game-telemetry/v1/admin/namespaces

        method: GET

        tags: ["telemetry"]

        consumes: []

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

    Responses:
        200: OK - ListBaseResponseStr (Successful Response)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)
    """
    request = GetNamespacesGameTelemetryV1AdminNamespacesGet.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetNamespacesGameTelemetryV1AdminNamespacesGet)
async def get_namespaces_game_telemetry_v1_admin_namespaces_get_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get Namespaces (get_namespaces_game_telemetry_v1_admin_namespaces_get)

    This endpoint requires valid JWT token and telemetry permission
    This endpoint retrieves namespace list

    Properties:
        url: /game-telemetry/v1/admin/namespaces

        method: GET

        tags: ["telemetry"]

        consumes: []

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

    Responses:
        200: OK - ListBaseResponseStr (Successful Response)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)
    """
    request = GetNamespacesGameTelemetryV1AdminNamespacesGet.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
