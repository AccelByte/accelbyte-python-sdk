[//]: # (<< template file: justice_py_sdk_codegen/__main__.py)

# justice-seasonpass-service Index (1.8.0)


## Operations

### Pass
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes | POST | createPass | [CreatePass](../accelbyte_py_sdk/api/seasonpass/operations/pass_/create_pass.py) | [create_pass](../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} | DELETE | deletePass | [DeletePass](../accelbyte_py_sdk/api/seasonpass/operations/pass_/delete_pass.py) | [delete_pass](../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} | GET | getPass | [GetPass](../accelbyte_py_sdk/api/seasonpass/operations/pass_/get_pass.py) | [get_pass](../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes | POST | grantUserPass | [GrantUserPass](../accelbyte_py_sdk/api/seasonpass/operations/pass_/grant_user_pass.py) | [grant_user_pass](../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes | GET | queryPasses | [QueryPasses](../accelbyte_py_sdk/api/seasonpass/operations/pass_/query_passes.py) | [query_passes](../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} | PATCH | updatePass | [UpdatePass](../accelbyte_py_sdk/api/seasonpass/operations/pass_/update_pass.py) | [update_pass](../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) |

### Reward
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards | POST | createReward | [CreateReward](../accelbyte_py_sdk/api/seasonpass/operations/reward/create_reward.py) | [create_reward](../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code} | DELETE | deleteReward | [DeleteReward](../accelbyte_py_sdk/api/seasonpass/operations/reward/delete_reward.py) | [delete_reward](../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code} | GET | getReward | [GetReward](../accelbyte_py_sdk/api/seasonpass/operations/reward/get_reward.py) | [get_reward](../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk | POST | publicBulkClaimUserRewards | [PublicBulkClaimUserRewards](../accelbyte_py_sdk/api/seasonpass/operations/reward/public_bulk_claim_user_rewards.py) | [public_bulk_claim_user_rewards](../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards | POST | publicClaimUserReward | [PublicClaimUserReward](../accelbyte_py_sdk/api/seasonpass/operations/reward/public_claim_user_reward.py) | [public_claim_user_reward](../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards | GET | queryRewards | [QueryRewards](../accelbyte_py_sdk/api/seasonpass/operations/reward/query_rewards.py) | [query_rewards](../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code} | PATCH | updateReward | [UpdateReward](../accelbyte_py_sdk/api/seasonpass/operations/reward/update_reward.py) | [update_reward](../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) |

### Season
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable | POST | checkSeasonPurchasable | [CheckSeasonPurchasable](../accelbyte_py_sdk/api/seasonpass/operations/season/check_season_purchasable.py) | [check_season_purchasable](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone | POST | cloneSeason | [CloneSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/clone_season.py) | [clone_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons | POST | createSeason | [CreateSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/create_season.py) | [create_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} | DELETE | deleteSeason | [DeleteSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/delete_season.py) | [delete_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any | GET | existsAnyPassByPassCodes | [ExistsAnyPassByPassCodes](../accelbyte_py_sdk/api/seasonpass/operations/season/exists_any_pass_by_pass_codes.py) | [exists_any_pass_by_pass_codes](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/current | GET | getCurrentSeason | [GetCurrentSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/get_current_season.py) | [get_current_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression | GET | getCurrentUserSeasonProgression | [GetCurrentUserSeasonProgression](../accelbyte_py_sdk/api/seasonpass/operations/season/get_current_user_season_eed4c8.py) | [get_current_user_season_progression](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} | GET | getSeason | [GetSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/get_season.py) | [get_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons | GET | getUserParticipatedSeasons | [GetUserParticipatedSeasons](../accelbyte_py_sdk/api/seasonpass/operations/season/get_user_participated_seasons.py) | [get_user_participated_seasons](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data | GET | getUserSeason | [GetUserSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/get_user_season.py) | [get_user_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/public/namespaces/{namespace}/seasons/current | GET | publicGetCurrentSeason | [PublicGetCurrentSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/public_get_current_season.py) | [public_get_current_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data | GET | publicGetCurrentUserSeason | [PublicGetCurrentUserSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/public_get_current_user_season.py) | [public_get_current_user_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data | GET | publicGetUserSeason | [PublicGetUserSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/public_get_user_season.py) | [public_get_user_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish | PUT | publishSeason | [PublishSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/publish_season.py) | [publish_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons | GET | querySeasons | [QuerySeasons](../accelbyte_py_sdk/api/seasonpass/operations/season/query_seasons.py) | [query_seasons](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset | DELETE | resetUserSeason | [ResetUserSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/reset_user_season.py) | [reset_user_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire | PUT | retireSeason | [RetireSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/retire_season.py) | [retire_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish | PUT | unpublishSeason | [UnpublishSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/unpublish_season.py) | [unpublish_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} | PATCH | updateSeason | [UpdateSeason](../accelbyte_py_sdk/api/seasonpass/operations/season/update_season.py) | [update_season](../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) |

### Tier
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers | POST | createTier | [CreateTier](../accelbyte_py_sdk/api/seasonpass/operations/tier/create_tier.py) | [create_tier](../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id} | DELETE | deleteTier | [DeleteTier](../accelbyte_py_sdk/api/seasonpass/operations/tier/delete_tier.py) | [delete_tier](../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp | POST | grantUserExp | [GrantUserExp](../accelbyte_py_sdk/api/seasonpass/operations/tier/grant_user_exp.py) | [grant_user_exp](../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers | POST | grantUserTier | [GrantUserTier](../accelbyte_py_sdk/api/seasonpass/operations/tier/grant_user_tier.py) | [grant_user_tier](../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers | GET | queryTiers | [QueryTiers](../accelbyte_py_sdk/api/seasonpass/operations/tier/query_tiers.py) | [query_tiers](../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder | PUT | reorderTier | [ReorderTier](../accelbyte_py_sdk/api/seasonpass/operations/tier/reorder_tier.py) | [reorder_tier](../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id} | PUT | updateTier | [UpdateTier](../accelbyte_py_sdk/api/seasonpass/operations/tier/update_tier.py) | [update_tier](../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) |


## Models
| Model | Class |
|---|---|
| ClaimableRewards | [ClaimableRewards](../accelbyte_py_sdk/api/seasonpass/models/claimable_rewards.py) |
| ClaimableUserSeasonInfo | [ClaimableUserSeasonInfo](../accelbyte_py_sdk/api/seasonpass/models/claimable_user_season_info.py) |
| ErrorEntity | [ErrorEntity](../accelbyte_py_sdk/api/seasonpass/models/error_entity.py) |
| ExcessStrategy | [ExcessStrategy](../accelbyte_py_sdk/api/seasonpass/models/excess_strategy.py) |
| FieldValidationError | [FieldValidationError](../accelbyte_py_sdk/api/seasonpass/models/field_validation_error.py) |
| Image | [Image](../accelbyte_py_sdk/api/seasonpass/models/image.py) |
| ListSeasonInfo | [ListSeasonInfo](../accelbyte_py_sdk/api/seasonpass/models/list_season_info.py) |
| ListSeasonInfoPagingSlicedResult | [ListSeasonInfoPagingSlicedResult](../accelbyte_py_sdk/api/seasonpass/models/list_season_info_paging_sliced_result.py) |
| ListUserSeasonInfo | [ListUserSeasonInfo](../accelbyte_py_sdk/api/seasonpass/models/list_user_season_info.py) |
| ListUserSeasonInfoPagingSlicedResult | [ListUserSeasonInfoPagingSlicedResult](../accelbyte_py_sdk/api/seasonpass/models/list_user_season_info_paging_sliced_result.py) |
| Localization | [Localization](../accelbyte_py_sdk/api/seasonpass/models/localization.py) |
| LocalizedPassInfo | [LocalizedPassInfo](../accelbyte_py_sdk/api/seasonpass/models/localized_pass_info.py) |
| LocalizedSeasonInfo | [LocalizedSeasonInfo](../accelbyte_py_sdk/api/seasonpass/models/localized_season_info.py) |
| Ownership | [Ownership](../accelbyte_py_sdk/api/seasonpass/models/ownership.py) |
| Paging | [Paging](../accelbyte_py_sdk/api/seasonpass/models/paging.py) |
| PassCreate | [PassCreate](../accelbyte_py_sdk/api/seasonpass/models/pass_create.py) |
| PassInfo | [PassInfo](../accelbyte_py_sdk/api/seasonpass/models/pass_info.py) |
| PassUpdate | [PassUpdate](../accelbyte_py_sdk/api/seasonpass/models/pass_update.py) |
| RewardCreate | [RewardCreate](../accelbyte_py_sdk/api/seasonpass/models/reward_create.py) |
| RewardCurrency | [RewardCurrency](../accelbyte_py_sdk/api/seasonpass/models/reward_currency.py) |
| RewardInfo | [RewardInfo](../accelbyte_py_sdk/api/seasonpass/models/reward_info.py) |
| RewardUpdate | [RewardUpdate](../accelbyte_py_sdk/api/seasonpass/models/reward_update.py) |
| SeasonCloneRequest | [SeasonCloneRequest](../accelbyte_py_sdk/api/seasonpass/models/season_clone_request.py) |
| SeasonCreate | [SeasonCreate](../accelbyte_py_sdk/api/seasonpass/models/season_create.py) |
| SeasonInfo | [SeasonInfo](../accelbyte_py_sdk/api/seasonpass/models/season_info.py) |
| SeasonSummary | [SeasonSummary](../accelbyte_py_sdk/api/seasonpass/models/season_summary.py) |
| SeasonUpdate | [SeasonUpdate](../accelbyte_py_sdk/api/seasonpass/models/season_update.py) |
| Tier | [Tier](../accelbyte_py_sdk/api/seasonpass/models/tier.py) |
| TierCreate | [TierCreate](../accelbyte_py_sdk/api/seasonpass/models/tier_create.py) |
| TierInput | [TierInput](../accelbyte_py_sdk/api/seasonpass/models/tier_input.py) |
| TierPagingSlicedResult | [TierPagingSlicedResult](../accelbyte_py_sdk/api/seasonpass/models/tier_paging_sliced_result.py) |
| TierReorder | [TierReorder](../accelbyte_py_sdk/api/seasonpass/models/tier_reorder.py) |
| UserExpGrant | [UserExpGrant](../accelbyte_py_sdk/api/seasonpass/models/user_exp_grant.py) |
| UserPassGrant | [UserPassGrant](../accelbyte_py_sdk/api/seasonpass/models/user_pass_grant.py) |
| UserPurchasable | [UserPurchasable](../accelbyte_py_sdk/api/seasonpass/models/user_purchasable.py) |
| UserRewardClaim | [UserRewardClaim](../accelbyte_py_sdk/api/seasonpass/models/user_reward_claim.py) |
| UserSeasonSummary | [UserSeasonSummary](../accelbyte_py_sdk/api/seasonpass/models/user_season_summary.py) |
| UserTierGrant | [UserTierGrant](../accelbyte_py_sdk/api/seasonpass/models/user_tier_grant.py) |
| ValidationErrorEntity | [ValidationErrorEntity](../accelbyte_py_sdk/api/seasonpass/models/validation_error_entity.py) |
