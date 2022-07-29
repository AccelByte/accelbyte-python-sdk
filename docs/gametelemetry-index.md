[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# Analytics Game Telemetry Index (1.7.2)


## Operations

### Gametelemetry Operations
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| /game-telemetry/v1/protected/steamIds/{steamId}/playtime | GET | protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet](../accelbyte_py_sdk/api/gametelemetry/operations/gametelemetry_operations/protected_get_playtime__9a0e17.py) | [protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get](../accelbyte_py_sdk/api/gametelemetry/wrappers/_gametelemetry_operations.py) | [accelbyte_py_sdk_cli gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get](../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_protected_get_playtime__9a0e17.py) |
| /game-telemetry/v1/protected/events | POST | protected_save_events_game_telemetry_v1_protected_events_post | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost](../accelbyte_py_sdk/api/gametelemetry/operations/gametelemetry_operations/protected_save_events_g_832bbb.py) | [protected_save_events_game_telemetry_v1_protected_events_post](../accelbyte_py_sdk/api/gametelemetry/wrappers/_gametelemetry_operations.py) | [accelbyte_py_sdk_cli gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post](../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_protected_save_events_g_832bbb.py) |
| /game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime} | PUT | protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut](../accelbyte_py_sdk/api/gametelemetry/operations/gametelemetry_operations/protected_update_playti_4b5b85.py) | [protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put](../accelbyte_py_sdk/api/gametelemetry/wrappers/_gametelemetry_operations.py) | [accelbyte_py_sdk_cli gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put](../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_protected_update_playti_4b5b85.py) |

### Operations
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| /game-telemetry/v1/admin/namespaces/{namespace}/events | GET | get_events_game_telemetry_v1_admin_namespaces__namespace__events_get | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet](../accelbyte_py_sdk/api/gametelemetry/operations/operations/get_events_game_telemet_b2983d.py) | [get_events_game_telemetry_v1_admin_namespaces_namespace_events_get](../accelbyte_py_sdk/api/gametelemetry/wrappers/_operations.py) | [accelbyte_py_sdk_cli gametelemetry-get-events-game-telemetry-v1-admin-namespaces-namespace-events-get](../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_get_events_game_telemet_b2983d.py) |


## Models
| Model | Class |
|---|---|
| HTTPValidationError | [HTTPValidationError](../accelbyte_py_sdk/api/gametelemetry/models/http_validation_error.py) |
| TelemetryBody | [TelemetryBody](../accelbyte_py_sdk/api/gametelemetry/models/telemetry_body.py) |
| ValidationError | [ValidationError](../accelbyte_py_sdk/api/gametelemetry/models/validation_error.py) |
