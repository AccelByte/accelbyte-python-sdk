# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template_file: python-cli-init.j2

# justice-social-service (1.28.0)

from ._get_namespace_slot_config import get_namespace_slot_config
from ._update_namespace_slot_config import update_namespace_slot_config
from ._delete_namespace_slot_config import delete_namespace_slot_config
from ._get_user_slot_config import get_user_slot_config
from ._update_user_slot_config import update_user_slot_config
from ._delete_user_slot_config import delete_user_slot_config
from ._get_user_profiles import get_user_profiles
from ._get_profile import get_profile
from ._get_user_namespace_slots import get_user_namespace_slots
from ._get_slot_data import get_slot_data
from ._public_get_user_game_profiles import public_get_user_game_profiles
from ._public_get_user_profiles import public_get_user_profiles
from ._public_create_profile import public_create_profile
from ._public_get_profile import public_get_profile
from ._public_update_profile import public_update_profile
from ._public_delete_profile import public_delete_profile
from ._public_get_profile_attribute import public_get_profile_attribute
from ._public_update_attribute import public_update_attribute
from ._public_get_user_namespace_slots import public_get_user_namespace_slots
from ._public_create_user_namespace_slot import public_create_user_namespace_slot
from ._public_get_slot_data import public_get_slot_data
from ._public_update_user_namespace_slot import public_update_user_namespace_slot
from ._public_delete_user_namespace_slot import public_delete_user_namespace_slot
from ._public_update_user_namespace_slot_metadata import public_update_user_namespace_slot_metadata
from ._get_global_stat_items import get_global_stat_items
from ._bulk_fetch_stat_items import bulk_fetch_stat_items
from ._bulk_inc_user_stat_item import bulk_inc_user_stat_item
from ._bulk_inc_user_stat_item_value import bulk_inc_user_stat_item_value
from ._bulk_reset_user_stat_item import bulk_reset_user_stat_item
from ._get_stats import get_stats
from ._create_stat import create_stat
from ._export_stats import export_stats
from ._import_stats import import_stats
from ._query_stats import query_stats
from ._get_stat import get_stat
from ._delete_stat import delete_stat
from ._update_stat import update_stat
from ._get_user_stat_items import get_user_stat_items
from ._bulk_create_user_stat_items import bulk_create_user_stat_items
from ._bulk_inc_user_stat_item_1 import bulk_inc_user_stat_item_1
from ._bulk_inc_user_stat_item_value_1 import bulk_inc_user_stat_item_value_1
from ._bulk_reset_user_stat_item_1 import bulk_reset_user_stat_item_1
from ._create_user_stat_item import create_user_stat_item
from ._delete_user_stat_items import delete_user_stat_items
from ._inc_user_stat_item_value import inc_user_stat_item_value
from ._reset_user_stat_item_value import reset_user_stat_item_value
from ._bulk_fetch_stat_items_1 import bulk_fetch_stat_items_1
from ._public_bulk_inc_user_stat_item import public_bulk_inc_user_stat_item
from ._public_bulk_inc_user_stat_item_value import public_bulk_inc_user_stat_item_value
from ._bulk_reset_user_stat_item_2 import bulk_reset_user_stat_item_2
from ._create_stat_1 import create_stat_1
from ._public_query_user_stat_items import public_query_user_stat_items
from ._public_bulk_create_user_stat_items import public_bulk_create_user_stat_items
from ._public_bulk_inc_user_stat_item_1 import public_bulk_inc_user_stat_item_1
from ._bulk_inc_user_stat_item_value_2 import bulk_inc_user_stat_item_value_2
from ._bulk_reset_user_stat_item_3 import bulk_reset_user_stat_item_3
from ._public_create_user_stat_item import public_create_user_stat_item
from ._delete_user_stat_items_1 import delete_user_stat_items_1
from ._public_inc_user_stat_item import public_inc_user_stat_item
from ._public_inc_user_stat_item_value import public_inc_user_stat_item_value
from ._reset_user_stat_item_value_1 import reset_user_stat_item_value_1
from ._bulk_update_user_stat_item_v2 import bulk_update_user_stat_item_v2
from ._bulk_update_user_stat_item import bulk_update_user_stat_item
from ._bulk_reset_user_stat_item_values import bulk_reset_user_stat_item_values
from ._delete_user_stat_items_2 import delete_user_stat_items_2
from ._update_user_stat_item_value import update_user_stat_item_value
from ._bulk_update_user_stat_item_1 import bulk_update_user_stat_item_1
from ._bulk_update_user_stat_item_2 import bulk_update_user_stat_item_2
from ._update_user_stat_item_value_1 import update_user_stat_item_value_1


commands = [
    get_namespace_slot_config,
    update_namespace_slot_config,
    delete_namespace_slot_config,
    get_user_slot_config,
    update_user_slot_config,
    delete_user_slot_config,
    get_user_profiles,
    get_profile,
    get_user_namespace_slots,
    get_slot_data,
    public_get_user_game_profiles,
    public_get_user_profiles,
    public_create_profile,
    public_get_profile,
    public_update_profile,
    public_delete_profile,
    public_get_profile_attribute,
    public_update_attribute,
    public_get_user_namespace_slots,
    public_create_user_namespace_slot,
    public_get_slot_data,
    public_update_user_namespace_slot,
    public_delete_user_namespace_slot,
    public_update_user_namespace_slot_metadata,
    get_global_stat_items,
    bulk_fetch_stat_items,
    bulk_inc_user_stat_item,
    bulk_inc_user_stat_item_value,
    bulk_reset_user_stat_item,
    get_stats,
    create_stat,
    export_stats,
    import_stats,
    query_stats,
    get_stat,
    delete_stat,
    update_stat,
    get_user_stat_items,
    bulk_create_user_stat_items,
    bulk_inc_user_stat_item_1,
    bulk_inc_user_stat_item_value_1,
    bulk_reset_user_stat_item_1,
    create_user_stat_item,
    delete_user_stat_items,
    inc_user_stat_item_value,
    reset_user_stat_item_value,
    bulk_fetch_stat_items_1,
    public_bulk_inc_user_stat_item,
    public_bulk_inc_user_stat_item_value,
    bulk_reset_user_stat_item_2,
    create_stat_1,
    public_query_user_stat_items,
    public_bulk_create_user_stat_items,
    public_bulk_inc_user_stat_item_1,
    bulk_inc_user_stat_item_value_2,
    bulk_reset_user_stat_item_3,
    public_create_user_stat_item,
    delete_user_stat_items_1,
    public_inc_user_stat_item,
    public_inc_user_stat_item_value,
    reset_user_stat_item_value_1,
    bulk_update_user_stat_item_v2,
    bulk_update_user_stat_item,
    bulk_reset_user_stat_item_values,
    delete_user_stat_items_2,
    update_user_stat_item_value,
    bulk_update_user_stat_item_1,
    bulk_update_user_stat_item_2,
    update_user_stat_item_value_1,
]
