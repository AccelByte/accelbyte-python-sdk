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
from ....core import deprecated
from ....core import same_doc_as

from ..models import ModelsEventRegistry

from ..operations.event_registry import GetRegisteredEventIDHandler
from ..operations.event_registry import GetRegisteredEventsByEventTypeHandler
from ..operations.event_registry import GetRegisteredEventsHandler
from ..operations.event_registry import RegisterEventHandler
from ..operations.event_registry import UnregisterEventIDHandler
from ..operations.event_registry import UpdateEventRegistryHandler


@deprecated
@same_doc_as(GetRegisteredEventIDHandler)
def get_registered_event_id_handler(
    event_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRegisteredEventIDHandler.create(
        event_id=event_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRegisteredEventIDHandler)
async def get_registered_event_id_handler_async(
    event_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRegisteredEventIDHandler.create(
        event_id=event_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRegisteredEventsByEventTypeHandler)
def get_registered_events_by_event_type_handler(
    event_type: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRegisteredEventsByEventTypeHandler.create(
        event_type=event_type,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRegisteredEventsByEventTypeHandler)
async def get_registered_events_by_event_type_handler_async(
    event_type: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRegisteredEventsByEventTypeHandler.create(
        event_type=event_type,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(GetRegisteredEventsHandler)
def get_registered_events_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRegisteredEventsHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRegisteredEventsHandler)
async def get_registered_events_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = GetRegisteredEventsHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(RegisterEventHandler)
def register_event_handler(
    body: ModelsEventRegistry,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RegisterEventHandler.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(RegisterEventHandler)
async def register_event_handler_async(
    body: ModelsEventRegistry,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = RegisterEventHandler.create(
        body=body,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UnregisterEventIDHandler)
def unregister_event_id_handler(
    event_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = UnregisterEventIDHandler.create(
        event_id=event_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UnregisterEventIDHandler)
async def unregister_event_id_handler_async(
    event_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    request = UnregisterEventIDHandler.create(
        event_id=event_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UpdateEventRegistryHandler)
def update_event_registry_handler(
    body: ModelsEventRegistry,
    event_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateEventRegistryHandler.create(
        body=body,
        event_id=event_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UpdateEventRegistryHandler)
async def update_event_registry_handler_async(
    body: ModelsEventRegistry,
    event_id: str,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    request = UpdateEventRegistryHandler.create(
        body=body,
        event_id=event_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
