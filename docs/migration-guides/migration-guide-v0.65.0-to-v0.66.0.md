# [v0.66.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `group`: Operations under `accelbyte_py_sdk.api.group.operations.operations` has been removed.

- `leaderboard`: Model `V2Pagination` has been renamed to `V2PaginationV2`.
- `leaderboard`: Model `V2GetAllLeaderboardConfigsPublicResp.paging` type has changed from `V2Pagination` into `V2PaginationV2`.
- `leaderboard`: Model `V2GetPublicLeaderboardRankingResponse.paging` type has changed from `V2Pagination` into `V2PaginationV2`.

[v0.66.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.65.0..v0.66.0
