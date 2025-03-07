# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Session Service."""

__version__ = "3.23.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# certificate
from .wrappers import admin_upload_x_box_certificate
from .wrappers import admin_upload_x_box_certificate_async

# config
from .wrappers import admin_get_log_config
from .wrappers import admin_get_log_config_async
from .wrappers import admin_patch_update_log_config
from .wrappers import admin_patch_update_log_config_async

# configuration_template
from .wrappers import admin_create_configuration_alert_v1
from .wrappers import admin_create_configuration_alert_v1_async
from .wrappers import admin_create_configuration_template_v1
from .wrappers import admin_create_configuration_template_v1_async
from .wrappers import admin_delete_configuration_alert_v1
from .wrappers import admin_delete_configuration_alert_v1_async
from .wrappers import admin_delete_configuration_template_v1
from .wrappers import admin_delete_configuration_template_v1_async
from .wrappers import admin_get_all_configuration_templates_v1
from .wrappers import admin_get_all_configuration_templates_v1_async
from .wrappers import admin_get_configuration_alert_v1
from .wrappers import admin_get_configuration_alert_v1_async
from .wrappers import admin_get_configuration_template_v1
from .wrappers import admin_get_configuration_template_v1_async
from .wrappers import admin_get_dsmc_configuration
from .wrappers import admin_get_dsmc_configuration_async
from .wrappers import admin_sync_dsmc_configuration
from .wrappers import admin_sync_dsmc_configuration_async
from .wrappers import admin_update_configuration_alert_v1
from .wrappers import admin_update_configuration_alert_v1_async
from .wrappers import admin_update_configuration_template_v1
from .wrappers import admin_update_configuration_template_v1_async

# dsmc_default_configuration
from .wrappers import admin_get_dsmc_configuration_default
from .wrappers import admin_get_dsmc_configuration_default_async

# environment_variable
from .wrappers import admin_list_environment_variables
from .wrappers import admin_list_environment_variables_async

# game_session
from .wrappers import admin_delete_bulk_game_sessions
from .wrappers import admin_delete_bulk_game_sessions_async
from .wrappers import admin_kick_game_session_member
from .wrappers import admin_kick_game_session_member_async
from .wrappers import admin_query_game_sessions
from .wrappers import admin_query_game_sessions_async
from .wrappers import admin_query_game_sessions_by_attributes
from .wrappers import admin_query_game_sessions_by_attributes_async
from .wrappers import admin_set_ds_ready
from .wrappers import admin_set_ds_ready_async
from .wrappers import admin_update_ds_information
from .wrappers import admin_update_ds_information_async
from .wrappers import admin_update_game_session_member
from .wrappers import admin_update_game_session_member_async
from .wrappers import append_team_game_session
from .wrappers import append_team_game_session_async
from .wrappers import create_game_session
from .wrappers import create_game_session_async
from .wrappers import delete_game_session
from .wrappers import delete_game_session_async
from .wrappers import game_session_generate_code
from .wrappers import game_session_generate_code_async
from .wrappers import get_game_session
from .wrappers import get_game_session_async
from .wrappers import get_game_session_by_pod_name
from .wrappers import get_game_session_by_pod_name_async
from .wrappers import get_session_server_secret
from .wrappers import get_session_server_secret_async
from .wrappers import join_game_session
from .wrappers import join_game_session_async
from .wrappers import leave_game_session
from .wrappers import leave_game_session_async
from .wrappers import patch_update_game_session
from .wrappers import patch_update_game_session_async
from .wrappers import public_game_session_cancel
from .wrappers import public_game_session_cancel_async
from .wrappers import public_game_session_invite
from .wrappers import public_game_session_invite_async
from .wrappers import public_game_session_reject
from .wrappers import public_game_session_reject_async
from .wrappers import public_kick_game_session_member
from .wrappers import public_kick_game_session_member_async
from .wrappers import public_promote_game_session_leader
from .wrappers import public_promote_game_session_leader_async
from .wrappers import public_query_game_sessions_by_attributes
from .wrappers import public_query_game_sessions_by_attributes_async
from .wrappers import public_query_my_game_sessions
from .wrappers import public_query_my_game_sessions_async
from .wrappers import public_revoke_game_session_code
from .wrappers import public_revoke_game_session_code_async
from .wrappers import public_session_join_code
from .wrappers import public_session_join_code_async
from .wrappers import update_game_session
from .wrappers import update_game_session_async
from .wrappers import update_game_session_backfill_ticket_id
from .wrappers import update_game_session_backfill_ticket_id_async

# global_configuration
from .wrappers import admin_delete_global_configuration
from .wrappers import admin_delete_global_configuration_async
from .wrappers import admin_list_global_configuration
from .wrappers import admin_list_global_configuration_async
from .wrappers import admin_update_global_configuration
from .wrappers import admin_update_global_configuration_async

# max_active
from .wrappers import admin_get_member_active_session
from .wrappers import admin_get_member_active_session_async
from .wrappers import admin_reconcile_max_active_session
from .wrappers import admin_reconcile_max_active_session_async

# native_session
from .wrappers import admin_get_list_native_session
from .wrappers import admin_get_list_native_session_async

# operations
from .wrappers import get_healthcheck_info
from .wrappers import get_healthcheck_info_async
from .wrappers import get_healthcheck_info_v1
from .wrappers import get_healthcheck_info_v1_async

# party
from .wrappers import admin_delete_bulk_parties
from .wrappers import admin_delete_bulk_parties_async
from .wrappers import admin_query_parties
from .wrappers import admin_query_parties_async
from .wrappers import admin_sync_native_session
from .wrappers import admin_sync_native_session_async
from .wrappers import public_create_party
from .wrappers import public_create_party_async
from .wrappers import public_generate_party_code
from .wrappers import public_generate_party_code_async
from .wrappers import public_get_party
from .wrappers import public_get_party_async
from .wrappers import public_party_cancel
from .wrappers import public_party_cancel_async
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

# platform_credential
from .wrappers import admin_delete_platform_credentials
from .wrappers import admin_delete_platform_credentials_async
from .wrappers import admin_delete_platform_credentials_by_platform_id
from .wrappers import admin_delete_platform_credentials_by_platform_id_async
from .wrappers import admin_get_platform_credentials
from .wrappers import admin_get_platform_credentials_async
from .wrappers import admin_sync_platform_credentials
from .wrappers import admin_sync_platform_credentials_async
from .wrappers import admin_update_platform_credentials
from .wrappers import admin_update_platform_credentials_async

# player
from .wrappers import admin_get_player_attributes
from .wrappers import admin_get_player_attributes_async
from .wrappers import admin_query_player_attributes
from .wrappers import admin_query_player_attributes_async
from .wrappers import public_delete_player_attributes
from .wrappers import public_delete_player_attributes_async
from .wrappers import public_get_bulk_player_current_platform
from .wrappers import public_get_bulk_player_current_platform_async
from .wrappers import public_get_player_attributes
from .wrappers import public_get_player_attributes_async
from .wrappers import public_store_player_attributes
from .wrappers import public_store_player_attributes_async

# recent_player
from .wrappers import admin_get_recent_player
from .wrappers import admin_get_recent_player_async
from .wrappers import admin_get_recent_team_player
from .wrappers import admin_get_recent_team_player_async
from .wrappers import public_get_recent_player
from .wrappers import public_get_recent_player_async
from .wrappers import public_get_recent_team_player
from .wrappers import public_get_recent_team_player_async

# session_storage
from .wrappers import admin_delete_user_session_storage
from .wrappers import admin_delete_user_session_storage_async
from .wrappers import admin_read_party_session_storage
from .wrappers import admin_read_party_session_storage_async
from .wrappers import admin_read_session_storage
from .wrappers import admin_read_session_storage_async
from .wrappers import admin_read_user_session_storage
from .wrappers import admin_read_user_session_storage_async
from .wrappers import public_read_party_session_storage
from .wrappers import public_read_party_session_storage_async
from .wrappers import public_update_insert_party_session_storage_reserved
from .wrappers import public_update_insert_party_session_storage_reserved_async
from .wrappers import public_update_insert_session_storage
from .wrappers import public_update_insert_session_storage_async
from .wrappers import public_update_insert_session_storage_leader
from .wrappers import public_update_insert_session_storage_leader_async
