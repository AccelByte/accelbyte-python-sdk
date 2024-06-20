# [v0.67.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiFleetGetResponse` has a new required field `sampling_rules`.
- `ams`: Model `ApiImageDetails` has a new required field `delete_at`.
- `ams`: Model `ApiImageListItem` has a new required field `delete_at`.
- `ams`: Operation `ImageGet` required permission changed from `ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]` to `ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]`
- `ams`: Operation `ImageList` required permission changed from `ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [READ]` to `ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [READ]`
- `ams`: Operation `ImagePatch` required permission changed from `ADMIN:NAMESPACE:{namespace}:ARMADA:ACCOUNT [UPDATE]` to `ADMIN:NAMESPACE:{namespace}:AMS:IMAGE [UPDATE]`

- `challenge`: Model `ModelChallengeResponse` has a new required field `reset_config`.
- `challenge`: Model `ModelsUpdateChallengeRequest` is now renamed into `ModelUpdateChallengeRequest`.

- `iam`: Model `Validation` has a new required field `profanity_filter`.
- `iam`: Operation `generate_token_by_new_headless_account_v3` now requires `BASIC_AUTH` instead of `BEARER_AUTH`.
- `iam`: Operation `request_target_token_response_v3` now requires `BASIC_AUTH` instead of `BEARER_AUTH`.
- `iam`: Operation `platform_token_grant_v4` now requires `BASIC_AUTH` instead of `BEARER_AUTH`.
- `iam`: Operation `token_grant_v4` now requires `BASIC_AUTH` instead of `BEARER_AUTH`.
- `iam`: Operation `admin_disable_my_authenticator_v4` now requires `body` payload.
- `iam`: Operation `admin_disable_my_backup_codes_v4` now requires `body` payload.
- `iam`: Operation `admin_disable_my_email_v4` now requires `body` payload.
- `iam`: Operation `public_disable_my_authenticator_v4` now requires `body` payload.
- `iam`: Operation `public_disable_my_backup_codes_v4` now requires `body` payload.
- `iam`: Operation `public_disable_my_email_v4` now requires `body` payload.

- `inventory`: Model `ApimodelsItemResp` has a new required field `item_info`.
- `inventory`: Operation `public_list_items` field `qty_gte` has been removed.

- `match2`: Model `MatchmakerTicket` has new required fields `is_active` and `ticket_information`.

- `platform`: Operations `query_items_1` is now renamed into `query_items_v2`.
- `platform`: Operations `get_payment_merchant_config` field `id_` has been replaced by `namespace`.

[v0.67.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.66.0..v0.67.0
