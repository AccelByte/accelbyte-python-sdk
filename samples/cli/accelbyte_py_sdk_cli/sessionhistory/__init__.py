# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-session-history-service

from ._get_healthcheck_info import get_healthcheck_info
from ._get_healthcheck_info_v1 import get_healthcheck_info_v1
from ._admin_get_log_config import admin_get_log_config
from ._admin_patch_update_log_config import admin_patch_update_log_config
from ._admin_query_game_session_detail import admin_query_game_session_detail
from ._get_game_session_detail import get_game_session_detail
from ._admin_query_matchmaking_detail import admin_query_matchmaking_detail
from ._admin_get_matchmaking_detail_by_session_id import (
    admin_get_matchmaking_detail_by_session_id,
)
from ._admin_get_matchmaking_detail_by_ticket_id import (
    admin_get_matchmaking_detail_by_ticket_id,
)
from ._admin_query_party_detail import admin_query_party_detail
from ._get_party_detail import get_party_detail
from ._admin_query_ticket_detail import admin_query_ticket_detail
from ._admin_ticket_detail_get_by_ticket_id import admin_ticket_detail_get_by_ticket_id
from ._public_query_game_session_me import public_query_game_session_me
from ._query_xray_match_pool import query_xray_match_pool
from ._query_detail_tick_match_pool import query_detail_tick_match_pool
from ._query_detail_tick_match_pool_matches import query_detail_tick_match_pool_matches
from ._query_detail_tick_match_pool_ticket import query_detail_tick_match_pool_ticket
from ._query_match_histories import query_match_histories
from ._query_match_ticket_histories import query_match_ticket_histories
from ._query_xray_match import query_xray_match
from ._query_acquiring_ds import query_acquiring_ds
from ._query_acquiring_ds_wait_time_avg import query_acquiring_ds_wait_time_avg
from ._query_match_length_durationp_avg import query_match_length_durationp_avg
from ._query_match_length_durationp99 import query_match_length_durationp99
from ._query_total_active_session import query_total_active_session
from ._query_total_matchmaking_match import query_total_matchmaking_match
from ._query_total_player_persession import query_total_player_persession
from ._query_total_matchmaking_canceled import query_total_matchmaking_canceled
from ._query_total_matchmaking_created import query_total_matchmaking_created
from ._query_total_matchmaking_expired import query_total_matchmaking_expired
from ._query_total_matchmaking_match_ticket import query_total_matchmaking_match_ticket
from ._create_xray_ticket_observability import create_xray_ticket_observability
from ._query_xray_timeline_by_ticket_id import query_xray_timeline_by_ticket_id
from ._query_xray_timeline_by_user_id import query_xray_timeline_by_user_id


commands = [
    get_healthcheck_info,
    get_healthcheck_info_v1,
    admin_get_log_config,
    admin_patch_update_log_config,
    admin_query_game_session_detail,
    get_game_session_detail,
    admin_query_matchmaking_detail,
    admin_get_matchmaking_detail_by_session_id,
    admin_get_matchmaking_detail_by_ticket_id,
    admin_query_party_detail,
    get_party_detail,
    admin_query_ticket_detail,
    admin_ticket_detail_get_by_ticket_id,
    public_query_game_session_me,
    query_xray_match_pool,
    query_detail_tick_match_pool,
    query_detail_tick_match_pool_matches,
    query_detail_tick_match_pool_ticket,
    query_match_histories,
    query_match_ticket_histories,
    query_xray_match,
    query_acquiring_ds,
    query_acquiring_ds_wait_time_avg,
    query_match_length_durationp_avg,
    query_match_length_durationp99,
    query_total_active_session,
    query_total_matchmaking_match,
    query_total_player_persession,
    query_total_matchmaking_canceled,
    query_total_matchmaking_created,
    query_total_matchmaking_expired,
    query_total_matchmaking_match_ticket,
    create_xray_ticket_observability,
    query_xray_timeline_by_ticket_id,
    query_xray_timeline_by_user_id,
]
