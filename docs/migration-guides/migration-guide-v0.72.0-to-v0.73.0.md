# [v0.73.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiInstanceTypeForNamespaceResponse` renamed into `ApiInstanceType`.
- `ams`: Model `ApiInstanceTypesForNamespaceResponse` renamed into `ApiInstanceTypesResponse`.
- `ams`: Operation `info_supported_instances` return type change into `ApiInstanceTypesResponse`.

- `challenge`: Model `ModelCreateGoalRequest` field `schedule` type changed from `ModelGoalSchedule` into `ModelGoalScheduleRequest`.
- `challenge`: Model `ModelUpdateGoalRequest` field `schedule` type changed from `ModelGoalSchedule` into `ModelGoalScheduleRequest`.

- `chat`: Operation `admin_profanity_create_bulk` response type change from `ModelsDictionary` into `<None>`.

- `iam`: Operation `public_upgrade_headless_with_code_v4_forward` now returns `AccountUpgradeHeadlessAccountWithVerificationCodeForwardRequestV4` instead of `AccountUpgradeHeadlessAccountWithVerificationCodeRequestV4`.

[v0.73.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.72.0..v0.73.0
