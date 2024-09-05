# [v0.69.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `core`: please use `LobbyWSClient` instead of `WebsocketsWSClient` to connect to `/lobby`

- `basic`: Operation `GetLanguages` response changed from `Dict[str, Any]` to `Dict[str, str]`.

- `iam`: Operation `AdminEnableMyAuthenticatorV4` now requires `code`.
- `iam`: Operation `PublicEnableMyAuthenticatorV4` now requires `code`.

- `sessionhistory`: Operation `QueryTotalMatchmakingCanceled` field `match_pool` type has changed from `str` into `List[str]`.
- `sessionhistory`: Operation `QueryTotalMatchmakingCreated` field `match_pool` type has changed from `str` into `List[str]`.
- `sessionhistory`: Operation `QueryTotalMatchmakingExpired` field `match_pool` type has changed from `str` into `List[str]`.
- `sessionhistory`: Operation `QueryTotalMatchmakingMatch` field `match_pool` type has changed from `str` into `List[str]`.
- `sessionhistory`: Operation `QueryTotalMatchmakingMatchTicket` field `match_pool` type has changed from `str` into `List[str]`.
- `sessionhistory`: Operation `QueryXrayMatchPool` field `pool_name` type has changed from `str` into `List[str]`.

[v0.69.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.68.0..v0.69.0
