# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Inventory Service."""

__version__ = "0.2.12"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# admin_chaining_operations
from .wrappers import admin_create_chaining_operations
from .wrappers import admin_create_chaining_operations_async

# admin_integration_configurations
from .wrappers import admin_create_integration_configuration
from .wrappers import admin_create_integration_configuration_async
from .wrappers import admin_list_integration_configurations
from .wrappers import admin_list_integration_configurations_async
from .wrappers import admin_update_integration_configuration
from .wrappers import admin_update_integration_configuration_async
from .wrappers import admin_update_status_integration_configuration
from .wrappers import admin_update_status_integration_configuration_async

# admin_inventories
from .wrappers import admin_create_inventory
from .wrappers import admin_create_inventory_async
from .wrappers import admin_get_inventory
from .wrappers import admin_get_inventory_async
from .wrappers import admin_list_inventories
from .wrappers import admin_list_inventories_async
from .wrappers import admin_purchasable
from .wrappers import admin_purchasable_async
from .wrappers import admin_update_inventory
from .wrappers import admin_update_inventory_async
from .wrappers import admin_update_user_inventories_by_inventory_code
from .wrappers import admin_update_user_inventories_by_inventory_code_async
from .wrappers import delete_inventory
from .wrappers import delete_inventory_async

# admin_inventory_configurations
from .wrappers import admin_create_inventory_configuration
from .wrappers import admin_create_inventory_configuration_async
from .wrappers import admin_delete_inventory_configuration
from .wrappers import admin_delete_inventory_configuration_async
from .wrappers import admin_get_inventory_configuration
from .wrappers import admin_get_inventory_configuration_async
from .wrappers import admin_list_inventory_configurations
from .wrappers import admin_list_inventory_configurations_async
from .wrappers import admin_update_inventory_configuration
from .wrappers import admin_update_inventory_configuration_async

# admin_item_types
from .wrappers import admin_create_item_type
from .wrappers import admin_create_item_type_async
from .wrappers import admin_delete_item_type
from .wrappers import admin_delete_item_type_async
from .wrappers import admin_list_item_types
from .wrappers import admin_list_item_types_async

# admin_items
from .wrappers import admin_bulk_remove_items
from .wrappers import admin_bulk_remove_items_async
from .wrappers import admin_bulk_save_item
from .wrappers import admin_bulk_save_item_async
from .wrappers import admin_bulk_save_item_to_inventory
from .wrappers import admin_bulk_save_item_to_inventory_async
from .wrappers import admin_bulk_update_my_items
from .wrappers import admin_bulk_update_my_items_async
from .wrappers import admin_consume_user_item
from .wrappers import admin_consume_user_item_async
from .wrappers import admin_get_inventory_item
from .wrappers import admin_get_inventory_item_async
from .wrappers import admin_list_items
from .wrappers import admin_list_items_async
from .wrappers import admin_save_item
from .wrappers import admin_save_item_async
from .wrappers import admin_save_item_to_inventory
from .wrappers import admin_save_item_to_inventory_async
from .wrappers import admin_sync_user_entitlements
from .wrappers import admin_sync_user_entitlements_async

# admin_tags
from .wrappers import admin_create_tag
from .wrappers import admin_create_tag_async
from .wrappers import admin_delete_tag
from .wrappers import admin_delete_tag_async
from .wrappers import admin_list_tags
from .wrappers import admin_list_tags_async

# public_inventories
from .wrappers import public_list_inventories
from .wrappers import public_list_inventories_async

# public_inventory_configurations
from .wrappers import public_list_inventory_configurations
from .wrappers import public_list_inventory_configurations_async

# public_item_types
from .wrappers import public_list_item_types
from .wrappers import public_list_item_types_async

# public_items
from .wrappers import public_bulk_remove_my_items
from .wrappers import public_bulk_remove_my_items_async
from .wrappers import public_bulk_update_my_items
from .wrappers import public_bulk_update_my_items_async
from .wrappers import public_consume_my_item
from .wrappers import public_consume_my_item_async
from .wrappers import public_get_item
from .wrappers import public_get_item_async
from .wrappers import public_list_items
from .wrappers import public_list_items_async
from .wrappers import public_move_my_items
from .wrappers import public_move_my_items_async

# public_tags
from .wrappers import public_list_tags
from .wrappers import public_list_tags_async
