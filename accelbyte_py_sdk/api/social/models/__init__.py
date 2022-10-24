# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

"""Auto-generated package that contains models used by the AccelByte Cloud Social Service."""

__version__ = "1.30.1"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .a_dto_object_for_resetting_user_stat_items import (
    ADTOObjectForResettingUserStatItems,
)
from .a_dto_object_for_user_stat_item_value import ADTOObjectForUserStatItemValue
from .attribute import Attribute
from .bulk_stat_item_create import BulkStatItemCreate
from .bulk_stat_item_inc import BulkStatItemInc
from .bulk_stat_item_operation_result import BulkStatItemOperationResult
from .bulk_stat_item_reset import BulkStatItemReset
from .bulk_stat_item_update import BulkStatItemUpdate
from .bulk_stat_item_update import (
    UpdateStrategyEnum as BulkStatItemUpdateUpdateStrategyEnum,
)
from .bulk_user_stat_item_inc import BulkUserStatItemInc
from .bulk_user_stat_item_reset import BulkUserStatItemReset
from .bulk_user_stat_item_update import BulkUserStatItemUpdate
from .bulk_user_stat_item_update import (
    UpdateStrategyEnum as BulkUserStatItemUpdateUpdateStrategyEnum,
)
from .error_entity import ErrorEntity
from .field_validation_error import FieldValidationError
from .game_profile_header import GameProfileHeader
from .game_profile_info import GameProfileInfo
from .game_profile_public_info import GameProfilePublicInfo
from .game_profile_request import GameProfileRequest
from .global_stat_item_info import GlobalStatItemInfo
from .global_stat_item_paging_sliced_result import GlobalStatItemPagingSlicedResult
from .namespace_slot_config_info import NamespaceSlotConfigInfo
from .paging import Paging
from .slot_config_update import SlotConfigUpdate
from .slot_info import SlotInfo
from .slot_metadata_update import SlotMetadataUpdate
from .stat_create import StatCreate
from .stat_create import SetByEnum as StatCreateSetByEnum
from .stat_import_info import StatImportInfo
from .stat_info import StatInfo
from .stat_info import SetByEnum as StatInfoSetByEnum, StatusEnum as StatInfoStatusEnum
from .stat_item_inc import StatItemInc
from .stat_item_inc_result import StatItemIncResult
from .stat_item_update import StatItemUpdate
from .stat_item_update import UpdateStrategyEnum as StatItemUpdateUpdateStrategyEnum
from .stat_paging_sliced_result import StatPagingSlicedResult
from .stat_reset_info import StatResetInfo
from .stat_update import StatUpdate
from .user_game_profiles import UserGameProfiles
from .user_slot_config_info import UserSlotConfigInfo
from .user_stat_item_info import UserStatItemInfo
from .user_stat_item_paging_sliced_result import UserStatItemPagingSlicedResult
from .validation_error_entity import ValidationErrorEntity
