# [v0.57.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `platform`: Operation `consume_user_entitlement` had its `body` type change from `EntitlementDecrement` into `AdminEntitlementDecrement`.
- `platform`: Operation `sell_user_entitlement` had its `body` type change from `EntitlementSoldRequest` into `AdminEntitlementSoldRequest`.

- `session`: Models `ModelsUserInfo` has been renamed to `ModelsUserInfoResponse`.

[v0.57.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.56.0..v0.57.0
