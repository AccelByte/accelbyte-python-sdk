# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Event Log Service ()

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
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

from .utils import randomize

from ..api.eventlog.models import ModelsAgentType
from ..api.eventlog.models import ModelsEvent
from ..api.eventlog.models import ModelsEventID
from ..api.eventlog.models import ModelsEventLevel
from ..api.eventlog.models import ModelsEventRegistry
from ..api.eventlog.models import ModelsEventResponse
from ..api.eventlog.models import ModelsEventResponseV2
from ..api.eventlog.models import ModelsEventType
from ..api.eventlog.models import ModelsEventV2
from ..api.eventlog.models import ModelsGenericQueryPayload
from ..api.eventlog.models import ModelsMultipleAgentType
from ..api.eventlog.models import ModelsMultipleEventID
from ..api.eventlog.models import ModelsMultipleEventLevel
from ..api.eventlog.models import ModelsMultipleEventType
from ..api.eventlog.models import ModelsMultipleUX
from ..api.eventlog.models import ModelsPagination
from ..api.eventlog.models import ModelsPaging
from ..api.eventlog.models import ModelsUX
from ..api.eventlog.models import ModelsUserLastActivity


def create_models_agent_type_example() -> ModelsAgentType:
    instance = ModelsAgentType()
    instance.agent_type = randomize("int", min_val=1, max_val=1000)
    instance.description = randomize()
    return instance


def create_models_event_example() -> ModelsEvent:
    instance = ModelsEvent()
    instance.agent_type = randomize("int", min_val=1, max_val=1000)
    instance.client_id = randomize("uid")
    instance.component_id = randomize("int", min_val=1, max_val=1000)
    instance.event_id = randomize("int", min_val=1, max_val=1000)
    instance.event_level = randomize("int", min_val=1, max_val=1000)
    instance.event_type = randomize("int", min_val=1, max_val=1000)
    instance.ip_address = randomize()
    instance.namespace = randomize("slug")
    instance.realm = randomize()
    instance.target_namespace = randomize("slug")
    instance.target_user_id = randomize()
    instance.time = randomize()
    instance.user_id = randomize("uid")
    instance.ux = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_event_id_example() -> ModelsEventID:
    instance = ModelsEventID()
    instance.description = randomize()
    instance.event_id = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_event_level_example() -> ModelsEventLevel:
    instance = ModelsEventLevel()
    instance.description = randomize()
    instance.event_level = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_event_registry_example() -> ModelsEventRegistry:
    instance = ModelsEventRegistry()
    instance.event_id = randomize("int", min_val=1, max_val=1000)
    instance.event_level = randomize("int", min_val=1, max_val=1000)
    instance.event_type = randomize("int", min_val=1, max_val=1000)
    instance.ux = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_event_response_example() -> ModelsEventResponse:
    instance = ModelsEventResponse()
    instance.data = [create_models_event_example()]
    instance.pagination = create_models_pagination_example()
    return instance


def create_models_event_response_v2_example() -> ModelsEventResponseV2:
    instance = ModelsEventResponseV2()
    instance.data = [create_models_event_v2_example()]
    instance.paging = create_models_paging_example()
    return instance


def create_models_event_type_example() -> ModelsEventType:
    instance = ModelsEventType()
    instance.description = randomize()
    instance.event_type = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_event_v2_example() -> ModelsEventV2:
    instance = ModelsEventV2()
    instance.client_id = randomize("uid")
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.session_id = randomize("uid")
    instance.timestamp = randomize("date")
    instance.trace_id = randomize()
    instance.user_id = randomize("uid")
    instance.version = randomize("int", min_val=1, max_val=1000)
    instance.payload = {randomize(): randomize()}
    return instance


def create_models_generic_query_payload_example() -> ModelsGenericQueryPayload:
    instance = ModelsGenericQueryPayload()
    instance.client_id = randomize("uid")
    instance.event_name = randomize()
    instance.payload_query = {randomize(): randomize()}
    instance.session_id = randomize("uid")
    instance.trace_id = randomize()
    instance.user_id = randomize("uid")
    instance.version = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_multiple_agent_type_example() -> ModelsMultipleAgentType:
    instance = ModelsMultipleAgentType()
    instance.agent_types = [create_models_agent_type_example()]
    return instance


def create_models_multiple_event_id_example() -> ModelsMultipleEventID:
    instance = ModelsMultipleEventID()
    instance.event_i_ds = [create_models_event_id_example()]
    return instance


def create_models_multiple_event_level_example() -> ModelsMultipleEventLevel:
    instance = ModelsMultipleEventLevel()
    instance.event_level = [create_models_event_level_example()]
    return instance


def create_models_multiple_event_type_example() -> ModelsMultipleEventType:
    instance = ModelsMultipleEventType()
    instance.event_type = [create_models_event_type_example()]
    return instance


def create_models_multiple_ux_example() -> ModelsMultipleUX:
    instance = ModelsMultipleUX()
    instance.ux = [create_models_ux_example()]
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_paging_example() -> ModelsPaging:
    instance = ModelsPaging()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_user_last_activity_example() -> ModelsUserLastActivity:
    instance = ModelsUserLastActivity()
    instance.last_activity_time = randomize("date")
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_models_ux_example() -> ModelsUX:
    instance = ModelsUX()
    instance.description = randomize()
    instance.ux = randomize("int", min_val=1, max_val=1000)
    return instance
