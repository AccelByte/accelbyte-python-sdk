## Python Extend SDK CLI Sample App Operation Index for Match2 service.

### Operation `get_healthcheck_info`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-get-healthcheck-info' \
    > result.txt
```

### Operation `get_healthcheck_info_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-get-healthcheck-info-v1' \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-admin-get-log-config' \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-admin-patch-update-log-config' \
    '{"logLevel": "debug"}' \
    > result.txt
```

### Operation `admin_get_all_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-admin-get-all-config-v1' \
    > result.txt
```

### Operation `admin_get_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-admin-get-config-v1' \
    'string' \
    > result.txt
```

### Operation `admin_patch_config_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-admin-patch-config-v1' \
    '{"crossPlatformNoCurrentPlatform": false, "extraPlatforms": ["string"], "matchAnyCommon": false, "platformGroup": {"string": []}}' \
    'string' \
    > result.txt
```

### Operation `environment_variable_list`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-environment-variable-list' \
    > result.txt
```

### Operation `admin_query_backfill`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-admin-query-backfill' \
    'string' \
    --from_time '2000-01-01T12:34:56Z' \
    --is_active false \
    --limit 1 \
    --match_pool 'string' \
    --offset 1 \
    --player_id 'string' \
    --region 'string' \
    --session_id 'string' \
    --to_time '2000-01-01T12:34:56Z' \
    > result.txt
```

### Operation `create_backfill`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-create-backfill' \
    '{"matchPool": "string", "sessionId": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_backfill_proposal`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-get-backfill-proposal' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_backfill`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-get-backfill' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_backfill`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-delete-backfill' \
    'string' \
    'string' \
    > result.txt
```

### Operation `accept_backfill`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-accept-backfill' \
    '{"acceptedTicketIds": ["string"], "proposalId": "string", "stop": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `reject_backfill`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-reject-backfill' \
    '{"proposalId": "string", "stop": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `match_function_list`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-match-function-list' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_match_function`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-create-match-function' \
    '{"match_function": "string", "serviceAppName": "string", "url": "string"}' \
    'string' \
    > result.txt
```

### Operation `match_function_get`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-match-function-get' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_match_function`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-update-match-function' \
    '{"match_function": "string", "serviceAppName": "string", "url": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_match_function`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-delete-match-function' \
    'string' \
    'string' \
    > result.txt
```

### Operation `match_pool_list`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-match-pool-list' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `create_match_pool`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-create-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 1, "backfill_ticket_expiration_seconds": 1, "best_latency_calculation_method": "string", "crossplay_disabled": false, "match_function": "string", "match_function_override": {}, "name": "string", "platform_group_enabled": false, "rule_set": "string", "session_template": "string", "ticket_expiration_seconds": 1}' \
    'string' \
    > result.txt
```

### Operation `match_pool_details`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-match-pool-details' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_match_pool`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-update-match-pool' \
    '{"auto_accept_backfill_proposal": false, "backfill_proposal_expiration_seconds": 1, "backfill_ticket_expiration_seconds": 1, "best_latency_calculation_method": "string", "crossplay_disabled": false, "match_function": "string", "match_function_override": {}, "platform_group_enabled": false, "rule_set": "string", "session_template": "string", "ticket_expiration_seconds": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_match_pool`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-delete-match-pool' \
    'string' \
    'string' \
    > result.txt
```

### Operation `match_pool_metric`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-match-pool-metric' \
    'string' \
    'string' \
    > result.txt
```

### Operation `post_match_error_metric`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-post-match-error-metric' \
    '{"type": "connectDS"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_player_metric`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-get-player-metric' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_match_pool_tickets`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-admin-get-match-pool-tickets' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_match_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-create-match-ticket' \
    '{"attributes": {"string": {}}, "excludedSessions": ["string"], "latencies": {"string": 1}, "matchPool": "string", "sessionID": "string", "storage": {"string": {}}}' \
    'string' \
    > result.txt
```

### Operation `get_my_match_tickets`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-get-my-match-tickets' \
    'string' \
    --limit 1 \
    --match_pool 'string' \
    --offset 1 \
    > result.txt
```

### Operation `match_ticket_details`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-match-ticket-details' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_match_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-delete-match-ticket' \
    'string' \
    'string' \
    > result.txt
```

### Operation `rule_set_list`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-rule-set-list' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `create_rule_set`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-create-rule-set' \
    '{"data": {"string": {}}, "enable_custom_match_function": false, "name": "string"}' \
    'string' \
    > result.txt
```

### Operation `rule_set_details`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-rule-set-details' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_rule_set`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-update-rule-set' \
    '{"data": {"string": {}}, "enable_custom_match_function": false, "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_rule_set`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-delete-rule-set' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_player_metric`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-public-get-player-metric' \
    'string' \
    'string' \
    > result.txt
```

### Operation `version_check_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'match2-version-check-handler' \
    > result.txt
```

