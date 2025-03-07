# [v0.74.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiFleetServerConnectionInfoResponse` field `expires_at` type changed from `ApiTime` to `str`.
- `ams`: Models `ApiTime`, `TimeLocation`, `TimeZone`, `TimeZoneTrans` has been removed.
- `ams`: Operation `fleet_list` parameter `desc` has been removed.

- `social`: Operation `public_query_user_stat_items` has been switched with `public_query_user_stat_items_1`

- `session`: Model `ApimodelsUpdateGamesessionDSInformationRequest` fields `client_version` and `game_mode` has been removed.

[v0.74.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.73.0..v0.74.0
