[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: accelbyte_cloud_py_codegen)

# AccelByte Cloud Match Service V2 Index (2.0.1)


## Operations

### Backfill
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/accept | PUT | AcceptBackfill | `false` | [AcceptBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/accept_backfill.py) | [accept_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-accept-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_accept_backfill.py) |
| /match2/v1/namespaces/{namespace}/backfill | POST | CreateBackfill | `false` | [CreateBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/create_backfill.py) | [create_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-create-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_backfill.py) |
| /match2/v1/namespaces/{namespace}/backfill/{backfillID}/proposal/reject | PUT | RejectBackfill | `false` | [RejectBackfill](../../accelbyte_py_sdk/api/match2/operations/backfill/reject_backfill.py) | [reject_backfill](../../accelbyte_py_sdk/api/match2/wrappers/_backfill.py) | [accelbyte_py_sdk_cli match2-reject-backfill](../../samples/cli/accelbyte_py_sdk_cli/match2/_reject_backfill.py) |

### Match-Functions
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/match-functions | POST | CreateMatchFunction | `false` | [CreateMatchFunction](../../accelbyte_py_sdk/api/match2/operations/match_functions/create_match_function.py) | [create_match_function](../../accelbyte_py_sdk/api/match2/wrappers/_match_functions.py) | [accelbyte_py_sdk_cli match2-create-match-function](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_match_function.py) |
| /match2/v1/namespaces/{namespace}/match-functions/{name} | DELETE | DeleteMatchFunction | `false` | [DeleteMatchFunction](../../accelbyte_py_sdk/api/match2/operations/match_functions/delete_match_function.py) | [delete_match_function](../../accelbyte_py_sdk/api/match2/wrappers/_match_functions.py) | [accelbyte_py_sdk_cli match2-delete-match-function](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_match_function.py) |
| /match2/v1/namespaces/{namespace}/match-functions | GET | MatchFunctionList | `false` | [MatchFunctionList](../../accelbyte_py_sdk/api/match2/operations/match_functions/match_function_list.py) | [match_function_list](../../accelbyte_py_sdk/api/match2/wrappers/_match_functions.py) | [accelbyte_py_sdk_cli match2-match-function-list](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_function_list.py) |

### Match-Pools
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/match-pools | POST | CreateMatchPool | `false` | [CreateMatchPool](../../accelbyte_py_sdk/api/match2/operations/match_pools/create_match_pool.py) | [create_match_pool](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-create-match-pool](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_match_pool.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool} | DELETE | DeleteMatchPool | `false` | [DeleteMatchPool](../../accelbyte_py_sdk/api/match2/operations/match_pools/delete_match_pool.py) | [delete_match_pool](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-delete-match-pool](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_match_pool.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool} | GET | MatchPoolDetails | `false` | [MatchPoolDetails](../../accelbyte_py_sdk/api/match2/operations/match_pools/match_pool_details.py) | [match_pool_details](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-match-pool-details](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_pool_details.py) |
| /match2/v1/namespaces/{namespace}/match-pools | GET | MatchPoolList | `false` | [MatchPoolList](../../accelbyte_py_sdk/api/match2/operations/match_pools/match_pool_list.py) | [match_pool_list](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-match-pool-list](../../samples/cli/accelbyte_py_sdk_cli/match2/_match_pool_list.py) |
| /match2/v1/namespaces/{namespace}/match-pools/{pool} | PUT | UpdateMatchPool | `false` | [UpdateMatchPool](../../accelbyte_py_sdk/api/match2/operations/match_pools/update_match_pool.py) | [update_match_pool](../../accelbyte_py_sdk/api/match2/wrappers/_match_pools.py) | [accelbyte_py_sdk_cli match2-update-match-pool](../../samples/cli/accelbyte_py_sdk_cli/match2/_update_match_pool.py) |

### Match-Tickets
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /match2/v1/namespaces/{namespace}/match-tickets | POST | CreateMatchTicket | `false` | [CreateMatchTicket](../../accelbyte_py_sdk/api/match2/operations/match_tickets/create_match_ticket.py) | [create_match_ticket](../../accelbyte_py_sdk/api/match2/wrappers/_match_tickets.py) | [accelbyte_py_sdk_cli match2-create-match-ticket](../../samples/cli/accelbyte_py_sdk_cli/match2/_create_match_ticket.py) |
| /match2/v1/namespaces/{namespace}/match-tickets/{ticketid} | DELETE | DeleteMatchTicket | `false` | [DeleteMatchTicket](../../accelbyte_py_sdk/api/match2/operations/match_tickets/delete_match_ticket.py) | [delete_match_ticket](../../accelbyte_py_sdk/api/match2/wrappers/_match_tickets.py) | [accelbyte_py_sdk_cli match2-delete-match-ticket](../../samples/cli/accelbyte_py_sdk_cli/match2/_delete_match_ticket.py) |
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
| api.ListMatchFunctionsResponse | [ApiListMatchFunctionsResponse](../../accelbyte_py_sdk/api/match2/models/api_list_match_functions_response.py) |
| api.ListMatchPoolsResponse | [ApiListMatchPoolsResponse](../../accelbyte_py_sdk/api/match2/models/api_list_match_pools_response.py) |
| api.ListRuleSetsResponse | [ApiListRuleSetsResponse](../../accelbyte_py_sdk/api/match2/models/api_list_rule_sets_response.py) |
| api.MatchFunctionConfig | [ApiMatchFunctionConfig](../../accelbyte_py_sdk/api/match2/models/api_match_function_config.py) |
| api.MatchFunctionOverride | [ApiMatchFunctionOverride](../../accelbyte_py_sdk/api/match2/models/api_match_function_override.py) |
| api.MatchFunctionRequest | [ApiMatchFunctionRequest](../../accelbyte_py_sdk/api/match2/models/api_match_function_request.py) |
| api.MatchPool | [ApiMatchPool](../../accelbyte_py_sdk/api/match2/models/api_match_pool.py) |
| api.MatchPoolConfig | [ApiMatchPoolConfig](../../accelbyte_py_sdk/api/match2/models/api_match_pool_config.py) |
| api.MatchRuleSet | [ApiMatchRuleSet](../../accelbyte_py_sdk/api/match2/models/api_match_rule_set.py) |
| api.MatchRuleSetData | [ApiMatchRuleSetData](../../accelbyte_py_sdk/api/match2/models/api_match_rule_set_data.py) |
| api.MatchRuleSetNameData | [ApiMatchRuleSetNameData](../../accelbyte_py_sdk/api/match2/models/api_match_rule_set_name_data.py) |
| api.MatchTicketRequest | [ApiMatchTicketRequest](../../accelbyte_py_sdk/api/match2/models/api_match_ticket_request.py) |
| api.MatchTicketResponse | [ApiMatchTicketResponse](../../accelbyte_py_sdk/api/match2/models/api_match_ticket_response.py) |
| api.MatchTicketStatus | [ApiMatchTicketStatus](../../accelbyte_py_sdk/api/match2/models/api_match_ticket_status.py) |
| models.Pagination | [ModelsPagination](../../accelbyte_py_sdk/api/match2/models/models_pagination.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/match2/models/response_error.py) |
