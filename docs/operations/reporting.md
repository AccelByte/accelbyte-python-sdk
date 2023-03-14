[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Reporting Service Index (0.1.25)


## Operations

### Admin Configurations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/admin/namespaces/{namespace}/configurations | GET | Get | `false` | [Get](../../accelbyte_py_sdk/api/reporting/operations/admin_configurations/get.py) | [get](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_configurations.py) | [accelbyte_py_sdk_cli reporting-get](../../samples/cli/accelbyte_py_sdk_cli/reporting/_get.py) |
| /reporting/v1/admin/namespaces/{namespace}/configurations | POST | Upsert | `false` | [Upsert](../../accelbyte_py_sdk/api/reporting/operations/admin_configurations/upsert.py) | [upsert](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_configurations.py) | [accelbyte_py_sdk_cli reporting-upsert](../../samples/cli/accelbyte_py_sdk_cli/reporting/_upsert.py) |

### Admin Extension Categories and Auto Moderation Actions
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/admin/extensionCategories | POST | adminCreateExtensionCategory | `false` | [AdminCreateExtensionCategory](../../accelbyte_py_sdk/api/reporting/operations/admin_extension_categories_and_auto_moderation_actions/admin_create_extension__954f3a.py) | [admin_create_extension_category](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_extension_categories_and_auto_moderation_actions.py) | [accelbyte_py_sdk_cli reporting-admin-create-extension-category](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_create_extension_category.py) |
| /reporting/v1/admin/extensionActions | POST | adminCreateModAction | `false` | [AdminCreateModAction](../../accelbyte_py_sdk/api/reporting/operations/admin_extension_categories_and_auto_moderation_actions/admin_create_mod_action.py) | [admin_create_mod_action](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_extension_categories_and_auto_moderation_actions.py) | [accelbyte_py_sdk_cli reporting-admin-create-mod-action](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_create_mod_action.py) |
| /reporting/v1/admin/extensionActions | GET | adminFindActionList | `false` | [AdminFindActionList](../../accelbyte_py_sdk/api/reporting/operations/admin_extension_categories_and_auto_moderation_actions/admin_find_action_list.py) | [admin_find_action_list](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_extension_categories_and_auto_moderation_actions.py) | [accelbyte_py_sdk_cli reporting-admin-find-action-list](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_find_action_list.py) |
| /reporting/v1/admin/extensionCategories | GET | adminFindExtensionCategoryList | `false` | [AdminFindExtensionCategoryList](../../accelbyte_py_sdk/api/reporting/operations/admin_extension_categories_and_auto_moderation_actions/admin_find_extension_ca_6e8210.py) | [admin_find_extension_category_list](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_extension_categories_and_auto_moderation_actions.py) | [accelbyte_py_sdk_cli reporting-admin-find-extension-category-list](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_find_extension_category_list.py) |

### Admin Moderation Rule
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/admin/namespaces/{namespace}/rule | POST | createModerationRule | `false` | [CreateModerationRule](../../accelbyte_py_sdk/api/reporting/operations/admin_moderation_rule/create_moderation_rule.py) | [create_moderation_rule](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_moderation_rule.py) | [accelbyte_py_sdk_cli reporting-create-moderation-rule](../../samples/cli/accelbyte_py_sdk_cli/reporting/_create_moderation_rule.py) |
| /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId} | DELETE | deleteModerationRule | `false` | [DeleteModerationRule](../../accelbyte_py_sdk/api/reporting/operations/admin_moderation_rule/delete_moderation_rule.py) | [delete_moderation_rule](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_moderation_rule.py) | [accelbyte_py_sdk_cli reporting-delete-moderation-rule](../../samples/cli/accelbyte_py_sdk_cli/reporting/_delete_moderation_rule.py) |
| /reporting/v1/admin/namespaces/{namespace}/rules/{ruleId} | GET | getModerationRuleDetails | `false` | [GetModerationRuleDetails](../../accelbyte_py_sdk/api/reporting/operations/admin_moderation_rule/get_moderation_rule_details.py) | [get_moderation_rule_details](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_moderation_rule.py) | [accelbyte_py_sdk_cli reporting-get-moderation-rule-details](../../samples/cli/accelbyte_py_sdk_cli/reporting/_get_moderation_rule_details.py) |
| /reporting/v1/admin/namespaces/{namespace}/rules | GET | getModerationRules | `false` | [GetModerationRules](../../accelbyte_py_sdk/api/reporting/operations/admin_moderation_rule/get_moderation_rules.py) | [get_moderation_rules](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_moderation_rule.py) | [accelbyte_py_sdk_cli reporting-get-moderation-rules](../../samples/cli/accelbyte_py_sdk_cli/reporting/_get_moderation_rules.py) |
| /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId} | PUT | updateModerationRule | `false` | [UpdateModerationRule](../../accelbyte_py_sdk/api/reporting/operations/admin_moderation_rule/update_moderation_rule.py) | [update_moderation_rule](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_moderation_rule.py) | [accelbyte_py_sdk_cli reporting-update-moderation-rule](../../samples/cli/accelbyte_py_sdk_cli/reporting/_update_moderation_rule.py) |
| /reporting/v1/admin/namespaces/{namespace}/rule/{ruleId}/status | PUT | updateModerationRuleStatus | `false` | [UpdateModerationRuleStatus](../../accelbyte_py_sdk/api/reporting/operations/admin_moderation_rule/update_moderation_rule_status.py) | [update_moderation_rule_status](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_moderation_rule.py) | [accelbyte_py_sdk_cli reporting-update-moderation-rule-status](../../samples/cli/accelbyte_py_sdk_cli/reporting/_update_moderation_rule_status.py) |

### Admin Reasons
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/admin/namespaces/{namespace}/reasons/all | GET | adminGetAllReasons | `false` | [AdminGetAllReasons](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/admin_get_all_reasons.py) | [admin_get_all_reasons](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-admin-get-all-reasons](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_get_all_reasons.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId} | GET | adminGetReason | `false` | [AdminGetReason](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/admin_get_reason.py) | [admin_get_reason](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-admin-get-reason](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_get_reason.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasons | GET | adminGetReasons | `false` | [AdminGetReasons](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/admin_get_reasons.py) | [admin_get_reasons](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-admin-get-reasons](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_get_reasons.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasons/unused | GET | adminGetUnusedReasons | `false` | [AdminGetUnusedReasons](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/admin_get_unused_reasons.py) | [admin_get_unused_reasons](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-admin-get-unused-reasons](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_get_unused_reasons.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasonGroups | GET | adminListReasonGroups | `false` | [AdminListReasonGroups](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/admin_list_reason_groups.py) | [admin_list_reason_groups](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-admin-list-reason-groups](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_list_reason_groups.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasons | POST | createReason | `false` | [CreateReason](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/create_reason.py) | [create_reason](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-create-reason](../../samples/cli/accelbyte_py_sdk_cli/reporting/_create_reason.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasonGroups | POST | createReasonGroup | `false` | [CreateReasonGroup](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/create_reason_group.py) | [create_reason_group](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-create-reason-group](../../samples/cli/accelbyte_py_sdk_cli/reporting/_create_reason_group.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId} | DELETE | deleteReason | `false` | [DeleteReason](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/delete_reason.py) | [delete_reason](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-delete-reason](../../samples/cli/accelbyte_py_sdk_cli/reporting/_delete_reason.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId} | DELETE | deleteReasonGroup | `false` | [DeleteReasonGroup](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/delete_reason_group.py) | [delete_reason_group](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-delete-reason-group](../../samples/cli/accelbyte_py_sdk_cli/reporting/_delete_reason_group.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId} | GET | getReasonGroup | `false` | [GetReasonGroup](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/get_reason_group.py) | [get_reason_group](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-get-reason-group](../../samples/cli/accelbyte_py_sdk_cli/reporting/_get_reason_group.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId} | PATCH | updateReason | `false` | [UpdateReason](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/update_reason.py) | [update_reason](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-update-reason](../../samples/cli/accelbyte_py_sdk_cli/reporting/_update_reason.py) |
| /reporting/v1/admin/namespaces/{namespace}/reasonGroups/{groupId} | PATCH | updateReasonGroup | `false` | [UpdateReasonGroup](../../accelbyte_py_sdk/api/reporting/operations/admin_reasons/update_reason_group.py) | [update_reason_group](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reasons.py) | [accelbyte_py_sdk_cli reporting-update-reason-group](../../samples/cli/accelbyte_py_sdk_cli/reporting/_update_reason_group.py) |

### Admin Reports
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/admin/namespaces/{namespace}/reports | POST | adminSubmitReport | `false` | [AdminSubmitReport](../../accelbyte_py_sdk/api/reporting/operations/admin_reports/admin_submit_report.py) | [admin_submit_report](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reports.py) | [accelbyte_py_sdk_cli reporting-admin-submit-report](../../samples/cli/accelbyte_py_sdk_cli/reporting/_admin_submit_report.py) |
| /reporting/v1/admin/namespaces/{namespace}/reports | GET | listReports | `false` | [ListReports](../../accelbyte_py_sdk/api/reporting/operations/admin_reports/list_reports.py) | [list_reports](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_reports.py) | [accelbyte_py_sdk_cli reporting-list-reports](../../samples/cli/accelbyte_py_sdk_cli/reporting/_list_reports.py) |

### Admin Tickets
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId} | DELETE | deleteTicket | `false` | [DeleteTicket](../../accelbyte_py_sdk/api/reporting/operations/admin_tickets/delete_ticket.py) | [delete_ticket](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_tickets.py) | [accelbyte_py_sdk_cli reporting-delete-ticket](../../samples/cli/accelbyte_py_sdk_cli/reporting/_delete_ticket.py) |
| /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/reports | GET | getReportsByTicket | `false` | [GetReportsByTicket](../../accelbyte_py_sdk/api/reporting/operations/admin_tickets/get_reports_by_ticket.py) | [get_reports_by_ticket](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_tickets.py) | [accelbyte_py_sdk_cli reporting-get-reports-by-ticket](../../samples/cli/accelbyte_py_sdk_cli/reporting/_get_reports_by_ticket.py) |
| /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId} | GET | getTicketDetail | `false` | [GetTicketDetail](../../accelbyte_py_sdk/api/reporting/operations/admin_tickets/get_ticket_detail.py) | [get_ticket_detail](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_tickets.py) | [accelbyte_py_sdk_cli reporting-get-ticket-detail](../../samples/cli/accelbyte_py_sdk_cli/reporting/_get_ticket_detail.py) |
| /reporting/v1/admin/namespaces/{namespace}/tickets | GET | listTickets | `false` | [ListTickets](../../accelbyte_py_sdk/api/reporting/operations/admin_tickets/list_tickets.py) | [list_tickets](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_tickets.py) | [accelbyte_py_sdk_cli reporting-list-tickets](../../samples/cli/accelbyte_py_sdk_cli/reporting/_list_tickets.py) |
| /reporting/v1/admin/namespaces/{namespace}/tickets/statistic | GET | ticketStatistic | `false` | [TicketStatistic](../../accelbyte_py_sdk/api/reporting/operations/admin_tickets/ticket_statistic.py) | [ticket_statistic](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_tickets.py) | [accelbyte_py_sdk_cli reporting-ticket-statistic](../../samples/cli/accelbyte_py_sdk_cli/reporting/_ticket_statistic.py) |
| /reporting/v1/admin/namespaces/{namespace}/tickets/{ticketId}/resolutions | POST | updateTicketResolutions | `false` | [UpdateTicketResolutions](../../accelbyte_py_sdk/api/reporting/operations/admin_tickets/update_ticket_resolutions.py) | [update_ticket_resolutions](../../accelbyte_py_sdk/api/reporting/wrappers/_admin_tickets.py) | [accelbyte_py_sdk_cli reporting-update-ticket-resolutions](../../samples/cli/accelbyte_py_sdk_cli/reporting/_update_ticket_resolutions.py) |

### Public Reasons
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/public/namespaces/{namespace}/reasons | GET | publicGetReasons | `false` | [PublicGetReasons](../../accelbyte_py_sdk/api/reporting/operations/public_reasons/public_get_reasons.py) | [public_get_reasons](../../accelbyte_py_sdk/api/reporting/wrappers/_public_reasons.py) | [accelbyte_py_sdk_cli reporting-public-get-reasons](../../samples/cli/accelbyte_py_sdk_cli/reporting/_public_get_reasons.py) |
| /reporting/v1/public/namespaces/{namespace}/reasonGroups | GET | publicListReasonGroups | `false` | [PublicListReasonGroups](../../accelbyte_py_sdk/api/reporting/operations/public_reasons/public_list_reason_groups.py) | [public_list_reason_groups](../../accelbyte_py_sdk/api/reporting/wrappers/_public_reasons.py) | [accelbyte_py_sdk_cli reporting-public-list-reason-groups](../../samples/cli/accelbyte_py_sdk_cli/reporting/_public_list_reason_groups.py) |

### Public Reports
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /reporting/v1/public/namespaces/{namespace}/reports | POST | submitReport | `false` | [SubmitReport](../../accelbyte_py_sdk/api/reporting/operations/public_reports/submit_report.py) | [submit_report](../../accelbyte_py_sdk/api/reporting/wrappers/_public_reports.py) | [accelbyte_py_sdk_cli reporting-submit-report](../../samples/cli/accelbyte_py_sdk_cli/reporting/_submit_report.py) |


## Models
| Model | Class |
|---|---|
| restapi.actionApiRequest | [RestapiActionApiRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_action_api_request.py) |
| restapi.actionApiResponse | [RestapiActionApiResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_action_api_response.py) |
| restapi.actionListApiResponse | [RestapiActionListApiResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_action_list_api_response.py) |
| restapi.AdminAllReasonsResponse | [RestapiAdminAllReasonsResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_admin_all_reasons_response.py) |
| restapi.adminReasonListResponse | [RestapiAdminReasonListResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_admin_reason_list_response.py) |
| restapi.adminReasonResponse | [RestapiAdminReasonResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_admin_reason_response.py) |
| restapi.BanAccountActionRequest | [RestapiBanAccountActionRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_ban_account_action_request.py) |
| restapi.BanAccountActionResponse | [RestapiBanAccountActionResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_ban_account_action_response.py) |
| restapi.categoryLimit | [RestapiCategoryLimit](../../accelbyte_py_sdk/api/reporting/models/restapi_category_limit.py) |
| restapi.configResponse | [RestapiConfigResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_config_response.py) |
| restapi.createReasonGroupRequest | [RestapiCreateReasonGroupRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_create_reason_group_request.py) |
| restapi.createReasonRequest | [RestapiCreateReasonRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_create_reason_request.py) |
| restapi.errorResponse | [RestapiErrorResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_error_response.py) |
| restapi.extensionCategoryApiRequest | [RestapiExtensionCategoryApiRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_extension_category_api_request.py) |
| restapi.extensionCategoryApiResponse | [RestapiExtensionCategoryApiResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_extension_category_api_response.py) |
| restapi.extensionCategoryListApiResponse | [RestapiExtensionCategoryListApiResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_extension_category_list_api_response.py) |
| restapi.ModerationRuleActionsRequest | [RestapiModerationRuleActionsRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_moderation_rule_actions_request.py) |
| restapi.ModerationRuleActionsResponse | [RestapiModerationRuleActionsResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_moderation_rule_actions_response.py) |
| restapi.ModerationRuleActiveRequest | [RestapiModerationRuleActiveRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_moderation_rule_active_request.py) |
| restapi.ModerationRuleRequest | [RestapiModerationRuleRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_moderation_rule_request.py) |
| restapi.ModerationRuleResponse | [RestapiModerationRuleResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_moderation_rule_response.py) |
| restapi.ModerationRulesList | [RestapiModerationRulesList](../../accelbyte_py_sdk/api/reporting/models/restapi_moderation_rules_list.py) |
| restapi.pagination | [RestapiPagination](../../accelbyte_py_sdk/api/reporting/models/restapi_pagination.py) |
| restapi.publicReasonGroupResponse | [RestapiPublicReasonGroupResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_public_reason_group_response.py) |
| restapi.publicReasonListResponse | [RestapiPublicReasonListResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_public_reason_list_response.py) |
| restapi.publicReasonResponse | [RestapiPublicReasonResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_public_reason_response.py) |
| restapi.reasonGroupListResponse | [RestapiReasonGroupListResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_reason_group_list_response.py) |
| restapi.reasonGroupResponse | [RestapiReasonGroupResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_reason_group_response.py) |
| restapi.reportListResponse | [RestapiReportListResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_report_list_response.py) |
| restapi.reportResponse | [RestapiReportResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_report_response.py) |
| restapi.reportingLimit | [RestapiReportingLimit](../../accelbyte_py_sdk/api/reporting/models/restapi_reporting_limit.py) |
| restapi.submitReportRequest | [RestapiSubmitReportRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_submit_report_request.py) |
| restapi.submitReportResponse | [RestapiSubmitReportResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_submit_report_response.py) |
| restapi.ticketListResponse | [RestapiTicketListResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_ticket_list_response.py) |
| restapi.ticketResponse | [RestapiTicketResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_ticket_response.py) |
| restapi.ticketStatisticResponse | [RestapiTicketStatisticResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_ticket_statistic_response.py) |
| restapi.UnusedReasonListResponse | [RestapiUnusedReasonListResponse](../../accelbyte_py_sdk/api/reporting/models/restapi_unused_reason_list_response.py) |
| restapi.updateReasonGroupRequest | [RestapiUpdateReasonGroupRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_update_reason_group_request.py) |
| restapi.updateTicketResolutionsRequest | [RestapiUpdateTicketResolutionsRequest](../../accelbyte_py_sdk/api/reporting/models/restapi_update_ticket_resolutions_request.py) |
