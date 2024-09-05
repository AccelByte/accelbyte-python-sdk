# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template_file: python-cli-init.j2

# justice-inventory-service

from ._admin_create_chaining_operations import admin_create_chaining_operations
from ._admin_list_integration_configurations import (
    admin_list_integration_configurations,
)
from ._admin_create_integration_configuration import (
    admin_create_integration_configuration,
)
from ._admin_update_integration_configuration import (
    admin_update_integration_configuration,
)
from ._admin_update_status_integration_configuration import (
    admin_update_status_integration_configuration,
)
from ._admin_list_inventories import admin_list_inventories
from ._admin_create_inventory import admin_create_inventory
from ._admin_get_inventory import admin_get_inventory
from ._admin_update_inventory import admin_update_inventory
from ._delete_inventory import delete_inventory
from ._admin_list_items import admin_list_items
from ._admin_get_inventory_item import admin_get_inventory_item
from ._admin_list_inventory_configurations import admin_list_inventory_configurations
from ._admin_create_inventory_configuration import admin_create_inventory_configuration
from ._admin_get_inventory_configuration import admin_get_inventory_configuration
from ._admin_update_inventory_configuration import admin_update_inventory_configuration
from ._admin_delete_inventory_configuration import admin_delete_inventory_configuration
from ._admin_list_item_types import admin_list_item_types
from ._admin_create_item_type import admin_create_item_type
from ._admin_delete_item_type import admin_delete_item_type
from ._admin_list_tags import admin_list_tags
from ._admin_create_tag import admin_create_tag
from ._admin_delete_tag import admin_delete_tag
from ._admin_consume_user_item import admin_consume_user_item
from ._admin_bulk_update_my_items import admin_bulk_update_my_items
from ._admin_save_item_to_inventory import admin_save_item_to_inventory
from ._admin_bulk_remove_items import admin_bulk_remove_items
from ._admin_bulk_save_item_to_inventory import admin_bulk_save_item_to_inventory
from ._admin_update_user_inventories_by_inventory_code import (
    admin_update_user_inventories_by_inventory_code,
)
from ._admin_save_item import admin_save_item
from ._admin_bulk_save_item import admin_bulk_save_item
from ._admin_sync_user_entitlements import admin_sync_user_entitlements
from ._admin_purchasable import admin_purchasable
from ._public_list_inventory_configurations import public_list_inventory_configurations
from ._public_list_item_types import public_list_item_types
from ._public_list_tags import public_list_tags
from ._public_list_inventories import public_list_inventories
from ._public_consume_my_item import public_consume_my_item
from ._public_list_items import public_list_items
from ._public_bulk_update_my_items import public_bulk_update_my_items
from ._public_bulk_remove_my_items import public_bulk_remove_my_items
from ._public_move_my_items import public_move_my_items
from ._public_get_item import public_get_item


commands = [
    admin_create_chaining_operations,
    admin_list_integration_configurations,
    admin_create_integration_configuration,
    admin_update_integration_configuration,
    admin_update_status_integration_configuration,
    admin_list_inventories,
    admin_create_inventory,
    admin_get_inventory,
    admin_update_inventory,
    delete_inventory,
    admin_list_items,
    admin_get_inventory_item,
    admin_list_inventory_configurations,
    admin_create_inventory_configuration,
    admin_get_inventory_configuration,
    admin_update_inventory_configuration,
    admin_delete_inventory_configuration,
    admin_list_item_types,
    admin_create_item_type,
    admin_delete_item_type,
    admin_list_tags,
    admin_create_tag,
    admin_delete_tag,
    admin_consume_user_item,
    admin_bulk_update_my_items,
    admin_save_item_to_inventory,
    admin_bulk_remove_items,
    admin_bulk_save_item_to_inventory,
    admin_update_user_inventories_by_inventory_code,
    admin_save_item,
    admin_bulk_save_item,
    admin_sync_user_entitlements,
    admin_purchasable,
    public_list_inventory_configurations,
    public_list_item_types,
    public_list_tags,
    public_list_inventories,
    public_consume_my_item,
    public_list_items,
    public_bulk_update_my_items,
    public_bulk_remove_my_items,
    public_move_my_items,
    public_get_item,
]
