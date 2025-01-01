[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Match Service V2 Index (2.30.0)


## Operations

### Backfill
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept | PUT | AcceptBackfill | `false` | [AcceptBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/accept_backfill.py) | [accept_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-accept-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_accept_backfill.py) |
| /match2/v1/namespaces/{namespace}/backfill | POST | CreateBackfill | `false` | [CreateBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/create_backfill.py) | [create_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-create-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_backfill.py) |
| /match2/v1/namespaces/{namespace}/backfill/{backfillID} | DELETE | DeleteBackfill | `false` | [DeleteBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/delete_backfill.py) | [delete_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-delete-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_backfill.py) |
| /match2/v1/namespaces/{namespace}/backfill/{backfillID} | GET | GetBackfill | `false` | [GetBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/get_backfill.py) | [get_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-get-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_get_backfill.py) |
| /match2/v1/namespaces/{namespace}/backfill/proposal | GET | GetBackfillProposal | `false` | [GetBackfillProposal](../../accelbyte_py_sdk/api/match2/operations/backfill/get_backfill_proposal.py) | [get_backfill_proposal](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-get-backfill-proposal](../../samples/cli/accelbyte_py_sdk_cli/match2/_get_backfill_proposal.py) |
| /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject | PUT | RejectBackfill | `false` | [RejectBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/reject_backfill.py) | [reject_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-reject-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_reject_backfill.py) |

### Config
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/config | GET | adminGetAllConfigV1 | `false` | [AdminGetAllConfigV1](../../accelbyte_py_sdk/api/match2/operations/config/admin_get_all_config_v1.py) | [admin_get_all_config_v1](../../accelbyte_py_sdk/api/match2/wrappers/_config.py) | [accelbyte_py_sdk_cli match2-admin-get-all-config-v1](../../samples/cli/accelbyte_py_sdk_cli/match2/_admin_get_all_config_v1.py) |
| /match2/v1/config/namespaces/{namespace} | GET | adminGetConfigV1 | `false` | [AdminGetConfigV1](../../accelbyte_py_sdk/api/match2/operations/config/admin_get_config_v1.py) | [admin_get_config_v1](../../accelbyte_py_sdk/api/match2/wrappers/_config.py) | [accelbyte_py_sdk_cli match2-admin-get-config-v1](../../samples/cli/accelbyte_py_sdk_cli/match2/_admin_get_config_v1.py) |
| /match2/v1/admin/config/log | GET | adminGetLogConfig | `false` | [AdminGetLogConfig](../../accelbyte_py_sdk/api/match2/operations/config/admin_get_log_config.py) | [admin_get_log_config](../../accelbyte_py_sdk/api/match2/wrappers/_config.py) | [accelbyte_py_sdk_cli match2-admin-get-log-config](../../samples/cli/accelbyte_py_sdk_cli/match2/_admin_get_log_config.py) |
| /match2/v1/config/namespaces/{namespace} | PATCH | adminPatchConfigV1 | `false` | [AdminPatchConfigV1](../../accelbyte_py_sdk/api/match2/operations/config/admin_patch_config_v1.py) | [admin_patch_config_v1](../../accelbyte_py_sdk/api/match2/wrappers/_config.py) | [accelbyte_py_sdk_cli match2-admin-patch-config-v1](../../samples/cli/accelbyte_py_sdk_cli/match2/_admin_patch_config_v1.py) |
| /match2/v1/admin/config/log | PATCH | adminPatchUpdateLogConfig | `false` | [AdminPatchUpdateLogConfig](../../accelbyte_py_sdk/api/match2/operations/config/admin_patch_update_log_config.py) | [admin_patch_update_log_config](../../accelbyte_py_sdk/api/match2/wrappers/_config.py) | [accelbyte_py_sdk_cli match2-admin-patch-update-log-config](../../samples/cli/accelbyte_py_sdk_cli/match2/_admin_patch_update_log_config.py) |

### Environment-Variables
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/environment-variables | GET | EnvironmentVariableList | `false` | [EnvironmentVariableList](../../accelbyte_py_sdk/api/match2/operations/environment_variables/environment_variable_list.py) | [environment_variable_list](../../accelbyte_py_sdk/api/match2/wrappers/_environment_variables.py) | [accelbyte_py_sdk_cli match2-environment-variable-list](../../samples/cli/accelbyte_py_sdk_cli/match2/_environment_variable_list.py) |

### Match-Functions
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/match-functions | POST | CreateMatchFunction | `false` | [CreateMatchFunction](../../accelbyte_py_sdk/api/match2/operations/match_functions/create_match_function.py) | [create_match_function](../../accelbyte_py_sdk/api/match2/wrappers/_match_functions.py) | [accelbyte_py_sdk_cli match2-create-match-function](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_match_function.py) |
| /match2/v1/namespaces/{namespace}/match-functions/{name} | DELETE | DeleteMatchFunction | `false` | [DeleteMatchFunction](../../accelbyte_py_sdk/api/match2/operations/match_functions/delete_match_function.py) | [delete_match_function](../../accelbyte_py_sdk/api/match2/wrappers/_match_functions.py) | [accelbyte_py_sdk_cli match2-delete-match-function](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_match_function.py) |
| /match2/v1/namespaces/{namespace}/match-functions | GET | MatchFunctionList | `false` | [MatchFunctionList](../../accelbyte_py_sdk/api/match2/operations/match_functions/match_function_list.py) | [match_function_list](../../accelbyte_py_sdk/api/match2/wrappers/_match_functions.py) | [accelbyte_py_sdk_cli match2-match-function-list](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_function_list.py) |
| /match2/v1/namespaces/{namespace}/match-functions/{name} | PUT | UpdateMatchFunction | `false` | [UpdateMatchFunction](../../accelbyte_py_sdk/api/match2/operations/match_functions/update_match_function.py) | [update_match_function](../../accelbyte_py_sdk/api/match2/wrappers/_match_functions.py) | [accelbyte_py_sdk_cli match2-update-match-function](../../samples/cli/accelbyte_py_sdk_cli/match2/_update_match_function.py) |

### Match-Pools
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/match-pools/{pool}/tickets | GET | adminGetMatchPoolTickets | `false` | [AdminGetMatchPoolTickets](../../accelbyte_py_sdk/api/match2/operations/match_pools/admin_get_match_pool_tickets.py) | [admin_get_match_pool_tickets](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-admin-get-match-pool-tickets](../../samples/cli/accelbyte_py_sdk_cli/match2/_admin_get_match_pool_tickets.py) |
| /match2/v1/namespaces/{namespace}/match-pools | POST | CreateMatchPool | `false` | [CreateMatchPool](../../accelbyte_py_sdk/api/match2/operations/match_pools/create_match_pool.py) | [create_match_pool](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-create-match-pool](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_match_pool.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool} | DELETE | DeleteMatchPool | `false` | [DeleteMatchPool](../../accelbyte_py_sdk/api/match2/operations/match_pools/delete_match_pool.py) | [delete_match_pool](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-delete-match-pool](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_match_pool.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics/player | GET | GetPlayerMetric | `false` | [GetPlayerMetric](../../accelbyte_py_sdk/api/match2/operations/match_pools/get_player_metric.py) | [get_player_metric](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-get-player-metric](../../samples/cli/accelbyte_py_sdk_cli/match2/_get_player_metric.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool} | GET | MatchPoolDetails | `false` | [MatchPoolDetails](../../accelbyte_py_sdk/api/match2/operations/match_pools/match_pool_details.py) | [match_pool_details](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-match-pool-details](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_pool_details.py) |
| /match2/v1/namespaces/{namespace}/match-pools | GET | MatchPoolList | `false` | [MatchPoolList](../../accelbyte_py_sdk/api/match2/operations/match_pools/match_pool_list.py) | [match_pool_list](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-match-pool-list](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_pool_list.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool}/metrics | GET | MatchPoolMetric | `false` | [MatchPoolMetric](../../accelbyte_py_sdk/api/match2/operations/match_pools/match_pool_metric.py) | [match_pool_metric](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-match-pool-metric](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_pool_metric.py) |
| /match2/v1/public/namespaces/{namespace}/match-pools/{pool}/metrics/player | GET | PublicGetPlayerMetric | `false` | [PublicGetPlayerMetric](../../accelbyte_py_sdk/api/match2/operations/match_pools/public_get_player_metric.py) | [public_get_player_metric](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-public-get-player-metric](../../samples/cli/accelbyte_py_sdk_cli/match2/_public_get_player_metric.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool} | PUT | UpdateMatchPool | `false` | [UpdateMatchPool](../../accelbyte_py_sdk/api/match2/operations/match_pools/update_match_pool.py) | [update_match_pool](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-update-match-pool](../../samples/cli/accelbyte_py_sdk_cli/match2/_update_match_pool.py) |

### Match-Tickets
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/match-tickets | POST | CreateMatchTicket | `false` | [CreateMatchTicket](../../accelbyte_py_sdk/api/match2/operations/match_tickets/create_match_ticket.py) | [create_match_ticket](../../accelbyte_py_sdk/api/match2/wrappers/_match_tickets.py) | [accelbyte_py_sdk_cli match2-create-match-ticket](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_match_ticket.py) |
| /match2/v1/namespaces/{namespace}/match-tickets/{ticketid} | DELETE | DeleteMatchTicket | `false` | [DeleteMatchTicket](../../accelbyte_py_sdk/api/match2/operations/match_tickets/delete_match_ticket.py) | [delete_match_ticket](../../accelbyte_py_sdk/api/match2/wrappers/_match_tickets.py) | [accelbyte_py_sdk_cli match2-delete-match-ticket](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_match_ticket.py) |
| /match2/v1/namespaces/{namespace}/match-tickets/me | GET | GetMyMatchTickets | `false` | [GetMyMatchTickets](../../accelbyte_py_sdk/api/match2/operations/match_tickets/get_my_match_tickets.py) | [get_my_match_tickets](../../accelbyte_py_sdk/api/match2/wrappers/_match_tickets.py) | [accelbyte_py_sdk_cli match2-get-my-match-tickets](../../samples/cli/accelbyte_py_sdk_cli/match2/_get_my_match_tickets.py) |
| /match2/v1/namespaces/{namespace}/match-tickets/{ticketid} | GET | MatchTicketDetails | `false` | [MatchTicketDetails](../../accelbyte_py_sdk/api/match2/operations/match_tickets/match_ticket_details.py) | [match_ticket_details](../../accelbyte_py_sdk/api/match2/wrappers/_match_tickets.py) | [accelbyte_py_sdk_cli match2-match-ticket-details](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_ticket_details.py) |

### Operations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /healthz | GET | GetHealthcheckInfo | `false` | [GetHealthcheckInfo](../../accelbyte_py_sdk/api/match2/operations/operations/get_healthcheck_info.py) | [get_healthcheck_info](../../accelbyte_py_sdk/api/match2/wrappers/_operations.py) | [accelbyte_py_sdk_cli match2-get-healthcheck-info](../../samples/cli/accelbyte_py_sdk_cli/match2/_get_healthcheck_info.py) |
| /match2/healthz | GET | GetHealthcheckInfoV1 | `false` | [GetHealthcheckInfoV1](../../accelbyte_py_sdk/api/match2/operations/operations/get_healthcheck_info_v1.py) | [get_healthcheck_info_v1](../../accelbyte_py_sdk/api/match2/wrappers/_operations.py) | [accelbyte_py_sdk_cli match2-get-healthcheck-info-v1](../../samples/cli/accelbyte_py_sdk_cli/match2/_get_healthcheck_info_v1.py) |
| /match2/version | GET | versionCheckHandler | `false` | [VersionCheckHandler](../../accelbyte_py_sdk/api/match2/operations/operations/version_check_handler.py) | [version_check_handler](../../accelbyte_py_sdk/api/match2/wrappers/_operations.py) | [accelbyte_py_sdk_cli match2-version-check-handler](../../samples/cli/accelbyte_py_sdk_cli/match2/_version_check_handler.py) |

### Rule-Sets
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/rulesets | POST | CreateRuleSet | `false` | [CreateRuleSet](../../accelbyte_py_sdk/api/match2/operations/rule_sets/create_rule_set.py) | [create_rule_set](../../accelbyte_py_sdk/api/match2/wrappers/_rule_sets.py) | [accelbyte_py_sdk_cli match2-create-rule-set](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_rule_set.py) |
| /match2/v1/namespaces/{namespace}/rulesets/{ruleset} | DELETE | DeleteRuleSet | `false` | [DeleteRuleSet](../../accelbyte_py_sdk/api/match2/operations/rule_sets/delete_rule_set.py) | [delete_rule_set](../../accelbyte_py_sdk/api/match2/wrappers/_rule_sets.py) | [accelbyte_py_sdk_cli match2-delete-rule-set](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_rule_set.py) |
| /match2/v1/namespaces/{namespace}/rulesets/{ruleset} | GET | RuleSetDetails | `false` | [RuleSetDetails](../../accelbyte_py_sdk/api/match2/operations/rule_sets/rule_set_details.py) | [rule_set_details](../../accelbyte_py_sdk/api/match2/wrappers/_rule_sets.py) | [accelbyte_py_sdk_cli match2-rule-set-details](../../samples/cli/accelbyte_py_sdk_cli/match2/_rule_set_details.py) |
| /match2/v1/namespaces/{namespace}/rulesets | GET | RuleSetList | `false` | [RuleSetList](../../accelbyte_py_sdk/api/match2/operations/rule_sets/rule_set_list.py) | [rule_set_list](../../accelbyte_py_sdk/api/match2/wrappers/_rule_sets.py) | [accelbyte_py_sdk_cli match2-rule-set-list](../../samples/cli/accelbyte_py_sdk_cli/match2/_rule_set_list.py) |
| /match2/v1/namespaces/{namespace}/rulesets/{ruleset} | PUT | UpdateRuleSet | `false` | [UpdateRuleSet](../../accelbyte_py_sdk/api/match2/operations/rule_sets/update_rule_set.py) | [update_rule_set](../../accelbyte_py_sdk/api/match2/wrappers/_rule_sets.py) | [accelbyte_py_sdk_cli match2-update-rule-set](../../samples/cli/accelbyte_py_sdk_cli/match2/_update_rule_set.py) |


## Models
| Model | Class |
|---|---|
| api.BackFillAcceptRequest | [ApiBackFillAcceptRequest](../../accelbyte_py_sdk/api/match2/models/api_back_fill_accept_request.py) |
| api.BackFillCreateRequest | [ApiBackFillCreateRequest](../../accelbyte_py_sdk/api/match2/models/api_back_fill_create_request.py) |
| api.backFillRejectRequest | [ApiBackFillRejectRequest](../../accelbyte_py_sdk/api/match2/models/api_back_fill_reject_request.py) |
| api.BackfillCreateResponse | [ApiBackfillCreateResponse](../../accelbyte_py_sdk/api/match2/models/api_backfill_create_response.py) |
| api.BackfillGetResponse | [ApiBackfillGetResponse](../../accelbyte_py_sdk/api/match2/models/api_backfill_get_response.py) |
| api.BackfillProposalResponse | [ApiBackfillProposalResponse](../../accelbyte_py_sdk/api/match2/models/api_backfill_proposal_response.py) |
| api.ListEnvironmentVariablesResponse | [ApiListEnvironmentVariablesResponse](../../accelbyte_py_sdk/api/match2/models/api_list_environment_variables_response.py) |
| api.ListMatchFunctionsResponse | [ApiListMatchFunctionsResponse](../../accelbyte_py_sdk/api/match2/models/api_list_match_functions_response.py) |
| api.ListMatchPoolTicketsResponse | [ApiListMatchPoolTicketsResponse](../../accelbyte_py_sdk/api/match2/models/api_list_match_pool_tickets_response.py) |
| api.ListMatchPoolsResponse | [ApiListMatchPoolsResponse](../../accelbyte_py_sdk/api/match2/models/api_list_match_pools_response.py) |
| api.ListRuleSetsResponse | [ApiListRuleSetsResponse](../../accelbyte_py_sdk/api/match2/models/api_list_rule_sets_response.py) |
| api.Match | [ApiMatch](../../accelbyte_py_sdk/api/match2/models/api_match.py) |
| api.MatchFunctionConfig | [ApiMatchFunctionConfig](../../accelbyte_py_sdk/api/match2/models/api_match_function_config.py) |
| api.MatchFunctionOverride | [ApiMatchFunctionOverride](../../accelbyte_py_sdk/api/match2/models/api_match_function_override.py) |
| api.MatchFunctionRequest | [ApiMatchFunctionRequest](../../accelbyte_py_sdk/api/match2/models/api_match_function_request.py) |
| api.MatchPool | [ApiMatchPool](../../accelbyte_py_sdk/api/match2/models/api_match_pool.py) |
| api.MatchPoolConfig | [ApiMatchPoolConfig](../../accelbyte_py_sdk/api/match2/models/api_match_pool_config.py) |
| api.MatchRuleSetNameData | [ApiMatchRuleSetNameData](../../accelbyte_py_sdk/api/match2/models/api_match_rule_set_name_data.py) |
| api.MatchTicketRequest | [ApiMatchTicketRequest](../../accelbyte_py_sdk/api/match2/models/api_match_ticket_request.py) |
| api.MatchTicketResponse | [ApiMatchTicketResponse](../../accelbyte_py_sdk/api/match2/models/api_match_ticket_response.py) |
| api.MatchTicketStatus | [ApiMatchTicketStatus](../../accelbyte_py_sdk/api/match2/models/api_match_ticket_status.py) |
| api.MatchTicketStatuses | [ApiMatchTicketStatuses](../../accelbyte_py_sdk/api/match2/models/api_match_ticket_statuses.py) |
| api.NamespaceConfigList | [ApiNamespaceConfigList](../../accelbyte_py_sdk/api/match2/models/api_namespace_config_list.py) |
| api.Party | [ApiParty](../../accelbyte_py_sdk/api/match2/models/api_party.py) |
| api.PatchNamespaceConfigRequest | [ApiPatchNamespaceConfigRequest](../../accelbyte_py_sdk/api/match2/models/api_patch_namespace_config_request.py) |
| api.PlayerData | [ApiPlayerData](../../accelbyte_py_sdk/api/match2/models/api_player_data.py) |
| api.PlayerMetricRecord | [ApiPlayerMetricRecord](../../accelbyte_py_sdk/api/match2/models/api_player_metric_record.py) |
| api.ProposedProposal | [ApiProposedProposal](../../accelbyte_py_sdk/api/match2/models/api_proposed_proposal.py) |
| api.RuleSetPayload | [ApiRuleSetPayload](../../accelbyte_py_sdk/api/match2/models/api_rule_set_payload.py) |
| api.Team | [ApiTeam](../../accelbyte_py_sdk/api/match2/models/api_team.py) |
| api.Ticket | [ApiTicket](../../accelbyte_py_sdk/api/match2/models/api_ticket.py) |
| api.TicketMetricResultRecord | [ApiTicketMetricResultRecord](../../accelbyte_py_sdk/api/match2/models/api_ticket_metric_result_record.py) |
| config.EnvironmentVariable | [ConfigEnvironmentVariable](../../accelbyte_py_sdk/api/match2/models/config_environment_variable.py) |
| configmodels.NamespaceConfig | [ConfigmodelsNamespaceConfig](../../accelbyte_py_sdk/api/match2/models/configmodels_namespace_config.py) |
| logconfig.Configuration | [LogconfigConfiguration](../../accelbyte_py_sdk/api/match2/models/logconfig_configuration.py) |
| matchmaker.MatchTicketRecord | [MatchmakerMatchTicketRecord](../../accelbyte_py_sdk/api/match2/models/matchmaker_match_ticket_record.py) |
| matchmaker.Party | [MatchmakerParty](../../accelbyte_py_sdk/api/match2/models/matchmaker_party.py) |
| matchmaker.ProposedProposal | [MatchmakerProposedProposal](../../accelbyte_py_sdk/api/match2/models/matchmaker_proposed_proposal.py) |
| matchmaker.Team | [MatchmakerTeam](../../accelbyte_py_sdk/api/match2/models/matchmaker_team.py) |
| matchmaker.Ticket | [MatchmakerTicket](../../accelbyte_py_sdk/api/match2/models/matchmaker_ticket.py) |
| models.Configuration | [ModelsConfiguration](../../accelbyte_py_sdk/api/match2/models/models_configuration.py) |
| models.DSInformation | [ModelsDSInformation](../../accelbyte_py_sdk/api/match2/models/models_ds_information.py) |
| models.GameSession | [ModelsGameSession](../../accelbyte_py_sdk/api/match2/models/models_game_session.py) |
| models.Pagination | [ModelsPagination](../../accelbyte_py_sdk/api/match2/models/models_pagination.py) |
| models.Server | [ModelsServer](../../accelbyte_py_sdk/api/match2/models/models_server.py) |
| models.User | [ModelsUser](../../accelbyte_py_sdk/api/match2/models/models_user.py) |
| player.PlayerData | [PlayerPlayerData](../../accelbyte_py_sdk/api/match2/models/player_player_data.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/match2/models/response_error.py) |
