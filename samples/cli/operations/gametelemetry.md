## Python Extend SDK CLI Sample App Operation Index for Gametelemetry service.

### Operation `get_namespaces_game_telemetry_v1_admin_namespaces_get`
```sh
$ python -m accelbyte_py_sdk_cli 'gametelemetry-get-namespaces-game-telemetry-v1-admin-namespaces-get' \
    > result.txt
```

### Operation `get_events_game_telemetry_v1_admin_namespaces_namespace_events_get`
```sh
$ python -m accelbyte_py_sdk_cli 'gametelemetry-get-events-game-telemetry-v1-admin-namespaces-namespace-events-get' \
    'string' \
    --device_type 'string' \
    --end_time 'string' \
    --event_id 'string' \
    --event_name 'string' \
    --event_payload 'string' \
    --flight_id 'string' \
    --limit 1 \
    --offset 1 \
    --start_time 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `protected_save_events_game_telemetry_v1_protected_events_post`
```sh
$ python -m accelbyte_py_sdk_cli 'gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post' \
    '[{"ClientTimestamp": "2000-01-01T12:34:56Z", "DeviceType": "string", "EventId": "string", "EventName": "string", "EventNamespace": "string", "EventTimestamp": "2000-01-01T12:34:56Z", "Payload": {"string": {}}}]' \
    --cookie 'string' \
    > result.txt
```

### Operation `protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get`
```sh
$ python -m accelbyte_py_sdk_cli 'gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get' \
    'string' \
    --cookie 'string' \
    > result.txt
```

### Operation `protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put`
```sh
$ python -m accelbyte_py_sdk_cli 'gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put' \
    'string' \
    'string' \
    --cookie 'string' \
    > result.txt
```

