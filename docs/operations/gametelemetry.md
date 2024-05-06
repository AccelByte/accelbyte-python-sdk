[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# Analytics Game Telemetry Index (1.24.2)


## Operations

### Gametelemetry Operations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /game-telemetry/v1/protected/steamIds/{steamId}/playtime | GET | protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get | `false` | [ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet](../../accelbyte_py_sdk/api/gametelemetry/operations/gametelemetry_operations/protected_get_playtime__9a0e17.py) | [protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get](../../accelbyte_py_sdk/api/gametelemetry/wrappers/_gametelemetry_operations.py) | [accelbyte_py_sdk_cli gametelemetry-protected-get-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-get](../../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get.py) |
| /game-telemetry/v1/protected/events | POST | protected_save_events_game_telemetry_v1_protected_events_post | `false` | [ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost](../../accelbyte_py_sdk/api/gametelemetry/operations/gametelemetry_operations/protected_save_events_g_832bbb.py) | [protected_save_events_game_telemetry_v1_protected_events_post](../../accelbyte_py_sdk/api/gametelemetry/wrappers/_gametelemetry_operations.py) | [accelbyte_py_sdk_cli gametelemetry-protected-save-events-game-telemetry-v1-protected-events-post](../../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_protected_save_events_game_telemetry_v1_protected_events_post.py) |
| /game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime} | PUT | protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put | `false` | [ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut](../../accelbyte_py_sdk/api/gametelemetry/operations/gametelemetry_operations/protected_update_playti_4b5b85.py) | [protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put](../../accelbyte_py_sdk/api/gametelemetry/wrappers/_gametelemetry_operations.py) | [accelbyte_py_sdk_cli gametelemetry-protected-update-playtime-game-telemetry-v1-protected-steam-ids-steam-id-playtime-playtime-put](../../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put.py) |

### telemetry
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /game-telemetry/v1/admin/namespaces/{namespace}/events | GET | get_events_game_telemetry_v1_admin_namespaces__namespace__events_get | `false` | [GetEventsGameTelemetryV1AdminNamespacesNamespaceEventsGet](../../accelbyte_py_sdk/api/gametelemetry/operations/telemetry/get_events_game_telemet_b2983d.py) | [get_events_game_telemetry_v1_admin_namespaces_namespace_events_get](../../accelbyte_py_sdk/api/gametelemetry/wrappers/_telemetry.py) | [accelbyte_py_sdk_cli gametelemetry-get-events-game-telemetry-v1-admin-namespaces-namespace-events-get](../../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_get_events_game_telemetry_v1_admin_namespaces_namespace_events_get.py) |
| /game-telemetry/v1/admin/namespaces | GET | get_namespaces_game_telemetry_v1_admin_namespaces_get | `false` | [GetNamespacesGameTelemetryV1AdminNamespacesGet](../../accelbyte_py_sdk/api/gametelemetry/operations/telemetry/get_namespaces_game_tel_1106fd.py) | [get_namespaces_game_telemetry_v1_admin_namespaces_get](../../accelbyte_py_sdk/api/gametelemetry/wrappers/_telemetry.py) | [accelbyte_py_sdk_cli gametelemetry-get-namespaces-game-telemetry-v1-admin-namespaces-get](../../samples/cli/accelbyte_py_sdk_cli/gametelemetry/_get_namespaces_game_telemetry_v1_admin_namespaces_get.py) |


## Models
| Model | Class |
|---|---|
| BaseErrorResponse | [BaseErrorResponse](../../accelbyte_py_sdk/api/gametelemetry/models/base_error_response.py) |
| GetNamespaceEventResponse | [GetNamespaceEventResponse](../../accelbyte_py_sdk/api/gametelemetry/models/get_namespace_event_response.py) |
| HTTPValidationError | [HTTPValidationError](../../accelbyte_py_sdk/api/gametelemetry/models/http_validation_error.py) |
| ListBaseResponse_str_ | [ListBaseResponseStr](../../accelbyte_py_sdk/api/gametelemetry/models/list_base_response_str.py) |
| PagedResponse_GetNamespaceEventResponse_ | [PagedResponseGetNamespaceEventResponse](../../accelbyte_py_sdk/api/gametelemetry/models/paged_response_get_namespace_event_response.py) |
| Paging | [Paging](../../accelbyte_py_sdk/api/gametelemetry/models/paging.py) |
| PlayTimeResponse | [PlayTimeResponse](../../accelbyte_py_sdk/api/gametelemetry/models/play_time_response.py) |
| TelemetryBody | [TelemetryBody](../../accelbyte_py_sdk/api/gametelemetry/models/telemetry_body.py) |
| ValidationError | [ValidationError](../../accelbyte_py_sdk/api/gametelemetry/models/validation_error.py) |
