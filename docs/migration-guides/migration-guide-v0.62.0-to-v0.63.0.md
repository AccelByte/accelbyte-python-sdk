# [v0.63.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiFleetListItemResponse` has a new required field `active`.

- `challenge`: Operation `public_get_scheduled_goals` had its response changed from `List[ModelGoalResponse]` into `ModelGetGoalsResponse`.

- `iam`: Model `AccountcommonDistinctLinkedPlatformV3` has a new required field `platform_group`.

- `match2`: Model `ModelsGameSession` has a new required field `is_full`.
- `match2`: Model `PlayerPlayerData` has a new required field `platform_id`.

- `session`: Model `ApimodelsPlayerAttributesRequestBody` has a new required field `simultaneous_platform`.
- `session`: Model `ApimodelsUserResponse` has a new required field `previous_status`.

- `social`: The `AGS Social Service` has been renamed into `AGS Statistics Service` internally.

* A bunch of `enums` has also been removed. Howeever, you can still use their string representation.

[v0.63.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.62.0..v0.63.0
