[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Seasonpass Service Index (1.25.0)


## Operations

### Export
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /seasonpass/admin/namespace/{namespace}/export | GET | exportSeason | `false` | [ExportSeason](../../accelbyte_py_sdk/api/seasonpass/operations/export/export_season.py) | [export_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_export.py) | [accelbyte_py_sdk_cli seasonpass-export-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_export_season.py) |

### Pass
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes | POST | createPass | `false` | [CreatePass](../../accelbyte_py_sdk/api/seasonpass/operations/pass_/create_pass.py) | [create_pass](../../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) | [accelbyte_py_sdk_cli seasonpass-create-pass](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_create_pass.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} | DELETE | deletePass | `false` | [DeletePass](../../accelbyte_py_sdk/api/seasonpass/operations/pass_/delete_pass.py) | [delete_pass](../../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) | [accelbyte_py_sdk_cli seasonpass-delete-pass](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_delete_pass.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} | GET | getPass | `false` | [GetPass](../../accelbyte_py_sdk/api/seasonpass/operations/pass_/get_pass.py) | [get_pass](../../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) | [accelbyte_py_sdk_cli seasonpass-get-pass](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_pass.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes | POST | grantUserPass | `false` | [GrantUserPass](../../accelbyte_py_sdk/api/seasonpass/operations/pass_/grant_user_pass.py) | [grant_user_pass](../../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) | [accelbyte_py_sdk_cli seasonpass-grant-user-pass](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_grant_user_pass.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes | GET | queryPasses | `false` | [QueryPasses](../../accelbyte_py_sdk/api/seasonpass/operations/pass_/query_passes.py) | [query_passes](../../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) | [accelbyte_py_sdk_cli seasonpass-query-passes](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_query_passes.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/passes/{code} | PATCH | updatePass | `false` | [UpdatePass](../../accelbyte_py_sdk/api/seasonpass/operations/pass_/update_pass.py) | [update_pass](../../accelbyte_py_sdk/api/seasonpass/wrappers/_pass_.py) | [accelbyte_py_sdk_cli seasonpass-update-pass](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_update_pass.py) |

### Reward
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards | POST | createReward | `false` | [CreateReward](../../accelbyte_py_sdk/api/seasonpass/operations/reward/create_reward.py) | [create_reward](../../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) | [accelbyte_py_sdk_cli seasonpass-create-reward](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_create_reward.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code} | DELETE | deleteReward | `false` | [DeleteReward](../../accelbyte_py_sdk/api/seasonpass/operations/reward/delete_reward.py) | [delete_reward](../../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) | [accelbyte_py_sdk_cli seasonpass-delete-reward](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_delete_reward.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code} | GET | getReward | `false` | [GetReward](../../accelbyte_py_sdk/api/seasonpass/operations/reward/get_reward.py) | [get_reward](../../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) | [accelbyte_py_sdk_cli seasonpass-get-reward](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_reward.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards/bulk | POST | publicBulkClaimUserRewards | `false` | [PublicBulkClaimUserRewards](../../accelbyte_py_sdk/api/seasonpass/operations/reward/public_bulk_claim_user_rewards.py) | [public_bulk_claim_user_rewards](../../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) | [accelbyte_py_sdk_cli seasonpass-public-bulk-claim-user-rewards](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_public_bulk_claim_user_rewards.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/rewards | POST | publicClaimUserReward | `false` | [PublicClaimUserReward](../../accelbyte_py_sdk/api/seasonpass/operations/reward/public_claim_user_reward.py) | [public_claim_user_reward](../../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) | [accelbyte_py_sdk_cli seasonpass-public-claim-user-reward](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_public_claim_user_reward.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards | GET | queryRewards | `false` | [QueryRewards](../../accelbyte_py_sdk/api/seasonpass/operations/reward/query_rewards.py) | [query_rewards](../../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) | [accelbyte_py_sdk_cli seasonpass-query-rewards](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_query_rewards.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/rewards/{code} | PATCH | updateReward | `false` | [UpdateReward](../../accelbyte_py_sdk/api/seasonpass/operations/reward/update_reward.py) | [update_reward](../../accelbyte_py_sdk/api/seasonpass/wrappers/_reward.py) | [accelbyte_py_sdk_cli seasonpass-update-reward](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_update_reward.py) |

### Season
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/current/users/bulk/progression | POST | bulkGetUserSeasonProgression | `false` | [BulkGetUserSeasonProgression](../../accelbyte_py_sdk/api/seasonpass/operations/season/bulk_get_user_season_pr_a15d63.py) | [bulk_get_user_season_progression](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-bulk-get-user-season-progression](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_bulk_get_user_season_progression.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/purchasable | POST | checkSeasonPurchasable | `false` | [CheckSeasonPurchasable](../../accelbyte_py_sdk/api/seasonpass/operations/season/check_season_purchasable.py) | [check_season_purchasable](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-check-season-purchasable](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_check_season_purchasable.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/clone | POST | cloneSeason | `false` | [CloneSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/clone_season.py) | [clone_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-clone-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_clone_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons | POST | createSeason | `false` | [CreateSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/create_season.py) | [create_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-create-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_create_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} | DELETE | deleteSeason | `false` | [DeleteSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/delete_season.py) | [delete_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-delete-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_delete_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/passes/ownership/any | GET | existsAnyPassByPassCodes | `false` | [ExistsAnyPassByPassCodes](../../accelbyte_py_sdk/api/seasonpass/operations/season/exists_any_pass_by_pass_codes.py) | [exists_any_pass_by_pass_codes](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-exists-any-pass-by-pass-codes](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_exists_any_pass_by_pass_codes.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/current | GET | getCurrentSeason | `false` | [GetCurrentSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/get_current_season.py) | [get_current_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-get-current-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_current_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/progression | GET | getCurrentUserSeasonProgression | `false` | [GetCurrentUserSeasonProgression](../../accelbyte_py_sdk/api/seasonpass/operations/season/get_current_user_season_eed4c8.py) | [get_current_user_season_progression](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-get-current-user-season-progression](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_current_user_season_progression.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/full | GET | getFullSeason | `false` | [GetFullSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/get_full_season.py) | [get_full_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-get-full-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_full_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} | GET | getSeason | `false` | [GetSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/get_season.py) | [get_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-get-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_season.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons | GET | getUserParticipatedSeasons | `false` | [GetUserParticipatedSeasons](../../accelbyte_py_sdk/api/seasonpass/operations/season/get_user_participated_seasons.py) | [get_user_participated_seasons](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-get-user-participated-seasons](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_user_participated_seasons.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data | GET | getUserSeason | `false` | [GetUserSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/get_user_season.py) | [get_user_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-get-user-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_user_season.py) |
| /seasonpass/public/namespaces/{namespace}/seasons/current | GET | publicGetCurrentSeason | `false` | [PublicGetCurrentSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/public_get_current_season.py) | [public_get_current_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-public-get-current-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_public_get_current_season.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/current/data | GET | publicGetCurrentUserSeason | `false` | [PublicGetCurrentUserSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/public_get_current_user_season.py) | [public_get_current_user_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-public-get-current-user-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_public_get_current_user_season.py) |
| /seasonpass/public/namespaces/{namespace}/users/{userId}/seasons/{seasonId}/data | GET | publicGetUserSeason | `false` | [PublicGetUserSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/public_get_user_season.py) | [public_get_user_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-public-get-user-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_public_get_user_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/publish | PUT | publishSeason | `false` | [PublishSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/publish_season.py) | [publish_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-publish-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_publish_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons | GET | querySeasons | `false` | [QuerySeasons](../../accelbyte_py_sdk/api/seasonpass/operations/season/query_seasons.py) | [query_seasons](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-query-seasons](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_query_seasons.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history | GET | queryUserExpGrantHistory | `false` | [QueryUserExpGrantHistory](../../accelbyte_py_sdk/api/seasonpass/operations/season/query_user_exp_grant_history.py) | [query_user_exp_grant_history](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-query-user-exp-grant-history](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_query_user_exp_grant_history.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/exp/history/tags | GET | queryUserExpGrantHistoryTag | `false` | [QueryUserExpGrantHistoryTag](../../accelbyte_py_sdk/api/seasonpass/operations/season/query_user_exp_grant_hi_12346c.py) | [query_user_exp_grant_history_tag](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-query-user-exp-grant-history-tag](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_query_user_exp_grant_history_tag.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/reset | DELETE | resetUserSeason | `false` | [ResetUserSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/reset_user_season.py) | [reset_user_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-reset-user-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_reset_user_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/retire | PUT | retireSeason | `false` | [RetireSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/retire_season.py) | [retire_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-retire-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_retire_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/unpublish | PUT | unpublishSeason | `false` | [UnpublishSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/unpublish_season.py) | [unpublish_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-unpublish-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_unpublish_season.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} | PATCH | updateSeason | `false` | [UpdateSeason](../../accelbyte_py_sdk/api/seasonpass/operations/season/update_season.py) | [update_season](../../accelbyte_py_sdk/api/seasonpass/wrappers/_season.py) | [accelbyte_py_sdk_cli seasonpass-update-season](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_update_season.py) |

### Tier
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers | POST | createTier | `false` | [CreateTier](../../accelbyte_py_sdk/api/seasonpass/operations/tier/create_tier.py) | [create_tier](../../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) | [accelbyte_py_sdk_cli seasonpass-create-tier](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_create_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id} | DELETE | deleteTier | `false` | [DeleteTier](../../accelbyte_py_sdk/api/seasonpass/operations/tier/delete_tier.py) | [delete_tier](../../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) | [accelbyte_py_sdk_cli seasonpass-delete-tier](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_delete_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/exp | POST | grantUserExp | `false` | [GrantUserExp](../../accelbyte_py_sdk/api/seasonpass/operations/tier/grant_user_exp.py) | [grant_user_exp](../../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) | [accelbyte_py_sdk_cli seasonpass-grant-user-exp](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_grant_user_exp.py) |
| /seasonpass/admin/namespaces/{namespace}/users/{userId}/seasons/current/tiers | POST | grantUserTier | `false` | [GrantUserTier](../../accelbyte_py_sdk/api/seasonpass/operations/tier/grant_user_tier.py) | [grant_user_tier](../../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) | [accelbyte_py_sdk_cli seasonpass-grant-user-tier](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_grant_user_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers | GET | queryTiers | `false` | [QueryTiers](../../accelbyte_py_sdk/api/seasonpass/operations/tier/query_tiers.py) | [query_tiers](../../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) | [accelbyte_py_sdk_cli seasonpass-query-tiers](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_query_tiers.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id}/reorder | PUT | reorderTier | `false` | [ReorderTier](../../accelbyte_py_sdk/api/seasonpass/operations/tier/reorder_tier.py) | [reorder_tier](../../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) | [accelbyte_py_sdk_cli seasonpass-reorder-tier](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_reorder_tier.py) |
| /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}/tiers/{id} | PUT | updateTier | `false` | [UpdateTier](../../accelbyte_py_sdk/api/seasonpass/operations/tier/update_tier.py) | [update_tier](../../accelbyte_py_sdk/api/seasonpass/wrappers/_tier.py) | [accelbyte_py_sdk_cli seasonpass-update-tier](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_update_tier.py) |

### Utilities
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /seasonpass/admin/namespaces/{namespace}/seasons/item/references | GET | getItemReferences | `false` | [GetItemReferences](../../accelbyte_py_sdk/api/seasonpass/operations/utilities/get_item_references.py) | [get_item_references](../../accelbyte_py_sdk/api/seasonpass/wrappers/_utilities.py) | [accelbyte_py_sdk_cli seasonpass-get-item-references](../../samples/cli/accelbyte_py_sdk_cli/seasonpass/_get_item_references.py) |


## Models
| Model | Class |
|---|---|
| BulkUserProgressionRequest | [BulkUserProgressionRequest](../../accelbyte_py_sdk/api/seasonpass/models/bulk_user_progression_request.py) |
| ClaimableRewards | [ClaimableRewards](../../accelbyte_py_sdk/api/seasonpass/models/claimable_rewards.py) |
| ClaimableUserSeasonInfo | [ClaimableUserSeasonInfo](../../accelbyte_py_sdk/api/seasonpass/models/claimable_user_season_info.py) |
| ErrorEntity | [ErrorEntity](../../accelbyte_py_sdk/api/seasonpass/models/error_entity.py) |
| ExcessStrategy | [ExcessStrategy](../../accelbyte_py_sdk/api/seasonpass/models/excess_strategy.py) |
| ExpGrantHistoryInfo | [ExpGrantHistoryInfo](../../accelbyte_py_sdk/api/seasonpass/models/exp_grant_history_info.py) |
| ExpGrantHistoryPagingSlicedResult | [ExpGrantHistoryPagingSlicedResult](../../accelbyte_py_sdk/api/seasonpass/models/exp_grant_history_paging_sliced_result.py) |
| FieldValidationError | [FieldValidationError](../../accelbyte_py_sdk/api/seasonpass/models/field_validation_error.py) |
| FullSeasonInfo | [FullSeasonInfo](../../accelbyte_py_sdk/api/seasonpass/models/full_season_info.py) |
| Image | [Image](../../accelbyte_py_sdk/api/seasonpass/models/image.py) |
| ItemReference | [ItemReference](../../accelbyte_py_sdk/api/seasonpass/models/item_reference.py) |
| ItemReferenceInfo | [ItemReferenceInfo](../../accelbyte_py_sdk/api/seasonpass/models/item_reference_info.py) |
| ListSeasonInfo | [ListSeasonInfo](../../accelbyte_py_sdk/api/seasonpass/models/list_season_info.py) |
| ListSeasonInfoPagingSlicedResult | [ListSeasonInfoPagingSlicedResult](../../accelbyte_py_sdk/api/seasonpass/models/list_season_info_paging_sliced_result.py) |
| ListUserSeasonInfo | [ListUserSeasonInfo](../../accelbyte_py_sdk/api/seasonpass/models/list_user_season_info.py) |
| ListUserSeasonInfoPagingSlicedResult | [ListUserSeasonInfoPagingSlicedResult](../../accelbyte_py_sdk/api/seasonpass/models/list_user_season_info_paging_sliced_result.py) |
| Localization | [Localization](../../accelbyte_py_sdk/api/seasonpass/models/localization.py) |
| LocalizedPassInfo | [LocalizedPassInfo](../../accelbyte_py_sdk/api/seasonpass/models/localized_pass_info.py) |
| LocalizedSeasonInfo | [LocalizedSeasonInfo](../../accelbyte_py_sdk/api/seasonpass/models/localized_season_info.py) |
| Ownership | [Ownership](../../accelbyte_py_sdk/api/seasonpass/models/ownership.py) |
| Paging | [Paging](../../accelbyte_py_sdk/api/seasonpass/models/paging.py) |
| PassCreate | [PassCreate](../../accelbyte_py_sdk/api/seasonpass/models/pass_create.py) |
| PassInfo | [PassInfo](../../accelbyte_py_sdk/api/seasonpass/models/pass_info.py) |
| PassUpdate | [PassUpdate](../../accelbyte_py_sdk/api/seasonpass/models/pass_update.py) |
| Permission | [Permission](../../accelbyte_py_sdk/api/seasonpass/models/permission.py) |
| ReasonTagsResult | [ReasonTagsResult](../../accelbyte_py_sdk/api/seasonpass/models/reason_tags_result.py) |
| RewardCreate | [RewardCreate](../../accelbyte_py_sdk/api/seasonpass/models/reward_create.py) |
| RewardCurrency | [RewardCurrency](../../accelbyte_py_sdk/api/seasonpass/models/reward_currency.py) |
| RewardInfo | [RewardInfo](../../accelbyte_py_sdk/api/seasonpass/models/reward_info.py) |
| RewardUpdate | [RewardUpdate](../../accelbyte_py_sdk/api/seasonpass/models/reward_update.py) |
| SeasonCloneRequest | [SeasonCloneRequest](../../accelbyte_py_sdk/api/seasonpass/models/season_clone_request.py) |
| SeasonCreate | [SeasonCreate](../../accelbyte_py_sdk/api/seasonpass/models/season_create.py) |
| SeasonInfo | [SeasonInfo](../../accelbyte_py_sdk/api/seasonpass/models/season_info.py) |
| SeasonSummary | [SeasonSummary](../../accelbyte_py_sdk/api/seasonpass/models/season_summary.py) |
| SeasonUpdate | [SeasonUpdate](../../accelbyte_py_sdk/api/seasonpass/models/season_update.py) |
| Tier | [Tier](../../accelbyte_py_sdk/api/seasonpass/models/tier.py) |
| TierCreate | [TierCreate](../../accelbyte_py_sdk/api/seasonpass/models/tier_create.py) |
| TierInput | [TierInput](../../accelbyte_py_sdk/api/seasonpass/models/tier_input.py) |
| TierPagingSlicedResult | [TierPagingSlicedResult](../../accelbyte_py_sdk/api/seasonpass/models/tier_paging_sliced_result.py) |
| TierReorder | [TierReorder](../../accelbyte_py_sdk/api/seasonpass/models/tier_reorder.py) |
| UserExpGrant | [UserExpGrant](../../accelbyte_py_sdk/api/seasonpass/models/user_exp_grant.py) |
| UserPassGrant | [UserPassGrant](../../accelbyte_py_sdk/api/seasonpass/models/user_pass_grant.py) |
| UserPurchasable | [UserPurchasable](../../accelbyte_py_sdk/api/seasonpass/models/user_purchasable.py) |
| UserRewardClaim | [UserRewardClaim](../../accelbyte_py_sdk/api/seasonpass/models/user_reward_claim.py) |
| UserSeasonSummary | [UserSeasonSummary](../../accelbyte_py_sdk/api/seasonpass/models/user_season_summary.py) |
| UserTierGrant | [UserTierGrant](../../accelbyte_py_sdk/api/seasonpass/models/user_tier_grant.py) |
| ValidationErrorEntity | [ValidationErrorEntity](../../accelbyte_py_sdk/api/seasonpass/models/validation_error_entity.py) |
