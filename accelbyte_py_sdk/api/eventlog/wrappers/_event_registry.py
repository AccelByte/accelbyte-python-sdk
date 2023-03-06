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
    """Get registered eventID data from the Event Registry (GetRegisteredEventIDHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds/{eventId}

        method: GET

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_id: (eventId) REQUIRED str in path

    Responses:
        200: OK - ModelsEventRegistry (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    request = GetRegisteredEventIDHandler.create(
        event_id=event_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRegisteredEventIDHandler)
async def get_registered_event_id_handler_async(
    event_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get registered eventID data from the Event Registry (GetRegisteredEventIDHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds/{eventId}

        method: GET

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_id: (eventId) REQUIRED str in path

    Responses:
        200: OK - ModelsEventRegistry (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
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
    """Get registered eventID data from the Event Registry based on the event type (GetRegisteredEventsByEventTypeHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventTypes/{eventType}

        method: GET

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_type: (eventType) REQUIRED str in path

    Responses:
        200: OK - ModelsEventRegistry (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    request = GetRegisteredEventsByEventTypeHandler.create(
        event_type=event_type,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRegisteredEventsByEventTypeHandler)
async def get_registered_events_by_event_type_handler_async(
    event_type: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get registered eventID data from the Event Registry based on the event type (GetRegisteredEventsByEventTypeHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventTypes/{eventType}

        method: GET

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_type: (eventType) REQUIRED str in path

    Responses:
        200: OK - ModelsEventRegistry (OK)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
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
    """Get registered events in the Event Registry (GetRegisteredEventsHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds

        method: GET

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsEventRegistry (OK)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        500: Internal Server Error - (Internal Server Error)
    """
    request = GetRegisteredEventsHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(GetRegisteredEventsHandler)
async def get_registered_events_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get registered events in the Event Registry (GetRegisteredEventsHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [READ]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [READ]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds

        method: GET

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsEventRegistry (OK)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        500: Internal Server Error - (Internal Server Error)
    """
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
    """Register an eventID to the Event Registry (RegisterEventHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [CREATE]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [CREATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds

        method: POST

        tags: ["Event Registry"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsEventRegistry in body

    Responses:
        201: Created - (Created)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        409: Conflict - (Conflict)

        500: Internal Server Error - (Internal Server Error)
    """
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
    """Register an eventID to the Event Registry (RegisterEventHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [CREATE]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [CREATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds

        method: POST

        tags: ["Event Registry"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsEventRegistry in body

    Responses:
        201: Created - (Created)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        409: Conflict - (Conflict)

        500: Internal Server Error - (Internal Server Error)
    """
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
    """Unregister eventID from the Event Registry (UnregisterEventIDHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [DELETE]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [DELETE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds/{eventId}

        method: DELETE

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_id: (eventId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    request = UnregisterEventIDHandler.create(
        event_id=event_id,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UnregisterEventIDHandler)
async def unregister_event_id_handler_async(
    event_id: str, x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Unregister eventID from the Event Registry (UnregisterEventIDHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [DELETE]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [DELETE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds/{eventId}

        method: DELETE

        tags: ["Event Registry"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_id: (eventId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
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
    """Update an eventID data in the Event Registry (UpdateEventRegistryHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds/{eventId}

        method: POST

        tags: ["Event Registry"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsEventRegistry in body

        event_id: (eventId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
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
    """Update an eventID data in the Event Registry (UpdateEventRegistryHandler)

    Required permission `ADMIN:NAMESPACE:{namespace}:EVENT [UPDATE]`and scope `analytics`

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:EVENT [UPDATE]

    Required Scope(s):
        - analytics

    Properties:
        url: /event/registry/eventIds/{eventId}

        method: POST

        tags: ["Event Registry"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        body: (body) REQUIRED ModelsEventRegistry in body

        event_id: (eventId) REQUIRED str in path

    Responses:
        204: No Content - (No Content)

        400: Bad Request - (Bad Request)

        401: Unauthorized - (Unauthorized)

        403: Forbidden - (Forbidden)

        404: Not Found - (Not Found)

        500: Internal Server Error - (Internal Server Error)
    """
    request = UpdateEventRegistryHandler.create(
        body=body,
        event_id=event_id,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
