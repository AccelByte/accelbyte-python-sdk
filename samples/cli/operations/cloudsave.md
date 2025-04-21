## Python Extend SDK CLI Sample App Operation Index for Cloudsave service.

### Operation `admin_list_admin_game_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-list-admin-game-record-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_bulk_get_admin_game_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-bulk-get-admin-game-record-v1' \
    '{"keys": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `admin_get_admin_game_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-admin-game-record-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_admin_game_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-admin-game-record-v1' \
    '{}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_post_admin_game_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-admin-game-record-v1' \
    '{}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_admin_game_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-admin-game-record-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_admin_game_record_ttl_config`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-admin-game-record-ttl-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_game_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-list-game-binary-records-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_post_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-game-binary-record-v1' \
    '{"file_type": "string", "key": "string", "set_by": "CLIENT", "ttl_config": {}}' \
    'string' \
    > result.txt
```

### Operation `admin_get_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-game-binary-record-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-game-binary-record-v1' \
    '{"content_type": "string", "file_location": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-game-binary-record-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_game_binary_recor_metadata_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-game-binary-recor-metadata-v1' \
    '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_post_game_binary_presigned_urlv1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-game-binary-presigned-urlv1' \
    '{"file_type": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_game_binary_record_ttl_config`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-game-binary-record-ttl-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_admin_game_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-admin-game-record-concurrent-handler-v1' \
    '{"tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_game_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-game-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-plugin-config' \
    'string' \
    > result.txt
```

### Operation `create_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-create-plugin-config' \
    '{"appConfig": {}, "customConfig": {}, "customFunction": {}, "extendType": "APP"}' \
    'string' \
    > result.txt
```

### Operation `delete_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-plugin-config' \
    'string' \
    > result.txt
```

### Operation `update_plugin_config`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-update-plugin-config' \
    '{"appConfig": {}, "customConfig": {}, "customFunction": {}, "extendType": "APP"}' \
    'string' \
    > result.txt
```

### Operation `list_game_records_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-list-game-records-handler-v1' \
    'string' \
    1 \
    1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_get_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-game-record-handler-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-game-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_post_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-game-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-game-record-handler-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_game_record_ttl_config`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-game-record-ttl-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_tags_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-list-tags-handler-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_post_tag_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-tag-handler-v1' \
    '{"tag": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_tag_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-tag-handler-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_get_admin_player_record_by_user_ids_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-bulk-get-admin-player-record-by-user-ids-v1' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_get_player_record_size_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-bulk-get-player-record-size-handler-v1' \
    '{"data": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_put_player_records_by_key_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-bulk-put-player-records-by-key-handler-v1' \
    '{"data": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_get_player_records_by_user_i_ds_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-bulk-get-player-records-by-user-i-ds-handler-v1' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_admin_user_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-list-admin-user-records-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_bulk_get_admin_player_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-bulk-get-admin-player-record-v1' \
    '{"keys": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_admin_player_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-admin-player-record-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_admin_player_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-admin-player-record-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_post_player_admin_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-player-admin-record-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_admin_player_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-admin-player-record-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_player_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-list-player-binary-records-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_post_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-player-binary-record-v1' \
    '{"file_type": "string", "is_public": false, "key": "string", "set_by": "CLIENT"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-player-binary-record-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-player-binary-record-v1' \
    '{"content_type": "string", "file_location": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-player-binary-record-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_player_binary_recor_metadata_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-player-binary-recor-metadata-v1' \
    '{"is_public": false, "set_by": "CLIENT", "tags": ["string"]}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_post_player_binary_presigned_urlv1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-player-binary-presigned-urlv1' \
    '{"file_type": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_admin_player_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-admin-player-record-concurrent-handler-v1' \
    '{"tags": ["string"], "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    'string' \
    --response_body false \
    > result.txt
```

### Operation `admin_put_player_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-player-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    'string' \
    --response_body false \
    > result.txt
```

### Operation `admin_put_player_public_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-player-public-record-concurrent-handler-v1' \
    '{"set_by": "CLIENT", "tags": ["string"], "ttl_config": {}, "updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    'string' \
    --response_body false \
    > result.txt
```

### Operation `admin_retrieve_player_records`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-retrieve-player-records' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `admin_put_player_records_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-player-records-handler-v1' \
    '{"data": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_player_records_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-player-records-handler-v1' \
    '{"keys": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-player-record-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-player-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_post_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-player-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-player-record-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-player-public-record-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_put_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-put-player-public-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_post_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-post-player-public-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-delete-player-public-record-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_player_record_size_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-admin-get-player-record-size-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_game_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-list-game-binary-records-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `post_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-post-game-binary-record-v1' \
    '{"file_type": "string", "key": "string"}' \
    'string' \
    > result.txt
```

### Operation `bulk_get_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-bulk-get-game-binary-record-v1' \
    '{"keys": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-game-binary-record-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-game-binary-record-v1' \
    '{"content_type": "string", "file_location": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_game_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-game-binary-record-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `post_game_binary_presigned_urlv1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-post-game-binary-presigned-urlv1' \
    '{"file_type": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_game_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-game-record-concurrent-handler-v1' \
    '{"updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_game_records_bulk`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-game-records-bulk' \
    '{"keys": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-game-record-handler-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-game-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `post_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-post-game-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_game_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-game-record-handler-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_tags_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-public-list-tags-handler-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `bulk_get_player_public_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-bulk-get-player-public-binary-records-v1' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_get_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-bulk-get-player-public-record-handler-v1' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_my_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-list-my-binary-records-v1' \
    'string' \
    --limit 1 \
    --offset 1 \
    --query 'string' \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_get_my_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-bulk-get-my-binary-record-v1' \
    '{"keys": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `retrieve_player_records`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-retrieve-player-records' \
    'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `get_player_records_bulk_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-player-records-bulk-handler-v1' \
    '{"keys": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `public_delete_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-public-delete-player-public-record-handler-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `post_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-post-player-binary-record-v1' \
    '{"file_type": "string", "is_public": false, "key": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_other_player_public_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-list-other-player-public-binary-records-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_get_other_player_public_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-bulk-get-other-player-public-binary-records-v1' \
    '{"keys": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-player-binary-record-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-player-binary-record-v1' \
    '{"content_type": "string", "file_location": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_player_binary_record_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-player-binary-record-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_player_binary_recor_metadata_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-player-binary-recor-metadata-v1' \
    '{"is_public": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `post_player_binary_presigned_urlv1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-post-player-binary-presigned-urlv1' \
    '{"file_type": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_player_public_binary_records_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-player-public-binary-records-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_player_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-player-record-concurrent-handler-v1' \
    '{"updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    'string' \
    --response_body false \
    > result.txt
```

### Operation `put_player_public_record_concurrent_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-player-public-record-concurrent-handler-v1' \
    '{"updatedAt": "2000-01-01T12:34:56Z", "value": {"string": {}}}' \
    'string' \
    'string' \
    'string' \
    --response_body false \
    > result.txt
```

### Operation `get_other_player_public_record_key_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-other-player-public-record-key-handler-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --tags '["string"]' \
    > result.txt
```

### Operation `get_other_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-other-player-public-record-handler-v1' \
    '{"keys": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-player-record-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-player-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `post_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-post-player-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_player_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-delete-player-record-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-get-player-public-record-handler-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `put_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-put-player-public-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `post_player_public_record_handler_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'cloudsave-post-player-public-record-handler-v1' \
    '{}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

