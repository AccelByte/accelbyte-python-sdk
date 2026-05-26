## Python Extend SDK CLI Sample App Operation Index for Csm service.

### Operation `list_app_ui`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-list-app-ui' \
    'string' \
    --limit 1 \
    --name 'string' \
    --offset 1 \
    > result.txt
```

### Operation `create_app_ui`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-app-ui' \
    '{"name": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_app_ui`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-app-ui' \
    'string' \
    'string' \
    > result.txt
```

### Operation `upload_app_ui_file`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-upload-app-ui-file' \
    'tmp.dat' \
    'string' \
    'string' \
    --version 'string' \
    > result.txt
```

### Operation `get_app_release_v1`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-app-release-v1' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_extend_file`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-extend-file' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_messages`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-public-get-messages' \
    > result.txt
```

### Operation `get_app_list_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-app-list-v2' \
    '{"appNames": ["string"], "appStatuses": ["string"], "fuzzyAppName": "string", "scenario": "string"}' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_app_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-app-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_app_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-app-v2' \
    '{"autoscaling": {}, "cpu": {}, "description": "string", "memory": {}, "replica": {}, "scenario": "string", "vmSharingConfiguration": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_app_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-app-v2' \
    'string' \
    'string' \
    --forced 'string' \
    > result.txt
```

### Operation `update_app_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-app-v2' \
    '{"description": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `apply_app_config_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-apply-app-config-v2' \
    '{"autoscaling": {}, "cpu": {}, "description": "string", "memory": {}, "permissions": [{}], "replica": {}, "scenario": "string", "secrets": [{}], "variables": [{}], "vmSharingConfiguration": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_subscription_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-subscription-handler' \
    '{"topicNames": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `unsubscribe_topic_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-unsubscribe-topic-handler' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_deployment_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-deployment-v2' \
    '{"imageTag": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_app_image_list_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-app-image-list-v2' \
    'string' \
    'string' \
    --cached 'string' \
    > result.txt
```

### Operation `delete_app_images_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-app-images-v2' \
    '{"imageTags": ["string"]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_key_value_credential_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-key-value-credential-v2' \
    '{"password": "string", "username": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_integration_app_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-integration-app-key-value-cluster-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `integrate_app_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-integrate-app-key-value-cluster-v2' \
    '{"acknowledgements": {}, "password": "string", "resourceId": "string", "username": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `remove_integration_app_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-remove-integration-app-key-value-cluster-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_new_no_sql_database_credential_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-new-no-sql-database-credential-v2' \
    '{"acknowledgements": {}, "password": "string", "username": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_no_sql_database_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-no-sql-database-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_no_sql_database_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-no-sql-database-v2' \
    '{"acknowledgements": {}, "dbName": "string", "password": "string", "username": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_no_sql_database_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-no-sql-database-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_app_resources_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-app-resources-v2' \
    '{"autoscaling": {}, "cpu": {}, "memory": {}, "replica": {}, "vmSharingConfiguration": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_app_resources_resource_limit_form_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-app-resources-resource-limit-form-v2' \
    '{"clientEmail": "string", "preferredLimitReplica": 1, "requestReason": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_list_of_secrets_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-list-of-secrets-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `save_secret_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-save-secret-v2' \
    '{"configName": "string", "description": "string", "source": "string", "value": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_secret_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-secret-v2' \
    '{"description": "string", "value": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_secret_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-secret-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_sql_database_credential_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-sql-database-credential-v2' \
    '{"password": "string", "username": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_sql_database_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-sql-database-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `create_sql_database_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-sql-database-v2' \
    '{"acknowledgements": {}, "dbName": "string", "password": "string", "username": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_sql_database_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-sql-database-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `start_app_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-start-app-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `stop_app_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-stop-app-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_notification_subscriber_list_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-notification-subscriber-list-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `bulk_save_subscription_app_notification_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-bulk-save-subscription-app-notification-v2' \
    '{"subscribers": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `subscribe_app_notification_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-subscribe-app-notification-v2' \
    '{"notificationType": "string", "subscribers": [{}]}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_subscription_v2_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-subscription-v2-handler' \
    'string' \
    'string' \
    > result.txt
```

### Operation `subscribe_v2_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-subscribe-v2-handler' \
    '{"notificationType": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `unsubscribe_v2_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-unsubscribe-v2-handler' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_subscription_app_notification_by_user_idv2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-subscription-app-notification-by-user-idv2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_list_of_variables_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-list-of-variables-v2' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `save_variable_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-save-variable-v2' \
    '{"applyMask": false, "configName": "string", "description": "string", "source": "string", "value": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `update_variable_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-variable-v2' \
    '{"applyMask": false, "description": "string", "value": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_variable_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-variable-v2' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_topics_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-list-topics-handler' \
    'string' \
    --fuzzy_topic_name 'string' \
    --is_subscribed_by_app_name 'string' \
    --is_unsubscribed_by_app_name 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `create_topic_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-topic-handler' \
    '{"description": "string", "topicName": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_topic_handler`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-topic-handler' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_list_of_deployment_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-list-of-deployment-v2' \
    '{"appIds": ["string"], "deploymentIds": ["string"], "statuses": ["string"]}' \
    'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_deployment_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-deployment-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_deployment_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-deployment-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-key-value-cluster-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `list_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-list-key-value-cluster-v2' \
    'string' \
    --refresh false \
    > result.txt
```

### Operation `create_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-key-value-cluster-v2' \
    '{"clusterName": "string", "maxDataStorageGB": 1, "maxECPUPerSecond": 1, "profileName": "string"}' \
    'string' \
    > result.txt
```

### Operation `get_key_value_cluster_limit_config_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-key-value-cluster-limit-config-v2' \
    'string' \
    > result.txt
```

### Operation `update_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-key-value-cluster-v2' \
    '{"maxDataStorageGB": 1, "maxECPUPerSecond": 1, "profileName": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-key-value-cluster-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_list_integrated_app_key_value_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-list-integrated-app-key-value-cluster-v2' \
    'string' \
    'string' \
    > result.txt
```

### Operation `get_no_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-no-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `update_no_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-no-sql-cluster-v2' \
    '{"maxDCU": 3.14, "minDCU": 3.14, "profileName": "string"}' \
    'string' \
    > result.txt
```

### Operation `create_no_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-no-sql-cluster-v2' \
    '{"maxDCU": 3.14, "minDCU": 3.14, "profileName": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_no_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-no-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `start_no_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-start-no-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `stop_no_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-stop-no-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `get_no_sql_access_tunnel_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-no-sql-access-tunnel-v2' \
    'string' \
    > result.txt
```

### Operation `get_resources_limits`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-resources-limits' \
    'string' \
    > result.txt
```

### Operation `get_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `update_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-update-sql-cluster-v2' \
    '{"maxACU": 3.14, "minACU": 3.14, "multiAZ": false, "profileName": "string"}' \
    'string' \
    > result.txt
```

### Operation `create_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-create-sql-cluster-v2' \
    '{"maxACU": 3.14, "minACU": 3.14, "multiAZ": false, "profileName": "string"}' \
    'string' \
    > result.txt
```

### Operation `delete_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `start_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-start-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `stop_sql_cluster_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-stop-sql-cluster-v2' \
    'string' \
    > result.txt
```

### Operation `get_sql_app_list_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-sql-app-list-v2' \
    'string' \
    'string' \
    --app_name 'string' \
    --game_namespace 'string' \
    --limit 1 \
    --offset 1 \
    > result.txt
```

### Operation `get_no_sql_app_list_v2`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-no-sql-app-list-v2' \
    'string' \
    'string' \
    --app_name 'string' \
    --limit 1 \
    --namespace 'string' \
    --offset 1 \
    > result.txt
```

### Operation `get_notification_subscriber_list_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-get-notification-subscriber-list-v3' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_subscription_app_notification_v3`
```sh
$ python -m accelbyte_py_sdk_cli 'csm-delete-subscription-app-notification-v3' \
    'string' \
    'string' \
    --email_address 'string' \
    --user_id 'string' \
    > result.txt
```

