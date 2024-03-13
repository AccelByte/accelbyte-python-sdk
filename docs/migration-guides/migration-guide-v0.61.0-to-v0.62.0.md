# [v0.62.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `gametelemetry`: Operation `get_namespaces_game_telemetry_v1_admin_namespaces_get` had its response changed from (`HttpResponse`, `HttpResponse`) into (`ListBaseResponseStr`, `BaseErrorResponse`).
- `gametelemetry`: Operation `get_events_game_telemetry_v1_admin_namespaces__namespace__events_get` had its response changed from (`HttpResponse`, `HttpResponse`) into (`PagedResponseGetNamespaceEventResponse`, `BaseErrorResponse`).
- `gametelemetry`: Operation `protected_save_events_game_telemetry_v1_protected_events_post` had its error response also return `BaseErrorResponse`.
- `gametelemetry`: Operation `protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get` had its response changed from `Dict[str, Any]` into`PlayTimeResponse`.
- `gametelemetry`: Operation `protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get` had its error response also return `BaseErrorResponse`.
- `gametelemetry`: Operation `protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put` had its response changed from `Dict[str, Any]` into`PlayTimeResponse`.
- `gametelemetry`: Operation `protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put` had its error response also return `BaseErrorResponse`.

[v0.62.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.61.0..v0.62.0
