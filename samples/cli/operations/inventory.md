## Python Extend SDK CLI Sample App Operation Index for Inventory service.

### Operation `admin_create_chaining_operations`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-create-chaining-operations' \
    '{"message": "string", "operations": [{}], "requestId": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_list_integration_configurations`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-list-integration-configurations' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `admin_create_integration_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-create-integration-configuration' \
    '{"mapItemType": ["string"], "serviceName": "string", "targetInventoryCode": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_update_integration_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-update-integration-configuration' \
    '{"mapItemType": ["string"], "serviceName": "string", "targetInventoryCode": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_status_integration_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-update-status-integration-configuration' \
    '{"status": "INIT"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_inventories`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-list-inventories' \
    'string' \
    --inventory_configuration_code 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --user_id 'string' \
    > result.txt
```

### Operation `admin_create_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-create-inventory' \
    '{"inventoryConfigurationCode": "string", "userId": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_get_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-get-inventory' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-update-inventory' \
    '{"incMaxSlots": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `delete_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-delete-inventory' \
    '{"message": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_items`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-list-items' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --source_item_id 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `admin_get_inventory_item`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-get-inventory-item' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_inventory_configurations`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-list-inventory-configurations' \
    'string' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'code' \
    > result.txt
```

### Operation `admin_create_inventory_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-create-inventory-configuration' \
    '{"code": "string", "description": "string", "initialMaxSlots": 1, "maxInstancesPerUser": 1, "maxUpgradeSlots": 1, "name": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_get_inventory_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-get-inventory-configuration' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_inventory_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-update-inventory-configuration' \
    '{"code": "string", "description": "string", "initialMaxSlots": 1, "maxInstancesPerUser": 1, "maxUpgradeSlots": 1, "name": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_delete_inventory_configuration`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-delete-inventory-configuration' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_item_types`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-list-item-types' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `admin_create_item_type`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-create-item-type' \
    '{"name": "string"}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_item_type`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-delete-item-type' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_list_tags`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-list-tags' \
    'string' \
    --limit 1 \
    --offset 1 \
    --owner 'string' \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `admin_create_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-create-tag' \
    '{"name": "string", "owner": "CLIENT"}' \
    'string' \
    > result.txt
```

### Operation `admin_delete_tag`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-delete-tag' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_consume_user_item`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-consume-user-item' \
    '{"options": ["string"], "qty": 1, "slotId": "string", "sourceItemId": "string"}' \
    'string' \
    'string' \
    'string' \
    --date_range_validation 'string' \
    > result.txt
```

### Operation `admin_bulk_update_my_items`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-bulk-update-my-items' \
    '[{"customAttributes": {"string": {}}, "serverCustomAttributes": {"string": {}}, "slotId": "string", "sourceItemId": "string", "tags": ["string"], "type": "string"}]' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_save_item_to_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-save-item-to-inventory' \
    '{"customAttributes": {"string": {}}, "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_remove_items`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-bulk-remove-items' \
    '[{"slotId": "string", "sourceItemId": "string"}]' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_save_item_to_inventory`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-bulk-save-item-to-inventory' \
    '[{"customAttributes": {"string": {}}, "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}]' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_update_user_inventories_by_inventory_code`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-update-user-inventories-by-inventory-code' \
    '{"incMaxSlots": 1}' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_save_item`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-save-item' \
    '{"customAttributes": {"string": {}}, "inventoryConfigurationCode": "string", "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_bulk_save_item`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-bulk-save-item' \
    '[{"customAttributes": {"string": {}}, "inventoryConfigurationCode": "string", "qty": 1, "serverCustomAttributes": {"string": {}}, "slotId": "string", "slotUsed": 1, "source": "ECOMMERCE", "sourceItemId": "string", "tags": ["string"], "type": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_sync_user_entitlements`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-sync-user-entitlements' \
    'string' \
    'string' \
    > result.txt
```

### Operation `admin_purchasable`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-admin-purchasable' \
    '{"entitlementType": "string", "inventoryConfig": {}, "itemId": "string", "itemType": "string", "items": [{}], "quantity": 1, "sku": "string", "stackable": false, "useCount": 1}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_inventory_configurations`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-list-inventory-configurations' \
    'string' \
    --code 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'code' \
    > result.txt
```

### Operation `public_list_item_types`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-list-item-types' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `public_list_tags`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-list-tags' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `public_list_inventories`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-list-inventories' \
    'string' \
    --inventory_configuration_code 'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    > result.txt
```

### Operation `public_consume_my_item`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-consume-my-item' \
    '{"options": ["string"], "qty": 1, "slotId": "string", "sourceItemId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_list_items`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-list-items' \
    'string' \
    'string' \
    --limit 1 \
    --offset 1 \
    --sort_by 'createdAt' \
    --source_item_id 'string' \
    --tags 'string' \
    > result.txt
```

### Operation `public_bulk_update_my_items`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-bulk-update-my-items' \
    '[{"customAttributes": {"string": {}}, "slotId": "string", "sourceItemId": "string", "tags": ["string"]}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_bulk_remove_my_items`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-bulk-remove-my-items' \
    '[{"slotId": "string", "sourceItemId": "string"}]' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_move_my_items`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-move-my-items' \
    '{"items": [{}], "srcInventoryId": "string"}' \
    'string' \
    'string' \
    > result.txt
```

### Operation `public_get_item`
```sh
$ python -m accelbyte_py_sdk_cli 'inventory-public-get-item' \
    'string' \
    'string' \
    'string' \
    'string' \
    > result.txt
```

