[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-achievement-service Index


## Operations

### achievements
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /achievement/v1/admin/namespaces/{namespace}/achievements | POST | AdminCreateNewAchievement | [AdminCreateNewAchievement](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_create_new_achievement.py) | [admin_create_new_achievement](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | DELETE | AdminDeleteAchievement | [AdminDeleteAchievement](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_delete_achievement.py) | [admin_delete_achievement](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | GET | AdminGetAchievement | [AdminGetAchievement](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_get_achievement.py) | [admin_get_achievement](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements | GET | AdminListAchievements | [AdminListAchievements](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_list_achievements.py) | [admin_list_achievements](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements | GET | AdminListUserAchievements | [AdminListUserAchievements](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_list_user_achievements.py) | [admin_list_user_achievements](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock | PUT | AdminUnlockAchievement | [AdminUnlockAchievement](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_unlock_achievement.py) | [admin_unlock_achievement](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | PUT | AdminUpdateAchievement | [AdminUpdateAchievement](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_update_achievement.py) | [admin_update_achievement](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/{achievementCode} | PATCH | AdminUpdateAchievementListOrder | [AdminUpdateAchievementListOrder](../accelbyte_py_sdk/api/achievement/operations/achievements/admin_update_achievemen_d288a7.py) | [admin_update_achievement_list_order](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/export | GET | ExportAchievements | [ExportAchievements](../accelbyte_py_sdk/api/achievement/operations/achievements/export_achievements.py) | [export_achievements](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/admin/namespaces/{namespace}/achievements/import | POST | ImportAchievements | [ImportAchievements](../accelbyte_py_sdk/api/achievement/operations/achievements/import_achievements.py) | [import_achievements](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/public/namespaces/{namespace}/achievements/{achievementCode} | GET | PublicGetAchievement | [PublicGetAchievement](../accelbyte_py_sdk/api/achievement/operations/achievements/public_get_achievement.py) | [public_get_achievement](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/public/namespaces/{namespace}/achievements | GET | PublicListAchievements | [PublicListAchievements](../accelbyte_py_sdk/api/achievement/operations/achievements/public_list_achievements.py) | [public_list_achievements](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements | GET | PublicListUserAchievements | [PublicListUserAchievements](../accelbyte_py_sdk/api/achievement/operations/achievements/public_list_user_achievements.py) | [public_list_user_achievements](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |
| /achievement/v1/public/namespaces/{namespace}/users/{userId}/achievements/{achievementCode}/unlock | PUT | PublicUnlockAchievement | [PublicUnlockAchievement](../accelbyte_py_sdk/api/achievement/operations/achievements/public_unlock_achievement.py) | [public_unlock_achievement](../accelbyte_py_sdk/api/achievement/wrappers/_achievements.py) |


## Models
| Model | Class |
|---|---|
| models.Achievement | [ModelsAchievement](../accelbyte_py_sdk/api/achievement/models/models_achievement.py) |
| models.AchievementOrderUpdateRequest | [ModelsAchievementOrderUpdateRequest](../accelbyte_py_sdk/api/achievement/models/models_achievement_order_update_request.py) |
| models.AchievementRequest | [ModelsAchievementRequest](../accelbyte_py_sdk/api/achievement/models/models_achievement_request.py) |
| models.AchievementResponse | [ModelsAchievementResponse](../accelbyte_py_sdk/api/achievement/models/models_achievement_response.py) |
| models.AchievementUpdateRequest | [ModelsAchievementUpdateRequest](../accelbyte_py_sdk/api/achievement/models/models_achievement_update_request.py) |
| models.AdditionalInfo | [ModelsAdditionalInfo](../accelbyte_py_sdk/api/achievement/models/models_additional_info.py) |
| models.Icon | [ModelsIcon](../accelbyte_py_sdk/api/achievement/models/models_icon.py) |
| models.PaginatedAchievementResponse | [ModelsPaginatedAchievementResponse](../accelbyte_py_sdk/api/achievement/models/models_paginated_achievement_response.py) |
| models.PaginatedUserAchievementResponse | [ModelsPaginatedUserAchievementResponse](../accelbyte_py_sdk/api/achievement/models/models_paginated_user_achievement_response.py) |
| models.Pagination | [ModelsPagination](../accelbyte_py_sdk/api/achievement/models/models_pagination.py) |
| models.PublicAchievementResponse | [ModelsPublicAchievementResponse](../accelbyte_py_sdk/api/achievement/models/models_public_achievement_response.py) |
| models.PublicAchievementsResponse | [ModelsPublicAchievementsResponse](../accelbyte_py_sdk/api/achievement/models/models_public_achievements_response.py) |
| models.UserAchievementResponse | [ModelsUserAchievementResponse](../accelbyte_py_sdk/api/achievement/models/models_user_achievement_response.py) |
| response.Error | [ResponseError](../accelbyte_py_sdk/api/achievement/models/response_error.py) |
| service.ImportConfigResponse | [ServiceImportConfigResponse](../accelbyte_py_sdk/api/achievement/models/service_import_config_response.py) |
