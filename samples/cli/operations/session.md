## Python Extend SDK CLI Sample App Operation Index for Session service.

### Operation `get_healthcheck_info`
```sh
$ python -m accelbyte_py_sdk_cli 'session-get-healthcheck-info' \
    > result.txt
```

### Operation `get_healthcheck_info_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-get-healthcheck-info-v1' \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-log-config' \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-patch-update-log-config' \
    '{"logLevel": "debug"}' \
    > result.txt
```

### Operation `admin_list_environment_variables`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-list-environment-variables' \
    > result.txt
```

### Operation `admin_list_global_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-list-global-configuration' \
    > result.txt
```

### Operation `admin_update_global_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-update-global-configuration' \
    '{"metricExcludedNamespaces": ["string"], "regionRetryMapping": {"string": []}, "regionURLMapping": ["string"], "testGameMode": "string", "testRegionURLMapping": ["string"], "testTargetUserIDs": ["string"]}' \
    > result.txt
```

### Operation `admin_delete_global_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-global-configuration' \
    > result.txt
```

### Operation `admin_get_configuration_alert_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-configuration-alert-v1' \
    'string' \
    > result.txt
```

### Operation `admin_update_configuration_alert_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-update-configuration-alert-v1' \
    '{"durationDays": 1}' \
    'string' \
    > result.txt
```

### Operation `admin_create_configuration_alert_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-create-configuration-alert-v1' \
    '{"durationDays": 1}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_configuration_alert_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-configuration-alert-v1' \
    'string' \
    > result.txt
```

### Operation `admin_create_configuration_template_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-create-configuration-template-v1' \
    '{"NativeSessionSetting": {}, "PSNBaseUrl": "string", "amsClaimTimeoutMinutes": 1, "appName": "string", "asyncProcessDSRequest": {}, "attributes": {"string": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "string", "customURLGRPC": "string", "deployment": "string", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "string", "enableSecret": false, "fallbackClaimKeys": ["string"], "grpcSessionConfig": {}, "immutableStorage": false, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "leaderElectionGracePeriod": 1, "manualRejoin": false, "maxActiveSessions": 1, "maxPlayers": 1, "minPlayers": 1, "name": "string", "partyCodeLength": 1, "persistent": false, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 1, "type": "DS"}' \
    'string' \
    > result.txt
```

### Operation `admin_get_all_configuration_templates_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-all-configuration-templates-v1' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --order 'string' \
    --order_by 'string' \
    > result.txt
```

### Operation `admin_get_configuration_template_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-configuration-template-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_configuration_template_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-update-configuration-template-v1' \
    '{"NativeSessionSetting": {}, "PSNBaseUrl": "string", "amsClaimTimeoutMinutes": 1, "appName": "string", "asyncProcessDSRequest": {}, "attributes": {"string": {}}, "autoJoin": false, "autoLeaveSession": false, "clientVersion": "string", "customURLGRPC": "string", "deployment": "string", "disableCodeGeneration": false, "disableResendInvite": false, "dsManualSetReady": false, "dsSource": "string", "enableSecret": false, "fallbackClaimKeys": ["string"], "grpcSessionConfig": {}, "immutableStorage": false, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "leaderElectionGracePeriod": 1, "manualRejoin": false, "maxActiveSessions": 1, "maxPlayers": 1, "minPlayers": 1, "name": "string", "partyCodeLength": 1, "persistent": false, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "textChat": false, "textChatMode": "GAME", "tieTeamsSessionLifetime": false, "ttlHours": 1, "type": "DS"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_configuration_template_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-configuration-template-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_member_active_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-member-active-session' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_reconcile_max_active_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-reconcile-max-active-session' \
    '{"userID": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_query_game_sessions`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-query-game-sessions' \
    'string' \
    --configuration_name 'string' \
    --ds_pod_name 'string' \
    --from_time 'string' \
    --game_mode 'string' \
    --is_persistent 'string' \
    --is_soft_deleted 'string' \
    --joinability 'CLOSED' \
    --limit 1 \
    --match_pool 'string' \
    --member_id 'string' \
    --offset 1 \
    --order 'string' \
    --order_by 'string' \
    --session_id 'string' \
    --status 'AVAILABLE' \
    --status_v2 'AVAILABLE' \
    --to_time 'string' \
    > result.txt
```

### Operation `admin_query_game_sessions_by_attributes`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-query-game-sessions-by-attributes' \
    '{"string": {}}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_bulk_game_sessions`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-bulk-game-sessions' \
    '{"ids": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_set_ds_ready`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-set-ds-ready' \
    '{"ready": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_ds_information`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-update-ds-information' \
    '{"createdRegion": "string", "deployment": "string", "description": "string", "ip": "string", "port": 1, "region": "string", "serverId": "string", "source": "string", "status": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_kick_game_session_member`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-kick-game-session-member' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_game_session_member`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-update-game-session-member' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_list_native_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-list-native-session' \
    'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `admin_query_parties`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-query-parties' \
    'string' \
    --configuration_name 'string' \
    --from_time 'string' \
    --is_soft_deleted 'string' \
    --joinability 'CLOSED' \
    --key 'string' \
    --leader_id 'string' \
    --limit 1 \
    --member_id 'string' \
    --member_status 'CANCELLED' \
    --offset 1 \
    --order 'string' \
    --order_by 'string' \
    --party_id 'string' \
    --to_time 'string' \
    --value 'string' \
    > result.txt
```

### Operation `admin_delete_bulk_parties`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-bulk-parties' \
    '{"ids": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_read_party_session_storage`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-read-party-session-storage' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_platform_credentials`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-platform-credentials' \
    'string' \
    > result.txt
```

### Operation `admin_update_platform_credentials`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-update-platform-credentials' \
    '{"psn": {}}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_platform_credentials`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-platform-credentials' \
    'string' \
    > result.txt
```

### Operation `admin_delete_platform_credentials_by_platform_id`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-platform-credentials-by-platform-id' \
    'string' \
    'PSN' \
    > result.txt
```

### Operation `admin_sync_platform_credentials`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-sync-platform-credentials' \
    'string' \
    'XBOX' \
    > result.txt
```

### Operation `admin_get_recent_player`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-recent-player' \
    'string' \
    --limit 1 \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_get_recent_team_player`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-recent-team-player' \
    'string' \
    --limit 1 \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_read_session_storage`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-read-session-storage' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_user_session_storage`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-delete-user-session-storage' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_read_user_session_storage`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-read-user-session-storage' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_query_player_attributes`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-query-player-attributes' \
    'string' \
    --users 'string' \
    > result.txt
```

### Operation `admin_get_player_attributes`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-get-player-attributes' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_sync_native_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-admin-sync-native-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_game_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-create-game-session' \
    '{"appName": "string", "attributes": {"string": {}}, "autoJoin": false, "backfillTicketID": "string", "clientVersion": "string", "configurationName": "string", "customURLGRPC": "string", "deployment": "string", "dsSource": "string", "fallbackClaimKeys": ["string"], "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "matchPool": "string", "maxPlayers": 1, "minPlayers": 1, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "serverName": "string", "storage": {}, "teams": [{}], "textChat": false, "textChatMode": "GAME", "ticketIDs": ["string"], "tieTeamsSessionLifetime": false, "type": "DS"}' \
    'string' \
    --resolve_max_active_session false \
    > result.txt
```

### Operation `public_query_game_sessions_by_attributes`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-query-game-sessions-by-attributes' \
    '{"string": {}}' \
    'string' \
    > result.txt
```

### Operation `public_session_join_code`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-session-join-code' \
    '{"code": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_game_session_by_pod_name`
```sh
$ python -m accelbyte_py_sdk_cli 'session-get-game-session-by-pod-name' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_game_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-get-game-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_game_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-update-game-session' \
    '{"attributes": {"string": {}}, "backfillTicketID": "string", "clientVersion": "string", "deployment": "string", "fallbackClaimKeys": ["string"], "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "matchPool": "string", "maxPlayers": 1, "minPlayers": 1, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "teams": [{}], "ticketIDs": ["string"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_game_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-delete-game-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `patch_update_game_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-patch-update-game-session' \
    '{"attributes": {"string": {}}, "backfillTicketID": "string", "clientVersion": "string", "deployment": "string", "fallbackClaimKeys": ["string"], "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "matchPool": "string", "maxPlayers": 1, "minPlayers": 1, "preferredClaimKeys": ["string"], "requestedRegions": ["string"], "teams": [{}], "ticketIDs": ["string"], "tieTeamsSessionLifetime": false, "type": "DS", "version": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_game_session_backfill_ticket_id`
```sh
$ python -m accelbyte_py_sdk_cli 'session-update-game-session-backfill-ticket-id' \
    '{"backfillTicketID": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `game_session_generate_code`
```sh
$ python -m accelbyte_py_sdk_cli 'session-game-session-generate-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_revoke_game_session_code`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-revoke-game-session-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_game_session_invite`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-game-session-invite' \
    '{"metadata": {"string": "string"}, "platformID": "string", "userID": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `join_game_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-join-game-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_promote_game_session_leader`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-promote-game-session-leader' \
    '{"leaderID": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `leave_game_session`
```sh
$ python -m accelbyte_py_sdk_cli 'session-leave-game-session' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_kick_game_session_member`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-kick-game-session-member' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_game_session_reject`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-game-session-reject' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_session_server_secret`
```sh
$ python -m accelbyte_py_sdk_cli 'session-get-session-server-secret' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_game_session_cancel`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-game-session-cancel' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_party_join_code`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-party-join-code' \
    '{"code": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_get_party`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-get-party' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_party`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-update-party' \
    '{"attributes": {"string": {}}, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "maxPlayers": 1, "minPlayers": 1, "type": "DS", "version": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_patch_update_party`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-patch-update-party' \
    '{"attributes": {"string": {}}, "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "maxPlayers": 1, "minPlayers": 1, "type": "DS", "version": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_generate_party_code`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-generate-party-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_revoke_party_code`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-revoke-party-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_party_invite`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-party-invite' \
    '{"metadata": {"string": "string"}, "platformID": "string", "userID": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_promote_party_leader`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-promote-party-leader' \
    '{"leaderID": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_read_party_session_storage`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-read-party-session-storage' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_insert_party_session_storage_reserved`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-update-insert-party-session-storage-reserved' \
    '{"string": {}}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_party_join`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-party-join' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_party_leave`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-party-leave' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_party_reject`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-party-reject' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_party_cancel`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-party-cancel' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_party_kick`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-party-kick' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_create_party`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-create-party' \
    '{"attributes": {"string": {}}, "configurationName": "string", "inactiveTimeout": 1, "inviteTimeout": 1, "joinability": "CLOSED", "maxPlayers": 1, "members": [{}], "minPlayers": 1, "textChat": false, "type": "DS"}' \
    'string' \
    > result.txt
```

### Operation `public_get_recent_player`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-get-recent-player' \
    'string' \
    --limit 1 \
    > result.txt
```

### Operation `public_get_recent_team_player`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-get-recent-team-player' \
    'string' \
    --limit 1 \
    > result.txt
```

### Operation `public_update_insert_session_storage_leader`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-update-insert-session-storage-leader' \
    '{"string": {}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_insert_session_storage`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-update-insert-session-storage' \
    '{"string": {}}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_bulk_player_current_platform`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-get-bulk-player-current-platform' \
    '{"userIDs": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `public_get_player_attributes`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-get-player-attributes' \
    'string' \
    > result.txt
```

### Operation `public_store_player_attributes`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-store-player-attributes' \
    '{"crossplayEnabled": false, "currentPlatform": "string", "data": {"string": {}}, "platforms": [{}], "roles": ["string"], "simultaneousPlatform": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_delete_player_attributes`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-delete-player-attributes' \
    'string' \
    > result.txt
```

### Operation `public_query_my_game_sessions`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-query-my-game-sessions' \
    'string' \
    --order 'string' \
    --order_by 'string' \
    --status 'string' \
    > result.txt
```

### Operation `public_query_my_parties`
```sh
$ python -m accelbyte_py_sdk_cli 'session-public-query-my-parties' \
    'string' \
    --order 'string' \
    --order_by 'string' \
    --status 'string' \
    > result.txt
```

