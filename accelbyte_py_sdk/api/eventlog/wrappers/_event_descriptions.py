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

from ..models import ModelsMultipleAgentType
from ..models import ModelsMultipleEventID
from ..models import ModelsMultipleEventLevel
from ..models import ModelsMultipleEventType
from ..models import ModelsMultipleUX

from ..operations.event_descriptions import AgentTypeDescriptionHandler
from ..operations.event_descriptions import EventIDDescriptionHandler
from ..operations.event_descriptions import EventLevelDescriptionHandler
from ..operations.event_descriptions import EventTypeDescriptionHandler
from ..operations.event_descriptions import SpecificAgentTypeDescriptionHandler
from ..operations.event_descriptions import SpecificEventIDDescriptionHandler
from ..operations.event_descriptions import SpecificEventLevelDescriptionHandler
from ..operations.event_descriptions import SpecificEventTypeDescriptionHandler
from ..operations.event_descriptions import SpecificUXDescriptionHandler
from ..operations.event_descriptions import UXNameDescriptionHandler


@deprecated
@same_doc_as(AgentTypeDescriptionHandler)
def agent_type_description_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of agent type and the descriptions (AgentTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/agentType

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleAgentType (OK)
    """
    request = AgentTypeDescriptionHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(AgentTypeDescriptionHandler)
async def agent_type_description_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of agent type and the descriptions (AgentTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/agentType

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleAgentType (OK)
    """
    request = AgentTypeDescriptionHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(EventIDDescriptionHandler)
def event_id_description_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of eventID and the descriptions (EventIDDescriptionHandler)

    Properties:
        url: /event/descriptions/eventId

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleEventID (OK)
    """
    request = EventIDDescriptionHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(EventIDDescriptionHandler)
async def event_id_description_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of eventID and the descriptions (EventIDDescriptionHandler)

    Properties:
        url: /event/descriptions/eventId

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleEventID (OK)
    """
    request = EventIDDescriptionHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(EventLevelDescriptionHandler)
def event_level_description_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of event level and the descriptions (EventLevelDescriptionHandler)

    Properties:
        url: /event/descriptions/eventLevel

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleEventLevel (OK)
    """
    request = EventLevelDescriptionHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(EventLevelDescriptionHandler)
async def event_level_description_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of event level and the descriptions (EventLevelDescriptionHandler)

    Properties:
        url: /event/descriptions/eventLevel

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleEventLevel (OK)
    """
    request = EventLevelDescriptionHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(EventTypeDescriptionHandler)
def event_type_description_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of event type and the descriptions (EventTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/eventType

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleEventType (OK)
    """
    request = EventTypeDescriptionHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(EventTypeDescriptionHandler)
async def event_type_description_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of event type and the descriptions (EventTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/eventType

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleEventType (OK)
    """
    request = EventTypeDescriptionHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SpecificAgentTypeDescriptionHandler)
def specific_agent_type_description_handler(
    agent_types: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of agent type and the descriptions by comma separated value of agent types (SpecificAgentTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/agentType/listByAgentTypes

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        agent_types: (agentTypes) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleAgentType (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificAgentTypeDescriptionHandler.create(
        agent_types=agent_types,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SpecificAgentTypeDescriptionHandler)
async def specific_agent_type_description_handler_async(
    agent_types: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of agent type and the descriptions by comma separated value of agent types (SpecificAgentTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/agentType/listByAgentTypes

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        agent_types: (agentTypes) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleAgentType (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificAgentTypeDescriptionHandler.create(
        agent_types=agent_types,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SpecificEventIDDescriptionHandler)
def specific_event_id_description_handler(
    event_ids: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of eventID and the descriptions by comma separated value of eventIDs (SpecificEventIDDescriptionHandler)

    Properties:
        url: /event/descriptions/eventId/listByEventIds

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_ids: (eventIds) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleEventID (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificEventIDDescriptionHandler.create(
        event_ids=event_ids,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SpecificEventIDDescriptionHandler)
async def specific_event_id_description_handler_async(
    event_ids: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of eventID and the descriptions by comma separated value of eventIDs (SpecificEventIDDescriptionHandler)

    Properties:
        url: /event/descriptions/eventId/listByEventIds

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_ids: (eventIds) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleEventID (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificEventIDDescriptionHandler.create(
        event_ids=event_ids,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SpecificEventLevelDescriptionHandler)
def specific_event_level_description_handler(
    event_levels: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of event level and the descriptions by comma separated value of event levels (SpecificEventLevelDescriptionHandler)

    Properties:
        url: /event/descriptions/eventLevel/listByEventLevels

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_levels: (eventLevels) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleEventLevel (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificEventLevelDescriptionHandler.create(
        event_levels=event_levels,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SpecificEventLevelDescriptionHandler)
async def specific_event_level_description_handler_async(
    event_levels: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of event level and the descriptions by comma separated value of event levels (SpecificEventLevelDescriptionHandler)

    Properties:
        url: /event/descriptions/eventLevel/listByEventLevels

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_levels: (eventLevels) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleEventLevel (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificEventLevelDescriptionHandler.create(
        event_levels=event_levels,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SpecificEventTypeDescriptionHandler)
def specific_event_type_description_handler(
    event_types: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of event type and the descriptions by comma separated value of event types (SpecificEventTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/eventType/listByEventTypes

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_types: (eventTypes) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleEventType (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificEventTypeDescriptionHandler.create(
        event_types=event_types,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SpecificEventTypeDescriptionHandler)
async def specific_event_type_description_handler_async(
    event_types: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of event type and the descriptions by comma separated value of event types (SpecificEventTypeDescriptionHandler)

    Properties:
        url: /event/descriptions/eventType/listByEventTypes

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        event_types: (eventTypes) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleEventType (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificEventTypeDescriptionHandler.create(
        event_types=event_types,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(SpecificUXDescriptionHandler)
def specific_ux_description_handler(
    ux: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of UX and the descriptions by comma separated value of UX (SpecificUXDescriptionHandler)

    Properties:
        url: /event/descriptions/ux/listByUx

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ux: (ux) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleUX (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificUXDescriptionHandler.create(
        ux=ux,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(SpecificUXDescriptionHandler)
async def specific_ux_description_handler_async(
    ux: Optional[str] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Get specific list of UX and the descriptions by comma separated value of UX (SpecificUXDescriptionHandler)

    Properties:
        url: /event/descriptions/ux/listByUx

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        ux: (ux) OPTIONAL str in query

    Responses:
        200: OK - ModelsMultipleUX (OK)

        400: Bad Request - (Bad Request)

        404: Not Found - (Not Found)
    """
    request = SpecificUXDescriptionHandler.create(
        ux=ux,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@deprecated
@same_doc_as(UXNameDescriptionHandler)
def ux_name_description_handler(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ux name and the descriptions (UXNameDescriptionHandler)

    Properties:
        url: /event/descriptions/ux

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleUX (OK)
    """
    request = UXNameDescriptionHandler.create()
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@deprecated
@same_doc_as(UXNameDescriptionHandler)
async def ux_name_description_handler_async(
    x_additional_headers: Optional[Dict[str, str]] = None, **kwargs
):
    """Get list of ux name and the descriptions (UXNameDescriptionHandler)

    Properties:
        url: /event/descriptions/ux

        method: GET

        tags: ["Event Descriptions"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

    Responses:
        200: OK - ModelsMultipleUX (OK)
    """
    request = UXNameDescriptionHandler.create()
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
