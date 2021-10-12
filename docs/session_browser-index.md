# SessionBrowser Index


## Operations

### Session
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /sessionbrowser/namespaces/{namespace}/gamesession | GET | QuerySession | [QuerySession](../accelbyte_py_sdk/api/session_browser/operations/session/query_session.py) | [query_session](../accelbyte_py_sdk/api/session_browser/wrappers/_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession | POST | CreateSession | [CreateSession](../accelbyte_py_sdk/api/session_browser/operations/session/create_session.py) | [create_session](../accelbyte_py_sdk/api/session_browser/wrappers/_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/bulk | GET | GetSessionByUserIDs | [GetSessionByUserIDs](../accelbyte_py_sdk/api/session_browser/operations/session/get_session_by_user_i_ds.py) | [get_session_by_user_i_ds](../accelbyte_py_sdk/api/session_browser/wrappers/_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} | GET | GetSession | [GetSession](../accelbyte_py_sdk/api/session_browser/operations/session/get_session.py) | [get_session](../accelbyte_py_sdk/api/session_browser/wrappers/_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} | PUT | UpdateSession | [UpdateSession](../accelbyte_py_sdk/api/session_browser/operations/session/update_session.py) | [update_session](../accelbyte_py_sdk/api/session_browser/wrappers/_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} | DELETE | DeleteSession | [DeleteSession](../accelbyte_py_sdk/api/session_browser/operations/session/delete_session.py) | [delete_session](../accelbyte_py_sdk/api/session_browser/wrappers/_session.py) |


## Models
| Model | Class |
|---|---|
| models.CreateSessionRequest | [ModelsCreateSessionRequest](../accelbyte_py_sdk/api/session_browser/models/models_create_session_request.py) |
| models.GameSession | [ModelsGameSession](../accelbyte_py_sdk/api/session_browser/models/models_game_session.py) |
| models.GameSessionSetting | [ModelsGameSessionSetting](../accelbyte_py_sdk/api/session_browser/models/models_game_session_setting.py) |
| models.MatchMaking | [ModelsMatchMaking](../accelbyte_py_sdk/api/session_browser/models/models_match_making.py) |
| models.MatchingAlly | [ModelsMatchingAlly](../accelbyte_py_sdk/api/session_browser/models/models_matching_ally.py) |
| models.MatchingParty | [ModelsMatchingParty](../accelbyte_py_sdk/api/session_browser/models/models_matching_party.py) |
| models.Pagination | [ModelsPagination](../accelbyte_py_sdk/api/session_browser/models/models_pagination.py) |
| models.PartyMember | [ModelsPartyMember](../accelbyte_py_sdk/api/session_browser/models/models_party_member.py) |
| models.PodConfig | [ModelsPodConfig](../accelbyte_py_sdk/api/session_browser/models/models_pod_config.py) |
| models.Server | [ModelsServer](../accelbyte_py_sdk/api/session_browser/models/models_server.py) |
| models.SessionByUserIDsResponse | [ModelsSessionByUserIDsResponse](../accelbyte_py_sdk/api/session_browser/models/models_session_by_user_i_ds_response.py) |
| models.SessionQueryResponse | [ModelsSessionQueryResponse](../accelbyte_py_sdk/api/session_browser/models/models_session_query_response.py) |
| models.SessionResponse | [ModelsSessionResponse](../accelbyte_py_sdk/api/session_browser/models/models_session_response.py) |
| models.StatusHistory | [ModelsStatusHistory](../accelbyte_py_sdk/api/session_browser/models/models_status_history.py) |
| models.UpdateSessionRequest | [ModelsUpdateSessionRequest](../accelbyte_py_sdk/api/session_browser/models/models_update_session_request.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/session_browser/models/response_error.py) |
