[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Achievement Service Index (2.22.3)


## Operations

### Achievements
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /achievement/v1/admin/namespaces/{namespace}/achievements | POST | AdminCreateNewAchievement | `false` | [AdminCreateNewAchievement](../../accelbyte_py_sdk/api/achievement/operations/achievements/admin_create_new_achievement.py) | [admin_create_new_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-create-new-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_create_new_achievement.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | DELETE | AdminDeleteAchievement | `false` | [AdminDeleteAchievement](../../accelbyte_py_sdk/api/achievement/operations/achievements/admin_delete_achievement.py) | [admin_delete_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-delete-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_delete_achievement.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | GET | AdminGetAchievement | `false` | [AdminGetAchievement](../../accelbyte_py_sdk/api/achievement/operations/achievements/admin_get_achievement.py) | [admin_get_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-get-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_get_achievement.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements | GET | AdminListAchievements | `false` | [AdminListAchievements](../../accelbyte_py_sdk/api/achievement/operations/achievements/admin_list_achievements.py) | [admin_list_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-list-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_list_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | PUT | AdminUpdateAchievement | `false` | [AdminUpdateAchievement](../../accelbyte_py_sdk/api/achievement/operations/achievements/admin_update_achievement.py) | [admin_update_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-update-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_update_achievement.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | PATCH | AdminUpdateAchievementListOrder | `false` | [AdminUpdateAchievementListOrder](../../accelbyte_py_sdk/api/achievement/operations/achievements/admin_update_achievemen_d288a7.py) | [admin_update_achievement_list_order](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-update-achievement-list-order](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_update_achievement_list_order.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/export | GET | ExportAchievements | `false` | [ExportAchievements](../../accelbyte_py_sdk/api/achievement/operations/achievements/export_achievements.py) | [export_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-export-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_export_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/import | POST | ImportAchievements | `false` | [ImportAchievements](../../accelbyte_py_sdk/api/achievement/operations/achievements/import_achievements.py) | [import_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-import-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_import_achievements.py) |
| /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode} | GET | PublicGetAchievement | `false` | [PublicGetAchievement](../../accelbyte_py_sdk/api/achievement/operations/achievements/public_get_achievement.py) | [public_get_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-public-get-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_public_get_achievement.py) |
| /achievement/v1/public/namespaces/{namespace}/achievements | GET | PublicListAchievements | `false` | [PublicListAchievements](../../accelbyte_py_sdk/api/achievement/operations/achievements/public_list_achievements.py) | [public_list_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) | [accelbyte_py_sdk_cli achievement-public-list-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_public_list_achievements.py) |

### Anonymization
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /achievement/v1/admin/namespaces/{namespace}/users/{userId}/anonymization/achievements | DELETE | AdminAnonymizeUserAchievement | `false` | [AdminAnonymizeUserAchievement](../../accelbyte_py_sdk/api/achievement/operations/anonymization/admin_anonymize_user_ac_c61ab2.py) | [admin_anonymize_user_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_anonymization.py) | [accelbyte_py_sdk_cli achievement-admin-anonymize-user-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_anonymize_user_achievement.py) |

### Global Achievements
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/contributors | GET | AdminListGlobalAchievementContributors | `false` | [AdminListGlobalAchievementContributors](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/admin_list_global_achie_0b49fb.py) | [admin_list_global_achievement_contributors](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-list-global-achievement-contributors](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_list_global_achievement_contributors.py) |
| /achievement/v1/admin/namespaces/{namespace}/global/achievements | GET | AdminListGlobalAchievements | `false` | [AdminListGlobalAchievements](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/admin_list_global_achievements.py) | [admin_list_global_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-list-global-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_list_global_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/users/{userId}/global/achievements | GET | AdminListUserContributions | `false` | [AdminListUserContributions](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/admin_list_user_contributions.py) | [admin_list_user_contributions](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-list-user-contributions](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_list_user_contributions.py) |
| /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements/{achievementCode}/claim | POST | ClaimGlobalAchievementReward | `false` | [ClaimGlobalAchievementReward](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/claim_global_achievemen_1ea8df.py) | [claim_global_achievement_reward](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-claim-global-achievement-reward](../../samples/cli/accelbyte_py_sdk_cli/achievement/_claim_global_achievement_reward.py) |
| /achievement/v1/public/namespaces/{namespace}/global/achievements/{achievementCode}/contributors | GET | ListGlobalAchievementContributors | `false` | [ListGlobalAchievementContributors](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/list_global_achievement_b19e66.py) | [list_global_achievement_contributors](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-list-global-achievement-contributors](../../samples/cli/accelbyte_py_sdk_cli/achievement/_list_global_achievement_contributors.py) |
| /achievement/v1/public/namespaces/{namespace}/users/{userId}/global/achievements | GET | ListUserContributions | `false` | [ListUserContributions](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/list_user_contributions.py) | [list_user_contributions](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-list-user-contributions](../../samples/cli/accelbyte_py_sdk_cli/achievement/_list_user_contributions.py) |
| /achievement/v1/public/namespaces/{namespace}/global/achievements | GET | PublicListGlobalAchievements | `false` | [PublicListGlobalAchievements](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/public_list_global_achi_9c838b.py) | [public_list_global_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-public-list-global-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_public_list_global_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/global/achievements/{achievementCode}/reset | DELETE | ResetGlobalAchievement | `false` | [ResetGlobalAchievement](../../accelbyte_py_sdk/api/achievement/operations/global_achievements/reset_global_achievement.py) | [reset_global_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_global_achievements.py) | [accelbyte_py_sdk_cli achievement-reset-global-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_reset_global_achievement.py) |

### Platform Achievement
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /achievement/v1/admin/namespaces/{namespace}/platforms/psn/bulk | POST | BulkCreatePSNEvent | `false` | [BulkCreatePSNEvent](../../accelbyte_py_sdk/api/achievement/operations/platform_achievement/bulk_create_psn_event.py) | [bulk_create_psn_event](../../accelbyte_py_sdk/api/achievement/wrappers/_platform_achievement.py) | [accelbyte_py_sdk_cli achievement-bulk-create-psn-event](../../samples/cli/accelbyte_py_sdk_cli/achievement/_bulk_create_psn_event.py) |

### Tags
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /achievement/v1/admin/namespaces/{namespace}/tags | GET | AdminListTags | `false` | [AdminListTags](../../accelbyte_py_sdk/api/achievement/operations/tags/admin_list_tags.py) | [admin_list_tags](../../accelbyte_py_sdk/api/achievement/wrappers/_tags.py) | [accelbyte_py_sdk_cli achievement-admin-list-tags](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_list_tags.py) |
| /achievement/v1/public/namespaces/{namespace}/tags | GET | PublicListTags | `false` | [PublicListTags](../../accelbyte_py_sdk/api/achievement/operations/tags/public_list_tags.py) | [public_list_tags](../../accelbyte_py_sdk/api/achievement/wrappers/_tags.py) | [accelbyte_py_sdk_cli achievement-public-list-tags](../../samples/cli/accelbyte_py_sdk_cli/achievement/_public_list_tags.py) |

### User Achievements
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements | GET | AdminListUserAchievements | `false` | [AdminListUserAchievements](../../accelbyte_py_sdk/api/achievement/operations/user_achievements/admin_list_user_achievements.py) | [admin_list_user_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_user_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-list-user-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_list_user_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/reset | DELETE | AdminResetAchievement | `false` | [AdminResetAchievement](../../accelbyte_py_sdk/api/achievement/operations/user_achievements/admin_reset_achievement.py) | [admin_reset_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_user_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-reset-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_reset_achievement.py) |
| /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock | PUT | AdminUnlockAchievement | `false` | [AdminUnlockAchievement](../../accelbyte_py_sdk/api/achievement/operations/user_achievements/admin_unlock_achievement.py) | [admin_unlock_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_user_achievements.py) | [accelbyte_py_sdk_cli achievement-admin-unlock-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_admin_unlock_achievement.py) |
| /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements | GET | PublicListUserAchievements | `false` | [PublicListUserAchievements](../../accelbyte_py_sdk/api/achievement/operations/user_achievements/public_list_user_achievements.py) | [public_list_user_achievements](../../accelbyte_py_sdk/api/achievement/wrappers/_user_achievements.py) | [accelbyte_py_sdk_cli achievement-public-list-user-achievements](../../samples/cli/accelbyte_py_sdk_cli/achievement/_public_list_user_achievements.py) |
| /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock | PUT | PublicUnlockAchievement | `false` | [PublicUnlockAchievement](../../accelbyte_py_sdk/api/achievement/operations/user_achievements/public_unlock_achievement.py) | [public_unlock_achievement](../../accelbyte_py_sdk/api/achievement/wrappers/_user_achievements.py) | [accelbyte_py_sdk_cli achievement-public-unlock-achievement](../../samples/cli/accelbyte_py_sdk_cli/achievement/_public_unlock_achievement.py) |


## Models
| Model | Class |
|---|---|
| models.AchievementOrderUpdateRequest | [ModelsAchievementOrderUpdateRequest](../../accelbyte_py_sdk/api/achievement/models/models_achievement_order_update_request.py) |
| models.AchievementRequest | [ModelsAchievementRequest](../../accelbyte_py_sdk/api/achievement/models/models_achievement_request.py) |
| models.AchievementResponse | [ModelsAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_achievement_response.py) |
| models.AchievementUpdateRequest | [ModelsAchievementUpdateRequest](../../accelbyte_py_sdk/api/achievement/models/models_achievement_update_request.py) |
| models.AdditionalInfo | [ModelsAdditionalInfo](../../accelbyte_py_sdk/api/achievement/models/models_additional_info.py) |
| models.BulkCreatePSNEventResponse | [ModelsBulkCreatePSNEventResponse](../../accelbyte_py_sdk/api/achievement/models/models_bulk_create_psn_event_response.py) |
| models.BulkCreatePSNEvents | [ModelsBulkCreatePSNEvents](../../accelbyte_py_sdk/api/achievement/models/models_bulk_create_psn_events.py) |
| models.ContributorResponse | [ModelsContributorResponse](../../accelbyte_py_sdk/api/achievement/models/models_contributor_response.py) |
| models.CreatePSNEvent | [ModelsCreatePSNEvent](../../accelbyte_py_sdk/api/achievement/models/models_create_psn_event.py) |
| models.ErrorDetails | [ModelsErrorDetails](../../accelbyte_py_sdk/api/achievement/models/models_error_details.py) |
| models.GlobalAchievementResponse | [ModelsGlobalAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_global_achievement_response.py) |
| models.Icon | [ModelsIcon](../../accelbyte_py_sdk/api/achievement/models/models_icon.py) |
| models.PaginatedAchievementResponse | [ModelsPaginatedAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_achievement_response.py) |
| models.PaginatedContributorResponse | [ModelsPaginatedContributorResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_contributor_response.py) |
| models.PaginatedGlobalAchievementResponse | [ModelsPaginatedGlobalAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_global_achievement_response.py) |
| models.PaginatedTagResponse | [ModelsPaginatedTagResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_tag_response.py) |
| models.PaginatedUserAchievementResponse | [ModelsPaginatedUserAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_user_achievement_response.py) |
| models.PaginatedUserContributionResponse | [ModelsPaginatedUserContributionResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_user_contribution_response.py) |
| models.Pagination | [ModelsPagination](../../accelbyte_py_sdk/api/achievement/models/models_pagination.py) |
| models.PSNEvent | [ModelsPSNEvent](../../accelbyte_py_sdk/api/achievement/models/models_psn_event.py) |
| models.PSNEventData | [ModelsPSNEventData](../../accelbyte_py_sdk/api/achievement/models/models_psn_event_data.py) |
| models.PSNEventResult | [ModelsPSNEventResult](../../accelbyte_py_sdk/api/achievement/models/models_psn_event_result.py) |
| models.PublicAchievementResponse | [ModelsPublicAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_public_achievement_response.py) |
| models.PublicAchievementsResponse | [ModelsPublicAchievementsResponse](../../accelbyte_py_sdk/api/achievement/models/models_public_achievements_response.py) |
| models.TagResponse | [ModelsTagResponse](../../accelbyte_py_sdk/api/achievement/models/models_tag_response.py) |
| models.UserAchievementResponse | [ModelsUserAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_user_achievement_response.py) |
| models.UserContributionResponse | [ModelsUserContributionResponse](../../accelbyte_py_sdk/api/achievement/models/models_user_contribution_response.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/achievement/models/response_error.py) |
| service.ImportConfigResponse | [ServiceImportConfigResponse](../../accelbyte_py_sdk/api/achievement/models/service_import_config_response.py) |
