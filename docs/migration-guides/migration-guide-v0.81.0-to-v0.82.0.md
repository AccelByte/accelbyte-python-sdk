# [v0.82.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `platform`: Operation `getEstimatedPrice` response changed from `EstimatedPriceInfo` into `List[EstimatedPriceInfo]`.

- `session`: Operations request body and/or response type changed from `Dict[str, Any]` into `ApimodelsGenericObject`. Affected operations: `adminQueryGameSessionsByAttributes`, `publicQueryGameSessionsByAttributes`, session storage operations (`adminReadSessionStorage`, `adminReadPartySessionStorage`, `adminReadUserSessionStorage`, `publicReadPartySessionStorage`, `publicUpdateInsertSessionStorage`, `publicUpdateInsertSessionStorageLeader`, `publicUpdateInsertPartyStorage`, `publicUpdateInsertPartyStorageLeader`).

[v0.82.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.81.0..v0.82.0
