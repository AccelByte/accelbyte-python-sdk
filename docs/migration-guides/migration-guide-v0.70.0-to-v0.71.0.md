# [v0.71.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `ams`: Model `ApiAvailableInstanceType` renamed into `ApiInstanceTypeForNamespaceResponse`.
- `ams`: Model `ApiAvailableInstanceTypesResponse` renamed into `ApiInstanceTypesForNamespaceResponse`.
- `ams`: Model `ApiFleetArtifactsSampleRules` field `coredumps` type has changed from `ApiArtifactTypeSamplingRules` into `ApiCoredumpSamplingRules`.
- `ams`: Operation `admin_account_link_token_post` renamed into `admin_account_link`.

- `gdpr`: Model `DtoFinishedDataRequest` field `request_id` is now required.

- `session`: Model `ApimodelsPutPlatformCredentialsRequest` field `psn` type changed from `ModelsPSNAppServerCredentials` into `ApimodelsPSNAppServerCredentialRecord`.
- `session`: Operation `handle_upload_xbox_pfx_certificate` renamed `admin_upload_x_box_certificate`.

- `social`: Model `ApimodelsPutPlatformCredentialsRequest` field `psn` type changed from `ModelsPSNAppServerCredentials` into `ApimodelsPSNAppServerCredentialRecord`.
- `social`: Operation `create_stat` field `body` is now required.
- `social`: Operation `create_stat_1` field `body` is now required.
- `social`: Operation `update_stat` field `body` is now required.
- `social`: Operation `bulk_add_stats` field `body` is now required.
- `social`: Operation `bulk_get_stat_cycle` field `body` is now required.
- `social`: Operation `bulk_get_stat_cycle_1` field `body` is now required.
- `social`: Operation `create_stat_cycle` field `body` is now required.
- `social`: Operation `update_stat_cycle` field `body` is now required.
- `social`: Operation `bulk_create_user_stat_items` field `body` is now required.
- `social`: Operation `bulk_get_or_default_by_user_id` field `body` is now required.
- `social`: Operation `bulk_inc_user_stat_item` field `body` is now required.
- `social`: Operation `bulk_inc_user_stat_item_1` field `body` is now required.
- `social`: Operation `bulk_inc_user_stat_item_value` field `body` is now required.
- `social`: Operation `bulk_inc_user_stat_item_value_1` field `body` is now required.
- `social`: Operation `bulk_inc_user_stat_item_value_2` field `body` is now required.
- `social`: Operation `bulk_reset_user_stat_item_values` field `body` is now required.
- `social`: Operation `bulk_reset_user_stat_item` field `body` is now required.
- `social`: Operation `bulk_reset_user_stat_item_1` field `body` is now required.
- `social`: Operation `bulk_reset_user_stat_item_2` field `body` is now required.
- `social`: Operation `bulk_reset_user_stat_item_3` field `body` is now required.
- `social`: Operation `bulk_update_user_stat_item` field `body` is now required.
- `social`: Operation `bulk_update_user_stat_item_1` field `body` is now required.
- `social`: Operation `bulk_update_user_stat_item_2` field `body` is now required.
- `social`: Operation `bulk_update_user_stat_item_v2` field `body` is now required.
- `social`: Operation `inc_user_stat_item_value` field `body` is now required.
- `social`: Operation `public_bulk_create_user_stat_items` field `body` is now required.
- `social`: Operation `public_bulk_inc_user_stat_item` field `body` is now required.
- `social`: Operation `public_bulk_inc_user_stat_item_1` field `body` is now required.
- `social`: Operation `public_buik_inc_user_stat_item_value` field `body` is now required.
- `social`: Operation `public_inc_user_stat_item` field `body` is now required.
- `social`: Operation `public_inc_user_stat_item_value` field `body` is now required.
- `social`: Operation `reset_user_stat_item_value` field `body` is now required.
- `social`: Operation `update_user_stat_item_value` field `body` is now required.
- `social`: Operation `update_user_stat_item_value_1` field `body` is now required.

[v0.71.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.70.0..v0.71.0
