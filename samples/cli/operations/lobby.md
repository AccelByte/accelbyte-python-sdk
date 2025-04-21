## Python Extend SDK CLI Sample App Operation Index for Lobby service.

### Operation `get_user_friends_updated`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-user-friends-updated' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_incoming_friends`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-user-incoming-friends' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_incoming_friends_with_time`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-user-incoming-friends-with-time' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_outgoing_friends`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-user-outgoing-friends' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_outgoing_friends_with_time`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-user-outgoing-friends-with-time' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_friends_with_platform`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-user-friends-with-platform' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `user_request_friend`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-user-request-friend' \
    '{"friendId": "string", "friendPublicId": "string", "metadata": {"string": "string"}}' \
    'string' \
    > result.txt
```

### Operation `user_accept_friend_request`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-user-accept-friend-request' \
    '{"friendId": "string"}' \
    'string' \
    > result.txt
```

### Operation `user_cancel_friend_request`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-user-cancel-friend-request' \
    '{"friendId": "string"}' \
    'string' \
    > result.txt
```

### Operation `user_reject_friend_request`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-user-reject-friend-request' \
    '{"friendId": "string"}' \
    'string' \
    > result.txt
```

### Operation `user_get_friendship_status`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-user-get-friendship-status' \
    'string' \
    'string' \
    > result.txt
```

### Operation `user_unfriend_request`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-user-unfriend-request' \
    '{"friendId": "string"}' \
    'string' \
    > result.txt
```

### Operation `add_friends_without_confirmation`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-add-friends-without-confirmation' \
    '{"friendIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_delete_friends`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-bulk-delete-friends' \
    '{"friendIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `sync_native_friends`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-sync-native-friends' \
    '[{"isLogin": false, "platformId": "string", "platformToken": "string", "psnEnv": "string"}]' \
    'string' \
    > result.txt
```

### Operation `sync_native_blocked_user`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-sync-native-blocked-user' \
    '[{"platformId": "string", "psnEnv": "string"}]' \
    'string' \
    > result.txt
```

### Operation `admin_get_all_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-get-all-config-v1' \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-get-log-config' \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-patch-update-log-config' \
    '{"logLevel": "debug", "logLevelDB": "debug", "slowQueryThreshold": 1, "socketLogEnabled": false}' \
    > result.txt
```

### Operation `admin_get_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-get-config-v1' \
    'string' \
    > result.txt
```

### Operation `admin_update_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-update-config-v1' \
    '{"allowInviteNonConnectedUser": false, "allowJoinPartyDuringMatchmaking": false, "autoKickOnDisconnect": false, "autoKickOnDisconnectDelay": 1, "cancelTicketOnDisconnect": false, "chatRateLimitBurst": 1, "chatRateLimitDuration": 1, "concurrentUsersLimit": 1, "disableInvitationOnJoinParty": false, "enableChat": false, "entitlementCheck": false, "entitlementItemID": "string", "generalRateLimitBurst": 1, "generalRateLimitDuration": 1, "keepPresenceActivityOnDisconnect": false, "maxDSWaitTime": 1, "maxFriendsLimit": 1, "maxPartyMember": 1, "profanityFilter": false, "readyConsentTimeout": 1, "requestMetadataMaxSize": 1, "unregisterDelay": 1}' \
    'string' \
    > result.txt
```

### Operation `admin_export_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-export-config-v1' \
    'string' \
    > result.txt
```

### Operation `admin_import_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-import-config-v1' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `get_list_of_friends`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-list-of-friends' \
    'string' \
    'string' \
    --friend_id 'string' \
    --friend_ids '["string"]' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_incoming_friend_requests`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-incoming-friend-requests' \
    'string' \
    'string' \
    --friend_id 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_list_friends_of_friends`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-list-friends-of-friends' \
    'string' \
    'string' \
    --friend_id 'string' \
    --limit 1 \
    --nopaging false \
    --offset 1 \
    > result.txt
```

### Operation `get_outgoing_friend_requests`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-outgoing-friend-requests' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `send_multiple_users_freeform_notification_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-send-multiple-users-freeform-notification-v1-admin' \
    '{"message": "string", "topicName": "string", "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `send_users_freeform_notification_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-send-users-freeform-notification-v1-admin' \
    '{"message": "string", "topicName": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_all_notification_templates_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-all-notification-templates-v1-admin' \
    'string' \
    > result.txt
```

### Operation `create_notification_template_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-create-notification-template-v1-admin' \
    '{"templateContent": "string", "templateLanguage": "string", "templateSlug": "string"}' \
    'string' \
    > result.txt
```

### Operation `send_users_templated_notification_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-send-users-templated-notification-v1-admin' \
    '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topicName": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_template_slug_localizations_template_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-template-slug-localizations-template-v1-admin' \
    'string' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `delete_notification_template_slug_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-delete-notification-template-slug-v1-admin' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_single_template_localization_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-single-template-localization-v1-admin' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_template_localization_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-update-template-localization-v1-admin' \
    '{"templateContent": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_template_localization_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-delete-template-localization-v1-admin' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `publish_template_localization_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-publish-template-localization-v1-admin' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_all_notification_topics_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-all-notification-topics-v1-admin' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `create_notification_topic_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-create-notification-topic-v1-admin' \
    '{"description": "string", "topicName": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_notification_topic_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-notification-topic-v1-admin' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_notification_topic_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-update-notification-topic-v1-admin' \
    '{"description": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_notification_topic_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-delete-notification-topic-v1-admin' \
    'string' \
    'string' \
    > result.txt
```

### Operation `send_specific_user_freeform_notification_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-send-specific-user-freeform-notification-v1-admin' \
    '{"message": "string", "topicName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `send_specific_user_templated_notification_v1_admin`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-send-specific-user-templated-notification-v1-admin' \
    '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topicName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_lobby_ccu`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-get-lobby-ccu' \
    'string' \
    > result.txt
```

### Operation `admin_get_bulk_player_blocked_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-get-bulk-player-blocked-players-v1' \
    '{"listBlockedUserId": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_player_blocked_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-get-player-blocked-players-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_player_blocked_by_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-get-player-blocked-by-players-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_block_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-bulk-block-players-v1' \
    '{"listBlockedUserId": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_unblock_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-admin-bulk-unblock-players-v1' \
    '{"listUnblockUserId": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-public-get-messages' \
    > result.txt
```

### Operation `public_player_block_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-public-player-block-players-v1' \
    '{"blockedUserId": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_get_player_blocked_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-public-get-player-blocked-players-v1' \
    'string' \
    > result.txt
```

### Operation `public_get_player_blocked_by_players_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-public-get-player-blocked-by-players-v1' \
    'string' \
    > result.txt
```

### Operation `public_unblock_player_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-public-unblock-player-v1' \
    '{"userId": "string"}' \
    'string' \
    > result.txt
```

### Operation `users_presence_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-users-presence-handler-v1' \
    'string' \
    'string' \
    --count_only false \
    > result.txt
```

### Operation `users_presence_handler_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-users-presence-handler-v2' \
    '{"userIDs": ["string"]}' \
    'string' \
    --count_only false \
    > result.txt
```

### Operation `free_form_notification`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-free-form-notification' \
    '{"message": "string", "topic": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_my_notifications`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-my-notifications' \
    'string' \
    --end_time 1 \
    --limit 1 \
    --offset 1 \
    --start_time 1 \
    > result.txt
```

### Operation `notification_with_template`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-notification-with-template' \
    '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topic": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_game_template`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-game-template' \
    'string' \
    > result.txt
```

### Operation `create_template`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-create-template' \
    '{"templateContent": "string", "templateLanguage": "string", "templateSlug": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_slug_template`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-slug-template' \
    'string' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `delete_template_slug`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-delete-template-slug' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_localization_template`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-localization-template' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_localization_template`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-update-localization-template' \
    '{"templateContent": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_template_localization`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-delete-template-localization' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `publish_template`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-publish-template' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_topic_by_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-topic-by-namespace' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    > result.txt
```

### Operation `create_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-create-topic' \
    '{"description": "string", "topic": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_topic_by_topic_name`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-get-topic-by-topic-name' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_topic_by_topic_name`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-update-topic-by-topic-name' \
    '{"description": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_topic_by_topic_name`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-delete-topic-by-topic-name' \
    'string' \
    'string' \
    > result.txt
```

### Operation `free_form_notification_by_user_id`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-free-form-notification-by-user-id' \
    '{"message": "string", "topic": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `notification_with_template_by_user_id`
```sh
$ python -m accelbyte_py_sdk_cli 'lobby-notification-with-template-by-user-id' \
    '{"templateContext": {"string": "string"}, "templateLanguage": "string", "templateSlug": "string", "topic": "string"}' \
    'string' \
    'string' \
    > result.txt
```

