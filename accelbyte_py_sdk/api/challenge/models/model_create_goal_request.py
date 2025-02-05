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

from ..models.model_goal_schedule_request import ModelGoalScheduleRequest
from ..models.model_requirement import ModelRequirement
from ..models.model_reward import ModelReward


class ModelCreateGoalRequest(Model):
    """Model create goal request (model.CreateGoalRequest)

    Properties:
        code: (code) REQUIRED str

        is_active: (isActive) REQUIRED bool

        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        requirement_groups: (requirementGroups) OPTIONAL List[ModelRequirement]

        rewards: (rewards) OPTIONAL List[ModelReward]

        schedule: (schedule) OPTIONAL ModelGoalScheduleRequest

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    code: str  # REQUIRED
    is_active: bool  # REQUIRED
    name: str  # REQUIRED
    description: str  # OPTIONAL
    requirement_groups: List[ModelRequirement]  # OPTIONAL
    rewards: List[ModelReward]  # OPTIONAL
    schedule: ModelGoalScheduleRequest  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelCreateGoalRequest:
        self.code = value
        return self

    def with_is_active(self, value: bool) -> ModelCreateGoalRequest:
        self.is_active = value
        return self

    def with_name(self, value: str) -> ModelCreateGoalRequest:
        self.name = value
        return self

    def with_description(self, value: str) -> ModelCreateGoalRequest:
        self.description = value
        return self

    def with_requirement_groups(
        self, value: List[ModelRequirement]
    ) -> ModelCreateGoalRequest:
        self.requirement_groups = value
        return self

    def with_rewards(self, value: List[ModelReward]) -> ModelCreateGoalRequest:
        self.rewards = value
        return self

    def with_schedule(self, value: ModelGoalScheduleRequest) -> ModelCreateGoalRequest:
        self.schedule = value
        return self

    def with_tags(self, value: List[str]) -> ModelCreateGoalRequest:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "is_active"):
            result["isActive"] = bool(self.is_active)
        elif include_empty:
            result["isActive"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        if hasattr(self, "schedule"):
            result["schedule"] = self.schedule.to_dict(include_empty=include_empty)
        elif include_empty:
            result["schedule"] = ModelGoalScheduleRequest()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        is_active: bool,
        name: str,
        description: Optional[str] = None,
        requirement_groups: Optional[List[ModelRequirement]] = None,
        rewards: Optional[List[ModelReward]] = None,
        schedule: Optional[ModelGoalScheduleRequest] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelCreateGoalRequest:
        instance = cls()
        instance.code = code
        instance.is_active = is_active
        instance.name = name
        if description is not None:
            instance.description = description
        if requirement_groups is not None:
            instance.requirement_groups = requirement_groups
        if rewards is not None:
            instance.rewards = rewards
        if schedule is not None:
            instance.schedule = schedule
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCreateGoalRequest:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "isActive" in dict_ and dict_["isActive"] is not None:
            instance.is_active = bool(dict_["isActive"])
        elif include_empty:
            instance.is_active = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
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
        if "schedule" in dict_ and dict_["schedule"] is not None:
            instance.schedule = ModelGoalScheduleRequest.create_from_dict(
                dict_["schedule"], include_empty=include_empty
            )
        elif include_empty:
            instance.schedule = ModelGoalScheduleRequest()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCreateGoalRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCreateGoalRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCreateGoalRequest,
        List[ModelCreateGoalRequest],
        Dict[Any, ModelCreateGoalRequest],
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
            "code": "code",
            "isActive": "is_active",
            "name": "name",
            "description": "description",
            "requirementGroups": "requirement_groups",
            "rewards": "rewards",
            "schedule": "schedule",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "isActive": True,
            "name": True,
            "description": False,
            "requirementGroups": False,
            "rewards": False,
            "schedule": False,
            "tags": False,
        }

    # endregion static methods
