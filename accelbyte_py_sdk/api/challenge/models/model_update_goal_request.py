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

from ..models.model_goal_schedule import ModelGoalSchedule
from ..models.model_requirement import ModelRequirement
from ..models.model_reward import ModelReward


class ModelUpdateGoalRequest(Model):
    """Model update goal request (model.UpdateGoalRequest)

    Properties:
        description: (description) REQUIRED str

        is_active: (isActive) REQUIRED bool

        name: (name) REQUIRED str

        requirement_groups: (requirementGroups) REQUIRED List[ModelRequirement]

        rewards: (rewards) REQUIRED List[ModelReward]

        tags: (tags) REQUIRED List[str]

        schedule: (schedule) OPTIONAL ModelGoalSchedule
    """

    # region fields

    description: str  # REQUIRED
    is_active: bool  # REQUIRED
    name: str  # REQUIRED
    requirement_groups: List[ModelRequirement]  # REQUIRED
    rewards: List[ModelReward]  # REQUIRED
    tags: List[str]  # REQUIRED
    schedule: ModelGoalSchedule  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ModelUpdateGoalRequest:
        self.description = value
        return self

    def with_is_active(self, value: bool) -> ModelUpdateGoalRequest:
        self.is_active = value
        return self

    def with_name(self, value: str) -> ModelUpdateGoalRequest:
        self.name = value
        return self

    def with_requirement_groups(
        self, value: List[ModelRequirement]
    ) -> ModelUpdateGoalRequest:
        self.requirement_groups = value
        return self

    def with_rewards(self, value: List[ModelReward]) -> ModelUpdateGoalRequest:
        self.rewards = value
        return self

    def with_tags(self, value: List[str]) -> ModelUpdateGoalRequest:
        self.tags = value
        return self

    def with_schedule(self, value: ModelGoalSchedule) -> ModelUpdateGoalRequest:
        self.schedule = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "is_active"):
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "requirement_groups"):
            result["requirementGroups"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.requirement_groups
            ]
        elif include_empty:
            result["requirementGroups"] = []
        if hasattr(self, "rewards"):
            result["rewards"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.rewards
            ]
        elif include_empty:
            result["rewards"] = []
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "schedule"):
            result["schedule"] = self.schedule.to_dict(include_empty=include_empty)
        elif include_empty:
            result["schedule"] = ModelGoalSchedule()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        is_active: bool,
        name: str,
        requirement_groups: List[ModelRequirement],
        rewards: List[ModelReward],
        tags: List[str],
        schedule: Optional[ModelGoalSchedule] = None,
        **kwargs,
    ) -> ModelUpdateGoalRequest:
        instance = cls()
        instance.description = description
        instance.is_active = is_active
        instance.name = name
        instance.requirement_groups = requirement_groups
        instance.rewards = rewards
        instance.tags = tags
        if schedule is not None:
            instance.schedule = schedule
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUpdateGoalRequest:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "requirementGroups" in dict_ and dict_["requirementGroups"] is not None:
            instance.requirement_groups = [
                ModelRequirement.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["requirementGroups"]
            ]
        elif include_empty:
            instance.requirement_groups = []
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = [
                ModelReward.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewards"]
            ]
        elif include_empty:
            instance.rewards = []
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "schedule" in dict_ and dict_["schedule"] is not None:
            instance.schedule = ModelGoalSchedule.create_from_dict(
                dict_["schedule"], include_empty=include_empty
            )
        elif include_empty:
            instance.schedule = ModelGoalSchedule()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUpdateGoalRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUpdateGoalRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUpdateGoalRequest,
        List[ModelUpdateGoalRequest],
        Dict[Any, ModelUpdateGoalRequest],
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
            "description": "description",
            "isActive": "is_active",
            "name": "name",
            "requirementGroups": "requirement_groups",
            "rewards": "rewards",
            "tags": "tags",
            "schedule": "schedule",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "isActive": True,
            "name": True,
            "requirementGroups": True,
            "rewards": True,
            "tags": True,
            "schedule": False,
        }

    # endregion static methods
