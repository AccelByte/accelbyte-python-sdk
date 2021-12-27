[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# Justice Matchmaking Service Index (2.12.0)


## Operations

### Matchmaking
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID} | POST | AddUserIntoSessionInChannel | [AddUserIntoSessionInChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/add_user_into_session_in_channel.py) | [add_user_into_session_in_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/all/sessions/bulk | GET | BulkGetSessions | [BulkGetSessions](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/bulk_get_sessions.py) | [bulk_get_sessions](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/namespaces/{namespace}/channels | POST | CreateChannelHandler | [CreateChannelHandler](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/create_channel_handler.py) | [create_channel_handler](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/namespaces/{namespace}/channels/{channel} | DELETE | DeleteChannelHandler | [DeleteChannelHandler](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/delete_channel_handler.py) | [delete_channel_handler](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID} | DELETE | DeleteSessionInChannel | [DeleteSessionInChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/delete_session_in_channel.py) | [delete_session_in_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions/{matchID}/users/{userID} | DELETE | DeleteUserFromSessionInChannel | [DeleteUserFromSessionInChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/delete_user_from_session_in_channel.py) | [delete_user_from_session_in_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/namespaces/{namespace}/sessions/dequeue | POST | DequeueSessionHandler | [DequeueSessionHandler](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/dequeue_session_handler.py) | [dequeue_session_handler](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/export | GET | ExportChannels | [ExportChannels](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/export_channels.py) | [export_channels](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/namespaces/{namespace}/channels | GET | GetAllChannelsHandler | [GetAllChannelsHandler](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/get_all_channels_handler.py) | [get_all_channels_handler](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/all/parties | GET | GetAllPartyInAllChannel | [GetAllPartyInAllChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/get_all_party_in_all_channel.py) | [get_all_party_in_all_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/parties | GET | GetAllPartyInChannel | [GetAllPartyInChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/get_all_party_in_channel.py) | [get_all_party_in_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName}/sessions | GET | GetAllSessionsInChannel | [GetAllSessionsInChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/get_all_sessions_in_channel.py) | [get_all_sessions_in_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/sessions/{matchID}/history/detailed | GET | GetSessionHistoryDetailed | [GetSessionHistoryDetailed](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/get_session_history_detailed.py) | [get_session_history_detailed](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} | GET | GetSingleMatchmakingChannel | [GetSingleMatchmakingChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/get_single_matchmaking_channel.py) | [get_single_matchmaking_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/import | POST | ImportChannels | [ImportChannels](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/import_channels.py) | [import_channels](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/public/namespaces/{namespace}/channels | GET | PublicGetAllMatchmakingChannel | [PublicGetAllMatchmakingChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/public_get_all_matchmaking_channel.py) | [public_get_all_matchmaking_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/public/namespaces/{namespace}/channels/{channelName} | GET | PublicGetSingleMatchmakingChannel | [PublicGetSingleMatchmakingChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/public_get_single_matchmaking_channel.py) | [public_get_single_matchmaking_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/namespaces/{namespace}/sessions/{matchID}/status | GET | QuerySessionHandler | [QuerySessionHandler](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/query_session_handler.py) | [query_session_handler](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/namespaces/{namespace}/sessions | POST | QueueSessionHandler | [QueueSessionHandler](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/queue_session_handler.py) | [queue_session_handler](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/sessions/history/search | GET | SearchSessions | [SearchSessions](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/search_sessions.py) | [search_sessions](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/namespaces/{namespace}/matchresult | POST | StoreMatchResults | [StoreMatchResults](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/store_match_results.py) | [store_match_results](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |
| /matchmaking/v1/admin/namespaces/{namespace}/channels/{channelName} | PATCH | UpdateMatchmakingChannel | [UpdateMatchmakingChannel](../accelbyte_py_sdk/api/matchmaking/operations/matchmaking/update_matchmaking_channel.py) | [update_matchmaking_channel](../accelbyte_py_sdk/api/matchmaking/wrappers/_matchmaking.py) |

### Operations
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /healthz | GET | GetHealthcheckInfo | [GetHealthcheckInfo](../accelbyte_py_sdk/api/matchmaking/operations/operations/get_healthcheck_info.py) | [get_healthcheck_info](../accelbyte_py_sdk/api/matchmaking/wrappers/_operations.py) |
| /matchmaking/healthz | GET | handlerV3Healthz | [HandlerV3Healthz](../accelbyte_py_sdk/api/matchmaking/operations/operations/handler_v3_healthz.py) | [handler_v3_healthz](../accelbyte_py_sdk/api/matchmaking/wrappers/_operations.py) |
| /matchmaking/v1/messages | GET | publicGetMessages | [PublicGetMessages](../accelbyte_py_sdk/api/matchmaking/operations/operations/public_get_messages.py) | [public_get_messages](../accelbyte_py_sdk/api/matchmaking/wrappers/_operations.py) |
| /matchmaking/version | GET | versionCheckHandler | [VersionCheckHandler](../accelbyte_py_sdk/api/matchmaking/operations/operations/version_check_handler.py) | [version_check_handler](../accelbyte_py_sdk/api/matchmaking/wrappers/_operations.py) |

### Social Matchmaking
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /matchmaking/social/playtime/namespaces/{namespace}/weight | PATCH | UpdatePlayTimeWeight | [UpdatePlayTimeWeight](../accelbyte_py_sdk/api/matchmaking/operations/social_matchmaking/update_play_time_weight.py) | [update_play_time_weight](../accelbyte_py_sdk/api/matchmaking/wrappers/_social_matchmaking.py) |


## Models
| Model | Class |
|---|---|
| log.AppMessageDeclaration | [LogAppMessageDeclaration](../accelbyte_py_sdk/api/matchmaking/models/log_app_message_declaration.py) |
| models.AllianceFlexingRule | [ModelsAllianceFlexingRule](../accelbyte_py_sdk/api/matchmaking/models/models_alliance_flexing_rule.py) |
| models.AllianceRule | [ModelsAllianceRule](../accelbyte_py_sdk/api/matchmaking/models/models_alliance_rule.py) |
| models.AllianceRuleV1 | [ModelsAllianceRuleV1](../accelbyte_py_sdk/api/matchmaking/models/models_alliance_rule_v1.py) |
| models.Channel | [ModelsChannel](../accelbyte_py_sdk/api/matchmaking/models/models_channel.py) |
| models.ChannelRequest | [ModelsChannelRequest](../accelbyte_py_sdk/api/matchmaking/models/models_channel_request.py) |
| models.ChannelV1 | [ModelsChannelV1](../accelbyte_py_sdk/api/matchmaking/models/models_channel_v1.py) |
| models.CreateChannelResponse | [ModelsCreateChannelResponse](../accelbyte_py_sdk/api/matchmaking/models/models_create_channel_response.py) |
| models.DequeueRequest | [ModelsDequeueRequest](../accelbyte_py_sdk/api/matchmaking/models/models_dequeue_request.py) |
| models.FlexingRule | [ModelsFlexingRule](../accelbyte_py_sdk/api/matchmaking/models/models_flexing_rule.py) |
| models.GetChannelsResponse | [ModelsGetChannelsResponse](../accelbyte_py_sdk/api/matchmaking/models/models_get_channels_response.py) |
| models.ImportConfigResponse | [ModelsImportConfigResponse](../accelbyte_py_sdk/api/matchmaking/models/models_import_config_response.py) |
| models.MatchAddUserIntoSessionRequest | [ModelsMatchAddUserIntoSessionRequest](../accelbyte_py_sdk/api/matchmaking/models/models_match_add_user_into_session_request.py) |
| models.MatchOption | [ModelsMatchOption](../accelbyte_py_sdk/api/matchmaking/models/models_match_option.py) |
| models.MatchOptionRule | [ModelsMatchOptionRule](../accelbyte_py_sdk/api/matchmaking/models/models_match_option_rule.py) |
| models.MatchResultRequest | [ModelsMatchResultRequest](../accelbyte_py_sdk/api/matchmaking/models/models_match_result_request.py) |
| models.MatchResultResponse | [ModelsMatchResultResponse](../accelbyte_py_sdk/api/matchmaking/models/models_match_result_response.py) |
| models.MatchingAlly | [ModelsMatchingAlly](../accelbyte_py_sdk/api/matchmaking/models/models_matching_ally.py) |
| models.MatchingParty | [ModelsMatchingParty](../accelbyte_py_sdk/api/matchmaking/models/models_matching_party.py) |
| models.MatchingRule | [ModelsMatchingRule](../accelbyte_py_sdk/api/matchmaking/models/models_matching_rule.py) |
| models.MatchmakingResult | [ModelsMatchmakingResult](../accelbyte_py_sdk/api/matchmaking/models/models_matchmaking_result.py) |
| models.Pagination | [ModelsPagination](../accelbyte_py_sdk/api/matchmaking/models/models_pagination.py) |
| models.PartyMember | [ModelsPartyMember](../accelbyte_py_sdk/api/matchmaking/models/models_party_member.py) |
| models.PlayerResultRequest | [ModelsPlayerResultRequest](../accelbyte_py_sdk/api/matchmaking/models/models_player_result_request.py) |
| models.PlayerResultResponse | [ModelsPlayerResultResponse](../accelbyte_py_sdk/api/matchmaking/models/models_player_result_response.py) |
| models.ResultAttributeRequest | [ModelsResultAttributeRequest](../accelbyte_py_sdk/api/matchmaking/models/models_result_attribute_request.py) |
| models.ResultAttributeResponse | [ModelsResultAttributeResponse](../accelbyte_py_sdk/api/matchmaking/models/models_result_attribute_response.py) |
| models.RuleSet | [ModelsRuleSet](../accelbyte_py_sdk/api/matchmaking/models/models_rule_set.py) |
| models.RuleSetV1 | [ModelsRuleSetV1](../accelbyte_py_sdk/api/matchmaking/models/models_rule_set_v1.py) |
| models.SubGameMode | [ModelsSubGameMode](../accelbyte_py_sdk/api/matchmaking/models/models_sub_game_mode.py) |
| models.UpdateAllianceRule | [ModelsUpdateAllianceRule](../accelbyte_py_sdk/api/matchmaking/models/models_update_alliance_rule.py) |
| models.UpdateChannelRequest | [ModelsUpdateChannelRequest](../accelbyte_py_sdk/api/matchmaking/models/models_update_channel_request.py) |
| models.UpdatePlayTimeWeightRequest | [ModelsUpdatePlayTimeWeightRequest](../accelbyte_py_sdk/api/matchmaking/models/models_update_play_time_weight_request.py) |
| models.UpdatePlayerPlaytimeWeightResponse | [ModelsUpdatePlayerPlaytimeWeightResponse](../accelbyte_py_sdk/api/matchmaking/models/models_update_player_playtime_weight_response.py) |
| models.UpdateRuleset | [ModelsUpdateRuleset](../accelbyte_py_sdk/api/matchmaking/models/models_update_ruleset.py) |
| models.UpdateRuleset.sub_game_modes | [ModelsUpdateRulesetSubGameModes](../accelbyte_py_sdk/api/matchmaking/models/models_update_ruleset_sub_game_modes.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/matchmaking/models/response_error.py) |
| response.ErrorV1 | [ResponseErrorV1](../accelbyte_py_sdk/api/matchmaking/models/response_error_v1.py) |
| service.GetSessionHistoryDetailedResponseItem | [ServiceGetSessionHistoryDetailedResponseItem](../accelbyte_py_sdk/api/matchmaking/models/service_get_session_history_detailed_response_item.py) |
| service.GetSessionHistorySearchResponse | [ServiceGetSessionHistorySearchResponse](../accelbyte_py_sdk/api/matchmaking/models/service_get_session_history_search_response.py) |
| service.GetSessionHistorySearchResponseItem | [ServiceGetSessionHistorySearchResponseItem](../accelbyte_py_sdk/api/matchmaking/models/service_get_session_history_search_response_item.py) |
