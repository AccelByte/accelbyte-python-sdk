# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Achievement Service

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

from ..api.achievement.models import ModelsAchievementOrderUpdateRequest
from ..api.achievement.models import ModelsAchievementRequest
from ..api.achievement.models import ModelsAchievementResponse
from ..api.achievement.models import ModelsAchievementUpdateRequest
from ..api.achievement.models import ModelsAdditionalInfo
from ..api.achievement.models import ModelsBulkCreatePSNEventResponse
from ..api.achievement.models import ModelsBulkCreatePSNEvents
from ..api.achievement.models import ModelsContributorResponse
from ..api.achievement.models import ModelsCreatePSNEvent
from ..api.achievement.models import ModelsErrorDetails
from ..api.achievement.models import ModelsGlobalAchievementResponse
from ..api.achievement.models import ModelsIcon
from ..api.achievement.models import ModelsPSNEvent
from ..api.achievement.models import ModelsPSNEventData
from ..api.achievement.models import ModelsPSNEventResult
from ..api.achievement.models import ModelsPaginatedAchievementResponse
from ..api.achievement.models import ModelsPaginatedContributorResponse
from ..api.achievement.models import ModelsPaginatedGlobalAchievementResponse
from ..api.achievement.models import ModelsPaginatedTagResponse
from ..api.achievement.models import ModelsPaginatedUserAchievementResponse
from ..api.achievement.models import ModelsPaginatedUserContributionResponse
from ..api.achievement.models import ModelsPagination
from ..api.achievement.models import ModelsPublicAchievementResponse
from ..api.achievement.models import ModelsPublicAchievementsResponse
from ..api.achievement.models import ModelsTagResponse
from ..api.achievement.models import ModelsUserAchievementResponse
from ..api.achievement.models import ModelsUserContributionResponse
from ..api.achievement.models import ResponseError
from ..api.achievement.models import ServiceImportConfigResponse


def create_models_achievement_order_update_request_example() -> (
    ModelsAchievementOrderUpdateRequest
):
    instance = ModelsAchievementOrderUpdateRequest()
    instance.target_order = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_achievement_request_example() -> ModelsAchievementRequest:
    instance = ModelsAchievementRequest()
    instance.achievement_code = randomize()
    instance.default_language = randomize()
    instance.description = {randomize(): randomize()}
    instance.goal_value = randomize("int", min_val=1, max_val=1000)
    instance.hidden = randomize("bool")
    instance.incremental = randomize("bool")
    instance.locked_icons = [create_models_icon_example()]
    instance.name = {randomize(): randomize()}
    instance.stat_code = randomize()
    instance.tags = [randomize()]
    instance.unlocked_icons = [create_models_icon_example()]
    instance.custom_attributes = {randomize(): randomize()}
    instance.global_ = randomize("bool")
    return instance


def create_models_achievement_response_example() -> ModelsAchievementResponse:
    instance = ModelsAchievementResponse()
    instance.achievement_code = randomize()
    instance.created_at = randomize("date")
    instance.default_language = randomize()
    instance.description = {randomize(): randomize()}
    instance.global_ = randomize("bool")
    instance.hidden = randomize("bool")
    instance.incremental = randomize("bool")
    instance.list_order = randomize("int", min_val=1, max_val=1000)
    instance.locked_icons = [create_models_icon_example()]
    instance.name = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.tags = [randomize()]
    instance.unlocked_icons = [create_models_icon_example()]
    instance.updated_at = randomize("date")
    instance.custom_attributes = {randomize(): randomize()}
    instance.goal_value = randomize("int", min_val=1, max_val=1000)
    instance.stat_code = randomize()
    instance.status = randomize()
    return instance


def create_models_achievement_update_request_example() -> (
    ModelsAchievementUpdateRequest
):
    instance = ModelsAchievementUpdateRequest()
    instance.default_language = randomize()
    instance.description = {randomize(): randomize()}
    instance.goal_value = randomize("int", min_val=1, max_val=1000)
    instance.hidden = randomize("bool")
    instance.incremental = randomize("bool")
    instance.locked_icons = [create_models_icon_example()]
    instance.name = {randomize(): randomize()}
    instance.stat_code = randomize()
    instance.tags = [randomize()]
    instance.unlocked_icons = [create_models_icon_example()]
    instance.custom_attributes = {randomize(): randomize()}
    instance.global_ = randomize("bool")
    return instance


def create_models_additional_info_example() -> ModelsAdditionalInfo:
    instance = ModelsAdditionalInfo()
    instance.number_of_achievements = randomize("int", min_val=1, max_val=1000)
    instance.number_of_hidden_achievements = randomize("int", min_val=1, max_val=1000)
    instance.number_of_visible_achievements = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_bulk_create_psn_event_response_example() -> (
    ModelsBulkCreatePSNEventResponse
):
    instance = ModelsBulkCreatePSNEventResponse()
    instance.data = [create_models_psn_event_result_example()]
    return instance


def create_models_bulk_create_psn_events_example() -> ModelsBulkCreatePSNEvents:
    instance = ModelsBulkCreatePSNEvents()
    instance.data = [create_models_create_psn_event_example()]
    return instance


def create_models_contributor_response_example() -> ModelsContributorResponse:
    instance = ModelsContributorResponse()
    instance.achievement_code = randomize()
    instance.contributed_value = randomize("int", min_val=1, max_val=1000)
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    instance.updated_at = randomize("date")
    return instance


def create_models_create_psn_event_example() -> ModelsCreatePSNEvent:
    instance = ModelsCreatePSNEvent()
    instance.events = [create_models_psn_event_example()]
    instance.third_party_user_id = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_error_details_example() -> ModelsErrorDetails:
    instance = ModelsErrorDetails()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.third_party_reference_id = randomize()
    return instance


def create_models_global_achievement_response_example() -> (
    ModelsGlobalAchievementResponse
):
    instance = ModelsGlobalAchievementResponse()
    instance.achievement_code = randomize()
    instance.created_at = randomize("date")
    instance.id_ = randomize()
    instance.latest_value = randomize("int", min_val=1, max_val=1000)
    instance.name = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.status = randomize("int", min_val=1, max_val=1000)
    instance.achieved_at = randomize("date")
    instance.updated_at = randomize("date")
    return instance


def create_models_icon_example() -> ModelsIcon:
    instance = ModelsIcon()
    instance.slug = randomize()
    instance.url = randomize("url")
    return instance


def create_models_paginated_achievement_response_example() -> (
    ModelsPaginatedAchievementResponse
):
    instance = ModelsPaginatedAchievementResponse()
    instance.data = [create_models_achievement_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_paginated_contributor_response_example() -> (
    ModelsPaginatedContributorResponse
):
    instance = ModelsPaginatedContributorResponse()
    instance.data = [create_models_contributor_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_paginated_global_achievement_response_example() -> (
    ModelsPaginatedGlobalAchievementResponse
):
    instance = ModelsPaginatedGlobalAchievementResponse()
    instance.data = [create_models_global_achievement_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_paginated_tag_response_example() -> ModelsPaginatedTagResponse:
    instance = ModelsPaginatedTagResponse()
    instance.data = [create_models_tag_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_paginated_user_achievement_response_example() -> (
    ModelsPaginatedUserAchievementResponse
):
    instance = ModelsPaginatedUserAchievementResponse()
    instance.count_info = create_models_additional_info_example()
    instance.data = [create_models_user_achievement_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_paginated_user_contribution_response_example() -> (
    ModelsPaginatedUserContributionResponse
):
    instance = ModelsPaginatedUserContributionResponse()
    instance.data = [create_models_user_contribution_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_psn_event_example() -> ModelsPSNEvent:
    instance = ModelsPSNEvent()
    instance.date_time = randomize()
    instance.event_data = create_models_psn_event_data_example()
    instance.event_id = randomize()
    instance.version = randomize("version")
    return instance


def create_models_psn_event_data_example() -> ModelsPSNEventData:
    instance = ModelsPSNEventData()
    instance.event_name = randomize()
    instance.properties = {randomize(): randomize()}
    return instance


def create_models_psn_event_result_example() -> ModelsPSNEventResult:
    instance = ModelsPSNEventResult()
    instance.is_success = randomize("bool")
    instance.third_party_user_id = randomize()
    instance.error_detail = create_models_error_details_example()
    return instance


def create_models_public_achievement_response_example() -> (
    ModelsPublicAchievementResponse
):
    instance = ModelsPublicAchievementResponse()
    instance.achievement_code = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.global_ = randomize("bool")
    instance.hidden = randomize("bool")
    instance.incremental = randomize("bool")
    instance.list_order = randomize("int", min_val=1, max_val=1000)
    instance.locked_icons = [create_models_icon_example()]
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.tags = [randomize()]
    instance.unlocked_icons = [create_models_icon_example()]
    instance.updated_at = randomize("date")
    instance.custom_attributes = {randomize(): randomize()}
    instance.goal_value = randomize("int", min_val=1, max_val=1000)
    instance.stat_code = randomize()
    instance.status = randomize()
    return instance


def create_models_public_achievements_response_example() -> (
    ModelsPublicAchievementsResponse
):
    instance = ModelsPublicAchievementsResponse()
    instance.data = [create_models_public_achievement_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_tag_response_example() -> ModelsTagResponse:
    instance = ModelsTagResponse()
    instance.created_at = randomize("date")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    return instance


def create_models_user_achievement_response_example() -> ModelsUserAchievementResponse:
    instance = ModelsUserAchievementResponse()
    instance.achieved_at = randomize("date")
    instance.achievement_code = randomize()
    instance.id_ = randomize()
    instance.latest_value = randomize("int", min_val=1, max_val=1000)
    instance.name = {randomize(): randomize()}
    instance.status = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_user_contribution_response_example() -> (
    ModelsUserContributionResponse
):
    instance = ModelsUserContributionResponse()
    instance.achievement_code = randomize()
    instance.can_claim_reward = randomize("bool")
    instance.contributed_value = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.name = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.user_id = randomize("uid")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    return instance


def create_service_import_config_response_example() -> ServiceImportConfigResponse:
    instance = ServiceImportConfigResponse()
    instance.failed_configs = [randomize()]
    instance.ignored_configs = [randomize()]
    instance.new_configs = [randomize()]
    instance.replaced_configs = [randomize()]
    return instance
