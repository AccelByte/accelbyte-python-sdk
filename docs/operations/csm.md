[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# Custom Service Manager Index (1.34.0)


## Operations

### App
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v1/admin/namespaces/{namespace}/apps/{app} | PUT | CreateAppV1 | `true` | [CreateAppV1](../../accelbyte_py_sdk/api/csm/operations/app/create_app_v1.py) | [create_app_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-create-app-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_app_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app} | DELETE | DeleteAppV1 | `true` | [DeleteAppV1](../../accelbyte_py_sdk/api/csm/operations/app/delete_app_v1.py) | [delete_app_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-delete-app-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_app_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps | POST | GetAppListV1 | `true` | [GetAppListV1](../../accelbyte_py_sdk/api/csm/operations/app/get_app_list_v1.py) | [get_app_list_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-get-app-list-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_list_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/release | GET | GetAppReleaseV1 | `false` | [GetAppReleaseV1](../../accelbyte_py_sdk/api/csm/operations/app/get_app_release_v1.py) | [get_app_release_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-get-app-release-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_release_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app} | GET | GetAppV1 | `true` | [GetAppV1](../../accelbyte_py_sdk/api/csm/operations/app/get_app_v1.py) | [get_app_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-get-app-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/start | PUT | StartAppV1 | `true` | [StartAppV1](../../accelbyte_py_sdk/api/csm/operations/app/start_app_v1.py) | [start_app_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-start-app-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_start_app_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/stop | PUT | StopAppV1 | `true` | [StopAppV1](../../accelbyte_py_sdk/api/csm/operations/app/stop_app_v1.py) | [stop_app_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-stop-app-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_stop_app_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app} | PATCH | UpdateAppV1 | `true` | [UpdateAppV1](../../accelbyte_py_sdk/api/csm/operations/app/update_app_v1.py) | [update_app_v1](../../accelbyte_py_sdk/api/csm/wrappers/_app.py) | [accelbyte_py_sdk_cli csm-update-app-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_v1.py) |

### App Status Progress V4
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v4/admin/namespaces/{namespace}/apps/{app}/status-progress | GET | GetAppStatusProgressV4 | `false` | [GetAppStatusProgressV4](../../accelbyte_py_sdk/api/csm/operations/app_status_progress_v4/get_app_status_progress_v4.py) | [get_app_status_progress_v4](../../accelbyte_py_sdk/api/csm/wrappers/_app_status_progress_v4.py) | [accelbyte_py_sdk_cli csm-get-app-status-progress-v4](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_status_progress_v4.py) |

### App UI
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v1/admin/namespaces/{namespace}/app-ui | POST | CreateAppUI | `false` | [CreateAppUI](../../accelbyte_py_sdk/api/csm/operations/app_ui/create_app_ui.py) | [create_app_ui](../../accelbyte_py_sdk/api/csm/wrappers/_app_ui.py) | [accelbyte_py_sdk_cli csm-create-app-ui](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_app_ui.py) |
| /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName} | DELETE | DeleteAppUI | `false` | [DeleteAppUI](../../accelbyte_py_sdk/api/csm/operations/app_ui/delete_app_ui.py) | [delete_app_ui](../../accelbyte_py_sdk/api/csm/wrappers/_app_ui.py) | [accelbyte_py_sdk_cli csm-delete-app-ui](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_app_ui.py) |
| /csm/v1/admin/namespaces/{namespace}/app-ui | GET | ListAppUI | `false` | [ListAppUI](../../accelbyte_py_sdk/api/csm/operations/app_ui/list_app_ui.py) | [list_app_ui](../../accelbyte_py_sdk/api/csm/wrappers/_app_ui.py) | [accelbyte_py_sdk_cli csm-list-app-ui](../../samples/cli/accelbyte_py_sdk_cli/csm/_list_app_ui.py) |
| /csm/v1/admin/namespaces/{namespace}/app-ui/{appUiName}/files/upload | POST | UploadAppUIFile | `false` | [UploadAppUIFile](../../accelbyte_py_sdk/api/csm/operations/app_ui/upload_app_ui_file.py) | [upload_app_ui_file](../../accelbyte_py_sdk/api/csm/wrappers/_app_ui.py) | [accelbyte_py_sdk_cli csm-upload-app-ui-file](../../samples/cli/accelbyte_py_sdk_cli/csm/_upload_app_ui_file.py) |

### App V2
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/apply | POST | ApplyAppConfigV2 | `false` | [ApplyAppConfigV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/apply_app_config_v2.py) | [apply_app_config_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-apply-app-config-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_apply_app_config_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | POST | CreateAppV2 | `true` | [CreateAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/create_app_v2.py) | [create_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-create-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | DELETE | DeleteAppV2 | `false` | [DeleteAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/delete_app_v2.py) | [delete_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-delete-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps | POST | GetAppListV2 | `false` | [GetAppListV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/get_app_list_v2.py) | [get_app_list_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-get-app-list-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_list_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | GET | GetAppV2 | `false` | [GetAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/get_app_v2.py) | [get_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-get-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/start | PUT | StartAppV2 | `false` | [StartAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/start_app_v2.py) | [start_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-start-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_start_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop | PUT | StopAppV2 | `false` | [StopAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/stop_app_v2.py) | [stop_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-stop-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_stop_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form | POST | UpdateAppResourcesResourceLimitFormV2 | `false` | [UpdateAppResourcesResourceLimitFormV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/update_app_resources_re_e22dc4.py) | [update_app_resources_resource_limit_form_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-update-app-resources-resource-limit-form-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_resources_resource_limit_form_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources | PATCH | UpdateAppResourcesV2 | `false` | [UpdateAppResourcesV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/update_app_resources_v2.py) | [update_app_resources_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-update-app-resources-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_resources_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | PATCH | UpdateAppV2 | `false` | [UpdateAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/update_app_v2.py) | [update_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-update-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_v2.py) |

### App V4
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v4/admin/namespaces/{namespace}/apps/{app}/debuginfo | GET | GetAppDebugInfoV4 | `false` | [GetAppDebugInfoV4](../../accelbyte_py_sdk/api/csm/operations/app_v4/get_app_debug_info_v4.py) | [get_app_debug_info_v4](../../accelbyte_py_sdk/api/csm/wrappers/_app_v4.py) | [accelbyte_py_sdk_cli csm-get-app-debug-info-v4](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_debug_info_v4.py) |
| /csm/v4/admin/namespaces/{namespace}/apps/{app}/debugmode | PUT | UpdateAppDebugModeV4 | `false` | [UpdateAppDebugModeV4](../../accelbyte_py_sdk/api/csm/operations/app_v4/update_app_debug_mode_v4.py) | [update_app_debug_mode_v4](../../accelbyte_py_sdk/api/csm/wrappers/_app_v4.py) | [accelbyte_py_sdk_cli csm-update-app-debug-mode-v4](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_debug_mode_v4.py) |

### App V5
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v5/admin/namespaces/{namespace}/apps/{app} | POST | CreateAppV5 | `false` | [CreateAppV5](../../accelbyte_py_sdk/api/csm/operations/app_v5/create_app_v5.py) | [create_app_v5](../../accelbyte_py_sdk/api/csm/wrappers/_app_v5.py) | [accelbyte_py_sdk_cli csm-create-app-v5](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_app_v5.py) |

### Async Messaging
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/subscriptions | POST | CreateSubscriptionHandler | `false` | [CreateSubscriptionHandler](../../accelbyte_py_sdk/api/csm/operations/async_messaging/create_subscription_handler.py) | [create_subscription_handler](../../accelbyte_py_sdk/api/csm/wrappers/_async_messaging.py) | [accelbyte_py_sdk_cli csm-create-subscription-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_subscription_handler.py) |
| /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics | POST | CreateTopicHandler | `false` | [CreateTopicHandler](../../accelbyte_py_sdk/api/csm/operations/async_messaging/create_topic_handler.py) | [create_topic_handler](../../accelbyte_py_sdk/api/csm/wrappers/_async_messaging.py) | [accelbyte_py_sdk_cli csm-create-topic-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_topic_handler.py) |
| /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics/{topicName} | DELETE | DeleteTopicHandler | `false` | [DeleteTopicHandler](../../accelbyte_py_sdk/api/csm/operations/async_messaging/delete_topic_handler.py) | [delete_topic_handler](../../accelbyte_py_sdk/api/csm/wrappers/_async_messaging.py) | [accelbyte_py_sdk_cli csm-delete-topic-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_topic_handler.py) |
| /csm/v2/admin/namespaces/{namespace}/asyncmessaging/topics | GET | ListTopicsHandler | `false` | [ListTopicsHandler](../../accelbyte_py_sdk/api/csm/operations/async_messaging/list_topics_handler.py) | [list_topics_handler](../../accelbyte_py_sdk/api/csm/wrappers/_async_messaging.py) | [accelbyte_py_sdk_cli csm-list-topics-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_list_topics_handler.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/asyncmessaging/topics/{topicName}/subscriptions | DELETE | UnsubscribeTopicHandler | `false` | [UnsubscribeTopicHandler](../../accelbyte_py_sdk/api/csm/operations/async_messaging/unsubscribe_topic_handler.py) | [unsubscribe_topic_handler](../../accelbyte_py_sdk/api/csm/wrappers/_async_messaging.py) | [accelbyte_py_sdk_cli csm-unsubscribe-topic-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_unsubscribe_topic_handler.py) |

### Configuration
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} | DELETE | DeleteSecretV1 | `true` | [DeleteSecretV1](../../accelbyte_py_sdk/api/csm/operations/configuration/delete_secret_v1.py) | [delete_secret_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-delete-secret-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_secret_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId} | DELETE | DeleteVariableV1 | `true` | [DeleteVariableV1](../../accelbyte_py_sdk/api/csm/operations/configuration/delete_variable_v1.py) | [delete_variable_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-delete-variable-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_variable_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets | GET | GetListOfSecretsV1 | `true` | [GetListOfSecretsV1](../../accelbyte_py_sdk/api/csm/operations/configuration/get_list_of_secrets_v1.py) | [get_list_of_secrets_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-get-list-of-secrets-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_list_of_secrets_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables | GET | GetListOfVariablesV1 | `true` | [GetListOfVariablesV1](../../accelbyte_py_sdk/api/csm/operations/configuration/get_list_of_variables_v1.py) | [get_list_of_variables_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-get-list-of-variables-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_list_of_variables_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets | POST | SaveSecretV1 | `true` | [SaveSecretV1](../../accelbyte_py_sdk/api/csm/operations/configuration/save_secret_v1.py) | [save_secret_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-save-secret-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_save_secret_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables | POST | SaveVariableV1 | `true` | [SaveVariableV1](../../accelbyte_py_sdk/api/csm/operations/configuration/save_variable_v1.py) | [save_variable_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-save-variable-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_save_variable_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} | PUT | UpdateSecretV1 | `true` | [UpdateSecretV1](../../accelbyte_py_sdk/api/csm/operations/configuration/update_secret_v1.py) | [update_secret_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-update-secret-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_secret_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/variables/{configId} | PUT | UpdateVariableV1 | `true` | [UpdateVariableV1](../../accelbyte_py_sdk/api/csm/operations/configuration/update_variable_v1.py) | [update_variable_v1](../../accelbyte_py_sdk/api/csm/wrappers/_configuration.py) | [accelbyte_py_sdk_cli csm-update-variable-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_variable_v1.py) |

### Configuration V2
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} | DELETE | DeleteSecretV2 | `false` | [DeleteSecretV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/delete_secret_v2.py) | [delete_secret_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-delete-secret-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_secret_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId} | DELETE | DeleteVariableV2 | `false` | [DeleteVariableV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/delete_variable_v2.py) | [delete_variable_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-delete-variable-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_variable_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets | GET | GetListOfSecretsV2 | `false` | [GetListOfSecretsV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/get_list_of_secrets_v2.py) | [get_list_of_secrets_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-get-list-of-secrets-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_list_of_secrets_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables | GET | GetListOfVariablesV2 | `false` | [GetListOfVariablesV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/get_list_of_variables_v2.py) | [get_list_of_variables_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-get-list-of-variables-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_list_of_variables_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets | POST | SaveSecretV2 | `false` | [SaveSecretV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/save_secret_v2.py) | [save_secret_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-save-secret-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_save_secret_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables | POST | SaveVariableV2 | `false` | [SaveVariableV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/save_variable_v2.py) | [save_variable_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-save-variable-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_save_variable_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/secrets/{configId} | PUT | UpdateSecretV2 | `false` | [UpdateSecretV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/update_secret_v2.py) | [update_secret_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-update-secret-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_secret_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/variables/{configId} | PUT | UpdateVariableV2 | `false` | [UpdateVariableV2](../../accelbyte_py_sdk/api/csm/operations/configuration_v2/update_variable_v2.py) | [update_variable_v2](../../accelbyte_py_sdk/api/csm/wrappers/_configuration_v2.py) | [accelbyte_py_sdk_cli csm-update-variable-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_variable_v2.py) |

### Deployment
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/deployments | POST | CreateDeploymentV1 | `true` | [CreateDeploymentV1](../../accelbyte_py_sdk/api/csm/operations/deployment/create_deployment_v1.py) | [create_deployment_v1](../../accelbyte_py_sdk/api/csm/wrappers/_deployment.py) | [accelbyte_py_sdk_cli csm-create-deployment-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_deployment_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId} | DELETE | DeleteDeploymentV1 | `true` | [DeleteDeploymentV1](../../accelbyte_py_sdk/api/csm/operations/deployment/delete_deployment_v1.py) | [delete_deployment_v1](../../accelbyte_py_sdk/api/csm/wrappers/_deployment.py) | [accelbyte_py_sdk_cli csm-delete-deployment-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_deployment_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/deployments/{deploymentId} | GET | GetDeploymentV1 | `true` | [GetDeploymentV1](../../accelbyte_py_sdk/api/csm/operations/deployment/get_deployment_v1.py) | [get_deployment_v1](../../accelbyte_py_sdk/api/csm/wrappers/_deployment.py) | [accelbyte_py_sdk_cli csm-get-deployment-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_deployment_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/deployments | POST | GetListOfDeploymentV1 | `true` | [GetListOfDeploymentV1](../../accelbyte_py_sdk/api/csm/operations/deployment/get_list_of_deployment_v1.py) | [get_list_of_deployment_v1](../../accelbyte_py_sdk/api/csm/wrappers/_deployment.py) | [accelbyte_py_sdk_cli csm-get-list-of-deployment-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_list_of_deployment_v1.py) |

### Deployment V2
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/deployments | POST | CreateDeploymentV2 | `false` | [CreateDeploymentV2](../../accelbyte_py_sdk/api/csm/operations/deployment_v2/create_deployment_v2.py) | [create_deployment_v2](../../accelbyte_py_sdk/api/csm/wrappers/_deployment_v2.py) | [accelbyte_py_sdk_cli csm-create-deployment-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_deployment_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId} | DELETE | DeleteDeploymentV2 | `false` | [DeleteDeploymentV2](../../accelbyte_py_sdk/api/csm/operations/deployment_v2/delete_deployment_v2.py) | [delete_deployment_v2](../../accelbyte_py_sdk/api/csm/wrappers/_deployment_v2.py) | [accelbyte_py_sdk_cli csm-delete-deployment-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_deployment_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/deployments/{deploymentId} | GET | GetDeploymentV2 | `false` | [GetDeploymentV2](../../accelbyte_py_sdk/api/csm/operations/deployment_v2/get_deployment_v2.py) | [get_deployment_v2](../../accelbyte_py_sdk/api/csm/wrappers/_deployment_v2.py) | [accelbyte_py_sdk_cli csm-get-deployment-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_deployment_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/deployments | POST | GetListOfDeploymentV2 | `false` | [GetListOfDeploymentV2](../../accelbyte_py_sdk/api/csm/operations/deployment_v2/get_list_of_deployment_v2.py) | [get_list_of_deployment_v2](../../accelbyte_py_sdk/api/csm/wrappers/_deployment_v2.py) | [accelbyte_py_sdk_cli csm-get-list-of-deployment-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_list_of_deployment_v2.py) |

### Extend Files
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v1/admin/namespaces/{namespace}/files/{filePath} | GET | GetExtendFile | `false` | [GetExtendFile](../../accelbyte_py_sdk/api/csm/operations/extend_files/get_extend_file.py) | [get_extend_file](../../accelbyte_py_sdk/api/csm/wrappers/_extend_files.py) | [accelbyte_py_sdk_cli csm-get-extend-file](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_extend_file.py) |

### Image
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/images | DELETE | DeleteAppImagesV1 | `true` | [DeleteAppImagesV1](../../accelbyte_py_sdk/api/csm/operations/image/delete_app_images_v1.py) | [delete_app_images_v1](../../accelbyte_py_sdk/api/csm/wrappers/_image.py) | [accelbyte_py_sdk_cli csm-delete-app-images-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_app_images_v1.py) |
| /csm/v1/admin/namespaces/{namespace}/apps/{app}/images | GET | GetAppImageListV1 | `true` | [GetAppImageListV1](../../accelbyte_py_sdk/api/csm/operations/image/get_app_image_list_v1.py) | [get_app_image_list_v1](../../accelbyte_py_sdk/api/csm/wrappers/_image.py) | [accelbyte_py_sdk_cli csm-get-app-image-list-v1](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_image_list_v1.py) |

### Image V2
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/images | DELETE | DeleteAppImagesV2 | `false` | [DeleteAppImagesV2](../../accelbyte_py_sdk/api/csm/operations/image_v2/delete_app_images_v2.py) | [delete_app_images_v2](../../accelbyte_py_sdk/api/csm/wrappers/_image_v2.py) | [accelbyte_py_sdk_cli csm-delete-app-images-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_app_images_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/images | GET | GetAppImageListV2 | `false` | [GetAppImageListV2](../../accelbyte_py_sdk/api/csm/operations/image_v2/get_app_image_list_v2.py) | [get_app_image_list_v2](../../accelbyte_py_sdk/api/csm/wrappers/_image_v2.py) | [accelbyte_py_sdk_cli csm-get-app-image-list-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_image_list_v2.py) |

### Managed Resources
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/credentials | POST | CreateNewNoSQLDatabaseCredentialV2 | `false` | [CreateNewNoSQLDatabaseCredentialV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/create_new_no_sql_datab_b22b67.py) | [create_new_no_sql_database_credential_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-create-new-no-sql-database-credential-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_new_no_sql_database_credential_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/nosql/clusters | POST | CreateNoSQLClusterV2 | `false` | [CreateNoSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/create_no_sql_cluster_v2.py) | [create_no_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-create-no-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_no_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/crendentials | POST | CreateNoSQLDatabaseCredentialV2 | `true` | [CreateNoSQLDatabaseCredentialV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/create_no_sql_database__189b02.py) | [create_no_sql_database_credential_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-create-no-sql-database-credential-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_no_sql_database_credential_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases | POST | CreateNoSQLDatabaseV2 | `false` | [CreateNoSQLDatabaseV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/create_no_sql_database_v2.py) | [create_no_sql_database_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-create-no-sql-database-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_no_sql_database_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/nosql/clusters | DELETE | DeleteNoSQLClusterV2 | `false` | [DeleteNoSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/delete_no_sql_cluster_v2.py) | [delete_no_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-delete-no-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_no_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases | DELETE | DeleteNoSQLDatabaseV2 | `false` | [DeleteNoSQLDatabaseV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/delete_no_sql_database_v2.py) | [delete_no_sql_database_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-delete-no-sql-database-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_no_sql_database_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/nosql/tunnels | GET | GetNoSQLAccessTunnelV2 | `false` | [GetNoSQLAccessTunnelV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/get_no_sql_access_tunnel_v2.py) | [get_no_sql_access_tunnel_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-get-no-sql-access-tunnel-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_no_sql_access_tunnel_v2.py) |
| /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps | GET | GetNoSQLAppListV2 | `false` | [GetNoSQLAppListV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/get_no_sql_app_list_v2.py) | [get_no_sql_app_list_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-get-no-sql-app-list-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_no_sql_app_list_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/nosql/clusters | GET | GetNoSQLClusterV2 | `false` | [GetNoSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/get_no_sql_cluster_v2.py) | [get_no_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-get-no-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_no_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/nosql/databases | GET | GetNoSQLDatabaseV2 | `false` | [GetNoSQLDatabaseV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/get_no_sql_database_v2.py) | [get_no_sql_database_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-get-no-sql-database-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_no_sql_database_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/nosql/clusters/start | PUT | StartNoSQLClusterV2 | `false` | [StartNoSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/start_no_sql_cluster_v2.py) | [start_no_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-start-no-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_start_no_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/nosql/clusters/stop | PUT | StopNoSQLClusterV2 | `false` | [StopNoSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/stop_no_sql_cluster_v2.py) | [stop_no_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-stop-no-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_stop_no_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/nosql/clusters | PUT | UpdateNoSQLClusterV2 | `false` | [UpdateNoSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources/update_no_sql_cluster_v2.py) | [update_no_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources.py) | [accelbyte_py_sdk_cli csm-update-no-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_no_sql_cluster_v2.py) |

### Managed Resources - KeyValue
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters | POST | CreateKeyValueClusterV2 | `false` | [CreateKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/create_key_value_cluster_v2.py) | [create_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-create-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/credentials | POST | CreateKeyValueCredentialV2 | `false` | [CreateKeyValueCredentialV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/create_key_value_credential_v2.py) | [create_key_value_credential_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-create-key-value-credential-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_key_value_credential_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId} | DELETE | DeleteKeyValueClusterV2 | `false` | [DeleteKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/delete_key_value_cluster_v2.py) | [delete_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-delete-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations | GET | GetIntegrationAppKeyValueClusterV2 | `false` | [GetIntegrationAppKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/get_integration_app_key_181476.py) | [get_integration_app_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-get-integration-app-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_integration_app_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/limitconfig | GET | GetKeyValueClusterLimitConfigV2 | `false` | [GetKeyValueClusterLimitConfigV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/get_key_value_cluster_l_62a4fb.py) | [get_key_value_cluster_limit_config_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-get-key-value-cluster-limit-config-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_key_value_cluster_limit_config_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/keyvalue/cluster/{resourceId} | GET | GetKeyValueClusterV2 | `false` | [GetKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/get_key_value_cluster_v2.py) | [get_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-get-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/keyvalue/{resourceId}/integrations | GET | GetListIntegratedAppKeyValueClusterV2 | `false` | [GetListIntegratedAppKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/get_list_integrated_app_4a9d12.py) | [get_list_integrated_app_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-get-list-integrated-app-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_list_integrated_app_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations | POST | IntegrateAppKeyValueClusterV2 | `false` | [IntegrateAppKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/integrate_app_key_value_d23a27.py) | [integrate_app_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-integrate-app-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_integrate_app_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters | GET | ListKeyValueClusterV2 | `false` | [ListKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/list_key_value_cluster_v2.py) | [list_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-list-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_list_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/keyvalue/integrations | DELETE | RemoveIntegrationAppKeyValueClusterV2 | `false` | [RemoveIntegrationAppKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/remove_integration_app__84d881.py) | [remove_integration_app_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-remove-integration-app-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_remove_integration_app_key_value_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/keyvalue/clusters/{resourceId} | PUT | UpdateKeyValueClusterV2 | `false` | [UpdateKeyValueClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_key_value/update_key_value_cluster_v2.py) | [update_key_value_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_key_value.py) | [accelbyte_py_sdk_cli csm-update-key-value-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_key_value_cluster_v2.py) |

### Managed Resources - SQL
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/sql/clusters | POST | CreateSQLClusterV2 | `false` | [CreateSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/create_sql_cluster_v2.py) | [create_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-create-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/credentials | POST | CreateSQLDatabaseCredentialV2 | `false` | [CreateSQLDatabaseCredentialV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/create_sql_database_cre_9da946.py) | [create_sql_database_credential_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-create-sql-database-credential-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_sql_database_credential_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases | POST | CreateSQLDatabaseV2 | `false` | [CreateSQLDatabaseV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/create_sql_database_v2.py) | [create_sql_database_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-create-sql-database-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_sql_database_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/sql/clusters | DELETE | DeleteSQLClusterV2 | `false` | [DeleteSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/delete_sql_cluster_v2.py) | [delete_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-delete-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases | DELETE | DeleteSQLDatabaseV2 | `false` | [DeleteSQLDatabaseV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/delete_sql_database_v2.py) | [delete_sql_database_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-delete-sql-database-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_sql_database_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/sql/{resourceId}/apps | GET | GetSQLAppListV2 | `false` | [GetSQLAppListV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/get_sql_app_list_v2.py) | [get_sql_app_list_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-get-sql-app-list-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_sql_app_list_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/sql/clusters | GET | GetSQLClusterV2 | `false` | [GetSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/get_sql_cluster_v2.py) | [get_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-get-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/sql/databases | GET | GetSQLDatabaseV2 | `false` | [GetSQLDatabaseV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/get_sql_database_v2.py) | [get_sql_database_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-get-sql-database-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_sql_database_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/sql/clusters/start | PUT | StartSQLClusterV2 | `false` | [StartSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/start_sql_cluster_v2.py) | [start_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-start-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_start_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/sql/clusters/stop | PUT | StopSQLClusterV2 | `false` | [StopSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/stop_sql_cluster_v2.py) | [stop_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-stop-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_stop_sql_cluster_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/sql/clusters | PUT | UpdateSQLClusterV2 | `false` | [UpdateSQLClusterV2](../../accelbyte_py_sdk/api/csm/operations/managed_resources_sql/update_sql_cluster_v2.py) | [update_sql_cluster_v2](../../accelbyte_py_sdk/api/csm/wrappers/_managed_resources_sql.py) | [accelbyte_py_sdk_cli csm-update-sql-cluster-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_sql_cluster_v2.py) |

### Messages
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v1/messages | GET | publicGetMessages | `false` | [PublicGetMessages](../../accelbyte_py_sdk/api/csm/operations/messages/public_get_messages.py) | [public_get_messages](../../accelbyte_py_sdk/api/csm/wrappers/_messages.py) | [accelbyte_py_sdk_cli csm-public-get-messages](../../samples/cli/accelbyte_py_sdk_cli/csm/_public_get_messages.py) |

### Notification Subscription
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions | PUT | BulkSaveSubscriptionAppNotificationV2 | `false` | [BulkSaveSubscriptionAppNotificationV2](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/bulk_save_subscription__e5ef74.py) | [bulk_save_subscription_app_notification_v2](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-bulk-save-subscription-app-notification-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_bulk_save_subscription_app_notification_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/users/{userId} | DELETE | DeleteSubscriptionAppNotificationByUserIDV2 | `false` | [DeleteSubscriptionAppNotificationByUserIDV2](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/delete_subscription_app_0003d9.py) | [delete_subscription_app_notification_by_user_idv2](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-delete-subscription-app-notification-by-user-idv2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_subscription_app_notification_by_user_idv2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/{subscriptionId} | DELETE | DeleteSubscriptionAppNotificationV2 | `true` | [DeleteSubscriptionAppNotificationV2](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/delete_subscription_app_84e329.py) | [delete_subscription_app_notification_v2](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-delete-subscription-app-notification-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_subscription_app_notification_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions | GET | GetNotificationSubscriberListV2 | `false` | [GetNotificationSubscriberListV2](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/get_notification_subscr_4bced3.py) | [get_notification_subscriber_list_v2](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-get-notification-subscriber-list-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_notification_subscriber_list_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me | GET | GetSubscriptionV2Handler | `false` | [GetSubscriptionV2Handler](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/get_subscription_v2_handler.py) | [get_subscription_v2_handler](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-get-subscription-v2-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_subscription_v2_handler.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions | POST | SubscribeAppNotificationV2 | `false` | [SubscribeAppNotificationV2](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/subscribe_app_notification_v2.py) | [subscribe_app_notification_v2](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-subscribe-app-notification-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_subscribe_app_notification_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me | POST | SubscribeV2Handler | `false` | [SubscribeV2Handler](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/subscribe_v2_handler.py) | [subscribe_v2_handler](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-subscribe-v2-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_subscribe_v2_handler.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/subscriptions/me | DELETE | UnsubscribeV2Handler | `false` | [UnsubscribeV2Handler](../../accelbyte_py_sdk/api/csm/operations/notification_subscription/unsubscribe_v2_handler.py) | [unsubscribe_v2_handler](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription.py) | [accelbyte_py_sdk_cli csm-unsubscribe-v2-handler](../../samples/cli/accelbyte_py_sdk_cli/csm/_unsubscribe_v2_handler.py) |

### Notification Subscription V3
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions | DELETE | DeleteSubscriptionAppNotificationV3 | `false` | [DeleteSubscriptionAppNotificationV3](../../accelbyte_py_sdk/api/csm/operations/notification_subscription_v3/delete_subscription_app_2aa6c7.py) | [delete_subscription_app_notification_v3](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription_v3.py) | [accelbyte_py_sdk_cli csm-delete-subscription-app-notification-v3](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_subscription_app_notification_v3.py) |
| /csm/v3/admin/namespaces/{namespace}/apps/{app}/subscriptions | GET | GetNotificationSubscriberListV3 | `false` | [GetNotificationSubscriberListV3](../../accelbyte_py_sdk/api/csm/operations/notification_subscription_v3/get_notification_subscr_6c8308.py) | [get_notification_subscriber_list_v3](../../accelbyte_py_sdk/api/csm/wrappers/_notification_subscription_v3.py) | [accelbyte_py_sdk_cli csm-get-notification-subscriber-list-v3](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_notification_subscriber_list_v3.py) |

### Resources Limits
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/resources/limits | GET | GetResourcesLimits | `false` | [GetResourcesLimits](../../accelbyte_py_sdk/api/csm/operations/resources_limits/get_resources_limits.py) | [get_resources_limits](../../accelbyte_py_sdk/api/csm/wrappers/_resources_limits.py) | [accelbyte_py_sdk_cli csm-get-resources-limits](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_resources_limits.py) |


## Models
| Model | Class |
|---|---|
| apimodel.AppDebugInfoResponse | [ApimodelAppDebugInfoResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_app_debug_info_response.py) |
| apimodel.AppItem | [ApimodelAppItem](../../accelbyte_py_sdk/api/csm/models/apimodel_app_item.py) |
| apimodel.AppItemV5 | [ApimodelAppItemV5](../../accelbyte_py_sdk/api/csm/models/apimodel_app_item_v5.py) |
| apimodel.AppStatusProgressStep | [ApimodelAppStatusProgressStep](../../accelbyte_py_sdk/api/csm/models/apimodel_app_status_progress_step.py) |
| apimodel.AppUIResponse | [ApimodelAppUIResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_app_ui_response.py) |
| apimodel.ApplyAppConfigRequest | [ApimodelApplyAppConfigRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_apply_app_config_request.py) |
| apimodel.ApplyConfigItem | [ApimodelApplyConfigItem](../../accelbyte_py_sdk/api/csm/models/apimodel_apply_config_item.py) |
| apimodel.ApplyPermissionItem | [ApimodelApplyPermissionItem](../../accelbyte_py_sdk/api/csm/models/apimodel_apply_permission_item.py) |
| apimodel.AutoscalingRequest | [ApimodelAutoscalingRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_autoscaling_request.py) |
| apimodel.AutoscalingResponse | [ApimodelAutoscalingResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_autoscaling_response.py) |
| apimodel.BulkSubscribeItem | [ApimodelBulkSubscribeItem](../../accelbyte_py_sdk/api/csm/models/apimodel_bulk_subscribe_item.py) |
| apimodel.BulkSubscribeRequest | [ApimodelBulkSubscribeRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_bulk_subscribe_request.py) |
| apimodel.CPURequest | [ApimodelCPURequest](../../accelbyte_py_sdk/api/csm/models/apimodel_cpu_request.py) |
| apimodel.CPUResponse | [ApimodelCPUResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_cpu_response.py) |
| apimodel.CreateAppUIRequest | [ApimodelCreateAppUIRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_app_ui_request.py) |
| apimodel.CreateAppV2Request | [ApimodelCreateAppV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_create_app_v2_request.py) |
| apimodel.CreateAppV5Request | [ApimodelCreateAppV5Request](../../accelbyte_py_sdk/api/csm/models/apimodel_create_app_v5_request.py) |
| apimodel.CreateDeploymentV2Request | [ApimodelCreateDeploymentV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_create_deployment_v2_request.py) |
| apimodel.CreateDeploymentV2Response | [ApimodelCreateDeploymentV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_create_deployment_v2_response.py) |
| apimodel.CreateKeyValueCredentialRequest | [ApimodelCreateKeyValueCredentialRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_key_value_credential_request.py) |
| apimodel.CreateKeyValueCredentialResponse | [ApimodelCreateKeyValueCredentialResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_create_key_value_credential_response.py) |
| apimodel.CreateNoSQLAppDatabaseRequest | [ApimodelCreateNoSQLAppDatabaseRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_no_sql_app_database_request.py) |
| apimodel.CreateNoSQLDatabaseCredentialRequest | [ApimodelCreateNoSQLDatabaseCredentialRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_no_sql_database_credential_request.py) |
| apimodel.CreateSQLAppDatabaseRequest | [ApimodelCreateSQLAppDatabaseRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_sql_app_database_request.py) |
| apimodel.CreateSQLDatabaseCredentialRequest | [ApimodelCreateSQLDatabaseCredentialRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_sql_database_credential_request.py) |
| apimodel.CreateSubscriptionRequest | [ApimodelCreateSubscriptionRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_subscription_request.py) |
| apimodel.CreateSubscriptionResponse | [ApimodelCreateSubscriptionResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_create_subscription_response.py) |
| apimodel.CreateTopicRequest | [ApimodelCreateTopicRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_create_topic_request.py) |
| apimodel.CSMAppLimitsResponse | [ApimodelCSMAppLimitsResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_csm_app_limits_response.py) |
| apimodel.DeleteNoSQLResourceResponse | [ApimodelDeleteNoSQLResourceResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_delete_no_sql_resource_response.py) |
| apimodel.DeleteSQLResourceResponse | [ApimodelDeleteSQLResourceResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_delete_sql_resource_response.py) |
| apimodel.GetAppImageListV2DataItem | [ApimodelGetAppImageListV2DataItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_data_item.py) |
| apimodel.GetAppImageListV2DataItemImageScanResult | [ApimodelGetAppImageListV2DataItemImageScanResult](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_data_item_image_scan_result.py) |
| apimodel.GetAppImageListV2DataItemImageScanStatus | [ApimodelGetAppImageListV2DataItemImageScanStatus](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_data_item_image_scan_status.py) |
| apimodel.GetAppImageListV2Response | [ApimodelGetAppImageListV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_response.py) |
| apimodel.GetAppListV2Request | [ApimodelGetAppListV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_list_v2_request.py) |
| apimodel.GetAppListV2Response | [ApimodelGetAppListV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_list_v2_response.py) |
| apimodel.GetAppStatusProgressResponse | [ApimodelGetAppStatusProgressResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_status_progress_response.py) |
| apimodel.GetDeploymentListV2DataItem | [ApimodelGetDeploymentListV2DataItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_deployment_list_v2_data_item.py) |
| apimodel.GetDeploymentListV2Request | [ApimodelGetDeploymentListV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_get_deployment_list_v2_request.py) |
| apimodel.GetDeploymentListV2Response | [ApimodelGetDeploymentListV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_deployment_list_v2_response.py) |
| apimodel.GetIntegrationAppKeyValueResponse | [ApimodelGetIntegrationAppKeyValueResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_get_integration_app_key_value_response.py) |
| apimodel.GetListOfConfigurationsV2DataItem | [ApimodelGetListOfConfigurationsV2DataItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_list_of_configurations_v2_data_item.py) |
| apimodel.GetListOfConfigurationsV2Response | [ApimodelGetListOfConfigurationsV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_list_of_configurations_v2_response.py) |
| apimodel.GetNotificationSubscriberItem | [ApimodelGetNotificationSubscriberItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_item.py) |
| apimodel.GetNotificationSubscriberItemV2 | [ApimodelGetNotificationSubscriberItemV2](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_item_v2.py) |
| apimodel.GetNotificationSubscriberListResponse | [ApimodelGetNotificationSubscriberListResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_list_response.py) |
| apimodel.GetNotificationSubscriberListResponseV2 | [ApimodelGetNotificationSubscriberListResponseV2](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_list_response_v2.py) |
| apimodel.GetNotificationSubscriberStatusResponse | [ApimodelGetNotificationSubscriberStatusResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_status_response.py) |
| apimodel.IncreaseLimitFormRequest | [ApimodelIncreaseLimitFormRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_increase_limit_form_request.py) |
| apimodel.IntegrateAppKeyValueRequest | [ApimodelIntegrateAppKeyValueRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_integrate_app_key_value_request.py) |
| apimodel.IntegrateAppKeyValueResponse | [ApimodelIntegrateAppKeyValueResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_integrate_app_key_value_response.py) |
| apimodel.IntegrationCredentialInfo | [ApimodelIntegrationCredentialInfo](../../accelbyte_py_sdk/api/csm/models/apimodel_integration_credential_info.py) |
| apimodel.IntegrationListItem | [ApimodelIntegrationListItem](../../accelbyte_py_sdk/api/csm/models/apimodel_integration_list_item.py) |
| apimodel.KeyValueCredentialAcknowledgements | [ApimodelKeyValueCredentialAcknowledgements](../../accelbyte_py_sdk/api/csm/models/apimodel_key_value_credential_acknowledgements.py) |
| apimodel.KeyValueResourceListResponse | [ApimodelKeyValueResourceListResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_key_value_resource_list_response.py) |
| apimodel.KeyValueResourceResponse | [ApimodelKeyValueResourceResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_key_value_resource_response.py) |
| apimodel.ListAppUIResponse | [ApimodelListAppUIResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_list_app_ui_response.py) |
| apimodel.ListIntegratedAppsKeyValueResponse | [ApimodelListIntegratedAppsKeyValueResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_list_integrated_apps_key_value_response.py) |
| apimodel.ListTopicsResponse | [ApimodelListTopicsResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_list_topics_response.py) |
| apimodel.MemoryRequest | [ApimodelMemoryRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_memory_request.py) |
| apimodel.MemoryResponse | [ApimodelMemoryResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_memory_response.py) |
| apimodel.NoSQLAppListResponse | [ApimodelNoSQLAppListResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_no_sql_app_list_response.py) |
| apimodel.NoSQLAppResponse | [ApimodelNoSQLAppResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_no_sql_app_response.py) |
| apimodel.NoSQLDatabaseAcknowledgements | [ApimodelNoSQLDatabaseAcknowledgements](../../accelbyte_py_sdk/api/csm/models/apimodel_no_sql_database_acknowledgements.py) |
| apimodel.NoSQLDatabaseCredentialResponse | [ApimodelNoSQLDatabaseCredentialResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_no_sql_database_credential_response.py) |
| apimodel.NoSQLDatabaseDeleteResponse | [ApimodelNoSQLDatabaseDeleteResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_no_sql_database_delete_response.py) |
| apimodel.NoSQLDatabaseResponse | [ApimodelNoSQLDatabaseResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_no_sql_database_response.py) |
| apimodel.NoSQLResourceResponse | [ApimodelNoSQLResourceResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_no_sql_resource_response.py) |
| apimodel.NotificationType | [ApimodelNotificationType](../../accelbyte_py_sdk/api/csm/models/apimodel_notification_type.py) |
| apimodel.PaginationResponse | [ApimodelPaginationResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_pagination_response.py) |
| apimodel.PublicIAMClientResponse | [ApimodelPublicIAMClientResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_public_iam_client_response.py) |
| apimodel.ReplicaRequest | [ApimodelReplicaRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_replica_request.py) |
| apimodel.ReplicaResponse | [ApimodelReplicaResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_replica_response.py) |
| apimodel.SaveConfigurationV2Request | [ApimodelSaveConfigurationV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_save_configuration_v2_request.py) |
| apimodel.SaveConfigurationV2Response | [ApimodelSaveConfigurationV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_save_configuration_v2_response.py) |
| apimodel.SaveSecretConfigurationV2Request | [ApimodelSaveSecretConfigurationV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_save_secret_configuration_v2_request.py) |
| apimodel.SelfSubscribeNotificationRequest | [ApimodelSelfSubscribeNotificationRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_self_subscribe_notification_request.py) |
| apimodel.SQLAppListResponse | [ApimodelSQLAppListResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_sql_app_list_response.py) |
| apimodel.SQLAppResponse | [ApimodelSQLAppResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_sql_app_response.py) |
| apimodel.SQLDatabaseAcknowledgements | [ApimodelSQLDatabaseAcknowledgements](../../accelbyte_py_sdk/api/csm/models/apimodel_sql_database_acknowledgements.py) |
| apimodel.SQLDatabaseCredentialResponse | [ApimodelSQLDatabaseCredentialResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_sql_database_credential_response.py) |
| apimodel.SQLDatabaseDeleteResponse | [ApimodelSQLDatabaseDeleteResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_sql_database_delete_response.py) |
| apimodel.SQLDatabaseResponse | [ApimodelSQLDatabaseResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_sql_database_response.py) |
| apimodel.SQLResourceResponse | [ApimodelSQLResourceResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_sql_resource_response.py) |
| apimodel.SubscribeNotificationRequest | [ApimodelSubscribeNotificationRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_subscribe_notification_request.py) |
| apimodel.SubscribeNotificationResponse | [ApimodelSubscribeNotificationResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_subscribe_notification_response.py) |
| apimodel.SubscriberItemRequest | [ApimodelSubscriberItemRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_subscriber_item_request.py) |
| apimodel.SubscriberItemResponse | [ApimodelSubscriberItemResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_subscriber_item_response.py) |
| apimodel.TopicDetailResponse | [ApimodelTopicDetailResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_topic_detail_response.py) |
| apimodel.TopicResponse | [ApimodelTopicResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_topic_response.py) |
| apimodel.TopicSubscription | [ApimodelTopicSubscription](../../accelbyte_py_sdk/api/csm/models/apimodel_topic_subscription.py) |
| apimodel.TunnelInfoResponse | [ApimodelTunnelInfoResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_tunnel_info_response.py) |
| apimodel.UpdateAppResourceRequest | [ApimodelUpdateAppResourceRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_update_app_resource_request.py) |
| apimodel.UpdateAppV2Request | [ApimodelUpdateAppV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_update_app_v2_request.py) |
| apimodel.UpdateConfigurationV2Request | [ApimodelUpdateConfigurationV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_update_configuration_v2_request.py) |
| apimodel.UpdateConfigurationV2Response | [ApimodelUpdateConfigurationV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_update_configuration_v2_response.py) |
| apimodel.UpdateDebugModeRequest | [ApimodelUpdateDebugModeRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_update_debug_mode_request.py) |
| apimodel.UpdateSecretConfigurationV2Request | [ApimodelUpdateSecretConfigurationV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_update_secret_configuration_v2_request.py) |
| apimodel.UploadFileResponse | [ApimodelUploadFileResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_upload_file_response.py) |
| createappparams.AutoscalingRequest | [CreateappparamsAutoscalingRequest](../../accelbyte_py_sdk/api/csm/models/createappparams_autoscaling_request.py) |
| createappparams.CPURequest | [CreateappparamsCPURequest](../../accelbyte_py_sdk/api/csm/models/createappparams_cpu_request.py) |
| createappparams.MemoryRequest | [CreateappparamsMemoryRequest](../../accelbyte_py_sdk/api/csm/models/createappparams_memory_request.py) |
| createappparams.ReplicaRequest | [CreateappparamsReplicaRequest](../../accelbyte_py_sdk/api/csm/models/createappparams_replica_request.py) |
| domain.AllowedInterceptedPort | [DomainAllowedInterceptedPort](../../accelbyte_py_sdk/api/csm/models/domain_allowed_intercepted_port.py) |
| domain.DebugPod | [DomainDebugPod](../../accelbyte_py_sdk/api/csm/models/domain_debug_pod.py) |
| domain.ExposedService | [DomainExposedService](../../accelbyte_py_sdk/api/csm/models/domain_exposed_service.py) |
| domain.KeyValueClusterConfig | [DomainKeyValueClusterConfig](../../accelbyte_py_sdk/api/csm/models/domain_key_value_cluster_config.py) |
| domain.KeyValueResourceConfiguration | [DomainKeyValueResourceConfiguration](../../accelbyte_py_sdk/api/csm/models/domain_key_value_resource_configuration.py) |
| domain.KeyValueUpdateConfiguration | [DomainKeyValueUpdateConfiguration](../../accelbyte_py_sdk/api/csm/models/domain_key_value_update_configuration.py) |
| generated.CreateAppV1Request | [GeneratedCreateAppV1Request](../../accelbyte_py_sdk/api/csm/models/generated_create_app_v1_request.py) |
| generated.CreateAppV1Response | [GeneratedCreateAppV1Response](../../accelbyte_py_sdk/api/csm/models/generated_create_app_v1_response.py) |
| generated.CreateDeploymentV1Request | [GeneratedCreateDeploymentV1Request](../../accelbyte_py_sdk/api/csm/models/generated_create_deployment_v1_request.py) |
| generated.CreateDeploymentV1Response | [GeneratedCreateDeploymentV1Response](../../accelbyte_py_sdk/api/csm/models/generated_create_deployment_v1_response.py) |
| generated.DeleteAppImagesV1Request | [GeneratedDeleteAppImagesV1Request](../../accelbyte_py_sdk/api/csm/models/generated_delete_app_images_v1_request.py) |
| generated.GetAppImageListV1DataItem | [GeneratedGetAppImageListV1DataItem](../../accelbyte_py_sdk/api/csm/models/generated_get_app_image_list_v1_data_item.py) |
| generated.GetAppImageListV1DataItemImageScanStatus | [GeneratedGetAppImageListV1DataItemImageScanStatus](../../accelbyte_py_sdk/api/csm/models/generated_get_app_image_list_v1_data_item_image_scan_status.py) |
| generated.GetAppImageListV1Response | [GeneratedGetAppImageListV1Response](../../accelbyte_py_sdk/api/csm/models/generated_get_app_image_list_v1_response.py) |
| generated.GetAppListV1DataItem | [GeneratedGetAppListV1DataItem](../../accelbyte_py_sdk/api/csm/models/generated_get_app_list_v1_data_item.py) |
| generated.GetAppListV1Request | [GeneratedGetAppListV1Request](../../accelbyte_py_sdk/api/csm/models/generated_get_app_list_v1_request.py) |
| generated.GetAppListV1Response | [GeneratedGetAppListV1Response](../../accelbyte_py_sdk/api/csm/models/generated_get_app_list_v1_response.py) |
| generated.GetAppReleaseV1Response | [GeneratedGetAppReleaseV1Response](../../accelbyte_py_sdk/api/csm/models/generated_get_app_release_v1_response.py) |
| generated.GetAppV1Response | [GeneratedGetAppV1Response](../../accelbyte_py_sdk/api/csm/models/generated_get_app_v1_response.py) |
| generated.GetDeploymentListV1DataItem | [GeneratedGetDeploymentListV1DataItem](../../accelbyte_py_sdk/api/csm/models/generated_get_deployment_list_v1_data_item.py) |
| generated.GetDeploymentListV1Request | [GeneratedGetDeploymentListV1Request](../../accelbyte_py_sdk/api/csm/models/generated_get_deployment_list_v1_request.py) |
| generated.GetDeploymentListV1Response | [GeneratedGetDeploymentListV1Response](../../accelbyte_py_sdk/api/csm/models/generated_get_deployment_list_v1_response.py) |
| generated.GetDeploymentV1Response | [GeneratedGetDeploymentV1Response](../../accelbyte_py_sdk/api/csm/models/generated_get_deployment_v1_response.py) |
| generated.GetListOfConfigurationsV1DataItem | [GeneratedGetListOfConfigurationsV1DataItem](../../accelbyte_py_sdk/api/csm/models/generated_get_list_of_configurations_v1_data_item.py) |
| generated.GetListOfConfigurationsV1Response | [GeneratedGetListOfConfigurationsV1Response](../../accelbyte_py_sdk/api/csm/models/generated_get_list_of_configurations_v1_response.py) |
| generated.Pagination | [GeneratedPagination](../../accelbyte_py_sdk/api/csm/models/generated_pagination.py) |
| generated.SaveConfigurationV1Request | [GeneratedSaveConfigurationV1Request](../../accelbyte_py_sdk/api/csm/models/generated_save_configuration_v1_request.py) |
| generated.SaveConfigurationV1Response | [GeneratedSaveConfigurationV1Response](../../accelbyte_py_sdk/api/csm/models/generated_save_configuration_v1_response.py) |
| generated.StartAppV1Request | [GeneratedStartAppV1Request](../../accelbyte_py_sdk/api/csm/models/generated_start_app_v1_request.py) |
| generated.StartAppV1Response | [GeneratedStartAppV1Response](../../accelbyte_py_sdk/api/csm/models/generated_start_app_v1_response.py) |
| generated.StopAppV1Request | [GeneratedStopAppV1Request](../../accelbyte_py_sdk/api/csm/models/generated_stop_app_v1_request.py) |
| generated.StopAppV1Response | [GeneratedStopAppV1Response](../../accelbyte_py_sdk/api/csm/models/generated_stop_app_v1_response.py) |
| generated.UpdateAppV1Request | [GeneratedUpdateAppV1Request](../../accelbyte_py_sdk/api/csm/models/generated_update_app_v1_request.py) |
| generated.UpdateAppV1Response | [GeneratedUpdateAppV1Response](../../accelbyte_py_sdk/api/csm/models/generated_update_app_v1_response.py) |
| generated.UpdateConfigurationV1Request | [GeneratedUpdateConfigurationV1Request](../../accelbyte_py_sdk/api/csm/models/generated_update_configuration_v1_request.py) |
| generated.UpdateConfigurationV1Response | [GeneratedUpdateConfigurationV1Response](../../accelbyte_py_sdk/api/csm/models/generated_update_configuration_v1_response.py) |
| log.AppMessageDeclaration | [LogAppMessageDeclaration](../../accelbyte_py_sdk/api/csm/models/log_app_message_declaration.py) |
| model.CSMAutoscalingDefaults | [ModelCSMAutoscalingDefaults](../../accelbyte_py_sdk/api/csm/models/model_csm_autoscaling_defaults.py) |
| model.ImageScanFinding | [ModelImageScanFinding](../../accelbyte_py_sdk/api/csm/models/model_image_scan_finding.py) |
| nosqlresource.NoSQLResourceConfiguration | [NosqlresourceNoSQLResourceConfiguration](../../accelbyte_py_sdk/api/csm/models/nosqlresource_no_sql_resource_configuration.py) |
| resourceaccesstunnel.TunnelInfo | [ResourceaccesstunnelTunnelInfo](../../accelbyte_py_sdk/api/csm/models/resourceaccesstunnel_tunnel_info.py) |
| response.ErrorResponse | [ResponseErrorResponse](../../accelbyte_py_sdk/api/csm/models/response_error_response.py) |
| sqlresource.SQLResourceConfiguration | [SqlresourceSQLResourceConfiguration](../../accelbyte_py_sdk/api/csm/models/sqlresource_sql_resource_configuration.py) |
