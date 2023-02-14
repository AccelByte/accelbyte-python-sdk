# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

"""Auto-generated package that contains models used by the AccelByte Cloud Session Service."""

__version__ = "2.6.1"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# configuration_template
from .wrappers import admin_create_configuration_template_v1
from .wrappers import admin_create_configuration_template_v1_async
from .wrappers import admin_delete_configuration_template_v1
from .wrappers import admin_delete_configuration_template_v1_async
from .wrappers import admin_get_all_configuration_templates_v1
from .wrappers import admin_get_all_configuration_templates_v1_async
from .wrappers import admin_get_configuration_template_v1
from .wrappers import admin_get_configuration_template_v1_async
from .wrappers import admin_update_configuration_template_v1
from .wrappers import admin_update_configuration_template_v1_async

# game_session
from .wrappers import admin_query_game_sessions
from .wrappers import admin_query_game_sessions_async
from .wrappers import admin_update_game_session_member
from .wrappers import admin_update_game_session_member_async
from .wrappers import create_game_session
from .wrappers import create_game_session_async
from .wrappers import delete_game_session
from .wrappers import delete_game_session_async
from .wrappers import get_game_session
from .wrappers import get_game_session_async
from .wrappers import get_game_session_by_pod_name
from .wrappers import get_game_session_by_pod_name_async
from .wrappers import join_game_session
from .wrappers import join_game_session_async
from .wrappers import leave_game_session
from .wrappers import leave_game_session_async
from .wrappers import patch_update_game_session
from .wrappers import patch_update_game_session_async
from .wrappers import public_game_session_invite
from .wrappers import public_game_session_invite_async
from .wrappers import public_game_session_reject
from .wrappers import public_game_session_reject_async
from .wrappers import public_query_game_sessions
from .wrappers import public_query_game_sessions_async
from .wrappers import public_query_my_game_sessions
from .wrappers import public_query_my_game_sessions_async
from .wrappers import update_game_session
from .wrappers import update_game_session_async

# operations
from .wrappers import get_healthcheck_info
from .wrappers import get_healthcheck_info_async
from .wrappers import get_healthcheck_info_v1
from .wrappers import get_healthcheck_info_v1_async

# party
from .wrappers import admin_query_parties
from .wrappers import admin_query_parties_async
from .wrappers import public_create_party
from .wrappers import public_create_party_async
from .wrappers import public_generate_party_code
from .wrappers import public_generate_party_code_async
from .wrappers import public_get_party
from .wrappers import public_get_party_async
from .wrappers import public_party_invite
from .wrappers import public_party_invite_async
from .wrappers import public_party_join
from .wrappers import public_party_join_async
from .wrappers import public_party_join_code
from .wrappers import public_party_join_code_async
from .wrappers import public_party_kick
from .wrappers import public_party_kick_async
from .wrappers import public_party_leave
from .wrappers import public_party_leave_async
from .wrappers import public_party_reject
from .wrappers import public_party_reject_async
from .wrappers import public_patch_update_party
from .wrappers import public_patch_update_party_async
from .wrappers import public_promote_party_leader
from .wrappers import public_promote_party_leader_async
from .wrappers import public_query_my_parties
from .wrappers import public_query_my_parties_async
from .wrappers import public_revoke_party_code
from .wrappers import public_revoke_party_code_async
from .wrappers import public_update_party
from .wrappers import public_update_party_async

# player
from .wrappers import admin_get_player_attributes
from .wrappers import admin_get_player_attributes_async
from .wrappers import admin_query_player_attributes
from .wrappers import admin_query_player_attributes_async
from .wrappers import public_delete_player_attributes
from .wrappers import public_delete_player_attributes_async
from .wrappers import public_get_player_attributes
from .wrappers import public_get_player_attributes_async
from .wrappers import public_store_player_attributes
from .wrappers import public_store_player_attributes_async
