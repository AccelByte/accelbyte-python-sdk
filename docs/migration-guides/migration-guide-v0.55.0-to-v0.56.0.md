# [v0.56.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Models `ApiArtifactSamplingRuleResponse` has been renamed to `ApiArtifactSamplingRule`.
- `ams`: Models `ApiArtifactTypeSamplingRulesResponse` has been renamed to `ApiArtifactTypeSamplingRules`.
- `ams`: Models `ApiFleetArtifactsSampleRulesResponse` has been renamed to `ApiFleetArtifactsSampleRules`.

- `platform`: Models `CatalogChangePagingSlicedResult` has been renamed to `CatalogChangePagingResult`.
- `platform`: Operation `query_changes` had its response changed from `CatalogChangePagingSlicedResult` into `CatalogChangePagingResult`.
- `platform`: Operation `debit_by_wallet_platform` had its parameter renamed from `body` into `request`.

- `session`: Operation `get_session_server_secret` had its `body` parameter.

[v0.56.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.55.0..v0.56.0
