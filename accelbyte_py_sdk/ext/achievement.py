# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Achievement Service ()

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
from ..api.achievement.models import ModelsIcon
from ..api.achievement.models import ModelsPaginatedAchievementResponse
from ..api.achievement.models import ModelsPaginatedUserAchievementResponse
from ..api.achievement.models import ModelsPagination
from ..api.achievement.models import ModelsPublicAchievementResponse
from ..api.achievement.models import ModelsPublicAchievementsResponse
from ..api.achievement.models import ModelsUserAchievementResponse
from ..api.achievement.models import ResponseError
from ..api.achievement.models import ServiceImportConfigResponse


def create_models_achievement_order_update_request_example() -> ModelsAchievementOrderUpdateRequest:
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
    return instance


def create_models_achievement_response_example() -> ModelsAchievementResponse:
    instance = ModelsAchievementResponse()
    instance.achievement_code = randomize()
    instance.created_at = randomize("date")
    instance.default_language = randomize()
    instance.description = {randomize(): randomize()}
    instance.hidden = randomize("bool")
    instance.incremental = randomize("bool")
    instance.list_order = randomize("int", min_val=1, max_val=1000)
    instance.locked_icons = [create_models_icon_example()]
    instance.name = {randomize(): randomize()}
    instance.namespace = randomize("slug")
    instance.tags = [randomize()]
    instance.unlocked_icons = [create_models_icon_example()]
    instance.updated_at = randomize("date")
    instance.goal_value = randomize("int", min_val=1, max_val=1000)
    instance.stat_code = randomize()
    return instance


def create_models_achievement_update_request_example() -> ModelsAchievementUpdateRequest:
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
    return instance


def create_models_additional_info_example() -> ModelsAdditionalInfo:
    instance = ModelsAdditionalInfo()
    instance.number_of_achievements = randomize("int", min_val=1, max_val=1000)
    instance.number_of_hidden_achievements = randomize("int", min_val=1, max_val=1000)
    instance.number_of_visible_achievements = randomize("int", min_val=1, max_val=1000)
    return instance


def create_models_icon_example() -> ModelsIcon:
    instance = ModelsIcon()
    instance.slug = randomize()
    instance.url = randomize("url")
    return instance


def create_models_paginated_achievement_response_example() -> ModelsPaginatedAchievementResponse:
    instance = ModelsPaginatedAchievementResponse()
    instance.data = [create_models_achievement_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_paginated_user_achievement_response_example() -> ModelsPaginatedUserAchievementResponse:
    instance = ModelsPaginatedUserAchievementResponse()
    instance.count_info = create_models_additional_info_example()
    instance.data = [create_models_user_achievement_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_pagination_example() -> ModelsPagination:
    instance = ModelsPagination()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_models_public_achievement_response_example() -> ModelsPublicAchievementResponse:
    instance = ModelsPublicAchievementResponse()
    instance.achievement_code = randomize()
    instance.created_at = randomize("date")
    instance.description = randomize()
    instance.hidden = randomize("bool")
    instance.incremental = randomize("bool")
    instance.list_order = randomize("int", min_val=1, max_val=1000)
    instance.locked_icons = [create_models_icon_example()]
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.tags = [randomize()]
    instance.unlocked_icons = [create_models_icon_example()]
    instance.updated_at = randomize("date")
    instance.goal_value = randomize("int", min_val=1, max_val=1000)
    instance.stat_code = randomize()
    return instance


def create_models_public_achievements_response_example() -> ModelsPublicAchievementsResponse:
    instance = ModelsPublicAchievementsResponse()
    instance.data = [create_models_public_achievement_response_example()]
    instance.paging = create_models_pagination_example()
    return instance


def create_models_user_achievement_response_example() -> ModelsUserAchievementResponse:
    instance = ModelsUserAchievementResponse()
    instance.achievement_code = randomize()
    instance.id_ = randomize()
    instance.latest_value = randomize("int", min_val=1, max_val=1000)
    instance.name = {randomize(): randomize()}
    instance.status = randomize("int", min_val=1, max_val=1000)
    instance.achieved_at = randomize("date")
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
