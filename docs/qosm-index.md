[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# Justice QoS Manager Service Index


## Operations

### Admin
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /qosm/admin/servers/{region} | DELETE | DeleteServer | [DeleteServer](../accelbyte_py_sdk/api/qosm/operations/admin/delete_server.py) | [delete_server](../accelbyte_py_sdk/api/qosm/wrappers/_admin.py) |
| /qosm/admin/servers/{region}/alias | POST | SetServerAlias | [SetServerAlias](../accelbyte_py_sdk/api/qosm/operations/admin/set_server_alias.py) | [set_server_alias](../accelbyte_py_sdk/api/qosm/wrappers/_admin.py) |

### Public
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /qosm/public/qos | GET | ListServer | [ListServer](../accelbyte_py_sdk/api/qosm/operations/public/list_server.py) | [list_server](../accelbyte_py_sdk/api/qosm/wrappers/_public.py) |

### Server
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /qosm/servers/heartbeat | POST | Heartbeat | [Heartbeat](../accelbyte_py_sdk/api/qosm/operations/server/heartbeat.py) | [heartbeat](../accelbyte_py_sdk/api/qosm/wrappers/_server.py) |


## Models
| Model | Class |
|---|---|
| models.HeartbeatRequest | [ModelsHeartbeatRequest](../accelbyte_py_sdk/api/qosm/models/models_heartbeat_request.py) |
| models.ListServerResponse | [ModelsListServerResponse](../accelbyte_py_sdk/api/qosm/models/models_list_server_response.py) |
| models.Server | [ModelsServer](../accelbyte_py_sdk/api/qosm/models/models_server.py) |
| models.SetAliasRequest | [ModelsSetAliasRequest](../accelbyte_py_sdk/api/qosm/models/models_set_alias_request.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/qosm/models/response_error.py) |
