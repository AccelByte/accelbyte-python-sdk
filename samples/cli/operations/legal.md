## Python Extend SDK CLI Sample App Operation Index for Legal service.

### Operation `change_preference_consent`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-change-preference-consent' \
    'string' \
    'string' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    > result.txt
```

### Operation `old_retrieve_accepted_agreements`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-accepted-agreements' \
    'string' \
    > result.txt
```

### Operation `old_retrieve_all_users_by_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-all-users-by-policy-version' \
    'string' \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `retrieve_all_legal_policies`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-all-legal-policies' \
    --visible_only false \
    > result.txt
```

### Operation `old_create_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-create-policy' \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "namespace": "string", "tags": ["string"], "typeId": "string"}' \
    > result.txt
```

### Operation `old_retrieve_single_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-single-policy' \
    'string' \
    > result.txt
```

### Operation `old_partial_update_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-partial-update-policy' \
    'string' \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "namespace": "string", "tags": ["string"]}' \
    > result.txt
```

### Operation `old_retrieve_policy_country`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-policy-country' \
    'string' \
    'string' \
    > result.txt
```

### Operation `old_retrieve_localized_policy_versions`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-localized-policy-versions' \
    'string' \
    > result.txt
```

### Operation `old_create_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-create-localized-policy-version' \
    'string' \
    --body '{"contentType": "string", "description": "string", "localeCode": "string"}' \
    > result.txt
```

### Operation `old_retrieve_single_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-single-localized-policy-version' \
    'string' \
    > result.txt
```

### Operation `old_update_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-update-localized-policy-version' \
    'string' \
    --body '{"attachmentChecksum": "string", "attachmentLocation": "string", "attachmentVersionIdentifier": "string", "contentType": "string", "description": "string"}' \
    > result.txt
```

### Operation `old_request_presigned_url`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-request-presigned-url' \
    'string' \
    --body '{"contentMD5": "string", "contentType": "string"}' \
    > result.txt
```

### Operation `old_set_default_localized_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-set-default-localized-policy' \
    'string' \
    > result.txt
```

### Operation `retrieve_accepted_agreements_for_multi_users`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-accepted-agreements-for-multi-users' \
    'string' \
    --body '{"currentPublishedOnly": false, "userIds": ["string"]}' \
    > result.txt
```

### Operation `retrieve_accepted_agreements`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-accepted-agreements' \
    'string' \
    'string' \
    --exclude_other_namespaces_policies false \
    > result.txt
```

### Operation `retrieve_all_users_by_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-all-users-by-policy-version' \
    'string' \
    'string' \
    --convert_game_user_id false \
    --keyword 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `download_exported_agreements_in_csv`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-download-exported-agreements-in-csv' \
    'string' \
    'string' \
    > result.txt
```

### Operation `initiate_export_agreements_to_csv`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-initiate-export-agreements-to-csv' \
    'string' \
    'string' \
    'string' \
    --end 'string' \
    > result.txt
```

### Operation `retrieve_all_legal_policies_by_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-all-legal-policies-by-namespace' \
    'string' \
    --visible_only false \
    > result.txt
```

### Operation `create_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-create-policy' \
    'string' \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "tags": ["string"], "typeId": "string"}' \
    > result.txt
```

### Operation `retrieve_single_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-single-policy' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_base_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-delete-base-policy' \
    'string' \
    'string' \
    > result.txt
```

### Operation `partial_update_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-partial-update-policy' \
    'string' \
    'string' \
    --body '{"affectedClientIds": ["string"], "affectedCountries": ["string"], "basePolicyName": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isHidden": false, "isHiddenPublic": false, "tags": ["string"]}' \
    > result.txt
```

### Operation `retrieve_policy_country`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-policy-country' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `retrieve_all_policies_from_base_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-all-policies-from-base-policy' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_policy_under_base_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-create-policy-under-base-policy' \
    'string' \
    'string' \
    --body '{"countries": ["string"], "countryCode": "string", "countryGroupName": "string", "countryType": "COUNTRY", "description": "string", "isDefaultSelection": false, "isMandatory": false, "policyName": "string", "shouldNotifyOnUpdate": false}' \
    > result.txt
```

### Operation `delete_localized_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-delete-localized-policy' \
    'string' \
    'string' \
    > result.txt
```

### Operation `retrieve_localized_policy_versions`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-localized-policy-versions' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-create-localized-policy-version' \
    'string' \
    'string' \
    --body '{"contentType": "string", "description": "string", "localeCode": "string"}' \
    > result.txt
```

### Operation `retrieve_single_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-single-localized-policy-version' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-update-localized-policy-version' \
    'string' \
    'string' \
    --body '{"attachmentChecksum": "string", "attachmentLocation": "string", "attachmentVersionIdentifier": "string", "contentType": "string", "description": "string"}' \
    > result.txt
```

### Operation `request_presigned_url`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-request-presigned-url' \
    'string' \
    'string' \
    --body '{"contentMD5": "string", "contentType": "string"}' \
    > result.txt
```

### Operation `set_default_localized_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-set-default-localized-policy' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-delete-policy-version' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-update-policy-version' \
    'string' \
    'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `publish_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-publish-policy-version' \
    'string' \
    'string' \
    --should_notify false \
    > result.txt
```

### Operation `unpublish_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-unpublish-policy-version' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-delete-policy' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-update-policy' \
    'string' \
    'string' \
    --body '{"countries": ["string"], "countryGroupName": "string", "description": "string", "isDefaultOpted": false, "isMandatory": false, "policyName": "string", "readableId": "string", "shouldNotifyOnUpdate": false}' \
    > result.txt
```

### Operation `set_default_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-set-default-policy' \
    'string' \
    'string' \
    > result.txt
```

### Operation `retrieve_single_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-single-policy-version' \
    'string' \
    'string' \
    --version_id 'string' \
    > result.txt
```

### Operation `create_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-create-policy-version' \
    'string' \
    'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `retrieve_all_policy_types`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-all-policy-types' \
    'string' \
    1 \
    --offset 1 \
    > result.txt
```

### Operation `indirect_bulk_accept_versioned_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-indirect-bulk-accept-versioned-policy' \
    'string' \
    'string' \
    'string' \
    'string' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    --publisher_user_id 'string' \
    > result.txt
```

### Operation `admin_retrieve_eligibilities`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-admin-retrieve-eligibilities' \
    'string' \
    'string' \
    'string' \
    'string' \
    --publisher_user_id 'string' \
    > result.txt
```

### Operation `retrieve_policies`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-policies' \
    'string' \
    > result.txt
```

### Operation `old_update_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-update-policy-version' \
    'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `old_publish_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-publish-policy-version' \
    'string' \
    --should_notify false \
    > result.txt
```

### Operation `old_update_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-update-policy' \
    'string' \
    --body '{"countries": ["string"], "countryGroupName": "string", "description": "string", "isDefaultOpted": false, "isMandatory": false, "policyName": "string", "readableId": "string", "shouldNotifyOnUpdate": false}' \
    > result.txt
```

### Operation `old_set_default_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-set-default-policy' \
    'string' \
    > result.txt
```

### Operation `old_retrieve_single_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-single-policy-version' \
    'string' \
    --version_id 'string' \
    > result.txt
```

### Operation `old_create_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-create-policy-version' \
    'string' \
    --body '{"description": "string", "displayVersion": "string", "isCommitted": false}' \
    > result.txt
```

### Operation `old_retrieve_all_policy_types`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-all-policy-types' \
    1 \
    --offset 1 \
    > result.txt
```

### Operation `get_user_info_status`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-get-user-info-status' \
    --namespaces 'string' \
    > result.txt
```

### Operation `anonymize_user_agreement`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-anonymize-user-agreement' \
    'string' \
    > result.txt
```

### Operation `public_change_preference_consent`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-public-change-preference-consent' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    > result.txt
```

### Operation `accept_versioned_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-accept-versioned-policy' \
    'string' \
    > result.txt
```

### Operation `retrieve_agreements_public`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-agreements-public' \
    > result.txt
```

### Operation `bulk_accept_versioned_policy`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-bulk-accept-versioned-policy' \
    --body '[{"isAccepted": false, "isNeedToSendEventMarketing": false, "localizedPolicyVersionId": "string", "policyId": "string", "policyVersionId": "string"}]' \
    > result.txt
```

### Operation `retrieve_eligibilities_public`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-eligibilities-public' \
    'string' \
    > result.txt
```

### Operation `retrieve_eligibilities_public_indirect`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-eligibilities-public-indirect' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `old_public_retrieve_single_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-public-retrieve-single-localized-policy-version' \
    'string' \
    > result.txt
```

### Operation `public_retrieve_single_localized_policy_version`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-public-retrieve-single-localized-policy-version' \
    'string' \
    'string' \
    > result.txt
```

### Operation `retrieve_country_list_with_policies`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-country-list-with-policies' \
    > result.txt
```

### Operation `retrieve_latest_policies`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-latest-policies' \
    'string' \
    --default_on_empty false \
    --policy_type 'LEGAL_DOCUMENT_TYPE' \
    --tags 'string' \
    --visible_only false \
    > result.txt
```

### Operation `retrieve_latest_policies_public`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-latest-policies-public' \
    'string' \
    --always_include_default false \
    --default_on_empty false \
    --policy_type 'LEGAL_DOCUMENT_TYPE' \
    --tags 'string' \
    --visible_only false \
    > result.txt
```

### Operation `old_retrieve_latest_policies_by_namespace_and_country_public`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-old-retrieve-latest-policies-by-namespace-and-country-public' \
    'string' \
    'string' \
    --always_include_default false \
    --default_on_empty false \
    --policy_type 'LEGAL_DOCUMENT_TYPE' \
    --tags 'string' \
    --visible_only false \
    > result.txt
```

### Operation `check_readiness`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-check-readiness' \
    > result.txt
```

### Operation `retrieve_latest_policies_by_namespace_and_country_public`
```sh
$ python -m accelbyte_py_sdk_cli 'legal-retrieve-latest-policies-by-namespace-and-country-public' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

