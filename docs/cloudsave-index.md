# justice-cloudsave-service Index (1.9.0)


## Operations

### AdminGameRecord
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /cloudsave/v1/admin/namespaces/{namespace}/records/{key} | DELETE | adminDeleteGameRecordHandlerV1 | [AdminDeleteGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_game_record/admin_delete_game_record_handler_v1.py) | [admin_delete_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_game_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/records/{key} | GET | adminGetGameRecordHandlerV1 | [AdminGetGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_game_record/admin_get_game_record_handler_v1.py) | [admin_get_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_game_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/records/{key} | POST | adminPostGameRecordHandlerV1 | [AdminPostGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_game_record/admin_post_game_record_handler_v1.py) | [admin_post_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_game_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/records/{key} | PUT | adminPutGameRecordHandlerV1 | [AdminPutGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_game_record/admin_put_game_record_handler_v1.py) | [admin_put_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_game_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/records | GET | listGameRecordsHandlerV1 | [ListGameRecordsHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_game_record/list_game_records_handler_v1.py) | [list_game_records_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_game_record.py) |

### AdminPlayerRecord
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public | DELETE | adminDeletePlayerPublicRecordHandlerV1 | [AdminDeletePlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_delete_player_public_record_handler_v1.py) | [admin_delete_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} | DELETE | adminDeletePlayerRecordHandlerV1 | [AdminDeletePlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_delete_player_record_handler_v1.py) | [admin_delete_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public | GET | adminGetPlayerPublicRecordHandlerV1 | [AdminGetPlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_get_player_public_record_handler_v1.py) | [admin_get_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} | GET | adminGetPlayerRecordHandlerV1 | [AdminGetPlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_get_player_record_handler_v1.py) | [admin_get_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public | POST | adminPostPlayerPublicRecordHandlerV1 | [AdminPostPlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_post_player_public_record_handler_v1.py) | [admin_post_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} | POST | adminPostPlayerRecordHandlerV1 | [AdminPostPlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_post_player_record_handler_v1.py) | [admin_post_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key}/public | PUT | adminPutPlayerPublicRecordHandlerV1 | [AdminPutPlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_put_player_public_record_handler_v1.py) | [admin_put_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/{key} | PUT | adminPutPlayerRecordHandlerV1 | [AdminPutPlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/admin_put_player_record_handler_v1.py) | [admin_put_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |
| /cloudsave/v1/admin/namespaces/{namespace}/users/records | GET | listPlayerRecordHandlerV1 | [ListPlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/admin_player_record/list_player_record_handler_v1.py) | [list_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_admin_player_record.py) |

### ConcurrentRecord
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /cloudsave/v1/namespaces/{namespace}/concurrent/records/{key} | PUT | putGameRecordConcurrentHandlerV1 | [PutGameRecordConcurrentHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/concurrent_record/put_game_record_concurrent_handler_v1.py) | [put_game_record_concurrent_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_concurrent_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/concurrent/records/{key}/public | PUT | putPlayerPublicRecordConcurrentHandlerV1 | [PutPlayerPublicRecordConcurrentHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/concurrent_record/put_player_public_record_concurrent_handler_v1.py) | [put_player_public_record_concurrent_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_concurrent_record.py) |

### PublicGameRecord
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /cloudsave/v1/namespaces/{namespace}/records/{key} | DELETE | deleteGameRecordHandlerV1 | [DeleteGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_game_record/delete_game_record_handler_v1.py) | [delete_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_game_record.py) |
| /cloudsave/v1/namespaces/{namespace}/records/{key} | GET | getGameRecordHandlerV1 | [GetGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_game_record/get_game_record_handler_v1.py) | [get_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_game_record.py) |
| /cloudsave/v1/namespaces/{namespace}/records/{key} | POST | postGameRecordHandlerV1 | [PostGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_game_record/post_game_record_handler_v1.py) | [post_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_game_record.py) |
| /cloudsave/v1/namespaces/{namespace}/records/{key} | PUT | putGameRecordHandlerV1 | [PutGameRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_game_record/put_game_record_handler_v1.py) | [put_game_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_game_record.py) |

### PublicPlayerRecord
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} | DELETE | deletePlayerRecordHandlerV1 | [DeletePlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/delete_player_record_handler_v1.py) | [delete_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public | GET | getPlayerPublicRecordHandlerV1 | [GetPlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/get_player_public_record_handler_v1.py) | [get_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} | GET | getPlayerRecordHandlerV1 | [GetPlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/get_player_record_handler_v1.py) | [get_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public | POST | postPlayerPublicRecordHandlerV1 | [PostPlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/post_player_public_record_handler_v1.py) | [post_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} | POST | postPlayerRecordHandlerV1 | [PostPlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/post_player_record_handler_v1.py) | [post_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/me/records/{key}/public | DELETE | publicDeletePlayerPublicRecordHandlerV1 | [PublicDeletePlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/public_delete_player_public_record_handler_v1.py) | [public_delete_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key}/public | PUT | putPlayerPublicRecordHandlerV1 | [PutPlayerPublicRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/put_player_public_record_handler_v1.py) | [put_player_public_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |
| /cloudsave/v1/namespaces/{namespace}/users/{userId}/records/{key} | PUT | putPlayerRecordHandlerV1 | [PutPlayerRecordHandlerV1](../accelbyte_py_sdk/api/cloudsave/operations/public_player_record/put_player_record_handler_v1.py) | [put_player_record_handler_v1](../accelbyte_py_sdk/api/cloudsave/wrappers/_public_player_record.py) |


## Models
| Model | Class |
|---|---|
| models.ConcurrentRecordRequest | [ModelsConcurrentRecordRequest](../accelbyte_py_sdk/api/cloudsave/models/models_concurrent_record_request.py) |
| models.GameRecord | [ModelsGameRecord](../accelbyte_py_sdk/api/cloudsave/models/models_game_record.py) |
| models.GameRecordRequest | [ModelsGameRecordRequest](../accelbyte_py_sdk/api/cloudsave/models/models_game_record_request.py) |
| models.ListGameRecordKeys | [ModelsListGameRecordKeys](../accelbyte_py_sdk/api/cloudsave/models/models_list_game_record_keys.py) |
| models.ListPlayerRecordKeys | [ModelsListPlayerRecordKeys](../accelbyte_py_sdk/api/cloudsave/models/models_list_player_record_keys.py) |
| models.Pagination | [ModelsPagination](../accelbyte_py_sdk/api/cloudsave/models/models_pagination.py) |
| models.PlayerRecord | [ModelsPlayerRecord](../accelbyte_py_sdk/api/cloudsave/models/models_player_record.py) |
| models.PlayerRecordKey | [ModelsPlayerRecordKey](../accelbyte_py_sdk/api/cloudsave/models/models_player_record_key.py) |
| models.PlayerRecordRequest | [ModelsPlayerRecordRequest](../accelbyte_py_sdk/api/cloudsave/models/models_player_record_request.py) |
| models.ResponseError | [ModelsResponseError](../accelbyte_py_sdk/api/cloudsave/models/models_response_error.py) |
