[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: accelbyte_cloud_py_codegen)

# AccelByte Cloud Ds Log Manager Service Index (3.1.1)


## Operations

### Admin
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /dslogmanager/admin/namespaces/{namespace}/servers/{podName}/logs | GET | getServerLogs | `false` | [GetServerLogs](../../accelbyte_py_sdk/api/dslogmanager/operations/admin/get_server_logs.py) | [get_server_logs](../../accelbyte_py_sdk/api/dslogmanager/wrappers/_admin.py) | [accelbyte_py_sdk_cli dslogmanager-get-server-logs](../../samples/cli/accelbyte_py_sdk_cli/dslogmanager/_get_server_logs.py) |

### All Terminated Servers
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /dslogmanager/servers/logs/download | POST | batchDownloadServerLogs | `false` | [BatchDownloadServerLogs](../../accelbyte_py_sdk/api/dslogmanager/operations/all_terminated_servers/batch_download_server_logs.py) | [batch_download_server_logs](../../accelbyte_py_sdk/api/dslogmanager/wrappers/_all_terminated_servers.py) | [accelbyte_py_sdk_cli dslogmanager-batch-download-server-logs](../../samples/cli/accelbyte_py_sdk_cli/dslogmanager/_batch_download_server_logs.py) |
| /dslogmanager/servers/search | GET | listAllTerminatedServers | `false` | [ListAllTerminatedServers](../../accelbyte_py_sdk/api/dslogmanager/operations/all_terminated_servers/list_all_terminated_servers.py) | [list_all_terminated_servers](../../accelbyte_py_sdk/api/dslogmanager/wrappers/_all_terminated_servers.py) | [accelbyte_py_sdk_cli dslogmanager-list-all-terminated-servers](../../samples/cli/accelbyte_py_sdk_cli/dslogmanager/_list_all_terminated_servers.py) |

### Dslogmanager Operations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /dslogmanager/v1/messages | GET | publicGetMessages | `false` | [PublicGetMessages](../../accelbyte_py_sdk/api/dslogmanager/operations/dslogmanager_operations/public_get_messages.py) | [public_get_messages](../../accelbyte_py_sdk/api/dslogmanager/wrappers/_dslogmanager_operations.py) | [accelbyte_py_sdk_cli dslogmanager-public-get-messages](../../samples/cli/accelbyte_py_sdk_cli/dslogmanager/_public_get_messages.py) |

### Terminated Servers
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists | GET | checkServerLogs | `false` | [CheckServerLogs](../../accelbyte_py_sdk/api/dslogmanager/operations/terminated_servers/check_server_logs.py) | [check_server_logs](../../accelbyte_py_sdk/api/dslogmanager/wrappers/_terminated_servers.py) | [accelbyte_py_sdk_cli dslogmanager-check-server-logs](../../samples/cli/accelbyte_py_sdk_cli/dslogmanager/_check_server_logs.py) |
| /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download | GET | downloadServerLogs | `false` | [DownloadServerLogs](../../accelbyte_py_sdk/api/dslogmanager/operations/terminated_servers/download_server_logs.py) | [download_server_logs](../../accelbyte_py_sdk/api/dslogmanager/wrappers/_terminated_servers.py) | [accelbyte_py_sdk_cli dslogmanager-download-server-logs](../../samples/cli/accelbyte_py_sdk_cli/dslogmanager/_download_server_logs.py) |
| /dslogmanager/namespaces/{namespace}/servers/search | GET | listTerminatedServers | `false` | [ListTerminatedServers](../../accelbyte_py_sdk/api/dslogmanager/operations/terminated_servers/list_terminated_servers.py) | [list_terminated_servers](../../accelbyte_py_sdk/api/dslogmanager/wrappers/_terminated_servers.py) | [accelbyte_py_sdk_cli dslogmanager-list-terminated-servers](../../samples/cli/accelbyte_py_sdk_cli/dslogmanager/_list_terminated_servers.py) |


## Models
| Model | Class |
|---|---|
| log.AppMessageDeclaration | [LogAppMessageDeclaration](../../accelbyte_py_sdk/api/dslogmanager/models/log_app_message_declaration.py) |
| models.AllocationEvent | [ModelsAllocationEvent](../../accelbyte_py_sdk/api/dslogmanager/models/models_allocation_event.py) |
| models.BatchDownloadLogsRequest | [ModelsBatchDownloadLogsRequest](../../accelbyte_py_sdk/api/dslogmanager/models/models_batch_download_logs_request.py) |
| models.DownloadLogsRequest | [ModelsDownloadLogsRequest](../../accelbyte_py_sdk/api/dslogmanager/models/models_download_logs_request.py) |
| models.ListTerminatedServersResponse | [ModelsListTerminatedServersResponse](../../accelbyte_py_sdk/api/dslogmanager/models/models_list_terminated_servers_response.py) |
| models.LogFileStatus | [ModelsLogFileStatus](../../accelbyte_py_sdk/api/dslogmanager/models/models_log_file_status.py) |
| models.MatchResult | [ModelsMatchResult](../../accelbyte_py_sdk/api/dslogmanager/models/models_match_result.py) |
| models.NotifPayloadServerStatusChange | [ModelsNotifPayloadServerStatusChange](../../accelbyte_py_sdk/api/dslogmanager/models/models_notif_payload_server_status_change.py) |
| models.PagingCursor | [ModelsPagingCursor](../../accelbyte_py_sdk/api/dslogmanager/models/models_paging_cursor.py) |
| models.RequestMatchMember | [ModelsRequestMatchMember](../../accelbyte_py_sdk/api/dslogmanager/models/models_request_match_member.py) |
| models.RequestMatchParty | [ModelsRequestMatchParty](../../accelbyte_py_sdk/api/dslogmanager/models/models_request_match_party.py) |
| models.RequestMatchingAlly | [ModelsRequestMatchingAlly](../../accelbyte_py_sdk/api/dslogmanager/models/models_request_matching_ally.py) |
| models.Server | [ModelsServer](../../accelbyte_py_sdk/api/dslogmanager/models/models_server.py) |
| models.ServerLogs | [ModelsServerLogs](../../accelbyte_py_sdk/api/dslogmanager/models/models_server_logs.py) |
| models.StatusHistory | [ModelsStatusHistory](../../accelbyte_py_sdk/api/dslogmanager/models/models_status_history.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/dslogmanager/models/response_error.py) |
