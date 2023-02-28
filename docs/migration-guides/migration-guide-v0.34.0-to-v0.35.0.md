# [v0.35.0]

## BREAKING CHANGE

Following changes in AccelByte Gaming Services OpenAPI specification:
- Operation `achievement.public_list_global_achievements` parameter `achievement_code` is replaced with `achievement_codes`
  The new parameter(s) above are compatible with the parameter it is replacing. If you are affected, a simple rename should be sufficient; i.e. rename `achievement_code` with `achievement_codes`.
- Model `group.models.ModelsPublicGetGroupListRequestV2` is replaced with `group.models.ModelsGetGroupListRequestV2`
  The new model(s) above are compatible with the models it is replacing. If you are affected, a simple rename should be sufficient; i.e. rename `ModelsPublicGetGroupListRequestV2` with `ModelsGetGroupListRequestV2`.
- Model `platform.models.AvailablePredicateObject` is replaced with `platform.models.AvailablePredicate`
  The new model(s) above are compatible with the models it is replacing. If you are affected, a simple rename should be sufficient; i.e. rename `AvailablePredicateObject` with `AvailablePredicate`.
- Model `platform.models.ADTOObjectForUnlockSteamAchievementAPI` is replaced with `platform.models.SteamAchievementUpdateRequest`
  The new model(s) above are compatible with the models it is replacing. If you are affected, a simple rename should be sufficient; i.e. rename `ADTOObjectForUnlockSteamAchievementAPI` with `SteamAchievementUpdateRequest`.
- Model `platform.models.ADTOObjectForUpdateXboxAchievementCompletePercentageAPI` is replaced with `platform.models.XblAchievementUpdateRequest`
  The new model(s) above are compatible with the models it is replacing. If you are affected, a simple rename should be sufficient; i.e. rename `ADTOObjectForUpdateXboxAchievementCompletePercentageAPI` with `XblAchievementUpdateRequest`.
- Model `platform.models.ADTOObjectForQueryingXboxUserAchievements` is replaced with `platform.models.XblUserAchievements`
  The new model(s) above are compatible with the models it is replacing. If you are affected, a simple rename should be sufficient; i.e. rename `ADTOObjectForQueryingXboxUserAchievements` with `XblUserAchievements`.
- Model `social.models.BulkStatItemOperationResult` is replaced with `social.models.BulkStatOperationResult`
  The new model(s) above are compatible with the models it is replacing. If you are affected, a simple rename should be sufficient; i.e. rename `BulkStatItemOperationResult` with `BulkStatOperationResult`.

[v0.35.0]: https://github.com/AccelByte/accelbyte-python-sdk/compare/v0.34.0..v0.35.0
