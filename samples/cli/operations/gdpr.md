## Python Extend SDK CLI Sample App Operation Index for Gdpr service.

### Operation `admin_get_list_deletion_data_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-list-deletion-data-request' \
    'string' \
    --after 'string' \
    --before 'string' \
    --limit 1 \
    --offset 1 \
    --request_date 'string' \
    > result.txt
```

### Operation `get_admin_email_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-get-admin-email-configuration' \
    'string' \
    > result.txt
```

### Operation `update_admin_email_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-update-admin-email-configuration' \
    '["string"]' \
    'string' \
    > result.txt
```

### Operation `save_admin_email_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-save-admin-email-configuration' \
    '["string"]' \
    'string' \
    > result.txt
```

### Operation `delete_admin_email_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-delete-admin-email-configuration' \
    'string' \
    '["string"]' \
    > result.txt
```

### Operation `admin_get_platform_account_closure_clients`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-platform-account-closure-clients' \
    'string' \
    > result.txt
```

### Operation `admin_validate_xbox_bp_cert_file`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-validate-xbox-bp-cert-file' \
    '{"bpCert": "string", "password": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_get_platform_account_closure_client`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-platform-account-closure-client' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_platform_account_closure_client`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-update-platform-account-closure-client' \
    '{"bpCert": "string", "bpCertFileName": "string", "clientId": "string", "password": "string", "publisherKey": "string", "sandboxId": "string", "secret": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_platform_account_closure_client`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-delete-platform-account-closure-client' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_mock_platform_account_closure_data`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-mock-platform-account-closure-data' \
    '{"platformUserId": "string", "sandbox": "string", "startImmediately": false}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_list_personal_data_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-list-personal-data-request' \
    'string' \
    --limit 1 \
    --offset 1 \
    --request_date 'string' \
    > result.txt
```

### Operation `admin_get_services_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-services-configuration' \
    'string' \
    > result.txt
```

### Operation `admin_update_services_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-update-services-configuration' \
    '{"services": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_reset_services_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-reset-services-configuration' \
    'string' \
    > result.txt
```

### Operation `admin_get_platform_account_closure_services_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-platform-account-closure-services-configuration' \
    'string' \
    > result.txt
```

### Operation `admin_update_platform_account_closure_services_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-update-platform-account-closure-services-configuration' \
    '{"services": [{}]}' \
    'string' \
    > result.txt
```

### Operation `admin_reset_platform_account_closure_services_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-reset-platform-account-closure-services-configuration' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_platform_account_closure_histories`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-user-platform-account-closure-histories' \
    'string' \
    --limit 1 \
    --offset 1 \
    --platform 'string' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_get_user_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-user-account-deletion-request' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_submit_user_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-submit-user-account-deletion-request' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_cancel_user_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-cancel-user-account-deletion-request' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_get_user_personal_data_requests`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-get-user-personal-data-requests' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `admin_request_data_retrieval`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-request-data-retrieval' \
    'string' \
    'string' \
    --password 'string' \
    > result.txt
```

### Operation `admin_cancel_user_personal_data_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-cancel-user-personal-data-request' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_generate_personal_data_url`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-admin-generate-personal-data-url' \
    'string' \
    'string' \
    'string' \
    --password 'string' \
    > result.txt
```

### Operation `public_submit_user_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-submit-user-account-deletion-request' \
    'string' \
    'string' \
    'string' \
    --language_tag 'string' \
    > result.txt
```

### Operation `public_cancel_user_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-cancel-user-account-deletion-request' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_account_deletion_status`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-get-user-account-deletion-status' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_user_personal_data_requests`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-get-user-personal-data-requests' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `public_request_data_retrieval`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-request-data-retrieval' \
    'string' \
    'string' \
    'string' \
    --language_tag 'string' \
    > result.txt
```

### Operation `public_cancel_user_personal_data_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-cancel-user-personal-data-request' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_generate_personal_data_url`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-generate-personal-data-url' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_submit_my_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-submit-my-account-deletion-request' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_cancel_my_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-cancel-my-account-deletion-request' \
    > result.txt
```

### Operation `public_get_my_account_deletion_status`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-public-get-my-account-deletion-status' \
    > result.txt
```

### Operation `s2s_get_list_finished_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-s2s-get-list-finished-account-deletion-request' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `s2s_get_list_finished_personal_data_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-s2s-get-list-finished-personal-data-request' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `s2s_get_data_request_by_request_id`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-s2s-get-data-request-by-request-id' \
    'string' \
    'string' \
    > result.txt
```

### Operation `s2s_submit_user_account_deletion_request`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-s2s-submit-user-account-deletion-request' \
    'string' \
    'string' \
    > result.txt
```

### Operation `s2s_request_data_retrieval`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-s2s-request-data-retrieval' \
    'string' \
    'string' \
    > result.txt
```

### Operation `s2s_generate_personal_data_url`
```sh
$ python -m accelbyte_py_sdk_cli 'gdpr-s2s-generate-personal-data-url' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

