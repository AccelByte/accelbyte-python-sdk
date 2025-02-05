# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-session-service

from ._get_healthcheck_info import get_healthcheck_info
from ._get_healthcheck_info_v1 import get_healthcheck_info_v1
from ._admin_get_log_config import admin_get_log_config
from ._admin_patch_update_log_config import admin_patch_update_log_config
from ._admin_get_dsmc_configuration_default import admin_get_dsmc_configuration_default
from ._admin_list_environment_variables import admin_list_environment_variables
from ._admin_list_global_configuration import admin_list_global_configuration
from ._admin_update_global_configuration import admin_update_global_configuration
from ._admin_delete_global_configuration import admin_delete_global_configuration
from ._admin_get_configuration_alert_v1 import admin_get_configuration_alert_v1
from ._admin_update_configuration_alert_v1 import admin_update_configuration_alert_v1
from ._admin_create_configuration_alert_v1 import admin_create_configuration_alert_v1
from ._admin_delete_configuration_alert_v1 import admin_delete_configuration_alert_v1
from ._admin_upload_x_box_certificate import admin_upload_x_box_certificate
from ._admin_create_configuration_template_v1 import (
    admin_create_configuration_template_v1,
)
from ._admin_get_all_configuration_templates_v1 import (
    admin_get_all_configuration_templates_v1,
)
from ._admin_get_configuration_template_v1 import admin_get_configuration_template_v1
from ._admin_update_configuration_template_v1 import (
    admin_update_configuration_template_v1,
)
from ._admin_delete_configuration_template_v1 import (
    admin_delete_configuration_template_v1,
)
from ._admin_get_member_active_session import admin_get_member_active_session
from ._admin_reconcile_max_active_session import admin_reconcile_max_active_session
from ._admin_get_dsmc_configuration import admin_get_dsmc_configuration
from ._admin_sync_dsmc_configuration import admin_sync_dsmc_configuration
from ._admin_query_game_sessions import admin_query_game_sessions
from ._admin_query_game_sessions_by_attributes import (
    admin_query_game_sessions_by_attributes,
)
from ._admin_delete_bulk_game_sessions import admin_delete_bulk_game_sessions
from ._admin_set_ds_ready import admin_set_ds_ready
from ._admin_update_ds_information import admin_update_ds_information
from ._admin_kick_game_session_member import admin_kick_game_session_member
from ._admin_update_game_session_member import admin_update_game_session_member
from ._admin_get_list_native_session import admin_get_list_native_session
from ._admin_query_parties import admin_query_parties
from ._admin_delete_bulk_parties import admin_delete_bulk_parties
from ._admin_read_party_session_storage import admin_read_party_session_storage
from ._admin_get_platform_credentials import admin_get_platform_credentials
from ._admin_update_platform_credentials import admin_update_platform_credentials
from ._admin_delete_platform_credentials import admin_delete_platform_credentials
from ._admin_delete_platform_credentials_by_platform_id import (
    admin_delete_platform_credentials_by_platform_id,
)
from ._admin_sync_platform_credentials import admin_sync_platform_credentials
from ._admin_get_recent_player import admin_get_recent_player
from ._admin_get_recent_team_player import admin_get_recent_team_player
from ._admin_read_session_storage import admin_read_session_storage
from ._admin_delete_user_session_storage import admin_delete_user_session_storage
from ._admin_read_user_session_storage import admin_read_user_session_storage
from ._admin_query_player_attributes import admin_query_player_attributes
from ._admin_get_player_attributes import admin_get_player_attributes
from ._admin_sync_native_session import admin_sync_native_session
from ._create_game_session import create_game_session
from ._public_query_game_sessions_by_attributes import (
    public_query_game_sessions_by_attributes,
)
from ._public_session_join_code import public_session_join_code
from ._get_game_session_by_pod_name import get_game_session_by_pod_name
from ._get_game_session import get_game_session
from ._update_game_session import update_game_session
from ._delete_game_session import delete_game_session
from ._patch_update_game_session import patch_update_game_session
from ._update_game_session_backfill_ticket_id import (
    update_game_session_backfill_ticket_id,
)
from ._game_session_generate_code import game_session_generate_code
from ._public_revoke_game_session_code import public_revoke_game_session_code
from ._public_game_session_invite import public_game_session_invite
from ._join_game_session import join_game_session
from ._public_promote_game_session_leader import public_promote_game_session_leader
from ._leave_game_session import leave_game_session
from ._public_kick_game_session_member import public_kick_game_session_member
from ._public_game_session_reject import public_game_session_reject
from ._get_session_server_secret import get_session_server_secret
from ._append_team_game_session import append_team_game_session
from ._public_game_session_cancel import public_game_session_cancel
from ._public_party_join_code import public_party_join_code
from ._public_get_party import public_get_party
from ._public_update_party import public_update_party
from ._public_patch_update_party import public_patch_update_party
from ._public_generate_party_code import public_generate_party_code
from ._public_revoke_party_code import public_revoke_party_code
from ._public_party_invite import public_party_invite
from ._public_promote_party_leader import public_promote_party_leader
from ._public_read_party_session_storage import public_read_party_session_storage
from ._public_update_insert_party_session_storage_reserved import (
    public_update_insert_party_session_storage_reserved,
)
from ._public_party_join import public_party_join
from ._public_party_leave import public_party_leave
from ._public_party_reject import public_party_reject
from ._public_party_cancel import public_party_cancel
from ._public_party_kick import public_party_kick
from ._public_create_party import public_create_party
from ._public_get_recent_player import public_get_recent_player
from ._public_get_recent_team_player import public_get_recent_team_player
from ._public_update_insert_session_storage_leader import (
    public_update_insert_session_storage_leader,
)
from ._public_update_insert_session_storage import public_update_insert_session_storage
from ._public_get_bulk_player_current_platform import (
    public_get_bulk_player_current_platform,
)
from ._public_get_player_attributes import public_get_player_attributes
from ._public_store_player_attributes import public_store_player_attributes
from ._public_delete_player_attributes import public_delete_player_attributes
from ._public_query_my_game_sessions import public_query_my_game_sessions
from ._public_query_my_parties import public_query_my_parties


commands = [
    get_healthcheck_info,
    get_healthcheck_info_v1,
    admin_get_log_config,
    admin_patch_update_log_config,
    admin_get_dsmc_configuration_default,
    admin_list_environment_variables,
    admin_list_global_configuration,
    admin_update_global_configuration,
    admin_delete_global_configuration,
    admin_get_configuration_alert_v1,
    admin_update_configuration_alert_v1,
    admin_create_configuration_alert_v1,
    admin_delete_configuration_alert_v1,
    admin_upload_x_box_certificate,
    admin_create_configuration_template_v1,
    admin_get_all_configuration_templates_v1,
    admin_get_configuration_template_v1,
    admin_update_configuration_template_v1,
    admin_delete_configuration_template_v1,
    admin_get_member_active_session,
    admin_reconcile_max_active_session,
    admin_get_dsmc_configuration,
    admin_sync_dsmc_configuration,
    admin_query_game_sessions,
    admin_query_game_sessions_by_attributes,
    admin_delete_bulk_game_sessions,
    admin_set_ds_ready,
    admin_update_ds_information,
    admin_kick_game_session_member,
    admin_update_game_session_member,
    admin_get_list_native_session,
    admin_query_parties,
    admin_delete_bulk_parties,
    admin_read_party_session_storage,
    admin_get_platform_credentials,
    admin_update_platform_credentials,
    admin_delete_platform_credentials,
    admin_delete_platform_credentials_by_platform_id,
    admin_sync_platform_credentials,
    admin_get_recent_player,
    admin_get_recent_team_player,
    admin_read_session_storage,
    admin_delete_user_session_storage,
    admin_read_user_session_storage,
    admin_query_player_attributes,
    admin_get_player_attributes,
    admin_sync_native_session,
    create_game_session,
    public_query_game_sessions_by_attributes,
    public_session_join_code,
    get_game_session_by_pod_name,
    get_game_session,
    update_game_session,
    delete_game_session,
    patch_update_game_session,
    update_game_session_backfill_ticket_id,
    game_session_generate_code,
    public_revoke_game_session_code,
    public_game_session_invite,
    join_game_session,
    public_promote_game_session_leader,
    leave_game_session,
    public_kick_game_session_member,
    public_game_session_reject,
    get_session_server_secret,
    append_team_game_session,
    public_game_session_cancel,
    public_party_join_code,
    public_get_party,
    public_update_party,
    public_patch_update_party,
    public_generate_party_code,
    public_revoke_party_code,
    public_party_invite,
    public_promote_party_leader,
    public_read_party_session_storage,
    public_update_insert_party_session_storage_reserved,
    public_party_join,
    public_party_leave,
    public_party_reject,
    public_party_cancel,
    public_party_kick,
    public_create_party,
    public_get_recent_player,
    public_get_recent_team_player,
    public_update_insert_session_storage_leader,
    public_update_insert_session_storage,
    public_get_bulk_player_current_platform,
    public_get_player_attributes,
    public_store_player_attributes,
    public_delete_player_attributes,
    public_query_my_game_sessions,
    public_query_my_parties,
]
