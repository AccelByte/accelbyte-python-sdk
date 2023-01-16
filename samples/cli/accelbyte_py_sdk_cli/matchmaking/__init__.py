# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# Justice Matchmaking Service (2.20.0)

from ._get_healthcheck_info import get_healthcheck_info
from ._handler_v3_healthz import handler_v3_healthz
from ._get_all_channels_handler import get_all_channels_handler
from ._create_channel_handler import create_channel_handler
from ._delete_channel_handler import delete_channel_handler
from ._store_match_results import store_match_results
from ._rebalance import rebalance
from ._queue_session_handler import queue_session_handler
from ._dequeue_session_handler import dequeue_session_handler
from ._query_session_handler import query_session_handler
from ._update_play_time_weight import update_play_time_weight
from ._get_all_party_in_all_channel import get_all_party_in_all_channel
from ._bulk_get_sessions import bulk_get_sessions
from ._export_channels import export_channels
from ._import_channels import import_channels
from ._get_single_matchmaking_channel import get_single_matchmaking_channel
from ._update_matchmaking_channel import update_matchmaking_channel
from ._get_all_party_in_channel import get_all_party_in_channel
from ._get_all_sessions_in_channel import get_all_sessions_in_channel
from ._add_user_into_session_in_channel import add_user_into_session_in_channel
from ._delete_session_in_channel import delete_session_in_channel
from ._delete_user_from_session_in_channel import delete_user_from_session_in_channel
from ._search_sessions import search_sessions
from ._get_session_history_detailed import get_session_history_detailed
from ._public_get_messages import public_get_messages
from ._public_get_all_matchmaking_channel import public_get_all_matchmaking_channel
from ._public_get_single_matchmaking_channel import (
    public_get_single_matchmaking_channel,
)
from ._search_sessions_v2 import search_sessions_v2
from ._version_check_handler import version_check_handler


commands = [
    get_healthcheck_info,
    handler_v3_healthz,
    get_all_channels_handler,
    create_channel_handler,
    delete_channel_handler,
    store_match_results,
    rebalance,
    queue_session_handler,
    dequeue_session_handler,
    query_session_handler,
    update_play_time_weight,
    get_all_party_in_all_channel,
    bulk_get_sessions,
    export_channels,
    import_channels,
    get_single_matchmaking_channel,
    update_matchmaking_channel,
    get_all_party_in_channel,
    get_all_sessions_in_channel,
    add_user_into_session_in_channel,
    delete_session_in_channel,
    delete_user_from_session_in_channel,
    search_sessions,
    get_session_history_detailed,
    public_get_messages,
    public_get_all_matchmaking_channel,
    public_get_single_matchmaking_channel,
    search_sessions_v2,
    version_check_handler,
]
