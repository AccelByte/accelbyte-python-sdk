## Python Extend SDK CLI Sample App Operation Index for Chat service.

### Operation `admin_filter_chat_message`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-filter-chat-message' \
    '{"message": "string", "timestamp": 1, "topicId": "string", "topicType": "GROUP", "userId": "string"}' \
    'string' \
    --detail false \
    > result.txt
```

### Operation `admin_chat_history`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-chat-history' \
    'string' \
    --chat_id '["string"]' \
    --end_created_at 1 \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --sender_user_id 'string' \
    --shard_id 'string' \
    --start_created_at 1 \
    --topic '["string"]' \
    --unfiltered false \
    > result.txt
```

### Operation `admin_create_namespace_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-create-namespace-topic' \
    '{"description": "string", "name": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_topic_list`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-topic-list' \
    'string' \
    --limit 1 \
    --offset 1 \
    --topic_type 'string' \
    > result.txt
```

### Operation `admin_create_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-create-topic' \
    '{"admins": ["string"], "description": "string", "isChannel": false, "isJoinable": false, "members": ["string"], "name": "string", "shardLimit": 1, "type": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_channel_topic_list`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-channel-topic-list' \
    'string' \
    --limit 1 \
    --offset 1 \
    --topic_name 'string' \
    > result.txt
```

### Operation `admin_channel_topic_summary`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-channel-topic-summary' \
    'string' \
    > result.txt
```

### Operation `admin_query_topic_log`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-query-topic-log' \
    'string' \
    --end_created_at 1 \
    --limit 1 \
    --offset 1 \
    --sender_user_id 'string' \
    --start_created_at 1 \
    --topic_id 'string' \
    --topic_ids '["string"]' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_update_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-update-topic' \
    '{"description": "string", "isJoinable": false, "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-delete-topic' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_ban_topic_members`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-ban-topic-members' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_channel_topic_info`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-channel-topic-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_send_chat`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-send-chat' \
    '{"message": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_chat`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-delete-chat' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_topic_members`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-topic-members' \
    'string' \
    'string' \
    --is_banned false \
    --is_moderator false \
    --limit 1 \
    --offset 1 \
    --shard_id 'string' \
    > result.txt
```

### Operation `admin_topic_shards`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-topic-shards' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_unban_topic_members`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-unban-topic-members' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_add_topic_member`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-add-topic-member' \
    '{"isAdmin": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_remove_topic_member`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-remove-topic-member' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_query_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-query-topic' \
    'string' \
    --include_members false \
    --include_past_members false \
    --include_past_topics false \
    --limit 1 \
    --offset 1 \
    --topic '["string"]' \
    --topic_sub_type 'CLAN' \
    --topic_type 'GROUP' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_query_users_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-query-users-topic' \
    'string' \
    'string' \
    --include_past_topics false \
    --limit 1 \
    --offset 1 \
    --topic_sub_type 'CLAN' \
    --topic_type 'GROUP' \
    > result.txt
```

### Operation `public_get_muted_topics`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-get-muted-topics' \
    'string' \
    > result.txt
```

### Operation `public_topic_list`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-topic-list' \
    'string' \
    --limit 1 \
    --offset 1 \
    --topic_type 'string' \
    > result.txt
```

### Operation `public_ban_topic_members`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-ban-topic-members' \
    '{"userIDs": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_chat_history`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-chat-history' \
    'string' \
    'string' \
    --limit 1 \
    --order 'string' \
    --start_created_at 1 \
    > result.txt
```

### Operation `public_delete_chat`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-delete-chat' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_mute_user`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-mute-user' \
    '{"duration": 1, "userId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_unban_topic_members`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-unban-topic-members' \
    '{"userIDs": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_unmute_user`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-unmute-user' \
    '{"userId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_all_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-all-config-v1' \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-log-config' \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-patch-update-log-config' \
    '{"internalAccessLogEnabled": false, "logLevel": "debug", "logLevelDB": "debug", "slowQueryThreshold": 1, "socketLogEnabled": false}' \
    > result.txt
```

### Operation `admin_get_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-config-v1' \
    'string' \
    > result.txt
```

### Operation `admin_update_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-update-config-v1' \
    '{"chatRateLimitBurst": 1, "chatRateLimitDuration": 1, "concurrentUsersLimit": 1, "enableClanChat": false, "enableManualTopicCreation": false, "enablePmSendPlatformId": false, "enableProfanityFilter": false, "filterAppName": "string", "filterParam": "string", "filterType": "string", "generalRateLimitBurst": 1, "generalRateLimitDuration": 1, "maxChatMessageLength": 1, "shardCapacityLimit": 1, "shardDefaultLimit": 1, "shardHardLimit": 1, "spamChatBurst": 1, "spamChatDuration": 1, "spamMuteDuration": 1}' \
    'string' \
    > result.txt
```

### Operation `export_config`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-export-config' \
    'string' \
    > result.txt
```

### Operation `import_config`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-import-config' \
    'string' \
    --file 'tmp.dat' \
    > result.txt
```

### Operation `admin_get_inbox_categories`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-inbox-categories' \
    'string' \
    > result.txt
```

### Operation `admin_add_inbox_category`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-add-inbox-category' \
    '{"enabled": false, "expiresIn": 1, "hook": {}, "jsonSchema": {"string": {}}, "name": "string", "saveInbox": false, "sendNotification": false}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_inbox_category`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-delete-inbox-category' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_inbox_category`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-update-inbox-category' \
    '{"enabled": false, "expiresIn": 1, "hook": {}, "jsonSchema": {"string": {}}, "saveInbox": false, "sendNotification": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_category_schema`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-category-schema' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_kafka_topic`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-list-kafka-topic' \
    'string' \
    > result.txt
```

### Operation `admin_delete_inbox_message`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-delete-inbox-message' \
    'string' \
    'string' \
    --force false \
    > result.txt
```

### Operation `admin_get_inbox_messages`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-inbox-messages' \
    'string' \
    --active_only false \
    --end_created_at 1 \
    --limit 1 \
    --message_id '["string"]' \
    --offset 1 \
    --order 'string' \
    --scope 'NAMESPACE' \
    --start_created_at 1 \
    --status 'DRAFT' \
    --transient false \
    > result.txt
```

### Operation `admin_save_inbox_message`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-save-inbox-message' \
    '{"category": "string", "expiredAt": 1, "message": {"string": {}}, "scope": "NAMESPACE", "status": "DRAFT", "userIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_unsend_inbox_message`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-unsend-inbox-message' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_inbox_users`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-inbox-users' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --status 'READ' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_update_inbox_message`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-update-inbox-message' \
    '{"expiredAt": 1, "message": {"string": {}}, "scope": "NAMESPACE", "userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_send_inbox_message`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-send-inbox-message' \
    '{}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_inbox_stats`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-inbox-stats' \
    'string' \
    --message_id '["string"]' \
    > result.txt
```

### Operation `admin_get_chat_snapshot`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-get-chat-snapshot' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_chat_snapshot`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-delete-chat-snapshot' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_profanity_query`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-query' \
    'string' \
    --filter_mask 'string' \
    --include_children false \
    --limit 1 \
    --offset 1 \
    --parent_id 'string' \
    --start_with 'string' \
    --word_type 'string' \
    > result.txt
```

### Operation `admin_profanity_create`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-create' \
    '{"falseNegative": ["string"], "falsePositive": ["string"], "word": "string", "wordType": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_profanity_create_bulk`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-create-bulk' \
    '{"dictionaries": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_profanity_export`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-export' \
    'string' \
    > result.txt
```

### Operation `admin_profanity_group`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-group' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_profanity_import`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-import' \
    'tmp.dat' \
    'string' \
    --action 'FULLREPLACE' \
    --show_result false \
    > result.txt
```

### Operation `admin_profanity_update`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-update' \
    '{"falseNegative": ["string"], "falsePositive": ["string"], "word": "string", "wordType": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_profanity_delete`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-admin-profanity-delete' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-get-messages' \
    > result.txt
```

### Operation `public_get_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-get-config-v1' \
    'string' \
    > result.txt
```

### Operation `public_get_chat_snapshot`
```sh
$ python -m accelbyte_py_sdk_cli 'chat-public-get-chat-snapshot' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

