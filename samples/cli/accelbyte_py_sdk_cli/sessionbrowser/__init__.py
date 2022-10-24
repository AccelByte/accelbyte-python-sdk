# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-session-browser-service ()

from ._get_total_active_session import get_total_active_session
from ._get_active_custom_game_sessions import get_active_custom_game_sessions
from ._get_active_matchmaking_game_sessions import get_active_matchmaking_game_sessions
from ._admin_get_session import admin_get_session
from ._admin_delete_session import admin_delete_session
from ._admin_search_sessions_v2 import admin_search_sessions_v2
from ._get_session_history_detailed import get_session_history_detailed
from ._query_session import query_session
from ._create_session import create_session
from ._get_session_by_user_i_ds import get_session_by_user_i_ds
from ._get_session import get_session
from ._update_session import update_session
from ._delete_session import delete_session
from ._join_session import join_session
from ._delete_session_local_ds import delete_session_local_ds
from ._add_player_to_session import add_player_to_session
from ._remove_player_from_session import remove_player_from_session
from ._update_settings import update_settings
from ._get_recent_player import get_recent_player


commands = [
    get_total_active_session,
    get_active_custom_game_sessions,
    get_active_matchmaking_game_sessions,
    admin_get_session,
    admin_delete_session,
    admin_search_sessions_v2,
    get_session_history_detailed,
    query_session,
    create_session,
    get_session_by_user_i_ds,
    get_session,
    update_session,
    delete_session,
    join_session,
    delete_session_local_ds,
    add_player_to_session,
    remove_player_from_session,
    update_settings,
    get_recent_player,
]
