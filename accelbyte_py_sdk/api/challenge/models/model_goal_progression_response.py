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

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum

from ..models.model_claimable_user_reward import ModelClaimableUserReward
from ..models.model_goal_meta import ModelGoalMeta
from ..models.model_requirement_progression_response import (
    ModelRequirementProgressionResponse,
)


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    COMPLETED = "COMPLETED"
    NOT_STARTED = "NOT_STARTED"
    RETIRED = "RETIRED"


class ModelGoalProgressionResponse(Model):
    """Model goal progression response (model.GoalProgressionResponse)

    Properties:
        challenge_code: (challengeCode) REQUIRED str

        goal: (goal) REQUIRED ModelGoalMeta

        goal_code: (goalCode) REQUIRED str

        goal_progression_id: (goalProgressionId) REQUIRED str

        requirement_progressions: (requirementProgressions) REQUIRED List[ModelRequirementProgressionResponse]

        status: (status) REQUIRED Union[str, StatusEnum]

        completed_at: (completedAt) OPTIONAL str

        to_claim_rewards: (toClaimRewards) OPTIONAL List[ModelClaimableUserReward]
    """

    # region fields

    challenge_code: str  # REQUIRED
    goal: ModelGoalMeta  # REQUIRED
    goal_code: str  # REQUIRED
    goal_progression_id: str  # REQUIRED
    requirement_progressions: List[ModelRequirementProgressionResponse]  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    completed_at: str  # OPTIONAL
    to_claim_rewards: List[ModelClaimableUserReward]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_challenge_code(self, value: str) -> ModelGoalProgressionResponse:
        self.challenge_code = value
        return self

    def with_goal(self, value: ModelGoalMeta) -> ModelGoalProgressionResponse:
        self.goal = value
        return self

    def with_goal_code(self, value: str) -> ModelGoalProgressionResponse:
        self.goal_code = value
        return self

    def with_goal_progression_id(self, value: str) -> ModelGoalProgressionResponse:
        self.goal_progression_id = value
        return self

    def with_requirement_progressions(
        self, value: List[ModelRequirementProgressionResponse]
    ) -> ModelGoalProgressionResponse:
        self.requirement_progressions = value
        return self

    def with_status(
        self, value: Union[str, StatusEnum]
    ) -> ModelGoalProgressionResponse:
        self.status = value
        return self

    def with_completed_at(self, value: str) -> ModelGoalProgressionResponse:
        self.completed_at = value
        return self

    def with_to_claim_rewards(
        self, value: List[ModelClaimableUserReward]
    ) -> ModelGoalProgressionResponse:
        self.to_claim_rewards = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "challenge_code"):
            result["challengeCode"] = str(self.challenge_code)
        elif include_empty:
            result["challengeCode"] = ""
        if hasattr(self, "goal"):
            result["goal"] = self.goal.to_dict(include_empty=include_empty)
        elif include_empty:
            result["goal"] = ModelGoalMeta()
        if hasattr(self, "goal_code"):
            result["goalCode"] = str(self.goal_code)
        elif include_empty:
            result["goalCode"] = ""
        if hasattr(self, "goal_progression_id"):
            result["goalProgressionId"] = str(self.goal_progression_id)
        elif include_empty:
            result["goalProgressionId"] = ""
        if hasattr(self, "requirement_progressions"):
            result["requirementProgressions"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.requirement_progressions
            ]
        elif include_empty:
            result["requirementProgressions"] = []
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "completed_at"):
            result["completedAt"] = str(self.completed_at)
        elif include_empty:
            result["completedAt"] = ""
        if hasattr(self, "to_claim_rewards"):
            result["toClaimRewards"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.to_claim_rewards
            ]
        elif include_empty:
            result["toClaimRewards"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        challenge_code: str,
        goal: ModelGoalMeta,
        goal_code: str,
        goal_progression_id: str,
        requirement_progressions: List[ModelRequirementProgressionResponse],
        status: Union[str, StatusEnum],
        completed_at: Optional[str] = None,
        to_claim_rewards: Optional[List[ModelClaimableUserReward]] = None,
        **kwargs,
    ) -> ModelGoalProgressionResponse:
        instance = cls()
        instance.challenge_code = challenge_code
        instance.goal = goal
        instance.goal_code = goal_code
        instance.goal_progression_id = goal_progression_id
        instance.requirement_progressions = requirement_progressions
        instance.status = status
        if completed_at is not None:
            instance.completed_at = completed_at
        if to_claim_rewards is not None:
            instance.to_claim_rewards = to_claim_rewards
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGoalProgressionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "challengeCode" in dict_ and dict_["challengeCode"] is not None:
            instance.challenge_code = str(dict_["challengeCode"])
        elif include_empty:
            instance.challenge_code = ""
        if "goal" in dict_ and dict_["goal"] is not None:
            instance.goal = ModelGoalMeta.create_from_dict(
                dict_["goal"], include_empty=include_empty
            )
        elif include_empty:
            instance.goal = ModelGoalMeta()
        if "goalCode" in dict_ and dict_["goalCode"] is not None:
            instance.goal_code = str(dict_["goalCode"])
        elif include_empty:
            instance.goal_code = ""
        if "goalProgressionId" in dict_ and dict_["goalProgressionId"] is not None:
            instance.goal_progression_id = str(dict_["goalProgressionId"])
        elif include_empty:
            instance.goal_progression_id = ""
        if (
            "requirementProgressions" in dict_
            and dict_["requirementProgressions"] is not None
        ):
            instance.requirement_progressions = [
                ModelRequirementProgressionResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["requirementProgressions"]
            ]
        elif include_empty:
            instance.requirement_progressions = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "completedAt" in dict_ and dict_["completedAt"] is not None:
            instance.completed_at = str(dict_["completedAt"])
        elif include_empty:
            instance.completed_at = ""
        if "toClaimRewards" in dict_ and dict_["toClaimRewards"] is not None:
            instance.to_claim_rewards = [
                ModelClaimableUserReward.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["toClaimRewards"]
            ]
        elif include_empty:
            instance.to_claim_rewards = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGoalProgressionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGoalProgressionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelGoalProgressionResponse,
        List[ModelGoalProgressionResponse],
        Dict[Any, ModelGoalProgressionResponse],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "challengeCode": "challenge_code",
            "goal": "goal",
            "goalCode": "goal_code",
            "goalProgressionId": "goal_progression_id",
            "requirementProgressions": "requirement_progressions",
            "status": "status",
            "completedAt": "completed_at",
            "toClaimRewards": "to_claim_rewards",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "challengeCode": True,
            "goal": True,
            "goalCode": True,
            "goalProgressionId": True,
            "requirementProgressions": True,
            "status": True,
            "completedAt": False,
            "toClaimRewards": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["ACTIVE", "COMPLETED", "NOT_STARTED", "RETIRED"],
        }

    # endregion static methods
