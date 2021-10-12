# DsmController Index (2.4.0)


## Operations

### Config
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/admin/configs | GET | ListConfig | [ListConfig](../accelbyte_py_sdk/api/dsm_controller/operations/config/list_config.py) | [list_config](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/configs | POST | SaveConfig | [SaveConfig](../accelbyte_py_sdk/api/dsm_controller/operations/config/save_config.py) | [save_config](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/images | PUT | UpdateImage | [UpdateImage](../accelbyte_py_sdk/api/dsm_controller/operations/config/update_image.py) | [update_image](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/images | POST | CreateImage | [CreateImage](../accelbyte_py_sdk/api/dsm_controller/operations/config/create_image.py) | [create_image](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/images/import | POST | ImportImages | [ImportImages](../accelbyte_py_sdk/api/dsm_controller/operations/config/import_images.py) | [import_images](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs | GET | GetConfig | [GetConfig](../accelbyte_py_sdk/api/dsm_controller/operations/config/get_config.py) | [get_config](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs | PATCH | UpdateConfig | [UpdateConfig](../accelbyte_py_sdk/api/dsm_controller/operations/config/update_config.py) | [update_config](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/configs/deployments/{deployment} | PATCH | UpdateDeployment | [UpdateDeployment](../accelbyte_py_sdk/api/dsm_controller/operations/config/update_deployment.py) | [update_deployment](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images | GET | ListImages | [ListImages](../accelbyte_py_sdk/api/dsm_controller/operations/config/list_images.py) | [list_images](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images | DELETE | DeleteImage | [DeleteImage](../accelbyte_py_sdk/api/dsm_controller/operations/config/delete_image.py) | [delete_image](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images/export | GET | ExportImages | [ExportImages](../accelbyte_py_sdk/api/dsm_controller/operations/config/export_images.py) | [export_images](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images/limit | GET | GetImageLimit | [GetImageLimit](../accelbyte_py_sdk/api/dsm_controller/operations/config/get_image_limit.py) | [get_image_limit](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/namespaces/{namespace}/images/versions/{version} | GET | GetImageDetail | [GetImageDetail](../accelbyte_py_sdk/api/dsm_controller/operations/config/get_image_detail.py) | [get_image_detail](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/v1/namespaces/{namespace}/configs/export | GET | exportConfigV1 | [ExportConfigV1](../accelbyte_py_sdk/api/dsm_controller/operations/config/export_config_v1.py) | [export_config_v1](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |
| /dsmcontroller/admin/v1/namespaces/{namespace}/configs/import | POST | importConfigV1 | [ImportConfigV1](../accelbyte_py_sdk/api/dsm_controller/operations/config/import_config_v1.py) | [import_config_v1](../accelbyte_py_sdk/api/dsm_controller/wrappers/_config.py) |

### Admin
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/admin/namespaces/{namespace}/servers | GET | ListServer | [ListServer](../accelbyte_py_sdk/api/dsm_controller/operations/admin/list_server.py) | [list_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/count | GET | CountServer | [CountServer](../accelbyte_py_sdk/api/dsm_controller/operations/admin/count_server.py) | [count_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/count/detailed | GET | CountServerDetailed | [CountServerDetailed](../accelbyte_py_sdk/api/dsm_controller/operations/admin/count_server_detailed.py) | [count_server_detailed](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/local | GET | ListLocalServer | [ListLocalServer](../accelbyte_py_sdk/api/dsm_controller/operations/admin/list_local_server.py) | [list_local_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/local/{name} | DELETE | DeleteLocalServer | [DeleteLocalServer](../accelbyte_py_sdk/api/dsm_controller/operations/admin/delete_local_server.py) | [delete_local_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/{podName} | GET | GetServer | [GetServer](../accelbyte_py_sdk/api/dsm_controller/operations/admin/get_server.py) | [get_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/{podName} | DELETE | DeleteServer | [DeleteServer](../accelbyte_py_sdk/api/dsm_controller/operations/admin/delete_server.py) | [delete_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/servers/{podName}/logs | GET | getServerLogs | [GetServerLogs](../accelbyte_py_sdk/api/dsm_controller/operations/admin/get_server_logs.py) | [get_server_logs](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/sessions | GET | ListSession | [ListSession](../accelbyte_py_sdk/api/dsm_controller/operations/admin/list_session.py) | [list_session](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/sessions/count | GET | CountSession | [CountSession](../accelbyte_py_sdk/api/dsm_controller/operations/admin/count_session.py) | [count_session](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |
| /dsmcontroller/admin/namespaces/{namespace}/sessions/{sessionID} | DELETE | DeleteSession | [DeleteSession](../accelbyte_py_sdk/api/dsm_controller/operations/admin/delete_session.py) | [delete_session](../accelbyte_py_sdk/api/dsm_controller/wrappers/_admin.py) |

### Server
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/namespaces/{namespace}/servers/local/deregister | POST | DeregisterLocalServer | [DeregisterLocalServer](../accelbyte_py_sdk/api/dsm_controller/operations/server/deregister_local_server.py) | [deregister_local_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/local/register | POST | RegisterLocalServer | [RegisterLocalServer](../accelbyte_py_sdk/api/dsm_controller/operations/server/register_local_server.py) | [register_local_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/register | POST | RegisterServer | [RegisterServer](../accelbyte_py_sdk/api/dsm_controller/operations/server/register_server.py) | [register_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/shutdown | POST | ShutdownServer | [ShutdownServer](../accelbyte_py_sdk/api/dsm_controller/operations/server/shutdown_server.py) | [shutdown_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_server.py) |
| /dsmcontroller/namespaces/{namespace}/servers/{podName}/session | GET | GetServerSession | [GetServerSession](../accelbyte_py_sdk/api/dsm_controller/operations/server/get_server_session.py) | [get_server_session](../accelbyte_py_sdk/api/dsm_controller/wrappers/_server.py) |

### Session
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/namespaces/{namespace}/sessions | POST | CreateSession | [CreateSession](../accelbyte_py_sdk/api/dsm_controller/operations/session/create_session.py) | [create_session](../accelbyte_py_sdk/api/dsm_controller/wrappers/_session.py) |
| /dsmcontroller/namespaces/{namespace}/sessions/claim | POST | ClaimServer | [ClaimServer](../accelbyte_py_sdk/api/dsm_controller/operations/session/claim_server.py) | [claim_server](../accelbyte_py_sdk/api/dsm_controller/wrappers/_session.py) |
| /dsmcontroller/namespaces/{namespace}/sessions/{sessionID} | GET | GetSession | [GetSession](../accelbyte_py_sdk/api/dsm_controller/operations/session/get_session.py) | [get_session](../accelbyte_py_sdk/api/dsm_controller/wrappers/_session.py) |

### Public
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/public/provider/default | GET | GetDefaultProvider | [GetDefaultProvider](../accelbyte_py_sdk/api/dsm_controller/operations/public/get_default_provider.py) | [get_default_provider](../accelbyte_py_sdk/api/dsm_controller/wrappers/_public.py) |
| /dsmcontroller/public/providers | GET | ListProviders | [ListProviders](../accelbyte_py_sdk/api/dsm_controller/operations/public/list_providers.py) | [list_providers](../accelbyte_py_sdk/api/dsm_controller/wrappers/_public.py) |

### Operations
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dsmcontroller/v1/messages | GET | publicGetMessages | [PublicGetMessages](../accelbyte_py_sdk/api/dsm_controller/operations/operations/public_get_messages.py) | [public_get_messages](../accelbyte_py_sdk/api/dsm_controller/wrappers/_operations.py) |


## Models
| Model | Class |
|---|---|
| log.AppMessageDeclaration | [LogAppMessageDeclaration](../accelbyte_py_sdk/api/dsm_controller/models/log_app_message_declaration.py) |
| models.ClaimSessionRequest | [ModelsClaimSessionRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_claim_session_request.py) |
| models.CountServerResponse | [ModelsCountServerResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_count_server_response.py) |
| models.CountSessionResponse | [ModelsCountSessionResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_count_session_response.py) |
| models.CreateImageRequest | [ModelsCreateImageRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_create_image_request.py) |
| models.CreateSessionRequest | [ModelsCreateSessionRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_create_session_request.py) |
| models.DSMConfig | [ModelsDSMConfig](../accelbyte_py_sdk/api/dsm_controller/models/models_dsm_config.py) |
| models.DefaultProvider | [ModelsDefaultProvider](../accelbyte_py_sdk/api/dsm_controller/models/models_default_provider.py) |
| models.DeploymentConfig | [ModelsDeploymentConfig](../accelbyte_py_sdk/api/dsm_controller/models/models_deployment_config.py) |
| models.DeploymentWithOverride | [ModelsDeploymentWithOverride](../accelbyte_py_sdk/api/dsm_controller/models/models_deployment_with_override.py) |
| models.DeregisterLocalServerRequest | [ModelsDeregisterLocalServerRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_deregister_local_server_request.py) |
| models.DetailedCountServerResponse | [ModelsDetailedCountServerResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_detailed_count_server_response.py) |
| models.GetImageDetailResponse | [ModelsGetImageDetailResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_get_image_detail_response.py) |
| models.GetImageLimitResponse | [ModelsGetImageLimitResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_get_image_limit_response.py) |
| models.GetImageLimitResponseData | [ModelsGetImageLimitResponseData](../accelbyte_py_sdk/api/dsm_controller/models/models_get_image_limit_response_data.py) |
| models.ImageRecord | [ModelsImageRecord](../accelbyte_py_sdk/api/dsm_controller/models/models_image_record.py) |
| models.ImageRecordUpdate | [ModelsImageRecordUpdate](../accelbyte_py_sdk/api/dsm_controller/models/models_image_record_update.py) |
| models.ImportResponse | [ModelsImportResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_import_response.py) |
| models.ListConfigResponse | [ModelsListConfigResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_list_config_response.py) |
| models.ListImageResponse | [ModelsListImageResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_list_image_response.py) |
| models.ListServerResponse | [ModelsListServerResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_list_server_response.py) |
| models.ListSessionResponse | [ModelsListSessionResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_list_session_response.py) |
| models.MatchResult | [ModelsMatchResult](../accelbyte_py_sdk/api/dsm_controller/models/models_match_result.py) |
| models.OverrideConfig | [ModelsOverrideConfig](../accelbyte_py_sdk/api/dsm_controller/models/models_override_config.py) |
| models.PagingCursor | [ModelsPagingCursor](../accelbyte_py_sdk/api/dsm_controller/models/models_paging_cursor.py) |
| models.PodConfig | [ModelsPodConfig](../accelbyte_py_sdk/api/dsm_controller/models/models_pod_config.py) |
| models.PodCountConfig | [ModelsPodCountConfig](../accelbyte_py_sdk/api/dsm_controller/models/models_pod_count_config.py) |
| models.RegisterLocalServerRequest | [ModelsRegisterLocalServerRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_register_local_server_request.py) |
| models.RegisterServerRequest | [ModelsRegisterServerRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_register_server_request.py) |
| models.RequestMatchMember | [ModelsRequestMatchMember](../accelbyte_py_sdk/api/dsm_controller/models/models_request_match_member.py) |
| models.RequestMatchParty | [ModelsRequestMatchParty](../accelbyte_py_sdk/api/dsm_controller/models/models_request_match_party.py) |
| models.RequestMatchingAlly | [ModelsRequestMatchingAlly](../accelbyte_py_sdk/api/dsm_controller/models/models_request_matching_ally.py) |
| models.Server | [ModelsServer](../accelbyte_py_sdk/api/dsm_controller/models/models_server.py) |
| models.ServerLogs | [ModelsServerLogs](../accelbyte_py_sdk/api/dsm_controller/models/models_server_logs.py) |
| models.ServerSessionResponse | [ModelsServerSessionResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_server_session_response.py) |
| models.Session | [ModelsSession](../accelbyte_py_sdk/api/dsm_controller/models/models_session.py) |
| models.SessionResponse | [ModelsSessionResponse](../accelbyte_py_sdk/api/dsm_controller/models/models_session_response.py) |
| models.ShutdownServerRequest | [ModelsShutdownServerRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_shutdown_server_request.py) |
| models.StatusHistory | [ModelsStatusHistory](../accelbyte_py_sdk/api/dsm_controller/models/models_status_history.py) |
| models.UpdateDSMConfigRequest | [ModelsUpdateDSMConfigRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_update_dsm_config_request.py) |
| models.UpdateDeploymentRequest | [ModelsUpdateDeploymentRequest](../accelbyte_py_sdk/api/dsm_controller/models/models_update_deployment_request.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/dsm_controller/models/response_error.py) |
