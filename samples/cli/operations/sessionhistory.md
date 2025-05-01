## Python Extend SDK CLI Sample App Operation Index for Sessionhistory service.

### Operation `get_healthcheck_info`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-get-healthcheck-info' \
    > result.txt
```

### Operation `get_healthcheck_info_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-get-healthcheck-info-v1' \
    > result.txt
```

### Operation `admin_get_env_config`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-get-env-config' \
    > result.txt
```

### Operation `admin_patch_update_env_config`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-patch-update-env-config' \
    '{"SESSION_DELETION_GRACE_PERIOD": 1}' \
    > result.txt
```

### Operation `admin_get_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-get-log-config' \
    > result.txt
```

### Operation `admin_patch_update_log_config`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-patch-update-log-config' \
    '{"logLevel": "debug"}' \
    > result.txt
```

### Operation `admin_query_game_session_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-query-game-session-detail' \
    'string' \
    --completed_only 'string' \
    --configuration_name 'string' \
    --ds_pod_name 'string' \
    --end_date 'string' \
    --game_session_id 'string' \
    --is_persistent 'string' \
    --joinability 'string' \
    --limit 1 \
    --match_pool 'string' \
    --offset 1 \
    --order 'string' \
    --order_by 'string' \
    --start_date 'string' \
    --status_v2 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `get_game_session_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-get-game-session-detail' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_query_matchmaking_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-query-matchmaking-detail' \
    'string' \
    --game_session_id 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --order_by 'string' \
    --ticket_id 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_get_matchmaking_detail_by_session_id`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-get-matchmaking-detail-by-session-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_matchmaking_detail_by_ticket_id`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-get-matchmaking-detail-by-ticket-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_query_party_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-query-party-detail' \
    'string' \
    --end_date 'string' \
    --joinability 'string' \
    --leader_id 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --order_by 'string' \
    --party_id 'string' \
    --start_date 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `get_party_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-get-party-detail' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_query_ticket_detail`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-query-ticket-detail' \
    'string' \
    --end_date 'string' \
    --game_mode 'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --party_id 'string' \
    --region 'string' \
    --start_date 'string' \
    --user_i_ds 'string' \
    > result.txt
```

### Operation `admin_ticket_detail_get_by_ticket_id`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-admin-ticket-detail-get-by-ticket-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_query_game_session_me`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-public-query-game-session-me' \
    'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    > result.txt
```

### Operation `query_xray_match_pool`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-xray-match-pool' \
    'string' \
    '["string"]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_detail_tick_match_pool`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-detail-tick-match-pool' \
    'string' \
    'string' \
    'string' \
    'string' \
    'string' \
    --all false \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `query_detail_tick_match_pool_matches`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-detail-tick-match-pool-matches' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_detail_tick_match_pool_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-detail-tick-match-pool-ticket' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_match_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-match-histories' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `query_match_ticket_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-match-ticket-histories' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_xray_match`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-xray-match' \
    'string' \
    'string' \
    > result.txt
```

### Operation `query_acquiring_ds`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-acquiring-ds' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_acquiring_ds_wait_time_avg`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-acquiring-ds-wait-time-avg' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_match_length_durationp_avg`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-match-length-durationp-avg' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_match_length_durationp99`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-match-length-durationp99' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_total_active_session`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-total-active-session' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    --region 'string' \
    > result.txt
```

### Operation `query_total_matchmaking_match`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-total-matchmaking-match' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_total_player_persession`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-total-player-persession' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_total_matchmaking_canceled`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-total-matchmaking-canceled' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_total_matchmaking_created`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-total-matchmaking-created' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_total_matchmaking_expired`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-total-matchmaking-expired' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `query_total_matchmaking_match_ticket`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-total-matchmaking-match-ticket' \
    'string' \
    'string' \
    'string' \
    --match_pool '["string"]' \
    > result.txt
```

### Operation `create_xray_ticket_observability`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-create-xray-ticket-observability' \
    '{"action": "string", "activeAllianceRule": {}, "activeMatchingRule": [{}], "function": "string", "gameMode": "string", "isBackfillMatch": false, "isRuleSetFlexed": false, "iteration": 1, "matchID": "string", "namespace": "string", "remainingPlayersPerTicket": [1], "remainingTickets": 1, "sessionTickID": "string", "tickID": 1, "ticketID": "string", "timeToMatchSec": 3.14, "timestamp": "2000-01-01T12:34:56Z", "unbackfillReason": "string", "unmatchReason": "string"}' \
    'string' \
    > result.txt
```

### Operation `create_xray_bulk_ticket_observability`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-create-xray-bulk-ticket-observability' \
    '{"ticketObservabilities": [{}]}' \
    'string' \
    > result.txt
```

### Operation `query_xray_timeline_by_ticket_id`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-xray-timeline-by-ticket-id' \
    'string' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `query_xray_timeline_by_user_id`
```sh
$ python -m accelbyte_py_sdk_cli 'sessionhistory-query-xray-timeline-by-user-id' \
    'string' \
    'string' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --order 'string' \
    --order_by 'string' \
    > result.txt
```

