"""Auto-generated top-level package for the justice-social-service."""

__version__ = "1.21.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# game_profile
from .wrappers import get_profile
from .wrappers import get_user_profiles
from .wrappers import public_create_profile
from .wrappers import public_delete_profile
from .wrappers import public_get_profile
from .wrappers import public_get_profile_attribute
from .wrappers import public_get_user_game_profiles
from .wrappers import public_get_user_profiles
from .wrappers import public_update_attribute
from .wrappers import public_update_profile

# global_statistic
from .wrappers import get_global_stat_items

# slot
from .wrappers import get_slot_data
from .wrappers import get_user_namespace_slots
from .wrappers import public_create_user_namespace_slot
from .wrappers import public_delete_user_namespace_slot
from .wrappers import public_get_slot_data
from .wrappers import public_get_user_namespace_slots
from .wrappers import public_update_user_namespace_slot
from .wrappers import public_update_user_namespace_slot_metadata

# slot_config
from .wrappers import delete_namespace_slot_config
from .wrappers import delete_user_slot_config
from .wrappers import get_namespace_slot_config
from .wrappers import get_user_slot_config
from .wrappers import update_namespace_slot_config
from .wrappers import update_user_slot_config

# stat_configuration
from .wrappers import create_stat
from .wrappers import create_stat_1
from .wrappers import delete_stat
from .wrappers import export_stats
from .wrappers import get_stat
from .wrappers import get_stats
from .wrappers import import_stats
from .wrappers import query_stats
from .wrappers import update_stat

# user_statistic
from .wrappers import bulk_create_user_stat_items
from .wrappers import bulk_fetch_stat_items
from .wrappers import bulk_fetch_stat_items_1
from .wrappers import bulk_inc_user_stat_item
from .wrappers import bulk_inc_user_stat_item_1
from .wrappers import bulk_inc_user_stat_item_value
from .wrappers import bulk_inc_user_stat_item_value_1
from .wrappers import bulk_inc_user_stat_item_value_2
from .wrappers import bulk_reset_user_stat_item
from .wrappers import bulk_reset_user_stat_item_1
from .wrappers import bulk_reset_user_stat_item_2
from .wrappers import bulk_reset_user_stat_item_3
from .wrappers import bulk_update_user_stat_item
from .wrappers import bulk_update_user_stat_item_1
from .wrappers import bulk_update_user_stat_item_2
from .wrappers import bulk_update_user_stat_item_v2
from .wrappers import create_user_stat_item
from .wrappers import delete_user_stat_items
from .wrappers import delete_user_stat_items_1
from .wrappers import delete_user_stat_items_2
from .wrappers import get_user_stat_items
from .wrappers import inc_user_stat_item_value
from .wrappers import public_bulk_create_user_stat_items
from .wrappers import public_bulk_inc_user_stat_item
from .wrappers import public_bulk_inc_user_stat_item_1
from .wrappers import public_bulk_inc_user_stat_item_value
from .wrappers import public_create_user_stat_item
from .wrappers import public_inc_user_stat_item
from .wrappers import public_inc_user_stat_item_value
from .wrappers import public_query_user_stat_items
from .wrappers import reset_user_stat_item_value
from .wrappers import reset_user_stat_item_value_1
from .wrappers import update_user_stat_item_value
from .wrappers import update_user_stat_item_value_1
