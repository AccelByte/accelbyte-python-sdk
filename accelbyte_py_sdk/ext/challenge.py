# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Challenge Service

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

from ..api.challenge.models import IamErrorResponse
from ..api.challenge.models import IamPermission
from ..api.challenge.models import ModelChallengeReference
from ..api.challenge.models import ModelChallengeResponse
from ..api.challenge.models import ModelClaimUserRewardsByGoalCodeRequest
from ..api.challenge.models import ModelClaimUserRewardsReq
from ..api.challenge.models import ModelClaimUsersRewardsRequest
from ..api.challenge.models import ModelClaimUsersRewardsResponse
from ..api.challenge.models import ModelClaimableUserReward
from ..api.challenge.models import ModelCreateChallengeRequest
from ..api.challenge.models import ModelCreateGoalRequest
from ..api.challenge.models import ModelEvaluatePlayerProgressionRequest
from ..api.challenge.models import ModelGetGoalsResponse
from ..api.challenge.models import ModelGoalInSchedulesResponse
from ..api.challenge.models import ModelGoalMeta
from ..api.challenge.models import ModelGoalOrder
from ..api.challenge.models import ModelGoalProgressionResponse
from ..api.challenge.models import ModelGoalResponse
from ..api.challenge.models import ModelGoalSchedule
from ..api.challenge.models import ModelGoalScheduleRequest
from ..api.challenge.models import ModelItemReference
from ..api.challenge.models import ModelItemReferenceResponse
from ..api.challenge.models import ModelListChallengeResponse
from ..api.challenge.models import ModelListPeriodsResponse
from ..api.challenge.models import ModelListScheduleByGoalResponse
from ..api.challenge.models import ModelListSchedulesResponse
from ..api.challenge.models import ModelListUserRewardsResponse
from ..api.challenge.models import ModelPagination
from ..api.challenge.models import ModelPluginAsignmentAppConfig
from ..api.challenge.models import ModelPluginAssignmentCustomConfig
from ..api.challenge.models import ModelPluginAssignmentRequest
from ..api.challenge.models import ModelPluginAssignmentResponse
from ..api.challenge.models import ModelPredicate
from ..api.challenge.models import ModelRequirement
from ..api.challenge.models import ModelRequirementProgressionResponse
from ..api.challenge.models import ModelResetConfig
from ..api.challenge.models import ModelReward
from ..api.challenge.models import ModelSchedule
from ..api.challenge.models import ModelScheduleByGoalResponse
from ..api.challenge.models import ModelScheduleResponse
from ..api.challenge.models import ModelUpdateChallengeRequest
from ..api.challenge.models import ModelUpdateChallengeScheduleRequest
from ..api.challenge.models import ModelUpdateGoalRequest
from ..api.challenge.models import ModelUserProgressionPeriodResponseMeta
from ..api.challenge.models import ModelUserProgressionResponse
from ..api.challenge.models import ModelUserProgressionResponseMeta
from ..api.challenge.models import ModelUserReward
from ..api.challenge.models import ModelsPeriod
from ..api.challenge.models import ResponseError


def create_iam_error_response_example() -> IamErrorResponse:
    instance = IamErrorResponse()
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.required_permission = create_iam_permission_example()
    return instance


def create_iam_permission_example() -> IamPermission:
    instance = IamPermission()
    instance.action = randomize("int", min_val=1, max_val=1000)
    instance.resource = randomize()
    return instance


def create_model_challenge_reference_example() -> ModelChallengeReference:
    instance = ModelChallengeReference()
    instance.challenge_code = randomize()
    instance.goal_code = randomize()
    return instance


def create_model_challenge_response_example() -> ModelChallengeResponse:
    instance = ModelChallengeResponse()
    instance.active_goals_per_rotation = randomize("int", min_val=1, max_val=1000)
    instance.assignment_rule = randomize()
    instance.code = randomize()
    instance.created_at = randomize()
    instance.description = randomize()
    instance.goals_visibility = randomize()
    instance.name = randomize()
    instance.randomized_per_rotation = randomize("bool")
    instance.reset_config = create_model_reset_config_example()
    instance.rotation = randomize()
    instance.start_date = randomize()
    instance.status = randomize()
    instance.updated_at = randomize()
    instance.end_after = randomize("int", min_val=1, max_val=1000)
    instance.end_date = randomize()
    instance.repeat_after = randomize("int", min_val=1, max_val=1000)
    instance.tags = [randomize()]
    return instance


def create_model_claim_user_rewards_by_goal_code_request_example() -> (
    ModelClaimUserRewardsByGoalCodeRequest
):
    instance = ModelClaimUserRewardsByGoalCodeRequest()
    instance.goal_code = randomize()
    return instance


def create_model_claim_user_rewards_req_example() -> ModelClaimUserRewardsReq:
    instance = ModelClaimUserRewardsReq()
    instance.reward_i_ds = [randomize()]
    return instance


def create_model_claim_users_rewards_request_example() -> ModelClaimUsersRewardsRequest:
    instance = ModelClaimUsersRewardsRequest()
    instance.reward_ids = [randomize()]
    instance.user_id = randomize("uid")
    return instance


def create_model_claim_users_rewards_response_example() -> (
    ModelClaimUsersRewardsResponse
):
    instance = ModelClaimUsersRewardsResponse()
    instance.is_success = randomize("bool")
    instance.rewards = [create_model_user_reward_example()]
    instance.user_id = randomize("uid")
    instance.error_detail = create_response_error_example()
    return instance


def create_model_claimable_user_reward_example() -> ModelClaimableUserReward:
    instance = ModelClaimableUserReward()
    instance.goal_progression_id = randomize()
    instance.id_ = randomize()
    instance.item_id = randomize()
    instance.item_name = randomize()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.type_ = randomize()
    return instance


def create_model_create_challenge_request_example() -> ModelCreateChallengeRequest:
    instance = ModelCreateChallengeRequest()
    instance.assignment_rule = randomize()
    instance.code = randomize()
    instance.goals_visibility = randomize()
    instance.name = randomize()
    instance.rotation = randomize()
    instance.start_date = randomize("date")
    instance.active_goals_per_rotation = randomize("int", min_val=1, max_val=1000)
    instance.description = randomize()
    instance.end_after = randomize("int", min_val=1, max_val=1000)
    instance.end_date = randomize("date")
    instance.randomized_per_rotation = randomize("bool")
    instance.repeat_after = randomize("int", min_val=1, max_val=1000)
    instance.reset_config = create_model_reset_config_example()
    instance.tags = [randomize()]
    return instance


def create_model_create_goal_request_example() -> ModelCreateGoalRequest:
    instance = ModelCreateGoalRequest()
    instance.code = randomize()
    instance.is_active = randomize("bool")
    instance.name = randomize()
    instance.description = randomize()
    instance.requirement_groups = [create_model_requirement_example()]
    instance.rewards = [create_model_reward_example()]
    instance.schedule = create_model_goal_schedule_request_example()
    instance.tags = [randomize()]
    return instance


def create_model_evaluate_player_progression_request_example() -> (
    ModelEvaluatePlayerProgressionRequest
):
    instance = ModelEvaluatePlayerProgressionRequest()
    instance.user_ids = [randomize()]
    return instance


def create_model_get_goals_response_example() -> ModelGetGoalsResponse:
    instance = ModelGetGoalsResponse()
    instance.data = [create_model_goal_response_example()]
    instance.meta = create_model_challenge_response_example()
    instance.paging = create_model_pagination_example()
    return instance


def create_model_goal_in_schedules_response_example() -> ModelGoalInSchedulesResponse:
    instance = ModelGoalInSchedulesResponse()
    instance.challenge_code = randomize()
    instance.code = randomize()
    instance.created_at = randomize()
    instance.description = randomize()
    instance.is_active = randomize("bool")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.requirement_groups = [create_model_requirement_example()]
    instance.rewards = [create_model_reward_example()]
    instance.updated_at = randomize()
    instance.tags = [randomize()]
    return instance


def create_model_goal_meta_example() -> ModelGoalMeta:
    instance = ModelGoalMeta()
    instance.code = randomize()
    instance.description = randomize()
    instance.name = randomize()
    instance.requirement_groups = [create_model_requirement_example()]
    instance.rewards = [create_model_reward_example()]
    instance.tags = [randomize()]
    return instance


def create_model_goal_order_example() -> ModelGoalOrder:
    instance = ModelGoalOrder()
    instance.goal = create_model_goal_response_example()
    instance.order = randomize("int", min_val=1, max_val=1000)
    return instance


def create_model_goal_progression_response_example() -> ModelGoalProgressionResponse:
    instance = ModelGoalProgressionResponse()
    instance.challenge_code = randomize()
    instance.goal = create_model_goal_meta_example()
    instance.goal_code = randomize()
    instance.goal_progression_id = randomize()
    instance.requirement_progressions = [
        create_model_requirement_progression_response_example()
    ]
    instance.status = randomize()
    instance.completed_at = randomize()
    instance.to_claim_rewards = [create_model_claimable_user_reward_example()]
    return instance


def create_model_goal_response_example() -> ModelGoalResponse:
    instance = ModelGoalResponse()
    instance.challenge_code = randomize()
    instance.code = randomize()
    instance.created_at = randomize()
    instance.description = randomize()
    instance.is_active = randomize("bool")
    instance.name = randomize()
    instance.namespace = randomize("slug")
    instance.requirement_groups = [create_model_requirement_example()]
    instance.rewards = [create_model_reward_example()]
    instance.updated_at = randomize()
    instance.schedule = create_model_goal_schedule_example()
    instance.tags = [randomize()]
    return instance


def create_model_goal_schedule_example() -> ModelGoalSchedule:
    instance = ModelGoalSchedule()
    instance.order = randomize("int", min_val=1, max_val=1000)
    instance.start_time = randomize("date")
    instance.end_time = randomize("date")
    return instance


def create_model_goal_schedule_request_example() -> ModelGoalScheduleRequest:
    instance = ModelGoalScheduleRequest()
    instance.order = randomize("int", min_val=1, max_val=1000)
    instance.start_time = randomize("date")
    instance.end_time = randomize("date")
    return instance


def create_model_item_reference_example() -> ModelItemReference:
    instance = ModelItemReference()
    instance.module = randomize()
    instance.references = [create_model_challenge_reference_example()]
    return instance


def create_model_item_reference_response_example() -> ModelItemReferenceResponse:
    instance = ModelItemReferenceResponse()
    instance.references = [create_model_item_reference_example()]
    return instance


def create_model_list_challenge_response_example() -> ModelListChallengeResponse:
    instance = ModelListChallengeResponse()
    instance.data = [create_model_challenge_response_example()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_list_periods_response_example() -> ModelListPeriodsResponse:
    instance = ModelListPeriodsResponse()
    instance.data = [create_models_period_example()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_list_schedule_by_goal_response_example() -> (
    ModelListScheduleByGoalResponse
):
    instance = ModelListScheduleByGoalResponse()
    instance.data = [create_model_schedule_by_goal_response_example()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_list_schedules_response_example() -> ModelListSchedulesResponse:
    instance = ModelListSchedulesResponse()
    instance.data = [create_model_schedule_response_example()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_list_user_rewards_response_example() -> ModelListUserRewardsResponse:
    instance = ModelListUserRewardsResponse()
    instance.data = [create_model_user_reward_example()]
    instance.paging = create_model_pagination_example()
    return instance


def create_model_pagination_example() -> ModelPagination:
    instance = ModelPagination()
    instance.first = randomize()
    instance.last = randomize()
    instance.next_ = randomize()
    instance.previous = randomize()
    return instance


def create_model_plugin_asignment_app_config_example() -> ModelPluginAsignmentAppConfig:
    instance = ModelPluginAsignmentAppConfig()
    instance.app_name = randomize()
    return instance


def create_model_plugin_assignment_custom_config_example() -> (
    ModelPluginAssignmentCustomConfig
):
    instance = ModelPluginAssignmentCustomConfig()
    instance.grpc_server_address = randomize()
    return instance


def create_model_plugin_assignment_request_example() -> ModelPluginAssignmentRequest:
    instance = ModelPluginAssignmentRequest()
    instance.extend_type = randomize()
    instance.app_name = randomize()
    instance.grpc_server_address = randomize()
    return instance


def create_model_plugin_assignment_response_example() -> ModelPluginAssignmentResponse:
    instance = ModelPluginAssignmentResponse()
    instance.extend_type = randomize()
    instance.app_config = create_model_plugin_asignment_app_config_example()
    instance.custom_config = create_model_plugin_assignment_custom_config_example()
    return instance


def create_model_predicate_example() -> ModelPredicate:
    instance = ModelPredicate()
    instance.matcher = randomize()
    instance.parameter_name = randomize()
    instance.parameter_type = randomize()
    instance.target_value = randomize("int", min_val=1, max_val=1000)
    instance.stat_cycle_id = randomize()
    return instance


def create_model_requirement_example() -> ModelRequirement:
    instance = ModelRequirement()
    instance.operator = randomize()
    instance.predicates = [create_model_predicate_example()]
    return instance


def create_model_requirement_progression_response_example() -> (
    ModelRequirementProgressionResponse
):
    instance = ModelRequirementProgressionResponse()
    instance.current_value = randomize("int", min_val=1, max_val=1000)
    instance.id_ = randomize()
    instance.matcher = randomize()
    instance.parameter_name = randomize()
    instance.parameter_type = randomize()
    instance.target_value = randomize("int", min_val=1, max_val=1000)
    instance.completed_at = randomize()
    instance.stat_cycle_id = randomize()
    return instance


def create_model_reset_config_example() -> ModelResetConfig:
    instance = ModelResetConfig()
    instance.reset_date = randomize("int", min_val=1, max_val=1000)
    instance.reset_day = randomize("int", min_val=1, max_val=1000)
    instance.reset_time = randomize()
    return instance


def create_model_reward_example() -> ModelReward:
    instance = ModelReward()
    instance.item_id = randomize()
    instance.item_name = randomize()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.type_ = randomize()
    return instance


def create_model_schedule_example() -> ModelSchedule:
    instance = ModelSchedule()
    instance.challenge_code = randomize()
    instance.created_at = randomize()
    instance.end_time = randomize()
    instance.goals = [create_model_goal_order_example()]
    instance.namespace = randomize("slug")
    instance.start_time = randomize()
    instance.updated_at = randomize()
    return instance


def create_model_schedule_by_goal_response_example() -> ModelScheduleByGoalResponse:
    instance = ModelScheduleByGoalResponse()
    instance.end_time = randomize("date")
    instance.start_time = randomize("date")
    return instance


def create_model_schedule_response_example() -> ModelScheduleResponse:
    instance = ModelScheduleResponse()
    instance.end_time = randomize("date")
    instance.goals = [create_model_goal_in_schedules_response_example()]
    instance.start_time = randomize("date")
    return instance


def create_model_update_challenge_request_example() -> ModelUpdateChallengeRequest:
    instance = ModelUpdateChallengeRequest()
    instance.active_goals_per_rotation = randomize("int", min_val=1, max_val=1000)
    instance.assignment_rule = randomize()
    instance.description = randomize()
    instance.end_after = randomize("int", min_val=1, max_val=1000)
    instance.end_date = randomize("date")
    instance.goals_visibility = randomize()
    instance.name = randomize()
    instance.randomized_per_rotation = randomize("bool")
    instance.repeat_after = randomize("int", min_val=1, max_val=1000)
    instance.reset_config = create_model_reset_config_example()
    instance.rotation = randomize()
    instance.start_date = randomize("date")
    instance.tags = [randomize()]
    return instance


def create_model_update_challenge_schedule_request_example() -> (
    ModelUpdateChallengeScheduleRequest
):
    instance = ModelUpdateChallengeScheduleRequest()
    instance.action = randomize()
    instance.end_date = randomize("date")
    return instance


def create_model_update_goal_request_example() -> ModelUpdateGoalRequest:
    instance = ModelUpdateGoalRequest()
    instance.name = randomize()
    instance.description = randomize()
    instance.is_active = randomize("bool")
    instance.requirement_groups = [create_model_requirement_example()]
    instance.rewards = [create_model_reward_example()]
    instance.schedule = create_model_goal_schedule_request_example()
    instance.tags = [randomize()]
    return instance


def create_model_user_progression_period_response_meta_example() -> (
    ModelUserProgressionPeriodResponseMeta
):
    instance = ModelUserProgressionPeriodResponseMeta()
    instance.end_time = randomize()
    instance.start_time = randomize()
    return instance


def create_model_user_progression_response_example() -> ModelUserProgressionResponse:
    instance = ModelUserProgressionResponse()
    instance.data = [create_model_goal_progression_response_example()]
    instance.meta = create_model_user_progression_response_meta_example()
    instance.paging = create_model_pagination_example()
    return instance


def create_model_user_progression_response_meta_example() -> (
    ModelUserProgressionResponseMeta
):
    instance = ModelUserProgressionResponseMeta()
    instance.code = randomize()
    instance.description = randomize()
    instance.name = randomize()
    instance.period = create_model_user_progression_period_response_meta_example()
    instance.start_date = randomize()
    instance.user_id = randomize("uid")
    instance.end_date = randomize()
    return instance


def create_model_user_reward_example() -> ModelUserReward:
    instance = ModelUserReward()
    instance.challenge_code = randomize()
    instance.created_at = randomize()
    instance.goal_code = randomize()
    instance.goal_progression_id = randomize()
    instance.id_ = randomize()
    instance.item_id = randomize()
    instance.item_name = randomize()
    instance.qty = randomize("int", min_val=1, max_val=1000)
    instance.status = randomize()
    instance.type_ = randomize()
    instance.updated_at = randomize()
    instance.user_id = randomize("uid")
    return instance


def create_models_period_example() -> ModelsPeriod:
    instance = ModelsPeriod()
    instance.end_time = randomize("date")
    instance.slot = randomize("int", min_val=1, max_val=1000)
    instance.start_time = randomize("date")
    return instance


def create_response_error_example() -> ResponseError:
    instance = ResponseError()
    instance.attributes = {randomize(): randomize()}
    instance.error_code = randomize("int", min_val=1, max_val=1000)
    instance.error_message = randomize()
    instance.message = randomize()
    instance.name = randomize()
    return instance
