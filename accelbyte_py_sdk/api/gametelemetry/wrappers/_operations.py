# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

from ..models import HTTPValidationError

from ..operations.operations import (
    GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet,
)


@same_doc_as(GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet)
def get_events_game_telemetry_v1_admin_namespaces_namespace_events_get(
    end_time: Optional[str] = None,
    event_id: Optional[str] = None,
    event_name: Optional[str] = None,
    event_payload: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet.create(
        end_time=end_time,
        event_id=event_id,
        event_name=event_name,
        event_payload=event_payload,
        limit=limit,
        offset=offset,
        start_time=start_time,
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet)
async def get_events_game_telemetry_v1_admin_namespaces_namespace_events_get_async(
    end_time: Optional[str] = None,
    event_id: Optional[str] = None,
    event_name: Optional[str] = None,
    event_payload: Optional[str] = None,
    limit: Optional[int] = None,
    offset: Optional[int] = None,
    start_time: Optional[str] = None,
    namespace: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet.create(
        end_time=end_time,
        event_id=event_id,
        event_name=event_name,
        event_payload=event_payload,
        limit=limit,
        offset=offset,
        start_time=start_time,
        namespace=namespace,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
