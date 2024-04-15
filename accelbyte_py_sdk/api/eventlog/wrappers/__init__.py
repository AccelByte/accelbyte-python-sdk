# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Event Log Service."""

__version__ = "2.2.4"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from ._event import get_event_by_event_id_handler
from ._event import get_event_by_event_id_handler_async
from ._event import get_event_by_event_type_and_event_id_handler
from ._event import get_event_by_event_type_and_event_id_handler_async
from ._event import get_event_by_event_type_handler
from ._event import get_event_by_event_type_handler_async
from ._event import get_event_by_namespace_handler
from ._event import get_event_by_namespace_handler_async
from ._event import get_event_by_user_event_id_and_event_type_handler
from ._event import get_event_by_user_event_id_and_event_type_handler_async
from ._event import get_event_by_user_id_and_event_id_handler
from ._event import get_event_by_user_id_and_event_id_handler_async
from ._event import get_event_by_user_id_and_event_type_handler
from ._event import get_event_by_user_id_and_event_type_handler_async
from ._event import get_event_by_user_id_handler
from ._event import get_event_by_user_id_handler_async
from ._event import post_event_handler
from ._event import post_event_handler_async

from ._event_descriptions import agent_type_description_handler
from ._event_descriptions import agent_type_description_handler_async
from ._event_descriptions import event_id_description_handler
from ._event_descriptions import event_id_description_handler_async
from ._event_descriptions import event_level_description_handler
from ._event_descriptions import event_level_description_handler_async
from ._event_descriptions import event_type_description_handler
from ._event_descriptions import event_type_description_handler_async
from ._event_descriptions import specific_agent_type_description_handler
from ._event_descriptions import specific_agent_type_description_handler_async
from ._event_descriptions import specific_event_id_description_handler
from ._event_descriptions import specific_event_id_description_handler_async
from ._event_descriptions import specific_event_level_description_handler
from ._event_descriptions import specific_event_level_description_handler_async
from ._event_descriptions import specific_event_type_description_handler
from ._event_descriptions import specific_event_type_description_handler_async
from ._event_descriptions import specific_ux_description_handler
from ._event_descriptions import specific_ux_description_handler_async
from ._event_descriptions import ux_name_description_handler
from ._event_descriptions import ux_name_description_handler_async

from ._event_registry import get_registered_event_id_handler
from ._event_registry import get_registered_event_id_handler_async
from ._event_registry import get_registered_events_by_event_type_handler
from ._event_registry import get_registered_events_by_event_type_handler_async
from ._event_registry import get_registered_events_handler
from ._event_registry import get_registered_events_handler_async
from ._event_registry import register_event_handler
from ._event_registry import register_event_handler_async
from ._event_registry import unregister_event_id_handler
from ._event_registry import unregister_event_id_handler_async
from ._event_registry import update_event_registry_handler
from ._event_registry import update_event_registry_handler_async

from ._event_v2 import get_event_specific_user_v2_handler
from ._event_v2 import get_event_specific_user_v2_handler_async
from ._event_v2 import get_public_edit_history
from ._event_v2 import get_public_edit_history_async
from ._event_v2 import get_user_events_v2_public
from ._event_v2 import get_user_events_v2_public_async
from ._event_v2 import query_event_stream_handler
from ._event_v2 import query_event_stream_handler_async

from ._user_information import delete_user_activities_handler
from ._user_information import delete_user_activities_handler_async
from ._user_information import get_user_activities_handler
from ._user_information import get_user_activities_handler_async
from ._user_information import last_user_activity_time_handler
from ._user_information import last_user_activity_time_handler_async
