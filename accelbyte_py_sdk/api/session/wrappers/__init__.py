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

from ._configuration_template import admin_create_configuration_template_v1
from ._configuration_template import admin_create_configuration_template_v1_async
from ._configuration_template import admin_delete_configuration_template_v1
from ._configuration_template import admin_delete_configuration_template_v1_async
from ._configuration_template import admin_get_all_configuration_templates_v1
from ._configuration_template import admin_get_all_configuration_templates_v1_async
from ._configuration_template import admin_get_configuration_template_v1
from ._configuration_template import admin_get_configuration_template_v1_async
from ._configuration_template import admin_update_configuration_template_v1
from ._configuration_template import admin_update_configuration_template_v1_async

from ._game_session import admin_query_game_sessions
from ._game_session import admin_query_game_sessions_async
from ._game_session import admin_update_game_session_member
from ._game_session import admin_update_game_session_member_async
from ._game_session import create_game_session
from ._game_session import create_game_session_async
from ._game_session import delete_game_session
from ._game_session import delete_game_session_async
from ._game_session import get_game_session
from ._game_session import get_game_session_async
from ._game_session import get_game_session_by_pod_name
from ._game_session import get_game_session_by_pod_name_async
from ._game_session import join_game_session
from ._game_session import join_game_session_async
from ._game_session import leave_game_session
from ._game_session import leave_game_session_async
from ._game_session import patch_update_game_session
from ._game_session import patch_update_game_session_async
from ._game_session import public_game_session_invite
from ._game_session import public_game_session_invite_async
from ._game_session import public_game_session_reject
from ._game_session import public_game_session_reject_async
from ._game_session import public_query_game_sessions
from ._game_session import public_query_game_sessions_async
from ._game_session import public_query_my_game_sessions
from ._game_session import public_query_my_game_sessions_async
from ._game_session import update_game_session
from ._game_session import update_game_session_async

from ._operations import get_healthcheck_info
from ._operations import get_healthcheck_info_async
from ._operations import get_healthcheck_info_v1
from ._operations import get_healthcheck_info_v1_async

from ._party import admin_query_parties
from ._party import admin_query_parties_async
from ._party import public_create_party
from ._party import public_create_party_async
from ._party import public_generate_party_code
from ._party import public_generate_party_code_async
from ._party import public_get_party
from ._party import public_get_party_async
from ._party import public_party_invite
from ._party import public_party_invite_async
from ._party import public_party_join
from ._party import public_party_join_async
from ._party import public_party_join_code
from ._party import public_party_join_code_async
from ._party import public_party_kick
from ._party import public_party_kick_async
from ._party import public_party_leave
from ._party import public_party_leave_async
from ._party import public_party_reject
from ._party import public_party_reject_async
from ._party import public_patch_update_party
from ._party import public_patch_update_party_async
from ._party import public_promote_party_leader
from ._party import public_promote_party_leader_async
from ._party import public_query_my_parties
from ._party import public_query_my_parties_async
from ._party import public_revoke_party_code
from ._party import public_revoke_party_code_async
from ._party import public_update_party
from ._party import public_update_party_async

from ._player import admin_get_player_attributes
from ._player import admin_get_player_attributes_async
from ._player import admin_query_player_attributes
from ._player import admin_query_player_attributes_async
from ._player import public_delete_player_attributes
from ._player import public_delete_player_attributes_async
from ._player import public_get_player_attributes
from ._player import public_get_player_attributes_async
from ._player import public_store_player_attributes
from ._player import public_store_player_attributes_async
