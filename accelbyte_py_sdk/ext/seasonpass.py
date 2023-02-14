# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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

from ..api.seasonpass.models import BulkUserProgressionRequest
from ..api.seasonpass.models import ClaimableRewards
from ..api.seasonpass.models import ClaimableUserSeasonInfo
from ..api.seasonpass.models import ErrorEntity
from ..api.seasonpass.models import ExcessStrategy
from ..api.seasonpass.models import ExpGrantHistoryInfo
from ..api.seasonpass.models import ExpGrantHistoryPagingSlicedResult
from ..api.seasonpass.models import FieldValidationError
from ..api.seasonpass.models import FullSeasonInfo
from ..api.seasonpass.models import Image
from ..api.seasonpass.models import ListSeasonInfo
from ..api.seasonpass.models import ListSeasonInfoPagingSlicedResult
from ..api.seasonpass.models import ListUserSeasonInfo
from ..api.seasonpass.models import ListUserSeasonInfoPagingSlicedResult
from ..api.seasonpass.models import Localization
from ..api.seasonpass.models import LocalizedPassInfo
from ..api.seasonpass.models import LocalizedSeasonInfo
from ..api.seasonpass.models import Ownership
from ..api.seasonpass.models import Paging
from ..api.seasonpass.models import PassCreate
from ..api.seasonpass.models import PassInfo
from ..api.seasonpass.models import PassUpdate
from ..api.seasonpass.models import ReasonTagsResult
from ..api.seasonpass.models import RewardCreate
from ..api.seasonpass.models import RewardCurrency
from ..api.seasonpass.models import RewardInfo
from ..api.seasonpass.models import RewardUpdate
from ..api.seasonpass.models import SeasonCloneRequest
from ..api.seasonpass.models import SeasonCreate
from ..api.seasonpass.models import SeasonInfo
from ..api.seasonpass.models import SeasonSummary
from ..api.seasonpass.models import SeasonUpdate
from ..api.seasonpass.models import Tier
from ..api.seasonpass.models import TierCreate
from ..api.seasonpass.models import TierInput
from ..api.seasonpass.models import TierPagingSlicedResult
from ..api.seasonpass.models import TierReorder
from ..api.seasonpass.models import UserExpGrant
from ..api.seasonpass.models import UserPassGrant
from ..api.seasonpass.models import UserPurchasable
from ..api.seasonpass.models import UserRewardClaim
from ..api.seasonpass.models import UserSeasonSummary
from ..api.seasonpass.models import UserTierGrant
from ..api.seasonpass.models import ValidationErrorEntity


def create_bulk_user_progression_request_example() -> BulkUserProgressionRequest:
    instance = BulkUserProgressionRequest()
    instance.user_ids = [randomize()]
    return instance


def create_claimable_rewards_example() -> ClaimableRewards:
    instance = ClaimableRewards()
    instance.claiming_rewards = {randomize(): randomize()}
    instance.to_claim_rewards = {randomize(): randomize()}
    return instance


def create_claimable_user_season_info_example() -> ClaimableUserSeasonInfo:
    instance = ClaimableUserSeasonInfo()
    instance.claiming_rewards = {randomize(): randomize()}
    instance.cleared = randomize("bool")
    instance.created_at = randomize("date")
    instance.current_exp = randomize("int", min_val=1, max_val=1000)
    instance.current_tier_index = randomize("int", min_val=1, max_val=1000)
    instance.enrolled_at = randomize("date")
    instance.enrolled_passes = [randomize()]
    instance.id_ = randomize()
    instance.last_tier_index = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.required_exp = randomize("int", min_val=1, max_val=1000)
    instance.season_id = randomize()
    instance.to_claim_rewards = {randomize(): randomize()}
    instance.updated_at = randomize("date")
    instance.user_id = randomize("uid")
    instance.season = create_season_summary_example()
    instance.total_exp = randomize("int", min_val=1, max_val=1000)
    instance.total_paid_for_exp = randomize("int", min_val=1, max_val=1000)
    instance.total_sweat_exp = randomize("int", min_val=1, max_val=1000)
    return instance


def create_error_entity_example() -> ErrorEntity:
    instance = ErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.dev_stack_trace = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_excess_strategy_example() -> ExcessStrategy:
    instance = ExcessStrategy()
    instance.method = randomize()
    instance.currency = randomize()
    instance.percent_per_exp = randomize("int", min_val=1, max_val=1000)
    return instance


def create_exp_grant_history_info_example() -> ExpGrantHistoryInfo:
    instance = ExpGrantHistoryInfo()
    instance.created_at = randomize("date")
    instance.grant_exp = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.season_id = randomize()
    instance.user_id = randomize("uid")
    instance.source = randomize()
    instance.tags = [randomize()]
    return instance


def create_exp_grant_history_paging_sliced_result_example() -> (
    ExpGrantHistoryPagingSlicedResult
):
    instance = ExpGrantHistoryPagingSlicedResult()
    instance.data = [create_exp_grant_history_info_example()]
    instance.paging = create_paging_example()
    instance.total = randomize("int", min_val=1, max_val=1000)
    return instance


def create_field_validation_error_example() -> FieldValidationError:
    instance = FieldValidationError()
    instance.error_code = randomize()
    instance.error_field = randomize()
    instance.error_message = randomize()
    instance.error_value = randomize()
    instance.message_variables = {randomize(): randomize()}
    return instance


def create_full_season_info_example() -> FullSeasonInfo:
    instance = FullSeasonInfo()
    instance.id_ = randomize()
    instance.localizations = {}
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.passes = [create_pass_info_example()]
    instance.rewards = {}
    instance.tiers = [create_tier_example()]
    instance.images = [create_image_example()]
    return instance


def create_image_example() -> Image:
    instance = Image()
    instance.height = randomize("int", min_val=1, max_val=1000)
    instance.image_url = randomize("url")
    instance.width = randomize("int", min_val=1, max_val=1000)
    instance.as_ = randomize()
    instance.caption = randomize()
    instance.small_image_url = randomize("url")
    return instance


def create_list_season_info_example() -> ListSeasonInfo:
    instance = ListSeasonInfo()
    instance.created_at = randomize("date")
    instance.default_language = randomize()
    instance.end = randomize("date")
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.start = randomize("date")
    instance.status = randomize()
    instance.tier_item_id = randomize()
    instance.tier_item_name = randomize()
    instance.updated_at = randomize("date")
    instance.pass_codes = [randomize()]
    instance.published_at = randomize("date")
    return instance


def create_list_season_info_paging_sliced_result_example() -> (
    ListSeasonInfoPagingSlicedResult
):
    instance = ListSeasonInfoPagingSlicedResult()
    instance.data = [create_list_season_info_example()]
    instance.paging = create_paging_example()
    return instance


def create_list_user_season_info_example() -> ListUserSeasonInfo:
    instance = ListUserSeasonInfo()
    instance.cleared = randomize("bool")
    instance.current_tier_index = randomize("int", min_val=1, max_val=1000)
    instance.enrolled_at = randomize("date")
    instance.id_ = randomize()
    instance.last_tier_index = randomize("int", min_val=1, max_val=1000)
    instance.namespace = randomize("slug")
    instance.season = create_season_summary_example()
    instance.season_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_list_user_season_info_paging_sliced_result_example() -> (
    ListUserSeasonInfoPagingSlicedResult
):
    instance = ListUserSeasonInfoPagingSlicedResult()
    instance.data = [create_list_user_season_info_example()]
    instance.paging = create_paging_example()
    instance.total = randomize("int", min_val=1, max_val=1000)
    return instance


def create_localization_example() -> Localization:
    instance = Localization()
    instance.description = randomize()
    instance.title = randomize()
    return instance


def create_localized_pass_info_example() -> LocalizedPassInfo:
    instance = LocalizedPassInfo()
    instance.auto_enroll = randomize("bool")
    instance.code = randomize()
    instance.created_at = randomize("date")
    instance.display_order = randomize()
    instance.language = randomize()
    instance.namespace = randomize("slug")
    instance.pass_item_id = randomize()
    instance.season_id = randomize()
    instance.updated_at = randomize("date")
    instance.description = randomize()
    instance.images = [create_image_example()]
    instance.title = randomize()
    return instance


def create_localized_season_info_example() -> LocalizedSeasonInfo:
    instance = LocalizedSeasonInfo()
    instance.auto_claim = randomize("bool")
    instance.created_at = randomize("date")
    instance.end = randomize("date")
    instance.id_ = randomize()
    instance.language = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.passes = [create_localized_pass_info_example()]
    instance.rewards = {}
    instance.start = randomize("date")
    instance.status = randomize()
    instance.tier_item_id = randomize()
    instance.tiers = [create_tier_example()]
    instance.updated_at = randomize("date")
    instance.description = randomize()
    instance.images = [create_image_example()]
    instance.pass_codes = [randomize()]
    instance.published_at = randomize("date")
    instance.title = randomize()
    return instance


def create_ownership_example() -> Ownership:
    instance = Ownership()
    instance.owned = randomize("bool")
    return instance


def create_paging_example() -> Paging:
    instance = Paging()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_pass_create_example() -> PassCreate:
    instance = PassCreate()
    instance.code = randomize()
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.localizations = {}
    instance.pass_item_id = randomize()
    instance.auto_enroll = randomize("bool")
    instance.images = [create_image_example()]
    return instance


def create_pass_info_example() -> PassInfo:
    instance = PassInfo()
    instance.auto_enroll = randomize("bool")
    instance.code = randomize()
    instance.created_at = randomize("date")
    instance.display_order = randomize()
    instance.localizations = {}
    instance.namespace = randomize("slug")
    instance.pass_item_id = randomize()
    instance.pass_item_name = randomize()
    instance.season_id = randomize()
    instance.updated_at = randomize("date")
    instance.images = [create_image_example()]
    return instance


def create_pass_update_example() -> PassUpdate:
    instance = PassUpdate()
    instance.auto_enroll = randomize("bool")
    instance.display_order = randomize("int", min_val=1, max_val=1000)
    instance.images = [create_image_example()]
    instance.localizations = {}
    instance.pass_item_id = randomize()
    return instance


def create_reason_tags_result_example() -> ReasonTagsResult:
    instance = ReasonTagsResult()
    instance.tags = [randomize()]
    return instance


def create_reward_create_example() -> RewardCreate:
    instance = RewardCreate()
    instance.code = randomize()
    instance.type_ = randomize()
    instance.currency = create_reward_currency_example()
    instance.image = create_image_example()
    instance.item_id = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    return instance


def create_reward_currency_example() -> RewardCurrency:
    instance = RewardCurrency()
    instance.currency_code = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_reward_info_example() -> RewardInfo:
    instance = RewardInfo()
    instance.code = randomize()
    instance.namespace = randomize("slug")
    instance.season_id = randomize()
    instance.type_ = randomize()
    instance.currency = create_reward_currency_example()
    instance.image = create_image_example()
    instance.item_id = randomize()
    instance.item_name = randomize()
    instance.item_sku = randomize()
    instance.item_type = randomize()
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    return instance


def create_reward_update_example() -> RewardUpdate:
    instance = RewardUpdate()
    instance.currency = create_reward_currency_example()
    instance.image = create_image_example()
    instance.item_id = randomize()
    instance.null_fields = [randomize()]
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.type_ = randomize()
    return instance


def create_season_clone_request_example() -> SeasonCloneRequest:
    instance = SeasonCloneRequest()
    instance.end = randomize("date")
    instance.name = randomize()
    instance.start = randomize("date")
    return instance


def create_season_create_example() -> SeasonCreate:
    instance = SeasonCreate()
    instance.default_required_exp = randomize("int", min_val=1, max_val=1000)
    instance.draft_store_id = randomize()
    instance.end = randomize("date")
    instance.localizations = {}
    instance.name = randomize()
    instance.start = randomize("date")
    instance.tier_item_id = randomize()
    instance.auto_claim = randomize("bool")
    instance.default_language = randomize()
    instance.excess_strategy = create_excess_strategy_example()
    instance.images = [create_image_example()]
    return instance


def create_season_info_example() -> SeasonInfo:
    instance = SeasonInfo()
    instance.auto_claim = randomize("bool")
    instance.created_at = randomize("date")
    instance.default_language = randomize()
    instance.default_required_exp = randomize("int", min_val=1, max_val=1000)
    instance.draft_store_id = randomize()
    instance.end = randomize("date")
    instance.excess_strategy = create_excess_strategy_example()
    instance.id_ = randomize()
    instance.localizations = {}
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.start = randomize("date")
    instance.status = randomize()
    instance.tier_item_id = randomize()
    instance.tier_item_name = randomize()
    instance.updated_at = randomize("date")
    instance.images = [create_image_example()]
    instance.pass_codes = [randomize()]
    instance.published_at = randomize("date")
    return instance


def create_season_summary_example() -> SeasonSummary:
    instance = SeasonSummary()
    instance.end = randomize("date")
    instance.id_ = randomize()
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.start = randomize("date")
    instance.status = randomize()
    instance.pass_codes = [randomize()]
    instance.previous = create_season_summary_example()
    instance.published_at = randomize("date")
    return instance


def create_season_update_example() -> SeasonUpdate:
    instance = SeasonUpdate()
    instance.auto_claim = randomize("bool")
    instance.default_language = randomize()
    instance.default_required_exp = randomize("int", min_val=1, max_val=1000)
    instance.draft_store_id = randomize()
    instance.end = randomize("date")
    instance.excess_strategy = create_excess_strategy_example()
    instance.images = [create_image_example()]
    instance.localizations = {}
    instance.name = randomize()
    instance.start = randomize("date")
    instance.tier_item_id = randomize()
    return instance


def create_tier_example() -> Tier:
    instance = Tier()
    instance.id_ = randomize()
    instance.required_exp = randomize("int", min_val=1, max_val=1000)
    instance.rewards = {}
    return instance


def create_tier_create_example() -> TierCreate:
    instance = TierCreate()
    instance.index = randomize("int", min_val=1, max_val=1000)
    instance.quantity = randomize("int", min_val=1, max_val=1000)
    instance.tier = create_tier_input_example()
    return instance


def create_tier_input_example() -> TierInput:
    instance = TierInput()
    instance.required_exp = randomize("int", min_val=1, max_val=1000)
    instance.rewards = {}
    return instance


def create_tier_paging_sliced_result_example() -> TierPagingSlicedResult:
    instance = TierPagingSlicedResult()
    instance.data = [create_tier_example()]
    instance.paging = create_paging_example()
    instance.total = randomize("int", min_val=1, max_val=1000)
    return instance


def create_tier_reorder_example() -> TierReorder:
    instance = TierReorder()
    instance.new_index = randomize("int", min_val=1, max_val=1000)
    return instance


def create_user_exp_grant_example() -> UserExpGrant:
    instance = UserExpGrant()
    instance.exp = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.tags = [randomize()]
    return instance


def create_user_pass_grant_example() -> UserPassGrant:
    instance = UserPassGrant()
    instance.pass_code = randomize()
    instance.pass_item_id = randomize()
    return instance


def create_user_purchasable_example() -> UserPurchasable:
    instance = UserPurchasable()
    instance.pass_item_id = randomize()
    instance.tier_item_count = randomize("int", min_val=1, max_val=1000)
    instance.tier_item_id = randomize()
    return instance


def create_user_reward_claim_example() -> UserRewardClaim:
    instance = UserRewardClaim()
    instance.pass_code = randomize()
    instance.reward_code = randomize()
    instance.tier_index = randomize("int", min_val=1, max_val=1000)
    return instance


def create_user_season_summary_example() -> UserSeasonSummary:
    instance = UserSeasonSummary()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.cleared = randomize("bool")
    instance.created_at = randomize("date")
    instance.current_exp = randomize("int", min_val=1, max_val=1000)
    instance.current_tier_index = randomize("int", min_val=1, max_val=1000)
    instance.enrolled_at = randomize("date")
    instance.enrolled_passes = [randomize()]
    instance.id_ = randomize()
    instance.last_tier_index = randomize("int", min_val=1, max_val=1000)
    instance.required_exp = randomize("int", min_val=1, max_val=1000)
    instance.season_id = randomize()
    instance.updated_at = randomize("date")
    return instance


def create_user_tier_grant_example() -> UserTierGrant:
    instance = UserTierGrant()
    instance.count = randomize("int", min_val=1, max_val=1000)
    instance.source = randomize()
    instance.tags = [randomize()]
    return instance


def create_validation_error_entity_example() -> ValidationErrorEntity:
    instance = ValidationErrorEntity()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.errors = [create_field_validation_error_example()]
    return instance
