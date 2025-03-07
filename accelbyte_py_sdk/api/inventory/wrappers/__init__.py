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

from ._admin_chaining_operations import admin_create_chaining_operations
from ._admin_chaining_operations import admin_create_chaining_operations_async

from ._admin_integration_configurations import admin_create_integration_configuration
from ._admin_integration_configurations import (
    admin_create_integration_configuration_async,
)
from ._admin_integration_configurations import admin_list_integration_configurations
from ._admin_integration_configurations import (
    admin_list_integration_configurations_async,
)
from ._admin_integration_configurations import admin_update_integration_configuration
from ._admin_integration_configurations import (
    admin_update_integration_configuration_async,
)
from ._admin_integration_configurations import (
    admin_update_status_integration_configuration,
)
from ._admin_integration_configurations import (
    admin_update_status_integration_configuration_async,
)

from ._admin_inventories import admin_create_inventory
from ._admin_inventories import admin_create_inventory_async
from ._admin_inventories import admin_get_inventory
from ._admin_inventories import admin_get_inventory_async
from ._admin_inventories import admin_list_inventories
from ._admin_inventories import admin_list_inventories_async
from ._admin_inventories import admin_purchasable
from ._admin_inventories import admin_purchasable_async
from ._admin_inventories import admin_update_inventory
from ._admin_inventories import admin_update_inventory_async
from ._admin_inventories import admin_update_user_inventories_by_inventory_code
from ._admin_inventories import admin_update_user_inventories_by_inventory_code_async
from ._admin_inventories import delete_inventory
from ._admin_inventories import delete_inventory_async

from ._admin_inventory_configurations import admin_create_inventory_configuration
from ._admin_inventory_configurations import admin_create_inventory_configuration_async
from ._admin_inventory_configurations import admin_delete_inventory_configuration
from ._admin_inventory_configurations import admin_delete_inventory_configuration_async
from ._admin_inventory_configurations import admin_get_inventory_configuration
from ._admin_inventory_configurations import admin_get_inventory_configuration_async
from ._admin_inventory_configurations import admin_list_inventory_configurations
from ._admin_inventory_configurations import admin_list_inventory_configurations_async
from ._admin_inventory_configurations import admin_update_inventory_configuration
from ._admin_inventory_configurations import admin_update_inventory_configuration_async

from ._admin_item_types import admin_create_item_type
from ._admin_item_types import admin_create_item_type_async
from ._admin_item_types import admin_delete_item_type
from ._admin_item_types import admin_delete_item_type_async
from ._admin_item_types import admin_list_item_types
from ._admin_item_types import admin_list_item_types_async

from ._admin_items import admin_bulk_remove_items
from ._admin_items import admin_bulk_remove_items_async
from ._admin_items import admin_bulk_save_item
from ._admin_items import admin_bulk_save_item_async
from ._admin_items import admin_bulk_save_item_to_inventory
from ._admin_items import admin_bulk_save_item_to_inventory_async
from ._admin_items import admin_bulk_update_my_items
from ._admin_items import admin_bulk_update_my_items_async
from ._admin_items import admin_consume_user_item
from ._admin_items import admin_consume_user_item_async
from ._admin_items import admin_get_inventory_item
from ._admin_items import admin_get_inventory_item_async
from ._admin_items import admin_list_items
from ._admin_items import admin_list_items_async
from ._admin_items import admin_save_item
from ._admin_items import admin_save_item_async
from ._admin_items import admin_save_item_to_inventory
from ._admin_items import admin_save_item_to_inventory_async
from ._admin_items import admin_sync_user_entitlements
from ._admin_items import admin_sync_user_entitlements_async

from ._admin_tags import admin_create_tag
from ._admin_tags import admin_create_tag_async
from ._admin_tags import admin_delete_tag
from ._admin_tags import admin_delete_tag_async
from ._admin_tags import admin_list_tags
from ._admin_tags import admin_list_tags_async

from ._public_inventories import public_list_inventories
from ._public_inventories import public_list_inventories_async

from ._public_inventory_configurations import public_list_inventory_configurations
from ._public_inventory_configurations import public_list_inventory_configurations_async

from ._public_item_types import public_list_item_types
from ._public_item_types import public_list_item_types_async

from ._public_items import public_bulk_remove_my_items
from ._public_items import public_bulk_remove_my_items_async
from ._public_items import public_bulk_update_my_items
from ._public_items import public_bulk_update_my_items_async
from ._public_items import public_consume_my_item
from ._public_items import public_consume_my_item_async
from ._public_items import public_get_item
from ._public_items import public_get_item_async
from ._public_items import public_list_items
from ._public_items import public_list_items_async
from ._public_items import public_move_my_items
from ._public_items import public_move_my_items_async

from ._public_tags import public_list_tags
from ._public_tags import public_list_tags_async
