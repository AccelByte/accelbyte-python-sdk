# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Challenge Service."""

__version__ = "1.15.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .iam_error_response import IamErrorResponse
from .iam_permission import IamPermission
from .model_challenge_reference import ModelChallengeReference
from .model_challenge_response import ModelChallengeResponse
from .model_challenge_response import (
    AssignmentRuleEnum as ModelChallengeResponseAssignmentRuleEnum,
    GoalsVisibilityEnum as ModelChallengeResponseGoalsVisibilityEnum,
    RotationEnum as ModelChallengeResponseRotationEnum,
    StatusEnum as ModelChallengeResponseStatusEnum,
)
from .model_claim_user_rewards_by_goal_code_request import (
    ModelClaimUserRewardsByGoalCodeRequest,
)
from .model_claim_user_rewards_req import ModelClaimUserRewardsReq
from .model_claim_users_rewards_request import ModelClaimUsersRewardsRequest
from .model_claim_users_rewards_response import ModelClaimUsersRewardsResponse
from .model_claimable_user_reward import ModelClaimableUserReward
from .model_claimable_user_reward import (
    StatusEnum as ModelClaimableUserRewardStatusEnum,
    TypeEnum as ModelClaimableUserRewardTypeEnum,
)
from .model_create_challenge_request import ModelCreateChallengeRequest
from .model_create_challenge_request import (
    AssignmentRuleEnum as ModelCreateChallengeRequestAssignmentRuleEnum,
    GoalsVisibilityEnum as ModelCreateChallengeRequestGoalsVisibilityEnum,
    RotationEnum as ModelCreateChallengeRequestRotationEnum,
)
from .model_create_goal_request import ModelCreateGoalRequest
from .model_evaluate_player_progression_request import (
    ModelEvaluatePlayerProgressionRequest,
)
from .model_get_goals_response import ModelGetGoalsResponse
from .model_goal_in_schedules_response import ModelGoalInSchedulesResponse
from .model_goal_meta import ModelGoalMeta
from .model_goal_order import ModelGoalOrder
from .model_goal_progression_response import ModelGoalProgressionResponse
from .model_goal_progression_response import (
    StatusEnum as ModelGoalProgressionResponseStatusEnum,
)
from .model_goal_response import ModelGoalResponse
from .model_goal_schedule import ModelGoalSchedule
from .model_goal_schedule_request import ModelGoalScheduleRequest
from .model_item_reference import ModelItemReference
from .model_item_reference_response import ModelItemReferenceResponse
from .model_list_challenge_response import ModelListChallengeResponse
from .model_list_periods_response import ModelListPeriodsResponse
from .model_list_schedule_by_goal_response import ModelListScheduleByGoalResponse
from .model_list_schedules_response import ModelListSchedulesResponse
from .model_list_user_rewards_response import ModelListUserRewardsResponse
from .model_pagination import ModelPagination
from .model_plugin_asignment_app_config import ModelPluginAsignmentAppConfig
from .model_plugin_assignment_custom_config import ModelPluginAssignmentCustomConfig
from .model_plugin_assignment_request import ModelPluginAssignmentRequest
from .model_plugin_assignment_request import (
    ExtendTypeEnum as ModelPluginAssignmentRequestExtendTypeEnum,
)
from .model_plugin_assignment_response import ModelPluginAssignmentResponse
from .model_plugin_assignment_response import (
    ExtendTypeEnum as ModelPluginAssignmentResponseExtendTypeEnum,
)
from .model_predicate import ModelPredicate
from .model_predicate import (
    MatcherEnum as ModelPredicateMatcherEnum,
    ParameterTypeEnum as ModelPredicateParameterTypeEnum,
)
from .model_requirement import ModelRequirement
from .model_requirement import OperatorEnum as ModelRequirementOperatorEnum
from .model_requirement_progression_response import ModelRequirementProgressionResponse
from .model_reset_config import ModelResetConfig
from .model_reward import ModelReward
from .model_reward import TypeEnum as ModelRewardTypeEnum
from .model_schedule import ModelSchedule
from .model_schedule_by_goal_response import ModelScheduleByGoalResponse
from .model_schedule_response import ModelScheduleResponse
from .model_update_challenge_request import ModelUpdateChallengeRequest
from .model_update_challenge_request import (
    AssignmentRuleEnum as ModelUpdateChallengeRequestAssignmentRuleEnum,
    GoalsVisibilityEnum as ModelUpdateChallengeRequestGoalsVisibilityEnum,
    RotationEnum as ModelUpdateChallengeRequestRotationEnum,
)
from .model_update_challenge_schedule_request import ModelUpdateChallengeScheduleRequest
from .model_update_challenge_schedule_request import (
    ActionEnum as ModelUpdateChallengeScheduleRequestActionEnum,
)
from .model_update_goal_request import ModelUpdateGoalRequest
from .model_user_progression_period_response_meta import (
    ModelUserProgressionPeriodResponseMeta,
)
from .model_user_progression_response import ModelUserProgressionResponse
from .model_user_progression_response_meta import ModelUserProgressionResponseMeta
from .model_user_reward import ModelUserReward
from .model_user_reward import (
    StatusEnum as ModelUserRewardStatusEnum,
    TypeEnum as ModelUserRewardTypeEnum,
)
from .models_period import ModelsPeriod
from .response_error import ResponseError
