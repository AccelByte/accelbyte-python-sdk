## Python Extend SDK CLI Sample App Operation Index for Social service.

### Operation `get_global_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-global-stat-items' \
    'string' \
    --limit 1 \
    --offset 1 \
    --stat_codes 'string' \
    > result.txt
```

### Operation `get_global_stat_item_by_stat_code`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-global-stat-item-by-stat-code' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_stat_cycles`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-stat-cycles' \
    'string' \
    --cycle_type 'ANNUALLY' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'string' \
    --status 'ACTIVE' \
    > result.txt
```

### Operation `create_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-create-stat-cycle' \
    '{"cycleType": "ANNUALLY", "description": "string", "end": "2000-01-01T12:34:56Z", "id": "string", "name": "string", "resetDate": 1, "resetDay": 1, "resetMonth": 1, "resetTime": "string", "seasonPeriod": 1, "start": "2000-01-01T12:34:56Z"}' \
    'string' \
    > result.txt
```

### Operation `bulk_get_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-get-stat-cycle' \
    '{"cycleIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `export_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-export-stat-cycle' \
    'string' \
    > result.txt
```

### Operation `import_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-import-stat-cycle' \
    'string' \
    --file 'tmp.dat' \
    --replace_existing false \
    > result.txt
```

### Operation `get_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-stat-cycle' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-update-stat-cycle' \
    '{"cycleType": "ANNUALLY", "description": "string", "end": "2000-01-01T12:34:56Z", "name": "string", "resetDate": 1, "resetDay": 1, "resetMonth": 1, "resetTime": "string", "seasonPeriod": 1, "start": "2000-01-01T12:34:56Z"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-delete-stat-cycle' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_add_stats`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-add-stats' \
    '{"statCodes": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `stop_stat_cycle`
```sh
$ python -m accelbyte_py_sdk_cli 'social-stop-stat-cycle' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_fetch_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-fetch-stat-items' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-inc-user-stat-item' \
    '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    'string' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_value`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-inc-user-stat-item-value' \
    '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    'string' \
    > result.txt
```

### Operation `bulk_fetch_or_default_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-fetch-or-default-stat-items' \
    'string' \
    'string' \
    '["string"]' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-reset-user-stat-item' \
    '[{"statCode": "string", "userId": "string"}]' \
    'string' \
    > result.txt
```

### Operation `get_stats`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-stats' \
    'string' \
    --cycle_ids 'string' \
    --is_global false \
    --is_public false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_stat`
```sh
$ python -m accelbyte_py_sdk_cli 'social-create-stat' \
    '{"capCycleOverride": false, "cycleIds": ["string"], "cycleOverrides": [{}], "defaultValue": 3.14, "description": "string", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 3.14, "minimum": 3.14, "name": "string", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "string", "tags": ["string"], "visibility": "SERVERONLY"}' \
    'string' \
    > result.txt
```

### Operation `export_stats`
```sh
$ python -m accelbyte_py_sdk_cli 'social-export-stats' \
    'string' \
    > result.txt
```

### Operation `import_stats`
```sh
$ python -m accelbyte_py_sdk_cli 'social-import-stats' \
    'string' \
    --file 'tmp.dat' \
    --replace_existing false \
    > result.txt
```

### Operation `query_stats`
```sh
$ python -m accelbyte_py_sdk_cli 'social-query-stats' \
    'string' \
    'string' \
    --is_global false \
    --is_public false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_stat`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-stat' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_stat`
```sh
$ python -m accelbyte_py_sdk_cli 'social-delete-stat' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_stat`
```sh
$ python -m accelbyte_py_sdk_cli 'social-update-stat' \
    '{"capCycleOverride": false, "cycleIds": ["string"], "cycleOverrides": [{}], "defaultValue": 3.14, "description": "string", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "isPublic": false, "name": "string", "tags": ["string"], "visibility": "SERVERONLY"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-stat-items' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    > result.txt
```

### Operation `delete_tied_stat`
```sh
$ python -m accelbyte_py_sdk_cli 'social-delete-tied-stat' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_stat_cycle_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-user-stat-cycle-items' \
    'string' \
    'string' \
    'string' \
    --is_public false \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --stat_codes 'string' \
    > result.txt
```

### Operation `get_user_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-user-stat-items' \
    'string' \
    'string' \
    --is_public false \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --stat_codes 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `bulk_create_user_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-create-user-stat-items' \
    '[{"statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-inc-user-stat-item-1' \
    '[{"inc": 3.14, "statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_value_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-inc-user-stat-item-value-1' \
    '[{"inc": 3.14, "statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-reset-user-stat-item-1' \
    '[{"statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_user_stat_item`
```sh
$ python -m accelbyte_py_sdk_cli 'social-create-user-stat-item' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-delete-user-stat-items' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `inc_user_stat_item_value`
```sh
$ python -m accelbyte_py_sdk_cli 'social-inc-user-stat-item-value' \
    '{"inc": 3.14}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reset_user_stat_item_value`
```sh
$ python -m accelbyte_py_sdk_cli 'social-reset-user-stat-item-value' \
    '{"additionalData": {"string": {}}}' \
    'string' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

### Operation `get_global_stat_items_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-global-stat-items-1' \
    'string' \
    --limit 1 \
    --offset 1 \
    --stat_codes 'string' \
    > result.txt
```

### Operation `get_global_stat_item_by_stat_code_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-global-stat-item-by-stat-code-1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_stat_cycles_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-stat-cycles-1' \
    'string' \
    --cycle_type 'ANNUALLY' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    --sort_by 'string' \
    --status 'ACTIVE' \
    > result.txt
```

### Operation `bulk_get_stat_cycle_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-get-stat-cycle-1' \
    '{"cycleIds": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_stat_cycle_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-stat-cycle-1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_fetch_stat_items_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-fetch-stat-items-1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_bulk_inc_user_stat_item`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-bulk-inc-user-stat-item' \
    '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    'string' \
    > result.txt
```

### Operation `public_bulk_inc_user_stat_item_value`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-bulk-inc-user-stat-item-value' \
    '[{"inc": 3.14, "statCode": "string", "userId": "string"}]' \
    'string' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_2`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-reset-user-stat-item-2' \
    '[{"statCode": "string", "userId": "string"}]' \
    'string' \
    > result.txt
```

### Operation `create_stat_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-create-stat-1' \
    '{"capCycleOverride": false, "cycleIds": ["string"], "cycleOverrides": [{}], "defaultValue": 3.14, "description": "string", "globalAggregationMethod": "LAST", "ignoreAdditionalDataOnValueRejected": false, "incrementOnly": false, "isPublic": false, "maximum": 3.14, "minimum": 3.14, "name": "string", "setAsGlobal": false, "setBy": "CLIENT", "statCode": "string", "tags": ["string"], "visibility": "SERVERONLY"}' \
    'string' \
    > result.txt
```

### Operation `public_list_my_stat_cycle_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-list-my-stat-cycle-items' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --stat_codes '["string"]' \
    > result.txt
```

### Operation `public_list_my_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-list-my-stat-items' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --stat_codes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_list_all_my_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-list-all-my-stat-items' \
    'string' \
    --additional_key 'string' \
    --stat_codes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `get_user_stat_cycle_items_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-get-user-stat-cycle-items-1' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --stat_codes 'string' \
    > result.txt
```

### Operation `public_query_user_stat_items_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-query-user-stat-items-1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'string' \
    --stat_codes 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `public_bulk_create_user_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-bulk-create-user-stat-items' \
    '[{"statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_query_user_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-query-user-stat-items' \
    'string' \
    'string' \
    --additional_key 'string' \
    --stat_codes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `public_bulk_inc_user_stat_item_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-bulk-inc-user-stat-item-1' \
    '[{"inc": 3.14, "statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_inc_user_stat_item_value_2`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-inc-user-stat-item-value-2' \
    '[{"inc": 3.14, "statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_3`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-reset-user-stat-item-3' \
    '[{"statCode": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_create_user_stat_item`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-create-user-stat-item' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_stat_items_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-delete-user-stat-items-1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_inc_user_stat_item`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-inc-user-stat-item' \
    '{"inc": 3.14}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_inc_user_stat_item_value`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-inc-user-stat-item-value' \
    '{"inc": 3.14}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reset_user_stat_item_value_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-reset-user-stat-item-value-1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_update_user_stat_item_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-update-user-stat-item-v2' \
    '[{"additionalData": {"string": {}}, "additionalKey": "string", "statCode": "string", "updateStrategy": "INCREMENT", "userId": "string", "value": 3.14}]' \
    'string' \
    > result.txt
```

### Operation `bulk_fetch_or_default_stat_items_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-fetch-or-default-stat-items-1' \
    'string' \
    'string' \
    '["string"]' \
    --additional_key 'string' \
    > result.txt
```

### Operation `admin_list_users_stat_items`
```sh
$ python -m accelbyte_py_sdk_cli 'social-admin-list-users-stat-items' \
    'string' \
    'string' \
    --additional_key 'string' \
    --stat_codes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_update_user_stat_item`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-update-user-stat-item' \
    '[{"additionalData": {"string": {}}, "statCode": "string", "updateStrategy": "INCREMENT", "value": 3.14}]' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

### Operation `bulk_get_or_default_by_user_id`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-get-or-default-by-user-id' \
    '{"statCodes": ["string"]}' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

### Operation `bulk_reset_user_stat_item_values`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-reset-user-stat-item-values' \
    '[{"additionalData": {"string": {}}, "statCode": "string"}]' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

### Operation `delete_user_stat_items_2`
```sh
$ python -m accelbyte_py_sdk_cli 'social-delete-user-stat-items-2' \
    'string' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

### Operation `update_user_stat_item_value`
```sh
$ python -m accelbyte_py_sdk_cli 'social-update-user-stat-item-value' \
    '{"additionalData": {"string": {}}, "updateStrategy": "INCREMENT", "value": 3.14}' \
    'string' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

### Operation `bulk_update_user_stat_item_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-update-user-stat-item-1' \
    '[{"additionalData": {"string": {}}, "additionalKey": "string", "statCode": "string", "updateStrategy": "INCREMENT", "userId": "string", "value": 3.14}]' \
    'string' \
    > result.txt
```

### Operation `public_query_user_stat_items_2`
```sh
$ python -m accelbyte_py_sdk_cli 'social-public-query-user-stat-items-2' \
    'string' \
    'string' \
    --additional_key 'string' \
    --stat_codes '["string"]' \
    --tags '["string"]' \
    > result.txt
```

### Operation `bulk_update_user_stat_item_2`
```sh
$ python -m accelbyte_py_sdk_cli 'social-bulk-update-user-stat-item-2' \
    '[{"additionalData": {"string": {}}, "statCode": "string", "updateStrategy": "INCREMENT", "value": 3.14}]' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

### Operation `update_user_stat_item_value_1`
```sh
$ python -m accelbyte_py_sdk_cli 'social-update-user-stat-item-value-1' \
    '{"additionalData": {"string": {}}, "updateStrategy": "INCREMENT", "value": 3.14}' \
    'string' \
    'string' \
    'string' \
    --additional_key 'string' \
    > result.txt
```

