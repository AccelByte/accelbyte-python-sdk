# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

"""Auto-generated package that contains models used by the AccelByte Gaming Services Challenge Service."""

__version__ = "1.2.0"
__author__ = "AccelByte"
__email__ = "dev@accelbyte.net"

# pylint: disable=line-too-long

from .iam_error_response import IamErrorResponse
from .model_challenge_response import ModelChallengeResponse
from .model_challenge_response import (
    AssignmentRuleEnum as ModelChallengeResponseAssignmentRuleEnum,
    GoalsVisibilityEnum as ModelChallengeResponseGoalsVisibilityEnum,
    RotationEnum as ModelChallengeResponseRotationEnum,
    StatusEnum as ModelChallengeResponseStatusEnum,
)
from .model_claim_user_rewards_req import ModelClaimUserRewardsReq
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
from .model_goal_order import ModelGoalOrder
from .model_goal_progression_response import ModelGoalProgressionResponse
from .model_goal_progression_response import (
    StatusEnum as ModelGoalProgressionResponseStatusEnum,
)
from .model_goal_response import ModelGoalResponse
from .model_goal_schedule import ModelGoalSchedule
from .model_list_challenge_response import ModelListChallengeResponse
from .model_list_periods_response import ModelListPeriodsResponse
from .model_list_user_rewards_response import ModelListUserRewardsResponse
from .model_pagination import ModelPagination
from .model_predicate import ModelPredicate
from .model_predicate import (
    MatcherEnum as ModelPredicateMatcherEnum,
    ParameterTypeEnum as ModelPredicateParameterTypeEnum,
)
from .model_requirement import ModelRequirement
from .model_requirement import OperatorEnum as ModelRequirementOperatorEnum
from .model_requirement_progression_response import ModelRequirementProgressionResponse
from .model_reward import ModelReward
from .model_reward import TypeEnum as ModelRewardTypeEnum
from .model_schedule import ModelSchedule
from .model_update_goal_request import ModelUpdateGoalRequest
from .model_user_progression_response import ModelUserProgressionResponse
from .model_user_progression_response_meta import ModelUserProgressionResponseMeta
from .model_user_reward import ModelUserReward
from .models_period import ModelsPeriod
from .models_update_challenge_request import ModelsUpdateChallengeRequest
from .models_update_challenge_request import (
    AssignmentRuleEnum as ModelsUpdateChallengeRequestAssignmentRuleEnum,
    GoalsVisibilityEnum as ModelsUpdateChallengeRequestGoalsVisibilityEnum,
    RotationEnum as ModelsUpdateChallengeRequestRotationEnum,
)
from .response_error import ResponseError
