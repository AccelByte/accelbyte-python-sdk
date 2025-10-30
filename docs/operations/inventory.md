[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Inventory Service Early Access Index (0.2.19)


## Operations

### Admin Chaining Operations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/chainingOperations | POST | AdminCreateChainingOperations | `false` | [AdminCreateChainingOperations](../../accelbyte_py_sdk/api/inventory/operations/admin_chaining_operations/admin_create_chaining_o_8801c9.py) | [admin_create_chaining_operations](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_chaining_operations.py) | [accelbyte_py_sdk_cli inventory-admin-create-chaining-operations](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_create_chaining_operations.py) |

### Admin Integration Configurations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations | POST | AdminCreateIntegrationConfiguration | `false` | [AdminCreateIntegrationConfiguration](../../accelbyte_py_sdk/api/inventory/operations/admin_integration_configurations/admin_create_integratio_c6b1bd.py) | [admin_create_integration_configuration](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_integration_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-create-integration-configuration](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_create_integration_configuration.py) |
| /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations | GET | AdminListIntegrationConfigurations | `false` | [AdminListIntegrationConfigurations](../../accelbyte_py_sdk/api/inventory/operations/admin_integration_configurations/admin_list_integration__420e8d.py) | [admin_list_integration_configurations](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_integration_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-list-integration-configurations](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_integration_configurations.py) |
| /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId} | PUT | AdminUpdateIntegrationConfiguration | `false` | [AdminUpdateIntegrationConfiguration](../../accelbyte_py_sdk/api/inventory/operations/admin_integration_configurations/admin_update_integratio_fe692f.py) | [admin_update_integration_configuration](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_integration_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-update-integration-configuration](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_update_integration_configuration.py) |
| /inventory/v1/admin/namespaces/{namespace}/integrationConfigurations/{integrationConfigurationId}/status | PUT | AdminUpdateStatusIntegrationConfiguration | `false` | [AdminUpdateStatusIntegrationConfiguration](../../accelbyte_py_sdk/api/inventory/operations/admin_integration_configurations/admin_update_status_int_703321.py) | [admin_update_status_integration_configuration](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_integration_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-update-status-integration-configuration](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_update_status_integration_configuration.py) |

### Admin Inventories
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/inventories | POST | AdminCreateInventory | `false` | [AdminCreateInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_create_inventory.py) | [admin_create_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-create-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_create_inventory.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId} | GET | AdminGetInventory | `false` | [AdminGetInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_get_inventory.py) | [admin_get_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-get-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_get_inventory.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories | GET | AdminListInventories | `false` | [AdminListInventories](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_list_inventories.py) | [admin_list_inventories](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-list-inventories](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_inventories.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/purchaseable | POST | AdminPurchasable | `false` | [AdminPurchasable](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_purchasable.py) | [admin_purchasable](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-purchasable](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_purchasable.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId} | PUT | AdminUpdateInventory | `false` | [AdminUpdateInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_update_inventory.py) | [admin_update_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-update-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_update_inventory.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventoryConfigurations/{inventoryConfigurationCode}/inventories | PUT | AdminUpdateUserInventoriesByInventoryCode | `false` | [AdminUpdateUserInventoriesByInventoryCode](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_update_user_inven_6f94a4.py) | [admin_update_user_inventories_by_inventory_code](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-update-user-inventories-by-inventory-code](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_update_user_inventories_by_inventory_code.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId} | DELETE | deleteInventory | `false` | [DeleteInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/delete_inventory.py) | [delete_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-delete-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_delete_inventory.py) |

### Admin Inventory Configurations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations | POST | AdminCreateInventoryConfiguration | `false` | [AdminCreateInventoryConfiguration](../../accelbyte_py_sdk/api/inventory/operations/admin_inventory_configurations/admin_create_inventory__71b514.py) | [admin_create_inventory_configuration](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventory_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-create-inventory-configuration](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_create_inventory_configuration.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId} | DELETE | AdminDeleteInventoryConfiguration | `false` | [AdminDeleteInventoryConfiguration](../../accelbyte_py_sdk/api/inventory/operations/admin_inventory_configurations/admin_delete_inventory__38371e.py) | [admin_delete_inventory_configuration](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventory_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-delete-inventory-configuration](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_delete_inventory_configuration.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId} | GET | AdminGetInventoryConfiguration | `false` | [AdminGetInventoryConfiguration](../../accelbyte_py_sdk/api/inventory/operations/admin_inventory_configurations/admin_get_inventory_con_709281.py) | [admin_get_inventory_configuration](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventory_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-get-inventory-configuration](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_get_inventory_configuration.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations | GET | AdminListInventoryConfigurations | `false` | [AdminListInventoryConfigurations](../../accelbyte_py_sdk/api/inventory/operations/admin_inventory_configurations/admin_list_inventory_co_67d862.py) | [admin_list_inventory_configurations](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventory_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-list-inventory-configurations](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_inventory_configurations.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventoryConfigurations/{inventoryConfigurationId} | PUT | AdminUpdateInventoryConfiguration | `false` | [AdminUpdateInventoryConfiguration](../../accelbyte_py_sdk/api/inventory/operations/admin_inventory_configurations/admin_update_inventory__e10746.py) | [admin_update_inventory_configuration](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventory_configurations.py) | [accelbyte_py_sdk_cli inventory-admin-update-inventory-configuration](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_update_inventory_configuration.py) |

### Admin Item Types
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/itemtypes | POST | AdminCreateItemType | `false` | [AdminCreateItemType](../../accelbyte_py_sdk/api/inventory/operations/admin_item_types/admin_create_item_type.py) | [admin_create_item_type](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_item_types.py) | [accelbyte_py_sdk_cli inventory-admin-create-item-type](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_create_item_type.py) |
| /inventory/v1/admin/namespaces/{namespace}/itemtypes/{itemTypeName} | DELETE | AdminDeleteItemType | `false` | [AdminDeleteItemType](../../accelbyte_py_sdk/api/inventory/operations/admin_item_types/admin_delete_item_type.py) | [admin_delete_item_type](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_item_types.py) | [accelbyte_py_sdk_cli inventory-admin-delete-item-type](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_delete_item_type.py) |
| /inventory/v1/admin/namespaces/{namespace}/itemtypes | GET | AdminListItemTypes | `false` | [AdminListItemTypes](../../accelbyte_py_sdk/api/inventory/operations/admin_item_types/admin_list_item_types.py) | [admin_list_item_types](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_item_types.py) | [accelbyte_py_sdk_cli inventory-admin-list-item-types](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_item_types.py) |

### Admin Items
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items | DELETE | AdminBulkRemoveItems | `false` | [AdminBulkRemoveItems](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_bulk_remove_items.py) | [admin_bulk_remove_items](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-bulk-remove-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_bulk_remove_items.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/bulk | POST | AdminBulkSaveItem | `false` | [AdminBulkSaveItem](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_bulk_save_item.py) | [admin_bulk_save_item](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-bulk-save-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_bulk_save_item.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/bulk | POST | AdminBulkSaveItemToInventory | `false` | [AdminBulkSaveItemToInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_bulk_save_item_to_7fa299.py) | [admin_bulk_save_item_to_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-bulk-save-item-to-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_bulk_save_item_to_inventory.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items | PUT | AdminBulkUpdateMyItems | `false` | [AdminBulkUpdateMyItems](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_bulk_update_my_items.py) | [admin_bulk_update_my_items](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-bulk-update-my-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_bulk_update_my_items.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/consume | POST | AdminConsumeUserItem | `false` | [AdminConsumeUserItem](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_consume_user_item.py) | [admin_consume_user_item](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-consume-user-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_consume_user_item.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId} | GET | AdminGetInventoryItem | `false` | [AdminGetInventoryItem](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_get_inventory_item.py) | [admin_get_inventory_item](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-get-inventory-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_get_inventory_item.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items | GET | AdminListItems | `false` | [AdminListItems](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_list_items.py) | [admin_list_items](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-list-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_items.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items | POST | AdminSaveItem | `false` | [AdminSaveItem](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_save_item.py) | [admin_save_item](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-save-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_save_item.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items | POST | AdminSaveItemToInventory | `false` | [AdminSaveItemToInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_save_item_to_inventory.py) | [admin_save_item_to_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-save-item-to-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_save_item_to_inventory.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items/entitlements/sync | PUT | AdminSyncUserEntitlements | `false` | [AdminSyncUserEntitlements](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_sync_user_entitlements.py) | [admin_sync_user_entitlements](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-sync-user-entitlements](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_sync_user_entitlements.py) |

### Admin Tags
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/tags | POST | AdminCreateTag | `false` | [AdminCreateTag](../../accelbyte_py_sdk/api/inventory/operations/admin_tags/admin_create_tag.py) | [admin_create_tag](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_tags.py) | [accelbyte_py_sdk_cli inventory-admin-create-tag](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_create_tag.py) |
| /inventory/v1/admin/namespaces/{namespace}/tags/{tagName} | DELETE | AdminDeleteTag | `false` | [AdminDeleteTag](../../accelbyte_py_sdk/api/inventory/operations/admin_tags/admin_delete_tag.py) | [admin_delete_tag](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_tags.py) | [accelbyte_py_sdk_cli inventory-admin-delete-tag](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_delete_tag.py) |
| /inventory/v1/admin/namespaces/{namespace}/tags | GET | AdminListTags | `false` | [AdminListTags](../../accelbyte_py_sdk/api/inventory/operations/admin_tags/admin_list_tags.py) | [admin_list_tags](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_tags.py) | [accelbyte_py_sdk_cli inventory-admin-list-tags](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_tags.py) |

### Public Inventories
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories | GET | PublicListInventories | `false` | [PublicListInventories](../../accelbyte_py_sdk/api/inventory/operations/public_inventories/public_list_inventories.py) | [public_list_inventories](../../accelbyte_py_sdk/api/inventory/wrappers/_public_inventories.py) | [accelbyte_py_sdk_cli inventory-public-list-inventories](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_list_inventories.py) |

### Public Inventory Configurations
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/public/namespaces/{namespace}/inventoryConfigurations | GET | PublicListInventoryConfigurations | `false` | [PublicListInventoryConfigurations](../../accelbyte_py_sdk/api/inventory/operations/public_inventory_configurations/public_list_inventory_c_d1722b.py) | [public_list_inventory_configurations](../../accelbyte_py_sdk/api/inventory/wrappers/_public_inventory_configurations.py) | [accelbyte_py_sdk_cli inventory-public-list-inventory-configurations](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_list_inventory_configurations.py) |

### Public Item Types
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/public/namespaces/{namespace}/itemtypes | GET | PublicListItemTypes | `false` | [PublicListItemTypes](../../accelbyte_py_sdk/api/inventory/operations/public_item_types/public_list_item_types.py) | [public_list_item_types](../../accelbyte_py_sdk/api/inventory/wrappers/_public_item_types.py) | [accelbyte_py_sdk_cli inventory-public-list-item-types](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_list_item_types.py) |

### Public Items
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items | DELETE | PublicBulkRemoveMyItems | `false` | [PublicBulkRemoveMyItems](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_bulk_remove_my_items.py) | [public_bulk_remove_my_items](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-bulk-remove-my-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_bulk_remove_my_items.py) |
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items | PUT | PublicBulkUpdateMyItems | `false` | [PublicBulkUpdateMyItems](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_bulk_update_my_items.py) | [public_bulk_update_my_items](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-bulk-update-my-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_bulk_update_my_items.py) |
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/consume | POST | PublicConsumeMyItem | `false` | [PublicConsumeMyItem](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_consume_my_item.py) | [public_consume_my_item](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-consume-my-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_consume_my_item.py) |
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/slots/{slotId}/sourceItems/{sourceItemId} | GET | PublicGetItem | `false` | [PublicGetItem](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_get_item.py) | [public_get_item](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-get-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_get_item.py) |
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items | GET | PublicListItems | `false` | [PublicListItems](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_list_items.py) | [public_list_items](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-list-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_list_items.py) |
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/movement | POST | PublicMoveMyItems | `false` | [PublicMoveMyItems](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_move_my_items.py) | [public_move_my_items](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-move-my-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_move_my_items.py) |

### Public Tags
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/public/namespaces/{namespace}/tags | GET | PublicListTags | `false` | [PublicListTags](../../accelbyte_py_sdk/api/inventory/operations/public_tags/public_list_tags.py) | [public_list_tags](../../accelbyte_py_sdk/api/inventory/wrappers/_public_tags.py) | [accelbyte_py_sdk_cli inventory-public-list-tags](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_list_tags.py) |


## Models
| Model | Class |
|---|---|
| apimodels.AdminUpdateItemReq | [ApimodelsAdminUpdateItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_admin_update_item_req.py) |
| apimodels.BulkSaveItemError | [ApimodelsBulkSaveItemError](../../accelbyte_py_sdk/api/inventory/models/apimodels_bulk_save_item_error.py) |
| apimodels.BulkSaveItemResp | [ApimodelsBulkSaveItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_bulk_save_item_resp.py) |
| apimodels.ChainingOperationReq | [ApimodelsChainingOperationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_chaining_operation_req.py) |
| apimodels.ChainingOperationResp | [ApimodelsChainingOperationResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_chaining_operation_resp.py) |
| apimodels.ConsumeItem | [ApimodelsConsumeItem](../../accelbyte_py_sdk/api/inventory/models/apimodels_consume_item.py) |
| apimodels.ConsumeItemReq | [ApimodelsConsumeItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_consume_item_req.py) |
| apimodels.CreateIntegrationConfigurationReq | [ApimodelsCreateIntegrationConfigurationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_integration_configuration_req.py) |
| apimodels.CreateInventoryConfigurationReq | [ApimodelsCreateInventoryConfigurationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_inventory_configuration_req.py) |
| apimodels.CreateInventoryReq | [ApimodelsCreateInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_inventory_req.py) |
| apimodels.CreateItem | [ApimodelsCreateItem](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_item.py) |
| apimodels.CreateItemTypeReq | [ApimodelsCreateItemTypeReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_item_type_req.py) |
| apimodels.CreateItemTypeResp | [ApimodelsCreateItemTypeResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_item_type_resp.py) |
| apimodels.CreateTagReq | [ApimodelsCreateTagReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_tag_req.py) |
| apimodels.CreateTagResp | [ApimodelsCreateTagResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_tag_resp.py) |
| apimodels.DeleteInventoryReq | [ApimodelsDeleteInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_delete_inventory_req.py) |
| apimodels.ErrorResponse | [ApimodelsErrorResponse](../../accelbyte_py_sdk/api/inventory/models/apimodels_error_response.py) |
| apimodels.IntegrationConfigurationResp | [ApimodelsIntegrationConfigurationResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_integration_configuration_resp.py) |
| apimodels.InventoryConfig | [ApimodelsInventoryConfig](../../accelbyte_py_sdk/api/inventory/models/apimodels_inventory_config.py) |
| apimodels.InventoryConfigurationReq | [ApimodelsInventoryConfigurationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_inventory_configuration_req.py) |
| apimodels.InventoryConfigurationResp | [ApimodelsInventoryConfigurationResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_inventory_configuration_resp.py) |
| apimodels.InventoryResp | [ApimodelsInventoryResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_inventory_resp.py) |
| apimodels.ItemResp | [ApimodelsItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_item_resp.py) |
| apimodels.ListIntegrationConfigurationsResp | [ApimodelsListIntegrationConfigurationsResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_integration_configurations_resp.py) |
| apimodels.ListInventoryConfigurationsResp | [ApimodelsListInventoryConfigurationsResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_inventory_configurations_resp.py) |
| apimodels.ListInventoryResp | [ApimodelsListInventoryResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_inventory_resp.py) |
| apimodels.ListItemResp | [ApimodelsListItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_item_resp.py) |
| apimodels.ListItemTypesResp | [ApimodelsListItemTypesResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_item_types_resp.py) |
| apimodels.ListTagsResp | [ApimodelsListTagsResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_tags_resp.py) |
| apimodels.MoveItemsReq | [ApimodelsMoveItemsReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_move_items_req.py) |
| apimodels.MoveItemsResp | [ApimodelsMoveItemsResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_move_items_resp.py) |
| apimodels.Operation | [ApimodelsOperation](../../accelbyte_py_sdk/api/inventory/models/apimodels_operation.py) |
| apimodels.Paging | [ApimodelsPaging](../../accelbyte_py_sdk/api/inventory/models/apimodels_paging.py) |
| apimodels.PurchaseValidationItemReq | [ApimodelsPurchaseValidationItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_purchase_validation_item_req.py) |
| apimodels.PurchaseValidationReq | [ApimodelsPurchaseValidationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_purchase_validation_req.py) |
| apimodels.RemoveInventoryItemReq | [ApimodelsRemoveInventoryItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_remove_inventory_item_req.py) |
| apimodels.RemoveItem | [ApimodelsRemoveItem](../../accelbyte_py_sdk/api/inventory/models/apimodels_remove_item.py) |
| apimodels.SaveItemReq | [ApimodelsSaveItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_save_item_req.py) |
| apimodels.SaveItemToInventoryReq | [ApimodelsSaveItemToInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_save_item_to_inventory_req.py) |
| apimodels.TradeItem | [ApimodelsTradeItem](../../accelbyte_py_sdk/api/inventory/models/apimodels_trade_item.py) |
| apimodels.TradeItemResp | [ApimodelsTradeItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_trade_item_resp.py) |
| apimodels.UpdateIntegrationConfigurationReq | [ApimodelsUpdateIntegrationConfigurationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_integration_configuration_req.py) |
| apimodels.UpdateInventoryReq | [ApimodelsUpdateInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_inventory_req.py) |
| apimodels.UpdateItem | [ApimodelsUpdateItem](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_item.py) |
| apimodels.UpdateItemReq | [ApimodelsUpdateItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_item_req.py) |
| apimodels.UpdateItemResp | [ApimodelsUpdateItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_item_resp.py) |
| apimodels.UpdateStatusIntegrationConfigurationReq | [ApimodelsUpdateStatusIntegrationConfigurationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_status_integration_configuration_req.py) |
