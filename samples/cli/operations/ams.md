## Python Extend SDK CLI Sample App Operation Index for Ams service.

### Operation `auth_check`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-auth-check' \
    > result.txt
```

### Operation `portal_health_check`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-portal-health-check' \
    > result.txt
```

### Operation `admin_account_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-admin-account-get' \
    'string' \
    > result.txt
```

### Operation `admin_account_create`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-admin-account-create' \
    '{"name": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_account_link_token_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-admin-account-link-token-get' \
    'string' \
    > result.txt
```

### Operation `admin_account_link`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-admin-account-link' \
    '{"token": "string"}' \
    'string' \
    > result.txt
```

### Operation `artifact_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-artifact-get' \
    'string' \
    --artifact_type 'string' \
    --count 1 \
    --end_date 'string' \
    --fleet_id 'string' \
    --image_id 'string' \
    --max_size 1 \
    --min_size 1 \
    --offset 1 \
    --region 'string' \
    --server_id 'string' \
    --sort_by 'string' \
    --sort_direction 'asc' \
    --start_date 'string' \
    --status 'string' \
    > result.txt
```

### Operation `artifact_bulk_delete`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-artifact-bulk-delete' \
    'string' \
    --artifact_type 'string' \
    --fleet_id 'string' \
    --uploaded_before '2000-01-01' \
    > result.txt
```

### Operation `artifact_usage_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-artifact-usage-get' \
    'string' \
    > result.txt
```

### Operation `artifact_delete`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-artifact-delete' \
    'string' \
    'string' \
    > result.txt
```

### Operation `artifact_get_url`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-artifact-get-url' \
    'string' \
    'string' \
    > result.txt
```

### Operation `development_server_configuration_list`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-development-server-configuration-list' \
    'string' \
    --count 1 \
    --offset 1 \
    > result.txt
```

### Operation `development_server_configuration_create`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-development-server-configuration-create' \
    '{"commandLineArguments": "string", "expiresAt": "2000-01-01T12:34:56Z", "imageId": "string", "name": "string"}' \
    'string' \
    > result.txt
```

### Operation `development_server_configuration_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-development-server-configuration-get' \
    'string' \
    'string' \
    > result.txt
```

### Operation `development_server_configuration_delete`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-development-server-configuration-delete' \
    'string' \
    'string' \
    > result.txt
```

### Operation `development_server_configuration_patch`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-development-server-configuration-patch' \
    '{"commandLineArguments": "string", "expiresAt": "2000-01-01T12:34:56Z"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_list`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-list' \
    'string' \
    --active false \
    --count 1 \
    --name 'string' \
    --offset 1 \
    --region 'string' \
    --sort_by 'active' \
    --sort_direction 'asc' \
    > result.txt
```

### Operation `fleet_create`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-create' \
    '{"active": false, "claimKeys": ["string"], "dsHostConfiguration": {}, "fallbackFleet": "string", "hibernateAfterPeriod": "string", "imageDeploymentProfile": {}, "name": "string", "onDemand": false, "regions": [{}], "samplingRules": {}}' \
    'string' \
    > result.txt
```

### Operation `fleet_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-get' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_update`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-update' \
    '{"active": false, "claimKeys": ["string"], "dsHostConfiguration": {}, "fallbackFleet": "string", "hibernateAfterPeriod": "string", "imageDeploymentProfile": {}, "name": "string", "onDemand": false, "regions": [{}], "samplingRules": {}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_delete`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-delete' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_artifact_sampling_rules_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-artifact-sampling-rules-get' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_artifact_sampling_rules_set`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-artifact-sampling-rules-set' \
    '{"coredumps": {}, "logs": {}}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_servers`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-servers' \
    'string' \
    'string' \
    --count 1 \
    --offset 1 \
    --region 'string' \
    --server_id 'string' \
    --sort_by 'string' \
    --sort_direction 'asc' \
    --status 'claimed' \
    > result.txt
```

### Operation `fleet_server_history`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-server-history' \
    'string' \
    'string' \
    --count 1 \
    --offset 1 \
    --reason 'string' \
    --region 'string' \
    --server_id 'string' \
    --sort_direction 'string' \
    --status 'string' \
    > result.txt
```

### Operation `image_list`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-image-list' \
    'string' \
    --count 1 \
    --in_use 'string' \
    --is_protected false \
    --name 'string' \
    --offset 1 \
    --sort_by 'string' \
    --sort_direction 'string' \
    --status 'string' \
    --tag 'string' \
    > result.txt
```

### Operation `images_storage`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-images-storage' \
    'string' \
    > result.txt
```

### Operation `image_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-image-get' \
    'string' \
    'string' \
    > result.txt
```

### Operation `image_mark_for_deletion`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-image-mark-for-deletion' \
    'string' \
    'string' \
    > result.txt
```

### Operation `image_patch`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-image-patch' \
    '{"addedTags": ["string"], "isProtected": false, "name": "string", "removedTags": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `image_unmark_for_deletion`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-image-unmark-for-deletion' \
    'string' \
    'string' \
    > result.txt
```

### Operation `qo_s_regions_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-qo-s-regions-get' \
    'string' \
    --status 'string' \
    > result.txt
```

### Operation `qo_s_regions_update`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-qo-s-regions-update' \
    '{"status": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `info_regions`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-info-regions' \
    'string' \
    > result.txt
```

### Operation `fleet_server_info`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-server-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_server_connection_info`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-server-connection-info' \
    'string' \
    'string' \
    > result.txt
```

### Operation `server_history`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-server-history' \
    'string' \
    'string' \
    > result.txt
```

### Operation `info_supported_instances`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-info-supported-instances' \
    'string' \
    > result.txt
```

### Operation `account_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-account-get' \
    'string' \
    > result.txt
```

### Operation `fleet_claim_by_id`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-claim-by-id' \
    '{"region": "string", "sessionId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `local_watchdog_connect`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-local-watchdog-connect' \
    'string' \
    'string' \
    > result.txt
```

### Operation `fleet_claim_by_keys`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-fleet-claim-by-keys' \
    '{"claimKeys": ["string"], "regions": ["string"], "sessionId": "string"}' \
    'string' \
    > result.txt
```

### Operation `watchdog_connect`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-watchdog-connect' \
    'string' \
    'string' \
    > result.txt
```

### Operation `upload_url_get`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-upload-url-get' \
    > result.txt
```

### Operation `func1`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-func1' \
    > result.txt
```

### Operation `basic_health_check`
```sh
$ python -m accelbyte_py_sdk_cli 'ams-basic-health-check' \
    > result.txt
```

