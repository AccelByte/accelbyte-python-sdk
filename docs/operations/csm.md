[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# Custom Service Manager Index (1.20.0)


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

### App V2
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | POST | CreateAppV2 | `false` | [CreateAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/create_app_v2.py) | [create_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-create-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_create_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | DELETE | DeleteAppV2 | `false` | [DeleteAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/delete_app_v2.py) | [delete_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-delete-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_delete_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps | POST | GetAppListV2 | `false` | [GetAppListV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/get_app_list_v2.py) | [get_app_list_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-get-app-list-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_list_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | GET | GetAppV2 | `false` | [GetAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/get_app_v2.py) | [get_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-get-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/start | PUT | StartAppV2 | `false` | [StartAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/start_app_v2.py) | [start_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-start-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_start_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/stop | PUT | StopAppV2 | `false` | [StopAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/stop_app_v2.py) | [stop_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-stop-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_stop_app_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources/form | POST | UpdateAppResourcesResourceLimitFormV2 | `false` | [UpdateAppResourcesResourceLimitFormV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/update_app_resources_re_e22dc4.py) | [update_app_resources_resource_limit_form_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-update-app-resources-resource-limit-form-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_resources_resource_limit_form_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app}/resources | PATCH | UpdateAppResourcesV2 | `false` | [UpdateAppResourcesV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/update_app_resources_v2.py) | [update_app_resources_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-update-app-resources-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_resources_v2.py) |
| /csm/v2/admin/namespaces/{namespace}/apps/{app} | PATCH | UpdateAppV2 | `false` | [UpdateAppV2](../../accelbyte_py_sdk/api/csm/operations/app_v2/update_app_v2.py) | [update_app_v2](../../accelbyte_py_sdk/api/csm/wrappers/_app_v2.py) | [accelbyte_py_sdk_cli csm-update-app-v2](../../samples/cli/accelbyte_py_sdk_cli/csm/_update_app_v2.py) |

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

### Resources Limits
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /csm/v2/admin/namespaces/{namespace}/resources/limits | GET | GetResourcesLimits | `false` | [GetResourcesLimits](../../accelbyte_py_sdk/api/csm/operations/resources_limits/get_resources_limits.py) | [get_resources_limits](../../accelbyte_py_sdk/api/csm/wrappers/_resources_limits.py) | [accelbyte_py_sdk_cli csm-get-resources-limits](../../samples/cli/accelbyte_py_sdk_cli/csm/_get_resources_limits.py) |


## Models
| Model | Class |
|---|---|
| apimodel.AppItem | [ApimodelAppItem](../../accelbyte_py_sdk/api/csm/models/apimodel_app_item.py) |
| apimodel.AutoscalingRequest | [ApimodelAutoscalingRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_autoscaling_request.py) |
| apimodel.AutoscalingResponse | [ApimodelAutoscalingResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_autoscaling_response.py) |
| apimodel.BulkSubscribeItem | [ApimodelBulkSubscribeItem](../../accelbyte_py_sdk/api/csm/models/apimodel_bulk_subscribe_item.py) |
| apimodel.BulkSubscribeRequest | [ApimodelBulkSubscribeRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_bulk_subscribe_request.py) |
| apimodel.CPURequest | [ApimodelCPURequest](../../accelbyte_py_sdk/api/csm/models/apimodel_cpu_request.py) |
| apimodel.CPUResponse | [ApimodelCPUResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_cpu_response.py) |
| apimodel.CreateAppV2Request | [ApimodelCreateAppV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_create_app_v2_request.py) |
| apimodel.CreateDeploymentV2Request | [ApimodelCreateDeploymentV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_create_deployment_v2_request.py) |
| apimodel.CreateDeploymentV2Response | [ApimodelCreateDeploymentV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_create_deployment_v2_response.py) |
| apimodel.CSMAppLimitsResponse | [ApimodelCSMAppLimitsResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_csm_app_limits_response.py) |
| apimodel.GetAppImageListV2DataItem | [ApimodelGetAppImageListV2DataItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_data_item.py) |
| apimodel.GetAppImageListV2DataItemImageScanResult | [ApimodelGetAppImageListV2DataItemImageScanResult](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_data_item_image_scan_result.py) |
| apimodel.GetAppImageListV2DataItemImageScanStatus | [ApimodelGetAppImageListV2DataItemImageScanStatus](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_data_item_image_scan_status.py) |
| apimodel.GetAppImageListV2Response | [ApimodelGetAppImageListV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_image_list_v2_response.py) |
| apimodel.GetAppListV2Request | [ApimodelGetAppListV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_list_v2_request.py) |
| apimodel.GetAppListV2Response | [ApimodelGetAppListV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_app_list_v2_response.py) |
| apimodel.GetDeploymentListV2DataItem | [ApimodelGetDeploymentListV2DataItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_deployment_list_v2_data_item.py) |
| apimodel.GetDeploymentListV2Request | [ApimodelGetDeploymentListV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_get_deployment_list_v2_request.py) |
| apimodel.GetDeploymentListV2Response | [ApimodelGetDeploymentListV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_deployment_list_v2_response.py) |
| apimodel.GetListOfConfigurationsV2DataItem | [ApimodelGetListOfConfigurationsV2DataItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_list_of_configurations_v2_data_item.py) |
| apimodel.GetListOfConfigurationsV2Response | [ApimodelGetListOfConfigurationsV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_get_list_of_configurations_v2_response.py) |
| apimodel.GetNotificationSubscriberItem | [ApimodelGetNotificationSubscriberItem](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_item.py) |
| apimodel.GetNotificationSubscriberListResponse | [ApimodelGetNotificationSubscriberListResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_list_response.py) |
| apimodel.GetNotificationSubscriberStatusResponse | [ApimodelGetNotificationSubscriberStatusResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_get_notification_subscriber_status_response.py) |
| apimodel.IncreaseLimitFormRequest | [ApimodelIncreaseLimitFormRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_increase_limit_form_request.py) |
| apimodel.MemoryRequest | [ApimodelMemoryRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_memory_request.py) |
| apimodel.MemoryResponse | [ApimodelMemoryResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_memory_response.py) |
| apimodel.ReplicaRequest | [ApimodelReplicaRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_replica_request.py) |
| apimodel.ReplicaResponse | [ApimodelReplicaResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_replica_response.py) |
| apimodel.SaveConfigurationV2Request | [ApimodelSaveConfigurationV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_save_configuration_v2_request.py) |
| apimodel.SaveConfigurationV2Response | [ApimodelSaveConfigurationV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_save_configuration_v2_response.py) |
| apimodel.SelfSubscribeNotificationRequest | [ApimodelSelfSubscribeNotificationRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_self_subscribe_notification_request.py) |
| apimodel.SubscribeNotificationRequest | [ApimodelSubscribeNotificationRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_subscribe_notification_request.py) |
| apimodel.SubscribeNotificationResponse | [ApimodelSubscribeNotificationResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_subscribe_notification_response.py) |
| apimodel.SubscriberItemRequest | [ApimodelSubscriberItemRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_subscriber_item_request.py) |
| apimodel.SubscriberItemResponse | [ApimodelSubscriberItemResponse](../../accelbyte_py_sdk/api/csm/models/apimodel_subscriber_item_response.py) |
| apimodel.UpdateAppResourceRequest | [ApimodelUpdateAppResourceRequest](../../accelbyte_py_sdk/api/csm/models/apimodel_update_app_resource_request.py) |
| apimodel.UpdateAppV2Request | [ApimodelUpdateAppV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_update_app_v2_request.py) |
| apimodel.UpdateConfigurationV2Request | [ApimodelUpdateConfigurationV2Request](../../accelbyte_py_sdk/api/csm/models/apimodel_update_configuration_v2_request.py) |
| apimodel.UpdateConfigurationV2Response | [ApimodelUpdateConfigurationV2Response](../../accelbyte_py_sdk/api/csm/models/apimodel_update_configuration_v2_response.py) |
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
| response.ErrorResponse | [ResponseErrorResponse](../../accelbyte_py_sdk/api/csm/models/response_error_response.py) |
