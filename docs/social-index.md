# justice-social-service Index (1.18.1)


## Operations

### GameProfile
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /social/admin/namespaces/{namespace}/users/{userId}/profiles/{profileId} | GET | getProfile | [GetProfile](../accelbyte_py_sdk/api/social/operations/game_profile/get_profile.py) | [get_profile](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/admin/namespaces/{namespace}/users/{userId}/profiles | GET | getUserProfiles | [GetUserProfiles](../accelbyte_py_sdk/api/social/operations/game_profile/get_user_profiles.py) | [get_user_profiles](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/users/{userId}/profiles | POST | publicCreateProfile | [PublicCreateProfile](../accelbyte_py_sdk/api/social/operations/game_profile/public_create_profile.py) | [public_create_profile](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId} | DELETE | publicDeleteProfile | [PublicDeleteProfile](../accelbyte_py_sdk/api/social/operations/game_profile/public_delete_profile.py) | [public_delete_profile](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId} | GET | publicGetProfile | [PublicGetProfile](../accelbyte_py_sdk/api/social/operations/game_profile/public_get_profile.py) | [public_get_profile](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName} | GET | publicGetProfileAttribute | [PublicGetProfileAttribute](../accelbyte_py_sdk/api/social/operations/game_profile/public_get_profile_attribute.py) | [public_get_profile_attribute](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/profiles | GET | publicGetUserGameProfiles | [PublicGetUserGameProfiles](../accelbyte_py_sdk/api/social/operations/game_profile/public_get_user_game_profiles.py) | [public_get_user_game_profiles](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/users/{userId}/profiles | GET | publicGetUserProfiles | [PublicGetUserProfiles](../accelbyte_py_sdk/api/social/operations/game_profile/public_get_user_profiles.py) | [public_get_user_profiles](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId}/attributes/{attributeName} | PUT | publicUpdateAttribute | [PublicUpdateAttribute](../accelbyte_py_sdk/api/social/operations/game_profile/public_update_attribute.py) | [public_update_attribute](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |
| /social/public/namespaces/{namespace}/users/{userId}/profiles/{profileId} | PUT | publicUpdateProfile | [PublicUpdateProfile](../accelbyte_py_sdk/api/social/operations/game_profile/public_update_profile.py) | [public_update_profile](../accelbyte_py_sdk/api/social/wrappers/_game_profile.py) |

### GlobalStatistic
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /social/v1/admin/namespaces/{namespace}/globalstatitems | GET | getGlobalStatItems | [GetGlobalStatItems](../accelbyte_py_sdk/api/social/operations/global_statistic/get_global_stat_items.py) | [get_global_stat_items](../accelbyte_py_sdk/api/social/wrappers/_global_statistic.py) |

### Slot
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /social/admin/namespaces/{namespace}/users/{userId}/slots/{slotId} | GET | getSlotData | [GetSlotData](../accelbyte_py_sdk/api/social/operations/slot/get_slot_data.py) | [get_slot_data](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |
| /social/admin/namespaces/{namespace}/users/{userId}/slots | GET | getUserNamespaceSlots | [GetUserNamespaceSlots](../accelbyte_py_sdk/api/social/operations/slot/get_user_namespace_slots.py) | [get_user_namespace_slots](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |
| /social/public/namespaces/{namespace}/users/{userId}/slots | POST | publicCreateUserNamespaceSlot | [PublicCreateUserNamespaceSlot](../accelbyte_py_sdk/api/social/operations/slot/public_create_user_namespace_slot.py) | [public_create_user_namespace_slot](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |
| /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId} | DELETE | publicDeleteUserNamespaceSlot | [PublicDeleteUserNamespaceSlot](../accelbyte_py_sdk/api/social/operations/slot/public_delete_user_namespace_slot.py) | [public_delete_user_namespace_slot](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |
| /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId} | GET | publicGetSlotData | [PublicGetSlotData](../accelbyte_py_sdk/api/social/operations/slot/public_get_slot_data.py) | [public_get_slot_data](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |
| /social/public/namespaces/{namespace}/users/{userId}/slots | GET | publicGetUserNamespaceSlots | [PublicGetUserNamespaceSlots](../accelbyte_py_sdk/api/social/operations/slot/public_get_user_namespace_slots.py) | [public_get_user_namespace_slots](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |
| /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId} | PUT | publicUpdateUserNamespaceSlot | [PublicUpdateUserNamespaceSlot](../accelbyte_py_sdk/api/social/operations/slot/public_update_user_namespace_slot.py) | [public_update_user_namespace_slot](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |
| /social/public/namespaces/{namespace}/users/{userId}/slots/{slotId}/metadata | PUT | publicUpdateUserNamespaceSlotMetadata | [PublicUpdateUserNamespaceSlotMetadata](../accelbyte_py_sdk/api/social/operations/slot/public_update_user_namespace_slot_metadata.py) | [public_update_user_namespace_slot_metadata](../accelbyte_py_sdk/api/social/wrappers/_slot.py) |

### SlotConfig
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /social/admin/namespaces/{namespace}/config | DELETE | deleteNamespaceSlotConfig | [DeleteNamespaceSlotConfig](../accelbyte_py_sdk/api/social/operations/slot_config/delete_namespace_slot_config.py) | [delete_namespace_slot_config](../accelbyte_py_sdk/api/social/wrappers/_slot_config.py) |
| /social/admin/namespaces/{namespace}/users/{userId}/config | DELETE | deleteUserSlotConfig | [DeleteUserSlotConfig](../accelbyte_py_sdk/api/social/operations/slot_config/delete_user_slot_config.py) | [delete_user_slot_config](../accelbyte_py_sdk/api/social/wrappers/_slot_config.py) |
| /social/admin/namespaces/{namespace}/config | GET | getNamespaceSlotConfig | [GetNamespaceSlotConfig](../accelbyte_py_sdk/api/social/operations/slot_config/get_namespace_slot_config.py) | [get_namespace_slot_config](../accelbyte_py_sdk/api/social/wrappers/_slot_config.py) |
| /social/admin/namespaces/{namespace}/users/{userId}/config | GET | getUserSlotConfig | [GetUserSlotConfig](../accelbyte_py_sdk/api/social/operations/slot_config/get_user_slot_config.py) | [get_user_slot_config](../accelbyte_py_sdk/api/social/wrappers/_slot_config.py) |
| /social/admin/namespaces/{namespace}/config | PUT | updateNamespaceSlotConfig | [UpdateNamespaceSlotConfig](../accelbyte_py_sdk/api/social/operations/slot_config/update_namespace_slot_config.py) | [update_namespace_slot_config](../accelbyte_py_sdk/api/social/wrappers/_slot_config.py) |
| /social/admin/namespaces/{namespace}/users/{userId}/config | PUT | updateUserSlotConfig | [UpdateUserSlotConfig](../accelbyte_py_sdk/api/social/operations/slot_config/update_user_slot_config.py) | [update_user_slot_config](../accelbyte_py_sdk/api/social/wrappers/_slot_config.py) |

### StatConfiguration
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /social/v1/admin/namespaces/{namespace}/stats | POST | createStat | [CreateStat](../accelbyte_py_sdk/api/social/operations/stat_configuration/create_stat.py) | [create_stat](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/public/namespaces/{namespace}/stats | POST | createStat_1 | [CreateStat1](../accelbyte_py_sdk/api/social/operations/stat_configuration/create_stat_1.py) | [create_stat_1](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/admin/namespaces/{namespace}/stats/{statCode} | DELETE | deleteStat | [DeleteStat](../accelbyte_py_sdk/api/social/operations/stat_configuration/delete_stat.py) | [delete_stat](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/admin/namespaces/{namespace}/stats/export | GET | exportStats | [ExportStats](../accelbyte_py_sdk/api/social/operations/stat_configuration/export_stats.py) | [export_stats](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/admin/namespaces/{namespace}/stats/{statCode} | GET | getStat | [GetStat](../accelbyte_py_sdk/api/social/operations/stat_configuration/get_stat.py) | [get_stat](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/admin/namespaces/{namespace}/stats | GET | getStats | [GetStats](../accelbyte_py_sdk/api/social/operations/stat_configuration/get_stats.py) | [get_stats](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/admin/namespaces/{namespace}/stats/import | POST | importStats | [ImportStats](../accelbyte_py_sdk/api/social/operations/stat_configuration/import_stats.py) | [import_stats](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/admin/namespaces/{namespace}/stats/search | GET | queryStats | [QueryStats](../accelbyte_py_sdk/api/social/operations/stat_configuration/query_stats.py) | [query_stats](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |
| /social/v1/admin/namespaces/{namespace}/stats/{statCode} | PATCH | updateStat | [UpdateStat](../accelbyte_py_sdk/api/social/operations/stat_configuration/update_stat.py) | [update_stat](../accelbyte_py_sdk/api/social/wrappers/_stat_configuration.py) |

### UserStatistic
| Endpoint | Method | ID | Class | Wrapper |
|---|---|---|---|---|
| /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/bulk | POST | bulkCreateUserStatItems | [BulkCreateUserStatItems](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_create_user_stat_items.py) | [bulk_create_user_stat_items](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/statitems/bulk | GET | bulkFetchStatItems | [BulkFetchStatItems](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_fetch_stat_items.py) | [bulk_fetch_stat_items](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/statitems/bulk | GET | bulkFetchStatItems_1 | [BulkFetchStatItems1](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_fetch_stat_items_1.py) | [bulk_fetch_stat_items_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/statitems/value/bulk | PUT | bulkIncUserStatItem | [BulkIncUserStatItem](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_inc_user_stat_item.py) | [bulk_inc_user_stat_item](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk | PUT | bulkIncUserStatItem_1 | [BulkIncUserStatItem1](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_inc_user_stat_item_1.py) | [bulk_inc_user_stat_item_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/statitems/value/bulk | PATCH | bulkIncUserStatItemValue | [BulkIncUserStatItemValue](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_inc_user_stat_item_value.py) | [bulk_inc_user_stat_item_value](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk | PATCH | bulkIncUserStatItemValue_1 | [BulkIncUserStatItemValue1](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_inc_user_stat_item_value_1.py) | [bulk_inc_user_stat_item_value_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk | PATCH | bulkIncUserStatItemValue_2 | [BulkIncUserStatItemValue2](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_inc_user_stat_item_value_2.py) | [bulk_inc_user_stat_item_value_2](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/statitems/value/reset/bulk | PUT | bulkResetUserStatItem | [BulkResetUserStatItem](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_reset_user_stat_item.py) | [bulk_reset_user_stat_item](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk | PUT | bulkResetUserStatItem_1 | [BulkResetUserStatItem1](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_reset_user_stat_item_1.py) | [bulk_reset_user_stat_item_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/statitems/value/reset/bulk | PUT | bulkResetUserStatItem_2 | [BulkResetUserStatItem2](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_reset_user_stat_item_2.py) | [bulk_reset_user_stat_item_2](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/reset/bulk | PUT | bulkResetUserStatItem_3 | [BulkResetUserStatItem3](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_reset_user_stat_item_3.py) | [bulk_reset_user_stat_item_3](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v2/admin/namespaces/{namespace}/users/{userId}/statitems/value/bulk | PUT | bulkUpdateUserStatItem | [BulkUpdateUserStatItem](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_update_user_stat_item.py) | [bulk_update_user_stat_item](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v2/public/namespaces/{namespace}/statitems/value/bulk | PUT | bulkUpdateUserStatItem_1 | [BulkUpdateUserStatItem1](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_update_user_stat_item_1.py) | [bulk_update_user_stat_item_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v2/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk | PUT | bulkUpdateUserStatItem_2 | [BulkUpdateUserStatItem2](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_update_user_stat_item_2.py) | [bulk_update_user_stat_item_2](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v2/admin/namespaces/{namespace}/statitems/value/bulk | PUT | bulkUpdateUserStatItemV2 | [BulkUpdateUserStatItemV2](../accelbyte_py_sdk/api/social/operations/user_statistic/bulk_update_user_stat_item_v2.py) | [bulk_update_user_stat_item_v2](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems | POST | createUserStatItem | [CreateUserStatItem](../accelbyte_py_sdk/api/social/operations/user_statistic/create_user_stat_item.py) | [create_user_stat_item](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems | DELETE | deleteUserStatItems | [DeleteUserStatItems](../accelbyte_py_sdk/api/social/operations/user_statistic/delete_user_stat_items.py) | [delete_user_stat_items](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems | DELETE | deleteUserStatItems_1 | [DeleteUserStatItems1](../accelbyte_py_sdk/api/social/operations/user_statistic/delete_user_stat_items_1.py) | [delete_user_stat_items_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems | DELETE | deleteUserStatItems_2 | [DeleteUserStatItems2](../accelbyte_py_sdk/api/social/operations/user_statistic/delete_user_stat_items_2.py) | [delete_user_stat_items_2](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/statitems | GET | getUserStatItems | [GetUserStatItems](../accelbyte_py_sdk/api/social/operations/user_statistic/get_user_stat_items.py) | [get_user_stat_items](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value | PATCH | incUserStatItemValue | [IncUserStatItemValue](../accelbyte_py_sdk/api/social/operations/user_statistic/inc_user_stat_item_value.py) | [inc_user_stat_item_value](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/bulk | POST | publicBulkCreateUserStatItems | [PublicBulkCreateUserStatItems](../accelbyte_py_sdk/api/social/operations/user_statistic/public_bulk_create_user_stat_items.py) | [public_bulk_create_user_stat_items](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/statitems/value/bulk | PUT | publicBulkIncUserStatItem | [PublicBulkIncUserStatItem](../accelbyte_py_sdk/api/social/operations/user_statistic/public_bulk_inc_user_stat_item.py) | [public_bulk_inc_user_stat_item](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/statitems/value/bulk | PUT | publicBulkIncUserStatItem_1 | [PublicBulkIncUserStatItem1](../accelbyte_py_sdk/api/social/operations/user_statistic/public_bulk_inc_user_stat_item_1.py) | [public_bulk_inc_user_stat_item_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/statitems/value/bulk | PATCH | publicBulkIncUserStatItemValue | [PublicBulkIncUserStatItemValue](../accelbyte_py_sdk/api/social/operations/user_statistic/public_bulk_inc_user_stat_item_value.py) | [public_bulk_inc_user_stat_item_value](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems | POST | publicCreateUserStatItem | [PublicCreateUserStatItem](../accelbyte_py_sdk/api/social/operations/user_statistic/public_create_user_stat_item.py) | [public_create_user_stat_item](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value | PUT | publicIncUserStatItem | [PublicIncUserStatItem](../accelbyte_py_sdk/api/social/operations/user_statistic/public_inc_user_stat_item.py) | [public_inc_user_stat_item](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value | PATCH | publicIncUserStatItemValue | [PublicIncUserStatItemValue](../accelbyte_py_sdk/api/social/operations/user_statistic/public_inc_user_stat_item_value.py) | [public_inc_user_stat_item_value](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/statitems | GET | publicQueryUserStatItems | [PublicQueryUserStatItems](../accelbyte_py_sdk/api/social/operations/user_statistic/public_query_user_stat_items.py) | [public_query_user_stat_items](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset | PUT | resetUserStatItemValue | [ResetUserStatItemValue](../accelbyte_py_sdk/api/social/operations/user_statistic/reset_user_stat_item_value.py) | [reset_user_stat_item_value](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v1/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value/reset | PUT | resetUserStatItemValue_1 | [ResetUserStatItemValue1](../accelbyte_py_sdk/api/social/operations/user_statistic/reset_user_stat_item_value_1.py) | [reset_user_stat_item_value_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v2/admin/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value | PUT | updateUserStatItemValue | [UpdateUserStatItemValue](../accelbyte_py_sdk/api/social/operations/user_statistic/update_user_stat_item_value.py) | [update_user_stat_item_value](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |
| /social/v2/public/namespaces/{namespace}/users/{userId}/stats/{statCode}/statitems/value | PUT | updateUserStatItemValue_1 | [UpdateUserStatItemValue1](../accelbyte_py_sdk/api/social/operations/user_statistic/update_user_stat_item_value_1.py) | [update_user_stat_item_value_1](../accelbyte_py_sdk/api/social/wrappers/_user_statistic.py) |


## Models
| Model | Class |
|---|---|
| Attribute | [Attribute](../accelbyte_py_sdk/api/social/models/attribute.py) |
| BulkStatItemCreate | [BulkStatItemCreate](../accelbyte_py_sdk/api/social/models/bulk_stat_item_create.py) |
| BulkStatItemInc | [BulkStatItemInc](../accelbyte_py_sdk/api/social/models/bulk_stat_item_inc.py) |
| BulkStatItemOperationResult | [BulkStatItemOperationResult](../accelbyte_py_sdk/api/social/models/bulk_stat_item_operation_result.py) |
| BulkStatItemReset | [BulkStatItemReset](../accelbyte_py_sdk/api/social/models/bulk_stat_item_reset.py) |
| BulkStatItemUpdate | [BulkStatItemUpdate](../accelbyte_py_sdk/api/social/models/bulk_stat_item_update.py) |
| BulkUserStatItemInc | [BulkUserStatItemInc](../accelbyte_py_sdk/api/social/models/bulk_user_stat_item_inc.py) |
| BulkUserStatItemReset | [BulkUserStatItemReset](../accelbyte_py_sdk/api/social/models/bulk_user_stat_item_reset.py) |
| BulkUserStatItemUpdate | [BulkUserStatItemUpdate](../accelbyte_py_sdk/api/social/models/bulk_user_stat_item_update.py) |
| ErrorEntity | [ErrorEntity](../accelbyte_py_sdk/api/social/models/error_entity.py) |
| FieldValidationError | [FieldValidationError](../accelbyte_py_sdk/api/social/models/field_validation_error.py) |
| GameProfileHeader | [GameProfileHeader](../accelbyte_py_sdk/api/social/models/game_profile_header.py) |
| GameProfileInfo | [GameProfileInfo](../accelbyte_py_sdk/api/social/models/game_profile_info.py) |
| GameProfilePublicInfo | [GameProfilePublicInfo](../accelbyte_py_sdk/api/social/models/game_profile_public_info.py) |
| GameProfileRequest | [GameProfileRequest](../accelbyte_py_sdk/api/social/models/game_profile_request.py) |
| GlobalStatItemInfo | [GlobalStatItemInfo](../accelbyte_py_sdk/api/social/models/global_stat_item_info.py) |
| GlobalStatItemPagingSlicedResult | [GlobalStatItemPagingSlicedResult](../accelbyte_py_sdk/api/social/models/global_stat_item_paging_sliced_result.py) |
| NamespaceSlotConfigInfo | [NamespaceSlotConfigInfo](../accelbyte_py_sdk/api/social/models/namespace_slot_config_info.py) |
| Paging | [Paging](../accelbyte_py_sdk/api/social/models/paging.py) |
| SlotConfigUpdate | [SlotConfigUpdate](../accelbyte_py_sdk/api/social/models/slot_config_update.py) |
| SlotInfo | [SlotInfo](../accelbyte_py_sdk/api/social/models/slot_info.py) |
| SlotMetadataUpdate | [SlotMetadataUpdate](../accelbyte_py_sdk/api/social/models/slot_metadata_update.py) |
| StatCreate | [StatCreate](../accelbyte_py_sdk/api/social/models/stat_create.py) |
| StatImportInfo | [StatImportInfo](../accelbyte_py_sdk/api/social/models/stat_import_info.py) |
| StatInfo | [StatInfo](../accelbyte_py_sdk/api/social/models/stat_info.py) |
| StatItemInc | [StatItemInc](../accelbyte_py_sdk/api/social/models/stat_item_inc.py) |
| StatItemIncResult | [StatItemIncResult](../accelbyte_py_sdk/api/social/models/stat_item_inc_result.py) |
| StatItemUpdate | [StatItemUpdate](../accelbyte_py_sdk/api/social/models/stat_item_update.py) |
| StatPagingSlicedResult | [StatPagingSlicedResult](../accelbyte_py_sdk/api/social/models/stat_paging_sliced_result.py) |
| StatResetInfo | [StatResetInfo](../accelbyte_py_sdk/api/social/models/stat_reset_info.py) |
| StatUpdate | [StatUpdate](../accelbyte_py_sdk/api/social/models/stat_update.py) |
| UserGameProfiles | [UserGameProfiles](../accelbyte_py_sdk/api/social/models/user_game_profiles.py) |
| UserSlotConfigInfo | [UserSlotConfigInfo](../accelbyte_py_sdk/api/social/models/user_slot_config_info.py) |
| UserStatItemInfo | [UserStatItemInfo](../accelbyte_py_sdk/api/social/models/user_stat_item_info.py) |
| UserStatItemPagingSlicedResult | [UserStatItemPagingSlicedResult](../accelbyte_py_sdk/api/social/models/user_stat_item_paging_sliced_result.py) |
| ValidationErrorEntity | [ValidationErrorEntity](../accelbyte_py_sdk/api/social/models/validation_error_entity.py) |
