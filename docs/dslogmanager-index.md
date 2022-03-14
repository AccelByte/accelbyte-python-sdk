[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-ds-log-manager-service Index (2.1.0)


## Operations

### All Terminated Servers
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dslogmanager/servers/logs/download | POST | batchDownloadServerLogs | [BatchDownloadServerLogs](../accelbyte_py_sdk/api/dslogmanager/operations/all_terminated_servers/batch_download_server_logs.py) | [batch_download_server_logs](../accelbyte_py_sdk/api/dslogmanager/wrappers/_all_terminated_servers.py) |
| /dslogmanager/servers/search | GET | listAllTerminatedServers | [ListAllTerminatedServers](../accelbyte_py_sdk/api/dslogmanager/operations/all_terminated_servers/list_all_terminated_servers.py) | [list_all_terminated_servers](../accelbyte_py_sdk/api/dslogmanager/wrappers/_all_terminated_servers.py) |

### Operations
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dslogmanager/v1/messages | GET | publicGetMessages | [PublicGetMessages](../accelbyte_py_sdk/api/dslogmanager/operations/operations/public_get_messages.py) | [public_get_messages](../accelbyte_py_sdk/api/dslogmanager/wrappers/_operations.py) |

### Terminated Servers
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/exists | GET | checkServerLogs | [CheckServerLogs](../accelbyte_py_sdk/api/dslogmanager/operations/terminated_servers/check_server_logs.py) | [check_server_logs](../accelbyte_py_sdk/api/dslogmanager/wrappers/_terminated_servers.py) |
| /dslogmanager/namespaces/{namespace}/servers/{podName}/logs/download | GET | downloadServerLogs | [DownloadServerLogs](../accelbyte_py_sdk/api/dslogmanager/operations/terminated_servers/download_server_logs.py) | [download_server_logs](../accelbyte_py_sdk/api/dslogmanager/wrappers/_terminated_servers.py) |
| /dslogmanager/namespaces/{namespace}/servers/search | GET | listTerminatedServers | [ListTerminatedServers](../accelbyte_py_sdk/api/dslogmanager/operations/terminated_servers/list_terminated_servers.py) | [list_terminated_servers](../accelbyte_py_sdk/api/dslogmanager/wrappers/_terminated_servers.py) |


## Models
| Model | Class |
|---|---|
| log.AppMessageDeclaration | [LogAppMessageDeclaration](../accelbyte_py_sdk/api/dslogmanager/models/log_app_message_declaration.py) |
| models.BatchDownloadLogsRequest | [ModelsBatchDownloadLogsRequest](../accelbyte_py_sdk/api/dslogmanager/models/models_batch_download_logs_request.py) |
| models.DownloadLogsRequest | [ModelsDownloadLogsRequest](../accelbyte_py_sdk/api/dslogmanager/models/models_download_logs_request.py) |
| models.ListTerminatedServersResponse | [ModelsListTerminatedServersResponse](../accelbyte_py_sdk/api/dslogmanager/models/models_list_terminated_servers_response.py) |
| models.LogFileStatus | [ModelsLogFileStatus](../accelbyte_py_sdk/api/dslogmanager/models/models_log_file_status.py) |
| models.MatchResult | [ModelsMatchResult](../accelbyte_py_sdk/api/dslogmanager/models/models_match_result.py) |
| models.NotifPayloadServerStatusChange | [ModelsNotifPayloadServerStatusChange](../accelbyte_py_sdk/api/dslogmanager/models/models_notif_payload_server_status_change.py) |
| models.PagingCursor | [ModelsPagingCursor](../accelbyte_py_sdk/api/dslogmanager/models/models_paging_cursor.py) |
| models.RequestMatchMember | [ModelsRequestMatchMember](../accelbyte_py_sdk/api/dslogmanager/models/models_request_match_member.py) |
| models.RequestMatchParty | [ModelsRequestMatchParty](../accelbyte_py_sdk/api/dslogmanager/models/models_request_match_party.py) |
| models.RequestMatchingAlly | [ModelsRequestMatchingAlly](../accelbyte_py_sdk/api/dslogmanager/models/models_request_matching_ally.py) |
| models.Server | [ModelsServer](../accelbyte_py_sdk/api/dslogmanager/models/models_server.py) |
| models.StatusHistory | [ModelsStatusHistory](../accelbyte_py_sdk/api/dslogmanager/models/models_status_history.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/dslogmanager/models/response_error.py) |
