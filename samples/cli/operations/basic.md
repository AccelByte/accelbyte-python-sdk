## Python Extend SDK CLI Sample App Operation Index for Basic service.

### Operation `get_namespaces`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-namespaces' \
    --active_only false \
    > result.txt
```

### Operation `create_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-create-namespace' \
    --body '{"displayName": "string", "namespace": "string"}' \
    > result.txt
```

### Operation `get_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-namespace' \
    'string' \
    --active_only false \
    > result.txt
```

### Operation `delete_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-delete-namespace' \
    'string' \
    > result.txt
```

### Operation `update_namespace`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-namespace' \
    'string' \
    --body '{"displayName": "string"}' \
    > result.txt
```

### Operation `get_child_namespaces`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-child-namespaces' \
    'string' \
    --active_only false \
    > result.txt
```

### Operation `create_config`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-create-config' \
    'string' \
    --body '{"key": "string", "value": "string"}' \
    > result.txt
```

### Operation `get_config`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_config`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-delete-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_config`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-config' \
    'string' \
    'string' \
    --body '{"value": "string"}' \
    > result.txt
```

### Operation `get_namespace_context`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-namespace-context' \
    'string' \
    --refresh_on_cache_miss false \
    > result.txt
```

### Operation `generated_upload_url`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-generated-upload-url' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_game_namespaces`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-game-namespaces' \
    'string' \
    --active_only false \
    > result.txt
```

### Operation `get_country_groups`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-country-groups' \
    'string' \
    --group_code 'string' \
    > result.txt
```

### Operation `add_country_group`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-add-country-group' \
    'string' \
    --body '{"countries": [{}], "countryGroupCode": "string", "countryGroupName": "string"}' \
    > result.txt
```

### Operation `update_country_group`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-country-group' \
    'string' \
    'string' \
    --body '{"countries": [{}], "countryGroupName": "string"}' \
    > result.txt
```

### Operation `delete_country_group`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-delete-country-group' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_languages`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-languages' \
    'string' \
    > result.txt
```

### Operation `get_time_zones`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-time-zones' \
    'string' \
    > result.txt
```

### Operation `get_user_profile_info_by_public_id`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-user-profile-info-by-public-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_profile_public_info_by_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-admin-get-user-profile-public-info-by-ids' \
    'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `get_namespace_publisher`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-namespace-publisher' \
    'string' \
    > result.txt
```

### Operation `get_publisher_config`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-publisher-config' \
    'string' \
    'string' \
    > result.txt
```

### Operation `change_namespace_status`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-change-namespace-status' \
    'string' \
    --body '{"status": "ACTIVE"}' \
    > result.txt
```

### Operation `anonymize_user_profile`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-anonymize-user-profile' \
    'string' \
    'string' \
    > result.txt
```

### Operation `generated_user_upload_content_url`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-generated-user-upload-content-url' \
    'string' \
    'string' \
    'string' \
    --category 'string' \
    > result.txt
```

### Operation `get_user_profile_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-user-profile-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_user_profile`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-user-profile' \
    'string' \
    'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "status": "ACTIVE", "timeZone": "string", "zipCode": "string"}' \
    > result.txt
```

### Operation `delete_user_profile`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-delete-user-profile' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_custom_attributes_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-custom-attributes-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_custom_attributes_partially`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-custom-attributes-partially' \
    'string' \
    'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `get_private_custom_attributes_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-private-custom-attributes-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_private_custom_attributes_partially`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-private-custom-attributes-partially' \
    'string' \
    'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `update_user_profile_status`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-user-profile-status' \
    'string' \
    'string' \
    --body '{"status": "ACTIVE"}' \
    > result.txt
```

### Operation `public_get_time`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-time' \
    > result.txt
```

### Operation `public_get_namespaces`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-namespaces' \
    --active_only false \
    > result.txt
```

### Operation `get_namespace_1`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-namespace-1' \
    'string' \
    > result.txt
```

### Operation `public_generated_upload_url`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-generated-upload-url' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_languages`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-languages' \
    'string' \
    > result.txt
```

### Operation `public_get_time_zones`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-time-zones' \
    'string' \
    > result.txt
```

### Operation `public_get_user_profile_public_info_by_ids`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-user-profile-public-info-by-ids' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_bulk_get_user_profile_public_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-bulk-get-user-profile-public-info' \
    'string' \
    --body '{"userIds": ["string"]}' \
    > result.txt
```

### Operation `public_get_user_profile_info_by_public_id`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-user-profile-info-by-public-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_namespace_publisher`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-namespace-publisher' \
    'string' \
    > result.txt
```

### Operation `get_my_profile_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-my-profile-info' \
    'string' \
    > result.txt
```

### Operation `update_my_profile`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-my-profile' \
    'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "timeZone": "string", "zipCode": "string"}' \
    > result.txt
```

### Operation `create_my_profile`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-create-my-profile' \
    'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "timeZone": "string"}' \
    > result.txt
```

### Operation `get_my_private_custom_attributes_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-my-private-custom-attributes-info' \
    'string' \
    > result.txt
```

### Operation `update_my_private_custom_attributes_partially`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-my-private-custom-attributes-partially' \
    'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `get_my_zip_code`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-get-my-zip-code' \
    'string' \
    > result.txt
```

### Operation `update_my_zip_code`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-update-my-zip-code' \
    '{"zipCode": "string"}' \
    'string' \
    > result.txt
```

### Operation `public_generated_user_upload_content_url`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-generated-user-upload-content-url' \
    'string' \
    'string' \
    'string' \
    --category 'string' \
    > result.txt
```

### Operation `public_get_user_profile_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-user-profile-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_user_profile`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-update-user-profile' \
    'string' \
    'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "privateCustomAttributes": {"string": {}}, "timeZone": "string", "zipCode": "string"}' \
    > result.txt
```

### Operation `public_create_user_profile`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-create-user-profile' \
    'string' \
    'string' \
    --body '{"avatarLargeUrl": "string", "avatarSmallUrl": "string", "avatarUrl": "string", "customAttributes": {"string": {}}, "dateOfBirth": "2000-01-01", "firstName": "string", "language": "string", "lastName": "string", "timeZone": "string"}' \
    > result.txt
```

### Operation `public_get_custom_attributes_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-custom-attributes-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_custom_attributes_partially`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-update-custom-attributes-partially' \
    'string' \
    'string' \
    --body '{"string": {}}' \
    > result.txt
```

### Operation `public_get_user_profile_public_info`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-get-user-profile-public-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_update_user_profile_status`
```sh
$ python -m accelbyte_py_sdk_cli 'basic-public-update-user-profile-status' \
    'string' \
    'string' \
    --body '{"status": "ACTIVE"}' \
    > result.txt
```

