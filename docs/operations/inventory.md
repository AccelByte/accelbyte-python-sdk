[//]: # (<< Code generated. DO NOT EDIT!)

[//]: # (<< template file: ags_py_codegen)

# AccelByte Gaming Services Inventory Service Index (0.1.0)


## Operations

### Admin Inventories
| Endpoint | Method | ID | Deprecated | Class | Wrapper | Example |
|---|---|---|---|---|---|---|
| /inventory/v1/admin/namespaces/{namespace}/inventories | POST | AdminCreateInventory | `false` | [AdminCreateInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_create_inventory.py) | [admin_create_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-create-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_create_inventory.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId} | GET | AdminGetInventory | `false` | [AdminGetInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_get_inventory.py) | [admin_get_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-get-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_get_inventory.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories | GET | AdminListInventories | `false` | [AdminListInventories](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_list_inventories.py) | [admin_list_inventories](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-list-inventories](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_inventories.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId} | PUT | AdminUpdateInventory | `false` | [AdminUpdateInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_inventories/admin_update_inventory.py) | [admin_update_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_inventories.py) | [accelbyte_py_sdk_cli inventory-admin-update-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_update_inventory.py) |
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
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items | PUT | AdminBulkUpdateMyItems | `false` | [AdminBulkUpdateMyItems](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_bulk_update_my_items.py) | [admin_bulk_update_my_items](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-bulk-update-my-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_bulk_update_my_items.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items/{itemId}/consume | POST | AdminConsumeUserItem | `false` | [AdminConsumeUserItem](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_consume_user_item.py) | [admin_consume_user_item](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-consume-user-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_consume_user_item.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items/{itemId} | GET | AdminGetInventoryItem | `false` | [AdminGetInventoryItem](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_get_inventory_item.py) | [admin_get_inventory_item](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-get-inventory-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_get_inventory_item.py) |
| /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items | GET | AdminListItems | `false` | [AdminListItems](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_list_items.py) | [admin_list_items](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-list-items](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_list_items.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/items | POST | AdminSaveItem | `false` | [AdminSaveItem](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_save_item.py) | [admin_save_item](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-save-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_save_item.py) |
| /inventory/v1/admin/namespaces/{namespace}/users/{userId}/inventories/{inventoryId}/items | POST | AdminSaveItemToInventory | `false` | [AdminSaveItemToInventory](../../accelbyte_py_sdk/api/inventory/operations/admin_items/admin_save_item_to_inventory.py) | [admin_save_item_to_inventory](../../accelbyte_py_sdk/api/inventory/wrappers/_admin_items.py) | [accelbyte_py_sdk_cli inventory-admin-save-item-to-inventory](../../samples/cli/accelbyte_py_sdk_cli/inventory/_admin_save_item_to_inventory.py) |

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
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/{itemId}/consume | POST | PublicConsumeMyItem | `false` | [PublicConsumeMyItem](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_consume_my_item.py) | [public_consume_my_item](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-consume-my-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_consume_my_item.py) |
| /inventory/v1/public/namespaces/{namespace}/users/me/inventories/{inventoryId}/items/{itemId} | GET | PublicGetItem | `false` | [PublicGetItem](../../accelbyte_py_sdk/api/inventory/operations/public_items/public_get_item.py) | [public_get_item](../../accelbyte_py_sdk/api/inventory/wrappers/_public_items.py) | [accelbyte_py_sdk_cli inventory-public-get-item](../../samples/cli/accelbyte_py_sdk_cli/inventory/_public_get_item.py) |
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
| apimodels.BulkRemoveItemsReq | [ApimodelsBulkRemoveItemsReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_bulk_remove_items_req.py) |
| apimodels.ConsumeItemReq | [ApimodelsConsumeItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_consume_item_req.py) |
| apimodels.CreateInventoryConfigurationReq | [ApimodelsCreateInventoryConfigurationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_inventory_configuration_req.py) |
| apimodels.CreateInventoryReq | [ApimodelsCreateInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_inventory_req.py) |
| apimodels.CreateItemTypeReq | [ApimodelsCreateItemTypeReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_item_type_req.py) |
| apimodels.CreateItemTypeResp | [ApimodelsCreateItemTypeResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_item_type_resp.py) |
| apimodels.CreateTagReq | [ApimodelsCreateTagReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_tag_req.py) |
| apimodels.CreateTagResp | [ApimodelsCreateTagResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_create_tag_resp.py) |
| apimodels.DeleteInventoryReq | [ApimodelsDeleteInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_delete_inventory_req.py) |
| apimodels.ErrorResponse | [ApimodelsErrorResponse](../../accelbyte_py_sdk/api/inventory/models/apimodels_error_response.py) |
| apimodels.InventoryConfigurationReq | [ApimodelsInventoryConfigurationReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_inventory_configuration_req.py) |
| apimodels.InventoryConfigurationResp | [ApimodelsInventoryConfigurationResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_inventory_configuration_resp.py) |
| apimodels.InventoryResp | [ApimodelsInventoryResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_inventory_resp.py) |
| apimodels.ItemResp | [ApimodelsItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_item_resp.py) |
| apimodels.ListInventoryConfigurationsResp | [ApimodelsListInventoryConfigurationsResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_inventory_configurations_resp.py) |
| apimodels.ListInventoryResp | [ApimodelsListInventoryResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_inventory_resp.py) |
| apimodels.ListItemResp | [ApimodelsListItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_item_resp.py) |
| apimodels.ListItemTypesResp | [ApimodelsListItemTypesResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_item_types_resp.py) |
| apimodels.ListTagsResp | [ApimodelsListTagsResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_list_tags_resp.py) |
| apimodels.MoveItemsReq | [ApimodelsMoveItemsReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_move_items_req.py) |
| apimodels.MoveItemsResp | [ApimodelsMoveItemsResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_move_items_resp.py) |
| apimodels.Paging | [ApimodelsPaging](../../accelbyte_py_sdk/api/inventory/models/apimodels_paging.py) |
| apimodels.SaveItemReq | [ApimodelsSaveItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_save_item_req.py) |
| apimodels.SaveItemToInventoryReq | [ApimodelsSaveItemToInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_save_item_to_inventory_req.py) |
| apimodels.TradeItem | [ApimodelsTradeItem](../../accelbyte_py_sdk/api/inventory/models/apimodels_trade_item.py) |
| apimodels.TradeItemResp | [ApimodelsTradeItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_trade_item_resp.py) |
| apimodels.UpdateInventoryReq | [ApimodelsUpdateInventoryReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_inventory_req.py) |
| apimodels.UpdateItemReq | [ApimodelsUpdateItemReq](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_item_req.py) |
| apimodels.UpdateItemResp | [ApimodelsUpdateItemResp](../../accelbyte_py_sdk/api/inventory/models/apimodels_update_item_resp.py) |
