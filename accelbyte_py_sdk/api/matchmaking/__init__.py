"""Auto-generated top-level package for the Justice Matchmaking Service."""

__version__ = "2.10.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# matchmaking
from .wrappers import add_user_into_session_in_channel
from .wrappers import add_user_into_session_in_channel_async
from .wrappers import bulk_get_sessions
from .wrappers import bulk_get_sessions_async
from .wrappers import create_channel_handler
from .wrappers import create_channel_handler_async
from .wrappers import delete_channel_handler
from .wrappers import delete_channel_handler_async
from .wrappers import delete_session_in_channel
from .wrappers import delete_session_in_channel_async
from .wrappers import delete_user_from_session_in_channel
from .wrappers import delete_user_from_session_in_channel_async
from .wrappers import dequeue_session_handler
from .wrappers import dequeue_session_handler_async
from .wrappers import export_channels
from .wrappers import export_channels_async
from .wrappers import get_all_channels_handler
from .wrappers import get_all_channels_handler_async
from .wrappers import get_all_party_in_all_channel
from .wrappers import get_all_party_in_all_channel_async
from .wrappers import get_all_party_in_channel
from .wrappers import get_all_party_in_channel_async
from .wrappers import get_all_sessions_in_channel
from .wrappers import get_all_sessions_in_channel_async
from .wrappers import get_session_history_detailed
from .wrappers import get_session_history_detailed_async
from .wrappers import get_single_matchmaking_channel
from .wrappers import get_single_matchmaking_channel_async
from .wrappers import import_channels
from .wrappers import import_channels_async
from .wrappers import public_get_all_matchmaking_channel
from .wrappers import public_get_all_matchmaking_channel_async
from .wrappers import public_get_single_matchmaking_channel
from .wrappers import public_get_single_matchmaking_channel_async
from .wrappers import query_session_handler
from .wrappers import query_session_handler_async
from .wrappers import queue_session_handler
from .wrappers import queue_session_handler_async
from .wrappers import search_sessions
from .wrappers import search_sessions_async
from .wrappers import store_match_results
from .wrappers import store_match_results_async
from .wrappers import update_matchmaking_channel
from .wrappers import update_matchmaking_channel_async

# operations
from .wrappers import get_healthcheck_info
from .wrappers import get_healthcheck_info_async
from .wrappers import handler_v3_healthz
from .wrappers import handler_v3_healthz_async
from .wrappers import public_get_messages
from .wrappers import public_get_messages_async
from .wrappers import version_check_handler
from .wrappers import version_check_handler_async

# social_matchmaking
from .wrappers import update_play_time_weight
from .wrappers import update_play_time_weight_async