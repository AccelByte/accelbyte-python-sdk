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

from ._config import admin_get_env_config
from ._config import admin_get_env_config_async
from ._config import admin_get_log_config
from ._config import admin_get_log_config_async
from ._config import admin_patch_update_env_config
from ._config import admin_patch_update_env_config_async
from ._config import admin_patch_update_log_config
from ._config import admin_patch_update_log_config_async

from ._game_session_detail import admin_get_matchmaking_detail_by_session_id
from ._game_session_detail import admin_get_matchmaking_detail_by_session_id_async
from ._game_session_detail import admin_get_matchmaking_detail_by_ticket_id
from ._game_session_detail import admin_get_matchmaking_detail_by_ticket_id_async
from ._game_session_detail import admin_query_game_session_detail
from ._game_session_detail import admin_query_game_session_detail_async
from ._game_session_detail import admin_query_matchmaking_detail
from ._game_session_detail import admin_query_matchmaking_detail_async
from ._game_session_detail import admin_query_party_detail
from ._game_session_detail import admin_query_party_detail_async
from ._game_session_detail import admin_query_ticket_detail
from ._game_session_detail import admin_query_ticket_detail_async
from ._game_session_detail import admin_ticket_detail_get_by_ticket_id
from ._game_session_detail import admin_ticket_detail_get_by_ticket_id_async
from ._game_session_detail import get_game_session_detail
from ._game_session_detail import get_game_session_detail_async
from ._game_session_detail import get_party_detail
from ._game_session_detail import get_party_detail_async
from ._game_session_detail import public_query_game_session_me
from ._game_session_detail import public_query_game_session_me_async

from ._operations import get_healthcheck_info
from ._operations import get_healthcheck_info_async
from ._operations import get_healthcheck_info_v1
from ._operations import get_healthcheck_info_v1_async

from ._x_ray import create_xray_bulk_ticket_observability
from ._x_ray import create_xray_bulk_ticket_observability_async
from ._x_ray import create_xray_ticket_observability
from ._x_ray import create_xray_ticket_observability_async
from ._x_ray import query_acquiring_ds
from ._x_ray import query_acquiring_ds_async
from ._x_ray import query_acquiring_ds_wait_time_avg
from ._x_ray import query_acquiring_ds_wait_time_avg_async
from ._x_ray import query_detail_tick_match_pool
from ._x_ray import query_detail_tick_match_pool_async
from ._x_ray import query_detail_tick_match_pool_matches
from ._x_ray import query_detail_tick_match_pool_matches_async
from ._x_ray import query_detail_tick_match_pool_ticket
from ._x_ray import query_detail_tick_match_pool_ticket_async
from ._x_ray import query_match_histories
from ._x_ray import query_match_histories_async
from ._x_ray import query_match_length_durationp99
from ._x_ray import query_match_length_durationp99_async
from ._x_ray import query_match_length_durationp_avg
from ._x_ray import query_match_length_durationp_avg_async
from ._x_ray import query_match_ticket_histories
from ._x_ray import query_match_ticket_histories_async
from ._x_ray import query_total_active_session
from ._x_ray import query_total_active_session_async
from ._x_ray import query_total_matchmaking_canceled
from ._x_ray import query_total_matchmaking_canceled_async
from ._x_ray import query_total_matchmaking_created
from ._x_ray import query_total_matchmaking_created_async
from ._x_ray import query_total_matchmaking_expired
from ._x_ray import query_total_matchmaking_expired_async
from ._x_ray import query_total_matchmaking_match
from ._x_ray import query_total_matchmaking_match_async
from ._x_ray import query_total_matchmaking_match_ticket
from ._x_ray import query_total_matchmaking_match_ticket_async
from ._x_ray import query_total_player_persession
from ._x_ray import query_total_player_persession_async
from ._x_ray import query_xray_match
from ._x_ray import query_xray_match_async
from ._x_ray import query_xray_match_pool
from ._x_ray import query_xray_match_pool_async
from ._x_ray import query_xray_timeline_by_ticket_id
from ._x_ray import query_xray_timeline_by_ticket_id_async
from ._x_ray import query_xray_timeline_by_user_id
from ._x_ray import query_xray_timeline_by_user_id_async
