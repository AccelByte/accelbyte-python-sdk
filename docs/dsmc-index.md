# justice-dsm-controller-service Index (2.8.0)


## Operations

### Admin
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/admin/namespaces/{namespace}/servers/count | GET | CountServer | [CountServer](../accelbyte_py_sdk/api/dsmc/operations/admin/count_server.py) | [count_server](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed | GET | CountServerDetailed | [CountServerDetailed](../accelbyte_py_sdk/api/dsmc/operations/admin/count_server_detailed.py) | [count_server_detailed](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/sessions/count | GET | CountSession | [CountSession](../accelbyte_py_sdk/api/dsmc/operations/admin/count_session.py) | [count_session](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/local/{name} | DELETE | DeleteLocalServer | [DeleteLocalServer](../accelbyte_py_sdk/api/dsmc/operations/admin/delete_local_server.py) | [delete_local_server](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/{podName} | DELETE | DeleteServer | [DeleteServer](../accelbyte_py_sdk/api/dsmc/operations/admin/delete_server.py) | [delete_server](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID} | DELETE | DeleteSession | [DeleteSession](../accelbyte_py_sdk/api/dsmc/operations/admin/delete_session.py) | [delete_session](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/{podName} | GET | GetServer | [GetServer](../accelbyte_py_sdk/api/dsmc/operations/admin/get_server.py) | [get_server](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}/logs | GET | getServerLogs | [GetServerLogs](../accelbyte_py_sdk/api/dsmc/operations/admin/get_server_logs.py) | [get_server_logs](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/local | GET | ListLocalServer | [ListLocalServer](../accelbyte_py_sdk/api/dsmc/operations/admin/list_local_server.py) | [list_local_server](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers | GET | ListServer | [ListServer](../accelbyte_py_sdk/api/dsmc/operations/admin/list_server.py) | [list_server](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/sessions | GET | ListSession | [ListSession](../accelbyte_py_sdk/api/dsmc/operations/admin/list_session.py) | [list_session](../accelbyte_py_sdk/api/dsmc/wrappers/_admin.py) |

### Config
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name} | POST | AddPort | [AddPort](../accelbyte_py_sdk/api/dsmc/operations/config/add_port.py) | [add_port](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/cache | DELETE | ClearCache | [ClearCache](../accelbyte_py_sdk/api/dsmc/operations/config/clear_cache.py) | [clear_cache](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs | POST | CreateConfig | [CreateConfig](../accelbyte_py_sdk/api/dsmc/operations/config/create_config.py) | [create_config](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs | DELETE | DeleteConfig | [DeleteConfig](../accelbyte_py_sdk/api/dsmc/operations/config/delete_config.py) | [delete_config](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name} | DELETE | DeletePort | [DeletePort](../accelbyte_py_sdk/api/dsmc/operations/config/delete_port.py) | [delete_port](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export | GET | exportConfigV1 | [ExportConfigV1](../accelbyte_py_sdk/api/dsmc/operations/config/export_config_v1.py) | [export_config_v1](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs | GET | GetConfig | [GetConfig](../accelbyte_py_sdk/api/dsmc/operations/config/get_config.py) | [get_config](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import | POST | importConfigV1 | [ImportConfigV1](../accelbyte_py_sdk/api/dsmc/operations/config/import_config_v1.py) | [import_config_v1](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/configs | GET | ListConfig | [ListConfig](../accelbyte_py_sdk/api/dsmc/operations/config/list_config.py) | [list_config](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/configs | POST | SaveConfig | [SaveConfig](../accelbyte_py_sdk/api/dsmc/operations/config/save_config.py) | [save_config](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs | PATCH | UpdateConfig | [UpdateConfig](../accelbyte_py_sdk/api/dsmc/operations/config/update_config.py) | [update_config](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/ports/{name} | PATCH | UpdatePort | [UpdatePort](../accelbyte_py_sdk/api/dsmc/operations/config/update_port.py) | [update_port](../accelbyte_py_sdk/api/dsmc/wrappers/_config.py) |

### Deployment Config
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} | POST | CreateDeployment | [CreateDeployment](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/create_deployment.py) | [create_deployment](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/version/{version} | POST | CreateDeploymentOverride | [CreateDeploymentOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/create_deployment_override.py) | [create_deployment_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} | POST | CreateOverrideRegionOverride | [CreateOverrideRegionOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/create_override_region_override.py) | [create_override_region_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} | POST | CreateRootRegionOverride | [CreateRootRegionOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/create_root_region_override.py) | [create_root_region_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} | DELETE | DeleteDeployment | [DeleteDeployment](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/delete_deployment.py) | [delete_deployment](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} | DELETE | DeleteDeploymentOverride | [DeleteDeploymentOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/delete_deployment_override.py) | [delete_deployment_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} | DELETE | DeleteOverrideRegionOverride | [DeleteOverrideRegionOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/delete_override_region_override.py) | [delete_override_region_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} | DELETE | DeleteRootRegionOverride | [DeleteRootRegionOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/delete_root_region_override.py) | [delete_root_region_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments | GET | GetAllDeployment | [GetAllDeployment](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/get_all_deployment.py) | [get_all_deployment](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} | GET | GetDeployment | [GetDeployment](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/get_deployment.py) | [get_deployment](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} | PATCH | UpdateDeployment | [UpdateDeployment](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/update_deployment.py) | [update_deployment](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version} | PATCH | UpdateDeploymentOverride | [UpdateDeploymentOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/update_deployment_override.py) | [update_deployment_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/versions/{version}/regions/{region} | PATCH | UpdateOverrideRegionOverride | [UpdateOverrideRegionOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/update_override_region_override.py) | [update_override_region_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment}/overrides/regions/{region} | PATCH | UpdateRootRegionOverride | [UpdateRootRegionOverride](../accelbyte_py_sdk/api/dsmc/operations/deployment_config/update_root_region_override.py) | [update_root_region_override](../accelbyte_py_sdk/api/dsmc/wrappers/_deployment_config.py) |

### Image Config
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/admin/images | POST | CreateImage | [CreateImage](../accelbyte_py_sdk/api/dsmc/operations/image_config/create_image.py) | [create_image](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images | DELETE | DeleteImage | [DeleteImage](../accelbyte_py_sdk/api/dsmc/operations/image_config/delete_image.py) | [delete_image](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images/export | GET | ExportImages | [ExportImages](../accelbyte_py_sdk/api/dsmc/operations/image_config/export_images.py) | [export_images](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version} | GET | GetImageDetail | [GetImageDetail](../accelbyte_py_sdk/api/dsmc/operations/image_config/get_image_detail.py) | [get_image_detail](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images/limit | GET | GetImageLimit | [GetImageLimit](../accelbyte_py_sdk/api/dsmc/operations/image_config/get_image_limit.py) | [get_image_limit](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |
| /dsmcontroller/admin/images/import | POST | ImportImages | [ImportImages](../accelbyte_py_sdk/api/dsmc/operations/image_config/import_images.py) | [import_images](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images | GET | ListImages | [ListImages](../accelbyte_py_sdk/api/dsmc/operations/image_config/list_images.py) | [list_images](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |
| /dsmcontroller/admin/images | PUT | UpdateImage | [UpdateImage](../accelbyte_py_sdk/api/dsmc/operations/image_config/update_image.py) | [update_image](../accelbyte_py_sdk/api/dsmc/wrappers/_image_config.py) |

### Operations
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/v1/messages | GET | publicGetMessages | [PublicGetMessages](../accelbyte_py_sdk/api/dsmc/operations/operations/public_get_messages.py) | [public_get_messages](../accelbyte_py_sdk/api/dsmc/wrappers/_operations.py) |

### Pod Config
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name} | POST | CreatePodConfig | [CreatePodConfig](../accelbyte_py_sdk/api/dsmc/operations/pod_config/create_pod_config.py) | [create_pod_config](../accelbyte_py_sdk/api/dsmc/wrappers/_pod_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name} | DELETE | DeletePodConfig | [DeletePodConfig](../accelbyte_py_sdk/api/dsmc/operations/pod_config/delete_pod_config.py) | [delete_pod_config](../accelbyte_py_sdk/api/dsmc/wrappers/_pod_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/pods | GET | GetAllPodConfig | [GetAllPodConfig](../accelbyte_py_sdk/api/dsmc/operations/pod_config/get_all_pod_config.py) | [get_all_pod_config](../accelbyte_py_sdk/api/dsmc/wrappers/_pod_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name} | GET | GetPodConfig | [GetPodConfig](../accelbyte_py_sdk/api/dsmc/operations/pod_config/get_pod_config.py) | [get_pod_config](../accelbyte_py_sdk/api/dsmc/wrappers/_pod_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/pods/{name} | PATCH | UpdatePodConfig | [UpdatePodConfig](../accelbyte_py_sdk/api/dsmc/operations/pod_config/update_pod_config.py) | [update_pod_config](../accelbyte_py_sdk/api/dsmc/wrappers/_pod_config.py) |

### Public
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/public/provider/default | GET | GetDefaultProvider | [GetDefaultProvider](../accelbyte_py_sdk/api/dsmc/operations/public/get_default_provider.py) | [get_default_provider](../accelbyte_py_sdk/api/dsmc/wrappers/_public.py) |
| /dsmcontroller/public/providers | GET | ListProviders | [ListProviders](../accelbyte_py_sdk/api/dsmc/operations/public/list_providers.py) | [list_providers](../accelbyte_py_sdk/api/dsmc/wrappers/_public.py) |
| /dsmcontroller/public/providers/regions/{region} | GET | ListProvidersByRegion | [ListProvidersByRegion](../accelbyte_py_sdk/api/dsmc/operations/public/list_providers_by_region.py) | [list_providers_by_region](../accelbyte_py_sdk/api/dsmc/wrappers/_public.py) |

### Server
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/namespaces/{namespace}/servers/local/deregister | POST | DeregisterLocalServer | [DeregisterLocalServer](../accelbyte_py_sdk/api/dsmc/operations/server/deregister_local_server.py) | [deregister_local_server](../accelbyte_py_sdk/api/dsmc/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/{podName}/session | GET | GetServerSession | [GetServerSession](../accelbyte_py_sdk/api/dsmc/operations/server/get_server_session.py) | [get_server_session](../accelbyte_py_sdk/api/dsmc/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/local/register | POST | RegisterLocalServer | [RegisterLocalServer](../accelbyte_py_sdk/api/dsmc/operations/server/register_local_server.py) | [register_local_server](../accelbyte_py_sdk/api/dsmc/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/register | POST | RegisterServer | [RegisterServer](../accelbyte_py_sdk/api/dsmc/operations/server/register_server.py) | [register_server](../accelbyte_py_sdk/api/dsmc/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/shutdown | POST | ShutdownServer | [ShutdownServer](../accelbyte_py_sdk/api/dsmc/operations/server/shutdown_server.py) | [shutdown_server](../accelbyte_py_sdk/api/dsmc/wrappers/_server.py) |

### Session
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/namespaces/{namespace}/sessions/claim | POST | ClaimServer | [ClaimServer](../accelbyte_py_sdk/api/dsmc/operations/session/claim_server.py) | [claim_server](../accelbyte_py_sdk/api/dsmc/wrappers/_session.py) |
| /dsmcontroller/namespaces/{namespace}/sessions | POST | CreateSession | [CreateSession](../accelbyte_py_sdk/api/dsmc/operations/session/create_session.py) | [create_session](../accelbyte_py_sdk/api/dsmc/wrappers/_session.py) |
| /dsmcontroller/namespaces/{namespace}/sessions/{sessionID} | GET | GetSession | [GetSession](../accelbyte_py_sdk/api/dsmc/operations/session/get_session.py) | [get_session](../accelbyte_py_sdk/api/dsmc/wrappers/_session.py) |


## Models
| Model | Class |
|---|---|
| log.AppMessageDeclaration | [LogAppMessageDeclaration](../accelbyte_py_sdk/api/dsmc/models/log_app_message_declaration.py) |
| models.ClaimSessionRequest | [ModelsClaimSessionRequest](../accelbyte_py_sdk/api/dsmc/models/models_claim_session_request.py) |
| models.CountServerResponse | [ModelsCountServerResponse](../accelbyte_py_sdk/api/dsmc/models/models_count_server_response.py) |
| models.CountSessionResponse | [ModelsCountSessionResponse](../accelbyte_py_sdk/api/dsmc/models/models_count_session_response.py) |
| models.CreateDeploymentOverrideRequest | [ModelsCreateDeploymentOverrideRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_deployment_override_request.py) |
| models.CreateDeploymentRequest | [ModelsCreateDeploymentRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_deployment_request.py) |
| models.CreateDSMConfigRequest | [ModelsCreateDSMConfigRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_dsm_config_request.py) |
| models.CreateImageRequest | [ModelsCreateImageRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_image_request.py) |
| models.CreatePodConfigRequest | [ModelsCreatePodConfigRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_pod_config_request.py) |
| models.CreatePortRequest | [ModelsCreatePortRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_port_request.py) |
| models.CreateRegionOverrideRequest | [ModelsCreateRegionOverrideRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_region_override_request.py) |
| models.CreateSessionRequest | [ModelsCreateSessionRequest](../accelbyte_py_sdk/api/dsmc/models/models_create_session_request.py) |
| models.DefaultProvider | [ModelsDefaultProvider](../accelbyte_py_sdk/api/dsmc/models/models_default_provider.py) |
| models.DeploymentConfigOverride | [ModelsDeploymentConfigOverride](../accelbyte_py_sdk/api/dsmc/models/models_deployment_config_override.py) |
| models.DeploymentWithOverride | [ModelsDeploymentWithOverride](../accelbyte_py_sdk/api/dsmc/models/models_deployment_with_override.py) |
| models.DeregisterLocalServerRequest | [ModelsDeregisterLocalServerRequest](../accelbyte_py_sdk/api/dsmc/models/models_deregister_local_server_request.py) |
| models.DetailedCountServerResponse | [ModelsDetailedCountServerResponse](../accelbyte_py_sdk/api/dsmc/models/models_detailed_count_server_response.py) |
| models.DSMConfigExport | [ModelsDSMConfigExport](../accelbyte_py_sdk/api/dsmc/models/models_dsm_config_export.py) |
| models.DSMConfigRecord | [ModelsDSMConfigRecord](../accelbyte_py_sdk/api/dsmc/models/models_dsm_config_record.py) |
| models.GetImageDetailResponse | [ModelsGetImageDetailResponse](../accelbyte_py_sdk/api/dsmc/models/models_get_image_detail_response.py) |
| models.GetImageLimitResponse | [ModelsGetImageLimitResponse](../accelbyte_py_sdk/api/dsmc/models/models_get_image_limit_response.py) |
| models.GetImageLimitResponseData | [ModelsGetImageLimitResponseData](../accelbyte_py_sdk/api/dsmc/models/models_get_image_limit_response_data.py) |
| models.ImageRecord | [ModelsImageRecord](../accelbyte_py_sdk/api/dsmc/models/models_image_record.py) |
| models.ImageRecordUpdate | [ModelsImageRecordUpdate](../accelbyte_py_sdk/api/dsmc/models/models_image_record_update.py) |
| models.ImportResponse | [ModelsImportResponse](../accelbyte_py_sdk/api/dsmc/models/models_import_response.py) |
| models.ListConfigResponse | [ModelsListConfigResponse](../accelbyte_py_sdk/api/dsmc/models/models_list_config_response.py) |
| models.ListDeploymentResponse | [ModelsListDeploymentResponse](../accelbyte_py_sdk/api/dsmc/models/models_list_deployment_response.py) |
| models.ListImageResponse | [ModelsListImageResponse](../accelbyte_py_sdk/api/dsmc/models/models_list_image_response.py) |
| models.ListPodConfigResponse | [ModelsListPodConfigResponse](../accelbyte_py_sdk/api/dsmc/models/models_list_pod_config_response.py) |
| models.ListServerResponse | [ModelsListServerResponse](../accelbyte_py_sdk/api/dsmc/models/models_list_server_response.py) |
| models.ListSessionResponse | [ModelsListSessionResponse](../accelbyte_py_sdk/api/dsmc/models/models_list_session_response.py) |
| models.PagingCursor | [ModelsPagingCursor](../accelbyte_py_sdk/api/dsmc/models/models_paging_cursor.py) |
| models.PodConfigRecord | [ModelsPodConfigRecord](../accelbyte_py_sdk/api/dsmc/models/models_pod_config_record.py) |
| models.PodCountConfigOverride | [ModelsPodCountConfigOverride](../accelbyte_py_sdk/api/dsmc/models/models_pod_count_config_override.py) |
| models.RegisterLocalServerRequest | [ModelsRegisterLocalServerRequest](../accelbyte_py_sdk/api/dsmc/models/models_register_local_server_request.py) |
| models.RegisterServerRequest | [ModelsRegisterServerRequest](../accelbyte_py_sdk/api/dsmc/models/models_register_server_request.py) |
| models.RequestMatchMember | [ModelsRequestMatchMember](../accelbyte_py_sdk/api/dsmc/models/models_request_match_member.py) |
| models.RequestMatchParty | [ModelsRequestMatchParty](../accelbyte_py_sdk/api/dsmc/models/models_request_match_party.py) |
| models.RequestMatchingAlly | [ModelsRequestMatchingAlly](../accelbyte_py_sdk/api/dsmc/models/models_request_matching_ally.py) |
| models.Server | [ModelsServer](../accelbyte_py_sdk/api/dsmc/models/models_server.py) |
| models.ServerLogs | [ModelsServerLogs](../accelbyte_py_sdk/api/dsmc/models/models_server_logs.py) |
| models.ServerSessionResponse | [ModelsServerSessionResponse](../accelbyte_py_sdk/api/dsmc/models/models_server_session_response.py) |
| models.Session | [ModelsSession](../accelbyte_py_sdk/api/dsmc/models/models_session.py) |
| models.SessionResponse | [ModelsSessionResponse](../accelbyte_py_sdk/api/dsmc/models/models_session_response.py) |
| models.ShutdownServerRequest | [ModelsShutdownServerRequest](../accelbyte_py_sdk/api/dsmc/models/models_shutdown_server_request.py) |
| models.StatusHistory | [ModelsStatusHistory](../accelbyte_py_sdk/api/dsmc/models/models_status_history.py) |
| models.UpdateDeploymentOverrideRequest | [ModelsUpdateDeploymentOverrideRequest](../accelbyte_py_sdk/api/dsmc/models/models_update_deployment_override_request.py) |
| models.UpdateDeploymentRequest | [ModelsUpdateDeploymentRequest](../accelbyte_py_sdk/api/dsmc/models/models_update_deployment_request.py) |
| models.UpdateDSMConfigRequest | [ModelsUpdateDSMConfigRequest](../accelbyte_py_sdk/api/dsmc/models/models_update_dsm_config_request.py) |
| models.UpdatePodConfigRequest | [ModelsUpdatePodConfigRequest](../accelbyte_py_sdk/api/dsmc/models/models_update_pod_config_request.py) |
| models.UpdatePortRequest | [ModelsUpdatePortRequest](../accelbyte_py_sdk/api/dsmc/models/models_update_port_request.py) |
| models.UpdateRegionOverrideRequest | [ModelsUpdateRegionOverrideRequest](../accelbyte_py_sdk/api/dsmc/models/models_update_region_override_request.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/dsmc/models/response_error.py) |
