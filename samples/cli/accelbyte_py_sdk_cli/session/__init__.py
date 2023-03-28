# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-session-service (2.7.3)

from ._get_healthcheck_info import get_healthcheck_info
from ._get_healthcheck_info_v1 import get_healthcheck_info_v1
from ._admin_get_dsmc_configuration_default import admin_get_dsmc_configuration_default
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
from ._admin_get_dsmc_configuration import admin_get_dsmc_configuration
from ._admin_sync_dsmc_configuration import admin_sync_dsmc_configuration
from ._admin_query_game_sessions import admin_query_game_sessions
from ._admin_update_game_session_member import admin_update_game_session_member
from ._admin_query_parties import admin_query_parties
from ._admin_query_player_attributes import admin_query_player_attributes
from ._admin_get_player_attributes import admin_get_player_attributes
from ._create_game_session import create_game_session
from ._public_query_game_sessions import public_query_game_sessions
from ._get_game_session_by_pod_name import get_game_session_by_pod_name
from ._get_game_session import get_game_session
from ._update_game_session import update_game_session
from ._delete_game_session import delete_game_session
from ._patch_update_game_session import patch_update_game_session
from ._update_game_session_backfill_ticket_id import (
    update_game_session_backfill_ticket_id,
)
from ._public_game_session_invite import public_game_session_invite
from ._join_game_session import join_game_session
from ._leave_game_session import leave_game_session
from ._public_game_session_reject import public_game_session_reject
from ._append_team_game_session import append_team_game_session
from ._public_party_join_code import public_party_join_code
from ._public_get_party import public_get_party
from ._public_update_party import public_update_party
from ._public_patch_update_party import public_patch_update_party
from ._public_generate_party_code import public_generate_party_code
from ._public_revoke_party_code import public_revoke_party_code
from ._public_party_invite import public_party_invite
from ._public_promote_party_leader import public_promote_party_leader
from ._public_party_join import public_party_join
from ._public_party_leave import public_party_leave
from ._public_party_reject import public_party_reject
from ._public_party_kick import public_party_kick
from ._public_create_party import public_create_party
from ._public_get_player_attributes import public_get_player_attributes
from ._public_store_player_attributes import public_store_player_attributes
from ._public_delete_player_attributes import public_delete_player_attributes
from ._public_query_my_game_sessions import public_query_my_game_sessions
from ._public_query_my_parties import public_query_my_parties


commands = [
    get_healthcheck_info,
    get_healthcheck_info_v1,
    admin_get_dsmc_configuration_default,
    admin_create_configuration_template_v1,
    admin_get_all_configuration_templates_v1,
    admin_get_configuration_template_v1,
    admin_update_configuration_template_v1,
    admin_delete_configuration_template_v1,
    admin_get_dsmc_configuration,
    admin_sync_dsmc_configuration,
    admin_query_game_sessions,
    admin_update_game_session_member,
    admin_query_parties,
    admin_query_player_attributes,
    admin_get_player_attributes,
    create_game_session,
    public_query_game_sessions,
    get_game_session_by_pod_name,
    get_game_session,
    update_game_session,
    delete_game_session,
    patch_update_game_session,
    update_game_session_backfill_ticket_id,
    public_game_session_invite,
    join_game_session,
    leave_game_session,
    public_game_session_reject,
    append_team_game_session,
    public_party_join_code,
    public_get_party,
    public_update_party,
    public_patch_update_party,
    public_generate_party_code,
    public_revoke_party_code,
    public_party_invite,
    public_promote_party_leader,
    public_party_join,
    public_party_leave,
    public_party_reject,
    public_party_kick,
    public_create_party,
    public_get_player_attributes,
    public_store_player_attributes,
    public_delete_player_attributes,
    public_query_my_game_sessions,
    public_query_my_parties,
]
