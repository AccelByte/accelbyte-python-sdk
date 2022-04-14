[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# Justice QoS Manager Service Index


## Operations

### Admin
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| /qosm/admin/servers/{region} | DELETE | DeleteServer | [DeleteServer](../accelbyte_py_sdk/api/qosm/operations/admin/delete_server.py) | [delete_server](../accelbyte_py_sdk/api/qosm/wrappers/_admin.py) | [accelbyte_py_sdk_cli qosm-delete-server](../samples/cli/accelbyte_py_sdk_cli/qosm/_delete_server.py) |
| /qosm/admin/servers/{region}/alias | POST | SetServerAlias | [SetServerAlias](../accelbyte_py_sdk/api/qosm/operations/admin/set_server_alias.py) | [set_server_alias](../accelbyte_py_sdk/api/qosm/wrappers/_admin.py) | [accelbyte_py_sdk_cli qosm-set-server-alias](../samples/cli/accelbyte_py_sdk_cli/qosm/_set_server_alias.py) |

### Public
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| /qosm/public/qos | GET | ListServer | [ListServer](../accelbyte_py_sdk/api/qosm/operations/public/list_server.py) | [list_server](../accelbyte_py_sdk/api/qosm/wrappers/_public.py) | [accelbyte_py_sdk_cli qosm-list-server](../samples/cli/accelbyte_py_sdk_cli/qosm/_list_server.py) |

### Server
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| /qosm/servers/heartbeat | POST | Heartbeat | [Heartbeat](../accelbyte_py_sdk/api/qosm/operations/server/heartbeat.py) | [heartbeat](../accelbyte_py_sdk/api/qosm/wrappers/_server.py) | [accelbyte_py_sdk_cli qosm-heartbeat](../samples/cli/accelbyte_py_sdk_cli/qosm/_heartbeat.py) |


## Models
| Model | Class |
|---|---|
| models.HeartbeatRequest | [ModelsHeartbeatRequest](../accelbyte_py_sdk/api/qosm/models/models_heartbeat_request.py) |
| models.ListServerResponse | [ModelsListServerResponse](../accelbyte_py_sdk/api/qosm/models/models_list_server_response.py) |
| models.Server | [ModelsServer](../accelbyte_py_sdk/api/qosm/models/models_server.py) |
| models.SetAliasRequest | [ModelsSetAliasRequest](../accelbyte_py_sdk/api/qosm/models/models_set_alias_request.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/qosm/models/response_error.py) |
