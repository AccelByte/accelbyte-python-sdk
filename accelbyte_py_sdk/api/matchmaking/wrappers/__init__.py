"""Auto-generated package that contains utility functions for the Justice Matchmaking Service."""

__version__ = "2.12.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# template file: justice_py_sdk_codegen/__main__.py

# pylint: disable=line-too-long

from ._matchmaking import add_user_into_session_in_channel
from ._matchmaking import add_user_into_session_in_channel_async
from ._matchmaking import bulk_get_sessions
from ._matchmaking import bulk_get_sessions_async
from ._matchmaking import create_channel_handler
from ._matchmaking import create_channel_handler_async
from ._matchmaking import delete_channel_handler
from ._matchmaking import delete_channel_handler_async
from ._matchmaking import delete_session_in_channel
from ._matchmaking import delete_session_in_channel_async
from ._matchmaking import delete_user_from_session_in_channel
from ._matchmaking import delete_user_from_session_in_channel_async
from ._matchmaking import dequeue_session_handler
from ._matchmaking import dequeue_session_handler_async
from ._matchmaking import export_channels
from ._matchmaking import export_channels_async
from ._matchmaking import get_all_channels_handler
from ._matchmaking import get_all_channels_handler_async
from ._matchmaking import get_all_party_in_all_channel
from ._matchmaking import get_all_party_in_all_channel_async
from ._matchmaking import get_all_party_in_channel
from ._matchmaking import get_all_party_in_channel_async
from ._matchmaking import get_all_sessions_in_channel
from ._matchmaking import get_all_sessions_in_channel_async
from ._matchmaking import get_session_history_detailed
from ._matchmaking import get_session_history_detailed_async
from ._matchmaking import get_single_matchmaking_channel
from ._matchmaking import get_single_matchmaking_channel_async
from ._matchmaking import import_channels
from ._matchmaking import import_channels_async
from ._matchmaking import public_get_all_matchmaking_channel
from ._matchmaking import public_get_all_matchmaking_channel_async
from ._matchmaking import public_get_single_matchmaking_channel
from ._matchmaking import public_get_single_matchmaking_channel_async
from ._matchmaking import query_session_handler
from ._matchmaking import query_session_handler_async
from ._matchmaking import queue_session_handler
from ._matchmaking import queue_session_handler_async
from ._matchmaking import search_sessions
from ._matchmaking import search_sessions_async
from ._matchmaking import store_match_results
from ._matchmaking import store_match_results_async
from ._matchmaking import update_matchmaking_channel
from ._matchmaking import update_matchmaking_channel_async

from ._operations import get_healthcheck_info
from ._operations import get_healthcheck_info_async
from ._operations import handler_v3_healthz
from ._operations import handler_v3_healthz_async
from ._operations import public_get_messages
from ._operations import public_get_messages_async
from ._operations import version_check_handler
from ._operations import version_check_handler_async

from ._social_matchmaking import update_play_time_weight
from ._social_matchmaking import update_play_time_weight_async
