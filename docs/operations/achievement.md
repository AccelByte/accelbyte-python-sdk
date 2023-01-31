[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: accelbyte_cloud_py_codegen)

# AccelByte Cloud Achievement Service Index (2.13.1)


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
| models.Icon | [ModelsIcon](../../accelbyte_py_sdk/api/achievement/models/models_icon.py) |
| models.PaginatedAchievementResponse | [ModelsPaginatedAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_achievement_response.py) |
| models.PaginatedTagResponse | [ModelsPaginatedTagResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_tag_response.py) |
| models.PaginatedUserAchievementResponse | [ModelsPaginatedUserAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_paginated_user_achievement_response.py) |
| models.Pagination | [ModelsPagination](../../accelbyte_py_sdk/api/achievement/models/models_pagination.py) |
| models.PublicAchievementResponse | [ModelsPublicAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_public_achievement_response.py) |
| models.PublicAchievementsResponse | [ModelsPublicAchievementsResponse](../../accelbyte_py_sdk/api/achievement/models/models_public_achievements_response.py) |
| models.TagResponse | [ModelsTagResponse](../../accelbyte_py_sdk/api/achievement/models/models_tag_response.py) |
| models.UserAchievementResponse | [ModelsUserAchievementResponse](../../accelbyte_py_sdk/api/achievement/models/models_user_achievement_response.py) |
| response.Error | [ResponseError](../../accelbyte_py_sdk/api/achievement/models/response_error.py) |
| service.ImportConfigResponse | [ServiceImportConfigResponse](../../accelbyte_py_sdk/api/achievement/models/service_import_config_response.py) |
