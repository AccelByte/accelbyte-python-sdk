[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: accelbyte_cloud_py_codegen)

# AccelByte Cloud Session Browser Service Index


## Operations

### Session
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player | POST | AddPlayerToSession | [AddPlayerToSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/add_player_to_session.py) | [add_player_to_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-add-player-to-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_add_player_to_session.py) |
| /sessionbrowser/admin/namespaces/{namespace}/gamesession/{sessionID} | GET | AdminGetSession | [AdminGetSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/admin_get_session.py) | [admin_get_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-admin-get-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_admin_get_session.py) |
| /sessionbrowser/admin/namespaces/{namespace}/sessions/history/search | GET | AdminSearchSessionsV2 | [AdminSearchSessionsV2](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/admin_search_sessions_v2.py) | [admin_search_sessions_v2](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-admin-search-sessions-v2](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_admin_search_sessions_v2.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession | POST | CreateSession | [CreateSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/create_session.py) | [create_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-create-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_create_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} | DELETE | DeleteSession | [DeleteSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/delete_session.py) | [delete_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-delete-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_delete_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/localds | DELETE | DeleteSessionLocalDS | [DeleteSessionLocalDS](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/delete_session_local_ds.py) | [delete_session_local_ds](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-delete-session-local-ds](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_delete_session_local_ds.py) |
| /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/custom-game | GET | GetActiveCustomGameSessions | [GetActiveCustomGameSessions](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/get_active_custom_game__cd6755.py) | [get_active_custom_game_sessions](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-get-active-custom-game-sessions](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_get_active_custom_game__cd6755.py) |
| /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/matchmaking-game | GET | GetActiveMatchmakingGameSessions | [GetActiveMatchmakingGameSessions](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/get_active_matchmaking__0b8050.py) | [get_active_matchmaking_game_sessions](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-get-active-matchmaking-game-sessions](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_get_active_matchmaking__0b8050.py) |
| /sessionbrowser/namespaces/{namespace}/recentplayer/{userID} | GET | GetRecentPlayer | [GetRecentPlayer](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/get_recent_player.py) | [get_recent_player](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-get-recent-player](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_get_recent_player.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} | GET | GetSession | [GetSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/get_session.py) | [get_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-get-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_get_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/bulk | GET | GetSessionByUserIDs | [GetSessionByUserIDs](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/get_session_by_user_i_ds.py) | [get_session_by_user_i_ds](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-get-session-by-user-i-ds](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_get_session_by_user_i_ds.py) |
| /sessionbrowser/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed | GET | GetSessionHistoryDetailed | [GetSessionHistoryDetailed](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/get_session_history_detailed.py) | [get_session_history_detailed](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-get-session-history-detailed](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_get_session_history_detailed.py) |
| /sessionbrowser/admin/namespaces/{namespace}/gamesession/active/count | GET | GetTotalActiveSession | [GetTotalActiveSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/get_total_active_session.py) | [get_total_active_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-get-total-active-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_get_total_active_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/join | POST | JoinSession | [JoinSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/join_session.py) | [join_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-join-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_join_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession | GET | QuerySession | [QuerySession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/query_session.py) | [query_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-query-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_query_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/player/{userID} | DELETE | RemovePlayerFromSession | [RemovePlayerFromSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/remove_player_from_session.py) | [remove_player_from_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-remove-player-from-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_remove_player_from_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID} | PUT | UpdateSession | [UpdateSession](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/update_session.py) | [update_session](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-update-session](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_update_session.py) |
| /sessionbrowser/namespaces/{namespace}/gamesession/{sessionID}/settings | PUT | UpdateSettings | [UpdateSettings](../../accelbyte_py_sdk/api/sessionbrowser/operations/session/update_settings.py) | [update_settings](../../accelbyte_py_sdk/api/sessionbrowser/wrappers/_session.py) | [accelbyte_py_sdk_cli sessionbrowser-update-settings](../../samples/cli/accelbyte_py_sdk_cli/sessionbrowser/_update_settings.py) |


## Models
| Model | Class |
|---|---|
| models.ActiveCustomGameResponse | [ModelsActiveCustomGameResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_active_custom_game_response.py) |
| models.ActiveMatchmakingGameResponse | [ModelsActiveMatchmakingGameResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_active_matchmaking_game_response.py) |
| models.AddPlayerRequest | [ModelsAddPlayerRequest](../../accelbyte_py_sdk/api/sessionbrowser/models/models_add_player_request.py) |
| models.AddPlayerResponse | [ModelsAddPlayerResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_add_player_response.py) |
| models.AdminSessionResponse | [ModelsAdminSessionResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_admin_session_response.py) |
| models.CountActiveSessionResponse | [ModelsCountActiveSessionResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_count_active_session_response.py) |
| models.CreateSessionRequest | [ModelsCreateSessionRequest](../../accelbyte_py_sdk/api/sessionbrowser/models/models_create_session_request.py) |
| models.CustomGameResponse | [ModelsCustomGameResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_custom_game_response.py) |
| models.GameSession | [ModelsGameSession](../../accelbyte_py_sdk/api/sessionbrowser/models/models_game_session.py) |
| models.GameSessionSetting | [ModelsGameSessionSetting](../../accelbyte_py_sdk/api/sessionbrowser/models/models_game_session_setting.py) |
| models.GetSessionHistoryDetailedResponseItem | [ModelsGetSessionHistoryDetailedResponseItem](../../accelbyte_py_sdk/api/sessionbrowser/models/models_get_session_history_detailed_response_item.py) |
| models.GetSessionHistorySearchResponseItemV2 | [ModelsGetSessionHistorySearchResponseItemV2](../../accelbyte_py_sdk/api/sessionbrowser/models/models_get_session_history_search_response_item_v2.py) |
| models.GetSessionHistorySearchResponseV2 | [ModelsGetSessionHistorySearchResponseV2](../../accelbyte_py_sdk/api/sessionbrowser/models/models_get_session_history_search_response_v2.py) |
| models.JoinGameSessionRequest | [ModelsJoinGameSessionRequest](../../accelbyte_py_sdk/api/sessionbrowser/models/models_join_game_session_request.py) |
| models.MatchAttributes | [ModelsMatchAttributes](../../accelbyte_py_sdk/api/sessionbrowser/models/models_match_attributes.py) |
| models.MatchMaking | [ModelsMatchMaking](../../accelbyte_py_sdk/api/sessionbrowser/models/models_match_making.py) |
| models.MatchingAlly | [ModelsMatchingAlly](../../accelbyte_py_sdk/api/sessionbrowser/models/models_matching_ally.py) |
| models.MatchingParty | [ModelsMatchingParty](../../accelbyte_py_sdk/api/sessionbrowser/models/models_matching_party.py) |
| models.Pagination | [ModelsPagination](../../accelbyte_py_sdk/api/sessionbrowser/models/models_pagination.py) |
| models.PagingCursor | [ModelsPagingCursor](../../accelbyte_py_sdk/api/sessionbrowser/models/models_paging_cursor.py) |
| models.PartyMember | [ModelsPartyMember](../../accelbyte_py_sdk/api/sessionbrowser/models/models_party_member.py) |
| models.RecentPlayerHistory | [ModelsRecentPlayerHistory](../../accelbyte_py_sdk/api/sessionbrowser/models/models_recent_player_history.py) |
| models.RecentPlayerQueryResponse | [ModelsRecentPlayerQueryResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_recent_player_query_response.py) |
| models.Server | [ModelsServer](../../accelbyte_py_sdk/api/sessionbrowser/models/models_server.py) |
| models.SessionByUserIDsResponse | [ModelsSessionByUserIDsResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_session_by_user_i_ds_response.py) |
| models.SessionQueryResponse | [ModelsSessionQueryResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_session_query_response.py) |
| models.SessionResponse | [ModelsSessionResponse](../../accelbyte_py_sdk/api/sessionbrowser/models/models_session_response.py) |
| models.StatusHistory | [ModelsStatusHistory](../../accelbyte_py_sdk/api/sessionbrowser/models/models_status_history.py) |
| models.UpdateSessionRequest | [ModelsUpdateSessionRequest](../../accelbyte_py_sdk/api/sessionbrowser/models/models_update_session_request.py) |
| models.UpdateSettingsRequest | [ModelsUpdateSettingsRequest](../../accelbyte_py_sdk/api/sessionbrowser/models/models_update_settings_request.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/sessionbrowser/models/response_error.py) |
| restapi.ErrorResponseV2 | [RestapiErrorResponseV2](../../accelbyte_py_sdk/api/sessionbrowser/models/restapi_error_response_v2.py) |
| restapi.ErrorV1 | [RestapiErrorV1](../../accelbyte_py_sdk/api/sessionbrowser/models/restapi_error_v1.py) |
