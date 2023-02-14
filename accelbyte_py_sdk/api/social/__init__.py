# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

"""Auto-generated package that contains models used by the AccelByte Cloud Social Service."""

__version__ = "1.33.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

# game_profile
from .wrappers import get_profile
from .wrappers import get_profile_async
from .wrappers import get_user_profiles
from .wrappers import get_user_profiles_async
from .wrappers import public_create_profile
from .wrappers import public_create_profile_async
from .wrappers import public_delete_profile
from .wrappers import public_delete_profile_async
from .wrappers import public_get_profile
from .wrappers import public_get_profile_async
from .wrappers import public_get_profile_attribute
from .wrappers import public_get_profile_attribute_async
from .wrappers import public_get_user_game_profiles
from .wrappers import public_get_user_game_profiles_async
from .wrappers import public_get_user_profiles
from .wrappers import public_get_user_profiles_async
from .wrappers import public_update_attribute
from .wrappers import public_update_attribute_async
from .wrappers import public_update_profile
from .wrappers import public_update_profile_async

# global_statistic
from .wrappers import get_global_stat_item_by_stat_code
from .wrappers import get_global_stat_item_by_stat_code_async
from .wrappers import get_global_stat_item_by_stat_code_1
from .wrappers import get_global_stat_item_by_stat_code_1_async
from .wrappers import get_global_stat_items
from .wrappers import get_global_stat_items_async
from .wrappers import get_global_stat_items_1
from .wrappers import get_global_stat_items_1_async

# slot
from .wrappers import get_slot_data
from .wrappers import get_slot_data_async
from .wrappers import get_user_namespace_slots
from .wrappers import get_user_namespace_slots_async
from .wrappers import public_create_user_namespace_slot
from .wrappers import public_create_user_namespace_slot_async
from .wrappers import public_delete_user_namespace_slot
from .wrappers import public_delete_user_namespace_slot_async
from .wrappers import public_get_slot_data
from .wrappers import public_get_slot_data_async
from .wrappers import public_get_user_namespace_slots
from .wrappers import public_get_user_namespace_slots_async
from .wrappers import public_update_user_namespace_slot
from .wrappers import public_update_user_namespace_slot_async
from .wrappers import public_update_user_namespace_slot_metadata
from .wrappers import public_update_user_namespace_slot_metadata_async

# slot_config
from .wrappers import delete_namespace_slot_config
from .wrappers import delete_namespace_slot_config_async
from .wrappers import delete_user_slot_config
from .wrappers import delete_user_slot_config_async
from .wrappers import get_namespace_slot_config
from .wrappers import get_namespace_slot_config_async
from .wrappers import get_user_slot_config
from .wrappers import get_user_slot_config_async
from .wrappers import update_namespace_slot_config
from .wrappers import update_namespace_slot_config_async
from .wrappers import update_user_slot_config
from .wrappers import update_user_slot_config_async

# stat_configuration
from .wrappers import create_stat
from .wrappers import create_stat_async
from .wrappers import create_stat_1
from .wrappers import create_stat_1_async
from .wrappers import delete_stat
from .wrappers import delete_stat_async
from .wrappers import delete_tied_stat
from .wrappers import delete_tied_stat_async
from .wrappers import export_stats
from .wrappers import export_stats_async
from .wrappers import get_stat
from .wrappers import get_stat_async
from .wrappers import get_stats
from .wrappers import get_stats_async
from .wrappers import import_stats
from .wrappers import import_stats_async
from .wrappers import query_stats
from .wrappers import query_stats_async
from .wrappers import update_stat
from .wrappers import update_stat_async

# user_statistic
from .wrappers import bulk_create_user_stat_items
from .wrappers import bulk_create_user_stat_items_async
from .wrappers import bulk_fetch_or_default_stat_items
from .wrappers import bulk_fetch_or_default_stat_items_async
from .wrappers import bulk_fetch_or_default_stat_items_1
from .wrappers import bulk_fetch_or_default_stat_items_1_async
from .wrappers import bulk_fetch_stat_items
from .wrappers import bulk_fetch_stat_items_async
from .wrappers import bulk_fetch_stat_items_1
from .wrappers import bulk_fetch_stat_items_1_async
from .wrappers import bulk_inc_user_stat_item
from .wrappers import bulk_inc_user_stat_item_async
from .wrappers import bulk_inc_user_stat_item_1
from .wrappers import bulk_inc_user_stat_item_1_async
from .wrappers import bulk_inc_user_stat_item_value
from .wrappers import bulk_inc_user_stat_item_value_async
from .wrappers import bulk_inc_user_stat_item_value_1
from .wrappers import bulk_inc_user_stat_item_value_1_async
from .wrappers import bulk_inc_user_stat_item_value_2
from .wrappers import bulk_inc_user_stat_item_value_2_async
from .wrappers import bulk_reset_user_stat_item
from .wrappers import bulk_reset_user_stat_item_async
from .wrappers import bulk_reset_user_stat_item_1
from .wrappers import bulk_reset_user_stat_item_1_async
from .wrappers import bulk_reset_user_stat_item_2
from .wrappers import bulk_reset_user_stat_item_2_async
from .wrappers import bulk_reset_user_stat_item_3
from .wrappers import bulk_reset_user_stat_item_3_async
from .wrappers import bulk_reset_user_stat_item_values
from .wrappers import bulk_reset_user_stat_item_values_async
from .wrappers import bulk_update_user_stat_item
from .wrappers import bulk_update_user_stat_item_async
from .wrappers import bulk_update_user_stat_item_1
from .wrappers import bulk_update_user_stat_item_1_async
from .wrappers import bulk_update_user_stat_item_2
from .wrappers import bulk_update_user_stat_item_2_async
from .wrappers import bulk_update_user_stat_item_v2
from .wrappers import bulk_update_user_stat_item_v2_async
from .wrappers import create_user_stat_item
from .wrappers import create_user_stat_item_async
from .wrappers import delete_user_stat_items
from .wrappers import delete_user_stat_items_async
from .wrappers import delete_user_stat_items_1
from .wrappers import delete_user_stat_items_1_async
from .wrappers import delete_user_stat_items_2
from .wrappers import delete_user_stat_items_2_async
from .wrappers import get_user_stat_items
from .wrappers import get_user_stat_items_async
from .wrappers import inc_user_stat_item_value
from .wrappers import inc_user_stat_item_value_async
from .wrappers import public_bulk_create_user_stat_items
from .wrappers import public_bulk_create_user_stat_items_async
from .wrappers import public_bulk_inc_user_stat_item
from .wrappers import public_bulk_inc_user_stat_item_async
from .wrappers import public_bulk_inc_user_stat_item_1
from .wrappers import public_bulk_inc_user_stat_item_1_async
from .wrappers import public_bulk_inc_user_stat_item_value
from .wrappers import public_bulk_inc_user_stat_item_value_async
from .wrappers import public_create_user_stat_item
from .wrappers import public_create_user_stat_item_async
from .wrappers import public_inc_user_stat_item
from .wrappers import public_inc_user_stat_item_async
from .wrappers import public_inc_user_stat_item_value
from .wrappers import public_inc_user_stat_item_value_async
from .wrappers import public_query_user_stat_items
from .wrappers import public_query_user_stat_items_async
from .wrappers import public_query_user_stat_items_1
from .wrappers import public_query_user_stat_items_1_async
from .wrappers import public_query_user_stat_items_2
from .wrappers import public_query_user_stat_items_2_async
from .wrappers import reset_user_stat_item_value
from .wrappers import reset_user_stat_item_value_async
from .wrappers import reset_user_stat_item_value_1
from .wrappers import reset_user_stat_item_value_1_async
from .wrappers import update_user_stat_item_value
from .wrappers import update_user_stat_item_value_async
from .wrappers import update_user_stat_item_value_1
from .wrappers import update_user_stat_item_value_1_async
