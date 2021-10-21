from .utils import randomize

from ..api.social.models import GameProfileHeader
from ..api.social.models import GameProfileInfo
from ..api.social.models import ErrorEntity
from ..api.social.models import FieldValidationError
from ..api.social.models import ValidationErrorEntity
from ..api.social.models import GameProfileRequest
from ..api.social.models import Attribute
from ..api.social.models import GameProfilePublicInfo
from ..api.social.models import UserGameProfiles
from ..api.social.models import GlobalStatItemInfo
from ..api.social.models import GlobalStatItemPagingSlicedResult
from ..api.social.models import Paging
from ..api.social.models import BulkStatItemOperationResult
from ..api.social.models import BulkUserStatItemInc
from ..api.social.models import UserStatItemInfo
from ..api.social.models import BulkUserStatItemReset
from ..api.social.models import StatInfo
from ..api.social.models import StatUpdate
from ..api.social.models import StatPagingSlicedResult
from ..api.social.models import StatCreate
from ..api.social.models import StatImportInfo
from ..api.social.models import BulkStatItemInc
from ..api.social.models import UserStatItemPagingSlicedResult
from ..api.social.models import BulkStatItemCreate
from ..api.social.models import BulkStatItemReset
from ..api.social.models import StatItemIncResult
from ..api.social.models import StatResetInfo
from ..api.social.models import StatItemInc
from ..api.social.models import BulkUserStatItemUpdate
from ..api.social.models import BulkStatItemUpdate
from ..api.social.models import StatItemUpdate
from ..api.social.models import NamespaceSlotConfigInfo
from ..api.social.models import SlotConfigUpdate
from ..api.social.models import SlotInfo
from ..api.social.models import UserSlotConfigInfo
from ..api.social.models import SlotMetadataUpdate


def create_game_profile_header_example() -> GameProfileHeader:
    instance = GameProfileHeader()
    instance.profile_id = randomize()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.profile_name = randomize()
    instance.avatar_url = randomize("url")
    instance.label = randomize()
    instance.tags = [randomize()]
    return instance


def create_game_profile_info_example() -> GameProfileInfo:
    instance = GameProfileInfo()
    instance.profile_id = randomize()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.profile_name = randomize()
    instance.avatar_url = randomize("url")
    instance.label = randomize()
    instance.tags = [randomize()]
    instance.statistics = [randomize()]
    instance.achievements = [randomize()]
    instance.inventories = [randomize()]
    instance.attributes = {randomize(): randomize()}
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int")
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    instance.dev_stack_trace = randomize()
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_value = randomize()
    instance.error_message = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int")
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance


def create_game_profile_request_example() -> GameProfileRequest:
    instance = GameProfileRequest()
    instance.profile_name = randomize()
    instance.avatar_url = randomize("url")
    instance.label = randomize()
    instance.tags = [randomize()]
    instance.statistics = [randomize()]
    instance.achievements = [randomize()]
    instance.inventories = [randomize()]
    instance.attributes = {randomize(): randomize()}
    return instance


def create_attribute_example() -> Attribute:
    instance = Attribute()
    instance.name = randomize()
    instance.value = randomize()
    return instance


def create_game_profile_public_info_example() -> GameProfilePublicInfo:
    instance = GameProfilePublicInfo()
    instance.profile_id = randomize()
    instance.namespace = randomize("slug")
    instance.profile_name = randomize()
    instance.avatar_url = randomize("url")
    return instance


def create_user_game_profiles_example() -> UserGameProfiles:
    instance = UserGameProfiles()
    instance.user_id = randomize("uid")
    instance.game_profiles = [create_game_profile_public_info_example()]
    return instance


def create_global_stat_item_info_example() -> GlobalStatItemInfo:
    instance = GlobalStatItemInfo()
    instance.stat_code = randomize()
    instance.stat_name = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize()
    instance.tags = [randomize()]
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_global_stat_item_paging_sliced_result_example() -> GlobalStatItemPagingSlicedResult:
    instance = GlobalStatItemPagingSlicedResult()
    instance.data = [create_global_stat_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_paging_example() -> Paging:
    instance = Paging()
    instance.previous = randomize()
    instance.next_ = randomize()
    return instance


def create_bulk_stat_item_operation_result_example() -> BulkStatItemOperationResult:
    instance = BulkStatItemOperationResult()
    instance.success = randomize("bool")
    instance.stat_code = randomize()
    instance.details = {randomize(): randomize()}
    return instance


def create_bulk_user_stat_item_inc_example() -> BulkUserStatItemInc:
    instance = BulkUserStatItemInc()
    instance.user_id = randomize("uid")
    instance.stat_code = randomize()
    instance.inc = randomize()
    return instance


def create_user_stat_item_info_example() -> UserStatItemInfo:
    instance = UserStatItemInfo()
    instance.stat_code = randomize()
    instance.stat_name = randomize()
    instance.namespace = randomize("slug")
    instance.value = randomize()
    instance.tags = [randomize()]
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    return instance


def create_bulk_user_stat_item_reset_example() -> BulkUserStatItemReset:
    instance = BulkUserStatItemReset()
    instance.user_id = randomize("uid")
    instance.stat_code = randomize()
    return instance


def create_stat_info_example() -> StatInfo:
    instance = StatInfo()
    instance.stat_code = randomize()
    instance.namespace = randomize("slug")
    instance.status = randomize()
    instance.name = randomize()
    instance.description = randomize()
    instance.minimum = randomize()
    instance.maximum = randomize()
    instance.default_value = randomize()
    instance.increment_only = randomize("bool")
    instance.set_as_global = randomize("bool")
    instance.set_by = randomize()
    instance.tags = [randomize()]
    instance.created_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_stat_update_example() -> StatUpdate:
    instance = StatUpdate()
    instance.name = randomize()
    instance.description = randomize()
    instance.tags = [randomize()]
    return instance


def create_stat_paging_sliced_result_example() -> StatPagingSlicedResult:
    instance = StatPagingSlicedResult()
    instance.data = [create_stat_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_stat_create_example() -> StatCreate:
    instance = StatCreate()
    instance.stat_code = randomize()
    instance.name = randomize()
    instance.description = randomize()
    instance.minimum = randomize()
    instance.maximum = randomize()
    instance.default_value = randomize()
    instance.increment_only = randomize("bool")
    instance.set_as_global = randomize("bool")
    instance.set_by = randomize()
    instance.tags = [randomize()]
    return instance


def create_stat_import_info_example() -> StatImportInfo:
    instance = StatImportInfo()
    instance.new_configs = [randomize()]
    instance.replaced_configs = [randomize()]
    instance.ignored_configs = [randomize()]
    instance.failed_configs = [randomize()]
    return instance


def create_bulk_stat_item_inc_example() -> BulkStatItemInc:
    instance = BulkStatItemInc()
    instance.stat_code = randomize()
    instance.inc = randomize()
    return instance


def create_user_stat_item_paging_sliced_result_example() -> UserStatItemPagingSlicedResult:
    instance = UserStatItemPagingSlicedResult()
    instance.data = [create_user_stat_item_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_bulk_stat_item_create_example() -> BulkStatItemCreate:
    instance = BulkStatItemCreate()
    instance.stat_code = randomize()
    return instance


def create_bulk_stat_item_reset_example() -> BulkStatItemReset:
    instance = BulkStatItemReset()
    instance.stat_code = randomize()
    return instance


def create_stat_item_inc_result_example() -> StatItemIncResult:
    instance = StatItemIncResult()
    instance.current_value = randomize()
    return instance


def create_stat_reset_info_example() -> StatResetInfo:
    instance = StatResetInfo()
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_stat_item_inc_example() -> StatItemInc:
    instance = StatItemInc()
    instance.inc = randomize()
    return instance


def create_bulk_user_stat_item_update_example() -> BulkUserStatItemUpdate:
    instance = BulkUserStatItemUpdate()
    instance.user_id = randomize("uid")
    instance.additional_key = randomize()
    instance.stat_code = randomize()
    instance.update_strategy = randomize()
    instance.value = randomize()
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_bulk_stat_item_update_example() -> BulkStatItemUpdate:
    instance = BulkStatItemUpdate()
    instance.stat_code = randomize()
    instance.update_strategy = randomize()
    instance.value = randomize()
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_stat_item_update_example() -> StatItemUpdate:
    instance = StatItemUpdate()
    instance.update_strategy = randomize()
    instance.value = randomize()
    instance.additional_data = {randomize(): randomize()}
    return instance


def create_namespace_slot_config_info_example() -> NamespaceSlotConfigInfo:
    instance = NamespaceSlotConfigInfo()
    instance.namespace = randomize("slug")
    instance.max_slots = randomize("int")
    instance.max_slot_size = randomize("int")
    return instance


def create_slot_config_update_example() -> SlotConfigUpdate:
    instance = SlotConfigUpdate()
    instance.max_slots = randomize("int")
    instance.max_slot_size = randomize("int")
    return instance


def create_slot_info_example() -> SlotInfo:
    instance = SlotInfo()
    instance.slot_id = randomize()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.label = randomize()
    instance.original_name = randomize()
    instance.stored_name = randomize()
    instance.mime_type = randomize()
    instance.size = randomize("int")
    instance.date_created = randomize()
    instance.date_modified = randomize()
    instance.date_accessed = randomize()
    instance.checksum = randomize()
    instance.tags = [randomize()]
    instance.custom_attribute = randomize()
    return instance


def create_user_slot_config_info_example() -> UserSlotConfigInfo:
    instance = UserSlotConfigInfo()
    instance.user_id = randomize("uid")
    instance.namespace = randomize("slug")
    instance.max_slots = randomize("int")
    instance.max_slot_size = randomize("int")
    return instance


def create_slot_metadata_update_example() -> SlotMetadataUpdate:
    instance = SlotMetadataUpdate()
    instance.label = randomize()
    instance.tags = [randomize()]
    instance.custom_attribute = randomize()
    return instance
