# [v0.80.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:

- `lobby`: Operation `get_my_offline_notifications` removed query parameters `endTime`, `startTime`, `limit`, `offset`.
- `legal`: Operations were renamed and moved to namespace-scoped routes; legacy non-namespace variants are exposed as `old_*` operations.
  - `retrieve_localized_policy_versions_1` → `retrieve_localized_policy_versions`
  - `create_localized_policy_version_1` → `create_localized_policy_version`
  - `retrieve_single_localized_policy_version_1` → `retrieve_single_localized_policy_version`
  - `update_localized_policy_version_1` → `update_localized_policy_version`
  - `request_presigned_url_1` → `request_presigned_url`
  - `set_default_policy_1` → `set_default_localized_policy`
  - `update_policy_version_1` → `update_policy_version`
  - `publish_policy_version_1` → `publish_policy_version`
  - `update_policy_1` → `update_policy`
  - `set_default_policy_3` → `set_default_policy`
  - `retrieve_single_policy_version_1` → `retrieve_single_policy_version`
  - `create_policy_version_1` → `create_policy_version`
  - `retrieve_all_policy_types_1` → `retrieve_all_policy_types`
  - `change_preference_consent_1` → `public_change_preference_consent`
  - `indirect_bulk_accept_versioned_policy_1` → `public_indirect_bulk_accept_versioned_policy`
  - `retrieve_single_localized_policy_version_2` → `old_public_retrieve_single_localized_policy_version`
  - `retrieve_single_localized_policy_version_3` → `public_retrieve_single_localized_policy_version`
  - `retrieve_latest_policies_by_namespace_and_country_public_1` → `retrieve_latest_policies_by_namespace_and_country_public`
  - `retrieve_latest_policies_by_namespace_and_country_public` → `old_retrieve_latest_policies_by_namespace_and_country_public`

[v0.80.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.79.0..v0.80.0
