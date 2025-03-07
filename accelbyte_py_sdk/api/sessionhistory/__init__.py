# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Session History Service."""

__version__ = "1.13.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# config
from .wrappers import admin_get_env_config
from .wrappers import admin_get_env_config_async
from .wrappers import admin_get_log_config
from .wrappers import admin_get_log_config_async
from .wrappers import admin_patch_update_env_config
from .wrappers import admin_patch_update_env_config_async
from .wrappers import admin_patch_update_log_config
from .wrappers import admin_patch_update_log_config_async

# game_session_detail
from .wrappers import admin_get_matchmaking_detail_by_session_id
from .wrappers import admin_get_matchmaking_detail_by_session_id_async
from .wrappers import admin_get_matchmaking_detail_by_ticket_id
from .wrappers import admin_get_matchmaking_detail_by_ticket_id_async
from .wrappers import admin_query_game_session_detail
from .wrappers import admin_query_game_session_detail_async
from .wrappers import admin_query_matchmaking_detail
from .wrappers import admin_query_matchmaking_detail_async
from .wrappers import admin_query_party_detail
from .wrappers import admin_query_party_detail_async
from .wrappers import admin_query_ticket_detail
from .wrappers import admin_query_ticket_detail_async
from .wrappers import admin_ticket_detail_get_by_ticket_id
from .wrappers import admin_ticket_detail_get_by_ticket_id_async
from .wrappers import get_game_session_detail
from .wrappers import get_game_session_detail_async
from .wrappers import get_party_detail
from .wrappers import get_party_detail_async
from .wrappers import public_query_game_session_me
from .wrappers import public_query_game_session_me_async

# operations
from .wrappers import get_healthcheck_info
from .wrappers import get_healthcheck_info_async
from .wrappers import get_healthcheck_info_v1
from .wrappers import get_healthcheck_info_v1_async

# x_ray
from .wrappers import create_xray_bulk_ticket_observability
from .wrappers import create_xray_bulk_ticket_observability_async
from .wrappers import create_xray_ticket_observability
from .wrappers import create_xray_ticket_observability_async
from .wrappers import query_acquiring_ds
from .wrappers import query_acquiring_ds_async
from .wrappers import query_acquiring_ds_wait_time_avg
from .wrappers import query_acquiring_ds_wait_time_avg_async
from .wrappers import query_detail_tick_match_pool
from .wrappers import query_detail_tick_match_pool_async
from .wrappers import query_detail_tick_match_pool_matches
from .wrappers import query_detail_tick_match_pool_matches_async
from .wrappers import query_detail_tick_match_pool_ticket
from .wrappers import query_detail_tick_match_pool_ticket_async
from .wrappers import query_match_histories
from .wrappers import query_match_histories_async
from .wrappers import query_match_length_durationp99
from .wrappers import query_match_length_durationp99_async
from .wrappers import query_match_length_durationp_avg
from .wrappers import query_match_length_durationp_avg_async
from .wrappers import query_match_ticket_histories
from .wrappers import query_match_ticket_histories_async
from .wrappers import query_total_active_session
from .wrappers import query_total_active_session_async
from .wrappers import query_total_matchmaking_canceled
from .wrappers import query_total_matchmaking_canceled_async
from .wrappers import query_total_matchmaking_created
from .wrappers import query_total_matchmaking_created_async
from .wrappers import query_total_matchmaking_expired
from .wrappers import query_total_matchmaking_expired_async
from .wrappers import query_total_matchmaking_match
from .wrappers import query_total_matchmaking_match_async
from .wrappers import query_total_matchmaking_match_ticket
from .wrappers import query_total_matchmaking_match_ticket_async
from .wrappers import query_total_player_persession
from .wrappers import query_total_player_persession_async
from .wrappers import query_xray_match
from .wrappers import query_xray_match_async
from .wrappers import query_xray_match_pool
from .wrappers import query_xray_match_pool_async
from .wrappers import query_xray_timeline_by_ticket_id
from .wrappers import query_xray_timeline_by_ticket_id_async
from .wrappers import query_xray_timeline_by_user_id
from .wrappers import query_xray_timeline_by_user_id_async
