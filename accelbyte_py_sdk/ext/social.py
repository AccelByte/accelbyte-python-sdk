# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
# pylint: disable=missing-module-docstring
# pylint: disable=too-many-arguments
# pylint: disable=too-many-branches
# pylint: disable=too-many-instance-attributes
# pylint: disable=too-many-lines
# pylint: disable=too-many-locals
# pylint: disable=too-many-public-methods
# pylint: disable=too-many-return-statements
# pylint: disable=too-many-statements
# pylint: disable=unused-import

from .utils import randomize

from ..api.social.models import ADTOObjectForResettingUserStatItems
from ..api.social.models import ADTOObjectForUserStatItemValue
from ..api.social.models import Attribute
from ..api.social.models import BulkCycleStatsAdd
from ..api.social.models import BulkStatCycleOperationResult
from ..api.social.models import BulkStatCycleRequest
from ..api.social.models import BulkStatCycleResult
from ..api.social.models import BulkStatItemCreate
from ..api.social.models import BulkStatItemInc
from ..api.social.models import BulkStatItemReset
from ..api.social.models import BulkStatItemUpdate
from ..api.social.models import BulkStatOperationResult
from ..api.social.models import BulkUserStatItemByStatCodes
from ..api.social.models import BulkUserStatItemInc
from ..api.social.models import BulkUserStatItemReset
from ..api.social.models import BulkUserStatItemUpdate
from ..api.social.models import CycleOverride
from ..api.social.models import CycleOverrideRequest
from ..api.social.models import ErrorEntity
from ..api.social.models import FieldValidationError
from ..api.social.models import GameProfileHeader
from ..api.social.models import GameProfileInfo
from ..api.social.models import GameProfilePublicInfo
from ..api.social.models import GameProfileRequest
from ..api.social.models import GlobalStatItemInfo
from ..api.social.models import GlobalStatItemPagingSlicedResult
from ..api.social.models import NamespaceSlotConfigInfo
from ..api.social.models import Paging
from ..api.social.models import Permission
from ..api.social.models import SlotConfigUpdate
from ..api.social.models import SlotInfo
from ..api.social.models import SlotMetadataUpdate
from ..api.social.models import StatCreate
from ..api.social.models import StatCycleCreate
from ..api.social.models import StatCycleInfo
from ..api.social.models import StatCyclePagingSlicedResult
from ..api.social.models import StatCycleUpdate
from ..api.social.models import StatImportInfo
from ..api.social.models import StatInfo
from ..api.social.models import StatItemInc
from ..api.social.models import StatItemIncResult
from ..api.social.models import StatItemUpdate
from ..api.social.models import StatItemValue
from ..api.social.models import StatItemValuePagingSlicedResult
from ..api.social.models import StatPagingSlicedResult
from ..api.social.models import StatResetInfo
from ..api.social.models import StatUpdate
from ..api.social.models import UserGameProfiles
from ..api.social.models import UserSlotConfigInfo
from ..api.social.models import UserStatCycleItemInfo
from ..api.social.models import UserStatCycleItemPagingSlicedResult
from ..api.social.models import UserStatItemInfo
from ..api.social.models import UserStatItemPagingSlicedResult
from ..api.social.models import ValidationErrorEntity


def create_a_dto_object_for_resetting_user_stat_items_example() -> (
    ADTOObjectForResettingUserStatItems
):
    instance = ADTOObjectForResettingUserStatItems()
    instance.stat_code = randomize()
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_a_dto_object_for_user_stat_item_value_example() -> (
    ADTOObjectForUserStatItemValue
):
    instance = ADTOObjectForUserStatItemValue()
    instance.profile_id = randomize()
    instance.stat_code = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_attribute_example() -> Attribute:
    instance = Attribute()
    instance.name = randomize()
    instance.value = randomize()
    return instance


def create_bulk_cycle_stats_add_example() -> BulkCycleStatsAdd:
    instance = BulkCycleStatsAdd()
    instance.stat_codes = [randomize()]
    return instance


def create_bulk_stat_cycle_operation_result_example() -> BulkStatCycleOperationResult:
    instance = BulkStatCycleOperationResult()
    instance.cycle_id = randomize()
    instance.details = {randomize(): randomize()}
    instance.stat_code = randomize()
    instance.success = randomize("bool")
    return instance


def create_bulk_stat_cycle_request_example() -> BulkStatCycleRequest:
    instance = BulkStatCycleRequest()
    instance.cycle_ids = [randomize()]
    return instance


def create_bulk_stat_cycle_result_example() -> BulkStatCycleResult:
    instance = BulkStatCycleResult()
    instance.data = [create_stat_cycle_info_example()]
    return instance


def create_bulk_stat_item_create_example() -> BulkStatItemCreate:
    instance = BulkStatItemCreate()
    instance.stat_code = randomize()
    return instance


def create_bulk_stat_item_inc_example() -> BulkStatItemInc:
    instance = BulkStatItemInc()
    instance.stat_code = randomize()
    instance.inc = randomize("int", min_val=1, max_val=1000)
    return instance


def create_bulk_stat_item_reset_example() -> BulkStatItemReset:
    instance = BulkStatItemReset()
    instance.stat_code = randomize()
    return instance


def create_bulk_stat_item_update_example() -> BulkStatItemUpdate:
    instance = BulkStatItemUpdate()
    instance.stat_code = randomize()
    instance.update_strategy = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_bulk_stat_operation_result_example() -> BulkStatOperationResult:
    instance = BulkStatOperationResult()
    instance.details = {randomize(): randomize()}
    instance.stat_code = randomize()
    instance.success = randomize("bool")
    instance.user_id = randomize("uid")
    return instance


def create_bulk_user_stat_item_by_stat_codes_example() -> BulkUserStatItemByStatCodes:
    instance = BulkUserStatItemByStatCodes()
    instance.stat_codes = [randomize()]
    return instance


def create_bulk_user_stat_item_inc_example() -> BulkUserStatItemInc:
    instance = BulkUserStatItemInc()
    instance.stat_code = randomize()
    instance.user_id = randomize("uid")
    instance.inc = randomize("int", min_val=1, max_val=1000)
    return instance


def create_bulk_user_stat_item_reset_example() -> BulkUserStatItemReset:
    instance = BulkUserStatItemReset()
    instance.stat_code = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_bulk_user_stat_item_update_example() -> BulkUserStatItemUpdate:
    instance = BulkUserStatItemUpdate()
    instance.stat_code = randomize()
    instance.update_strategy = randomize()
    instance.user_id = randomize("uid")
    instance.value = randomize("int", min_val=1, max_val=1000)
    instance.additional_data = {randomize(): randomize()}
    instance.additional_key = randomize()
    return instance


def create_cycle_override_example() -> CycleOverride:
    instance = CycleOverride()
    instance.cycle_id = randomize()
    instance.maximum = randomize("int", min_val=1, max_val=1000)
    instance.minimum = randomize("int", min_val=1, max_val=1000)
    return instance


def create_cycle_override_request_example() -> CycleOverrideRequest:
    instance = CycleOverrideRequest()
    instance.cycle_id = randomize()
    instance.maximum = randomize("int", min_val=1, max_val=1000)
    instance.minimum = randomize("int", min_val=1, max_val=1000)
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.dev_stack_trace = randomize()
    instance.message_variables = {randomize(): randomize()}
    instance.required_permission = create_permission_example()
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_message = randomize()
    instance.error_value = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_game_profile_header_example() -> GameProfileHeader:
    instance = GameProfileHeader()
    instance.avatar_url = randomize("url")
    instance.label = randomize()
    instance.namespace = randomize("slug")
    instance.profile_id = randomize()
    instance.profile_name = randomize()
    instance.tags = [randomize()]
    instance.user_id = randomize("uid")
    return instance


def create_game_profile_info_example() -> GameProfileInfo:
    instance = GameProfileInfo()
    instance.achievements = [randomize()]
    instance.attributes = {randomize(): randomize()}
    instance.avatar_url = randomize("url")
    instance.inventories = [randomize()]
    instance.label = randomize()
    instance.namespace = randomize("slug")
    instance.profile_id = randomize()
    instance.profile_name = randomize()
    instance.statistics = [randomize()]
    instance.tags = [randomize()]
    instance.user_id = randomize("uid")
    return instance


def create_game_profile_public_info_example() -> GameProfilePublicInfo:
    instance = GameProfilePublicInfo()
    instance.avatar_url = randomize("url")
    instance.namespace = randomize("slug")
    instance.profile_id = randomize()
    instance.profile_name = randomize()
    return instance


def create_game_profile_request_example() -> GameProfileRequest:
    instance = GameProfileRequest()
    instance.achievements = [randomize()]
    instance.attributes = {randomize(): randomize()}
    instance.avatar_url = randomize("url")
    instance.inventories = [randomize()]
    instance.label = randomize()
    instance.profile_name = randomize()
    instance.statistics = [randomize()]
    instance.tags = [randomize()]
    return instance


def create_global_stat_item_info_example() -> GlobalStatItemInfo:
    instance = GlobalStatItemInfo()
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.stat_code = randomize()
    instance.stat_name = randomize()
    instance.updated_at = randomize("date")
    instance.value = randomize("int", min_val=1, max_val=1000)
    instance.global_aggregation_method = randomize()
    instance.tags = [randomize()]
    return instance


def create_global_stat_item_paging_sliced_result_example() -> (
    GlobalStatItemPagingSlicedResult
):
    instance = GlobalStatItemPagingSlicedResult()
    instance.data = [create_global_stat_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_namespace_slot_config_info_example() -> NamespaceSlotConfigInfo:
    instance = NamespaceSlotConfigInfo()
    instance.max_slot_size = randomize("int", min_val=1, max_val=1000)
    instance.max_slots = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    return instance


def create_paging_example() -> Paging:
    instance = Paging()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_permission_example() -> Permission:
    instance = Permission()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    return instance


def create_slot_config_update_example() -> SlotConfigUpdate:
    instance = SlotConfigUpdate()
    instance.max_slot_size = randomize("int", min_val=1, max_val=1000)
    instance.max_slots = randomize("int", min_val=1, max_val=1000)
    return instance


def create_slot_info_example() -> SlotInfo:
    instance = SlotInfo()
    instance.checksum = randomize()
    instance.custom_attribute = randomize()
    instance.date_accessed = randomize("date")
    instance.date_created = randomize("date")
    instance.date_modified = randomize("date")
    instance.label = randomize()
    instance.mime_type = randomize()
    instance.namespace = randomize("slug")
    instance.original_name = randomize()
    instance.size = randomize("int", min_val=1, max_val=1000)
    instance.slot_id = randomize()
    instance.stored_name = randomize()
    instance.tags = [randomize()]
    instance.user_id = randomize("uid")
    return instance


def create_slot_metadata_update_example() -> SlotMetadataUpdate:
    instance = SlotMetadataUpdate()
    instance.custom_attribute = randomize()
    instance.label = randomize()
    instance.tags = [randomize()]
    return instance


def create_stat_create_example() -> StatCreate:
    instance = StatCreate()
    instance.default_value = randomize("int", min_val=1, max_val=1000)
    instance.name = randomize()
    instance.set_by = randomize()
    instance.stat_code = randomize()
    instance.cap_cycle_override = randomize("bool")
    instance.cycle_ids = [randomize()]
    instance.cycle_overrides = [create_cycle_override_request_example()]
    instance.description = randomize()
    instance.global_aggregation_method = randomize()
    instance.ignore_additional_data_on_value_rejected = randomize("bool")
    instance.increment_only = randomize("bool")
    instance.is_public = randomize("bool")
    instance.maximum = randomize("int", min_val=1, max_val=1000)
    instance.minimum = randomize("int", min_val=1, max_val=1000)
    instance.set_as_global = randomize("bool")
    instance.tags = [randomize()]
    instance.visibility = randomize()
    return instance


def create_stat_cycle_create_example() -> StatCycleCreate:
    instance = StatCycleCreate()
    instance.cycle_type = randomize()
    instance.name = randomize()
    instance.reset_time = randomize()
    instance.start = randomize("date")
    instance.description = randomize()
    instance.end = randomize("date")
    instance.id_ = randomize()
    instance.reset_date = randomize("int", min_val=1, max_val=1000)
    instance.reset_day = randomize("int", min_val=1, max_val=1000)
    instance.reset_month = randomize("int", min_val=1, max_val=1000)
    instance.season_period = randomize("int", min_val=1, max_val=1000)
    return instance


def create_stat_cycle_info_example() -> StatCycleInfo:
    instance = StatCycleInfo()
    instance.created_at = randomize("date")
    instance.current_version = randomize("int", min_val=1, max_val=1000)
    instance.cycle_type = randomize()
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.reset_time = randomize()
    instance.start = randomize("date")
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.description = randomize()
    instance.end = randomize("date")
    instance.next_reset = randomize("date")
    instance.reset_date = randomize("int", min_val=1, max_val=1000)
    instance.reset_day = randomize("int", min_val=1, max_val=1000)
    instance.reset_month = randomize("int", min_val=1, max_val=1000)
    instance.season_period = randomize("int", min_val=1, max_val=1000)
    return instance


def create_stat_cycle_paging_sliced_result_example() -> StatCyclePagingSlicedResult:
    instance = StatCyclePagingSlicedResult()
    instance.data = [create_stat_cycle_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_stat_cycle_update_example() -> StatCycleUpdate:
    instance = StatCycleUpdate()
    instance.cycle_type = randomize()
    instance.name = randomize()
    instance.reset_time = randomize()
    instance.start = randomize("date")
    instance.description = randomize()
    instance.end = randomize("date")
    instance.reset_date = randomize("int", min_val=1, max_val=1000)
    instance.reset_day = randomize("int", min_val=1, max_val=1000)
    instance.reset_month = randomize("int", min_val=1, max_val=1000)
    instance.season_period = randomize("int", min_val=1, max_val=1000)
    return instance


def create_stat_import_info_example() -> StatImportInfo:
    instance = StatImportInfo()
    instance.failed_configs = [randomize()]
    instance.ignored_configs = [randomize()]
    instance.new_configs = [randomize()]
    instance.replaced_configs = [randomize()]
    return instance


def create_stat_info_example() -> StatInfo:
    instance = StatInfo()
    instance.created_at = randomize("date")
    instance.default_value = randomize("int", min_val=1, max_val=1000)
    instance.ignore_additional_data_on_value_rejected = randomize("bool")
    instance.increment_only = randomize("bool")
    instance.is_public = randomize("bool")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.set_as_global = randomize("bool")
    instance.set_by = randomize()
    instance.stat_code = randomize()
    instance.status = randomize()
    instance.updated_at = randomize("date")
    instance.cap_cycle_override = randomize("bool")
    instance.cycle_ids = [randomize()]
    instance.cycle_overrides = [create_cycle_override_example()]
    instance.description = randomize()
    instance.global_aggregation_method = randomize()
    instance.maximum = randomize("int", min_val=1, max_val=1000)
    instance.minimum = randomize("int", min_val=1, max_val=1000)
    instance.tags = [randomize()]
    instance.visibility = randomize()
    return instance


def create_stat_item_inc_example() -> StatItemInc:
    instance = StatItemInc()
    instance.inc = randomize("int", min_val=1, max_val=1000)
    return instance


def create_stat_item_inc_result_example() -> StatItemIncResult:
    instance = StatItemIncResult()
    instance.current_value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_stat_item_update_example() -> StatItemUpdate:
    instance = StatItemUpdate()
    instance.update_strategy = randomize()
    instance.value = randomize("int", min_val=1, max_val=1000)
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_stat_item_value_example() -> StatItemValue:
    instance = StatItemValue()
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.value = randomize("int", min_val=1, max_val=1000)
    return instance


def create_stat_item_value_paging_sliced_result_example() -> (
    StatItemValuePagingSlicedResult
):
    instance = StatItemValuePagingSlicedResult()
    instance.data = [create_stat_item_value_example()]
    instance.paging = create_paging_example()
    return instance


def create_stat_paging_sliced_result_example() -> StatPagingSlicedResult:
    instance = StatPagingSlicedResult()
    instance.data = [create_stat_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_stat_reset_info_example() -> StatResetInfo:
    instance = StatResetInfo()
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_stat_update_example() -> StatUpdate:
    instance = StatUpdate()
    instance.cap_cycle_override = randomize("bool")
    instance.cycle_ids = [randomize()]
    instance.cycle_overrides = [create_cycle_override_request_example()]
    instance.default_value = randomize("int", min_val=1, max_val=1000)
    instance.description = randomize()
    instance.global_aggregation_method = randomize()
    instance.ignore_additional_data_on_value_rejected = randomize("bool")
    instance.is_public = randomize("bool")
    instance.name = randomize()
    instance.tags = [randomize()]
    instance.visibility = randomize()
    return instance


def create_user_game_profiles_example() -> UserGameProfiles:
    instance = UserGameProfiles()
    instance.game_profiles = [create_game_profile_public_info_example()]
    instance.user_id = randomize("uid")
    return instance


def create_user_slot_config_info_example() -> UserSlotConfigInfo:
    instance = UserSlotConfigInfo()
    instance.max_slot_size = randomize("int", min_val=1, max_val=1000)
    instance.max_slots = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_user_stat_cycle_item_info_example() -> UserStatCycleItemInfo:
    instance = UserStatCycleItemInfo()
    instance.created_at = randomize("date")
    instance.cycle_id = randomize()
    instance.cycle_name = randomize()
    instance.cycle_version = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.stat_code = randomize()
    instance.stat_name = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.value = randomize("int", min_val=1, max_val=1000)
    instance.additional_data = {randomize(): randomize()}
    instance.tags = [randomize()]
    return instance


def create_user_stat_cycle_item_paging_sliced_result_example() -> (
    UserStatCycleItemPagingSlicedResult
):
    instance = UserStatCycleItemPagingSlicedResult()
    instance.data = [create_user_stat_cycle_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_user_stat_item_info_example() -> UserStatItemInfo:
    instance = UserStatItemInfo()
    instance.created_at = randomize("date")
    instance.namespace = randomize("slug")
    instance.stat_code = randomize()
    instance.stat_name = randomize()
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.value = randomize("int", min_val=1, max_val=1000)
    instance.additional_data = {randomize(): randomize()}
    instance.tags = [randomize()]
    return instance


def create_user_stat_item_paging_sliced_result_example() -> (
    UserStatItemPagingSlicedResult
):
    instance = UserStatItemPagingSlicedResult()
    instance.data = [create_user_stat_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance
