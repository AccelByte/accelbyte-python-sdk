## Python Extend SDK CLI Sample App Operation Index for Leaderboard service.

### Operation `get_leaderboard_configurations_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configurations-admin-v1' \
    'string' \
    --is_archived false \
    --is_deleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_leaderboard_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-create-leaderboard-configuration-admin-v1' \
    '{"daily": {}, "descending": false, "iconURL": "string", "leaderboardCode": "string", "monthly": {}, "name": "string", "seasonPeriod": 1, "startTime": "string", "statCode": "string", "weekly": {}}' \
    'string' \
    > result.txt
```

### Operation `admin_get_archived_leaderboard_ranking_data_v1_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-admin-get-archived-leaderboard-ranking-data-v1-handler' \
    'string' \
    'string' \
    --slug 'string' \
    > result.txt
```

### Operation `create_archived_leaderboard_ranking_data_v1_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-create-archived-leaderboard-ranking-data-v1-handler' \
    '{"leaderboardCodes": ["string"], "limit": 1, "slug": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_bulk_leaderboard_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-bulk-leaderboard-configuration-admin-v1' \
    '{"leaderboardCodes": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_leaderboard_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configuration-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_leaderboard_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-update-leaderboard-configuration-admin-v1' \
    '{"daily": {}, "descending": false, "iconURL": "string", "monthly": {}, "name": "string", "seasonPeriod": 1, "startTime": "string", "statCode": "string", "weekly": {}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_leaderboard_configuration_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-leaderboard-configuration-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-all-time-leaderboard-ranking-admin-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `hard_delete_leaderboard_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-hard-delete-leaderboard-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_current_month_leaderboard_ranking_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-month-leaderboard-ranking-admin-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `delete_user_ranking_by_leaderboard_code_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_current_season_leaderboard_ranking_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-season-leaderboard-ranking-admin-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `get_today_leaderboard_ranking_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-today-leaderboard-ranking-admin-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `get_user_ranking_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-ranking-admin-v1' \
    'string' \
    'string' \
    'string' \
    --previous_version 1 \
    > result.txt
```

### Operation `update_user_point_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-update-user-point-admin-v1' \
    '{"inc": 3.14, "latestValue": 3.14}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_ranking_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-ranking-admin-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_current_week_leaderboard_ranking_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-week-leaderboard-ranking-admin-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `delete_user_rankings_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-rankings-admin-v1' \
    'string' \
    'string' \
    '["string"]' \
    > result.txt
```

### Operation `admin_anonymize_user_leaderboard_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-admin-anonymize-user-leaderboard-admin-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_leaderboard_rankings_admin_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-leaderboard-rankings-admin-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `get_leaderboard_configurations_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configurations-public-v1' \
    'string' \
    --is_archived false \
    --is_deleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_leaderboard_configuration_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-create-leaderboard-configuration-public-v1' \
    '{"daily": {}, "descending": false, "iconURL": "string", "leaderboardCode": "string", "monthly": {}, "name": "string", "seasonPeriod": 1, "startTime": "string", "statCode": "string", "weekly": {}}' \
    'string' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-all-time-leaderboard-ranking-public-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_archived_leaderboard_ranking_data_v1_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-archived-leaderboard-ranking-data-v1-handler' \
    'string' \
    'string' \
    'string' \
    --slug 'string' \
    > result.txt
```

### Operation `get_current_month_leaderboard_ranking_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-month-leaderboard-ranking-public-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `get_current_season_leaderboard_ranking_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-season-leaderboard-ranking-public-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `get_today_leaderboard_ranking_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-today-leaderboard-ranking-public-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `get_user_ranking_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-ranking-public-v1' \
    'string' \
    'string' \
    'string' \
    --previous_version 1 \
    > result.txt
```

### Operation `delete_user_ranking_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-ranking-public-v1' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_current_week_leaderboard_ranking_public_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-week-leaderboard-ranking-public-v1' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `get_hidden_users_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-hidden-users-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_visibility_status_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-visibility-status-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `set_user_leaderboard_visibility_status_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-set-user-leaderboard-visibility-status-v2' \
    '{"visibility": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `set_user_visibility_status_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-set-user-visibility-status-v2' \
    '{"visibility": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_leaderboard_configurations_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configurations-public-v2' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_public_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-all-time-leaderboard-ranking-public-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_leaderboard_configurations_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configurations-admin-v3' \
    'string' \
    --is_deleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_leaderboard_configuration_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-create-leaderboard-configuration-admin-v3' \
    '{"allTime": false, "cycleIds": ["string"], "descending": false, "description": "string", "iconURL": "string", "leaderboardCode": "string", "name": "string", "statCode": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_bulk_leaderboard_configuration_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-bulk-leaderboard-configuration-admin-v3' \
    '{"leaderboardCodes": ["string"]}' \
    'string' \
    > result.txt
```

### Operation `get_leaderboard_configuration_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configuration-admin-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_leaderboard_configuration_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-update-leaderboard-configuration-admin-v3' \
    '{"allTime": false, "cycleIds": ["string"], "descending": false, "description": "string", "iconURL": "string", "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_leaderboard_configuration_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-leaderboard-configuration-admin-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-all-time-leaderboard-ranking-admin-v3' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_current_cycle_leaderboard_ranking_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-cycle-leaderboard-ranking-admin-v3' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `delete_all_user_ranking_by_cycle_id_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-all-user-ranking-by-cycle-id-admin-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_ranking_by_cycle_id_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-ranking-by-cycle-id-admin-v3' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `hard_delete_leaderboard_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-hard-delete-leaderboard-admin-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_ranking_by_leaderboard_code_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-ranking-by-leaderboard-code-admin-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_hidden_users_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-hidden-users-v3' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_ranking_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-ranking-admin-v3' \
    'string' \
    'string' \
    'string' \
    --previous_version 1 \
    > result.txt
```

### Operation `delete_user_ranking_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-ranking-admin-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_user_visibility_status_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-visibility-status-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `set_user_leaderboard_visibility_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-set-user-leaderboard-visibility-v3' \
    '{"visibility": false}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_user_rankings_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-delete-user-rankings-admin-v3' \
    'string' \
    'string' \
    '["string"]' \
    > result.txt
```

### Operation `get_user_leaderboard_rankings_admin_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-leaderboard-rankings-admin-v3' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `set_user_visibility_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-set-user-visibility-v3' \
    '{"visibility": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_leaderboard_configurations_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configurations-public-v3' \
    'string' \
    --is_deleted false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_leaderboard_configuration_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-leaderboard-configuration-public-v3' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_all_time_leaderboard_ranking_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-all-time-leaderboard-ranking-public-v3' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_current_cycle_leaderboard_ranking_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-current-cycle-leaderboard-ranking-public-v3' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --previous_version 1 \
    > result.txt
```

### Operation `bulk_get_users_ranking_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-bulk-get-users-ranking-public-v3' \
    '{"userIds": ["string"]}' \
    'string' \
    'string' \
    --previous_version 1 \
    > result.txt
```

### Operation `get_user_ranking_public_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'leaderboard-get-user-ranking-public-v3' \
    'string' \
    'string' \
    'string' \
    --previous_version 1 \
    > result.txt
```

