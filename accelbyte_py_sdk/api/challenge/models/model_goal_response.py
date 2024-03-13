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


class ModelGoalResponse(Model):
    """Model goal response (model.GoalResponse)

    Properties:
        challenge_code: (challengeCode) REQUIRED str

        code: (code) REQUIRED str

        created_at: (createdAt) REQUIRED str

        description: (description) REQUIRED str

        is_active: (isActive) REQUIRED bool

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        requirement_groups: (requirementGroups) REQUIRED List[ModelRequirement]

        rewards: (rewards) REQUIRED List[ModelReward]

        updated_at: (updatedAt) REQUIRED str

        schedule: (schedule) OPTIONAL ModelGoalSchedule

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    challenge_code: str  # REQUIRED
    code: str  # REQUIRED
    created_at: str  # REQUIRED
    description: str  # REQUIRED
    is_active: bool  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    requirement_groups: List[ModelRequirement]  # REQUIRED
    rewards: List[ModelReward]  # REQUIRED
    updated_at: str  # REQUIRED
    schedule: ModelGoalSchedule  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_challenge_code(self, value: str) -> ModelGoalResponse:
        self.challenge_code = value
        return self

    def with_code(self, value: str) -> ModelGoalResponse:
        self.code = value
        return self

    def with_created_at(self, value: str) -> ModelGoalResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> ModelGoalResponse:
        self.description = value
        return self

    def with_is_active(self, value: bool) -> ModelGoalResponse:
        self.is_active = value
        return self

    def with_name(self, value: str) -> ModelGoalResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelGoalResponse:
        self.namespace = value
        return self

    def with_requirement_groups(
        self, value: List[ModelRequirement]
    ) -> ModelGoalResponse:
        self.requirement_groups = value
        return self

    def with_rewards(self, value: List[ModelReward]) -> ModelGoalResponse:
        self.rewards = value
        return self

    def with_updated_at(self, value: str) -> ModelGoalResponse:
        self.updated_at = value
        return self

    def with_schedule(self, value: ModelGoalSchedule) -> ModelGoalResponse:
        self.schedule = value
        return self

    def with_tags(self, value: List[str]) -> ModelGoalResponse:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "challenge_code"):
            result["challengeCode"] = str(self.challenge_code)
        elif include_empty:
            result["challengeCode"] = ""
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "schedule"):
            result["schedule"] = self.schedule.to_dict(include_empty=include_empty)
        elif include_empty:
            result["schedule"] = ModelGoalSchedule()
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
        challenge_code: str,
        code: str,
        created_at: str,
        description: str,
        is_active: bool,
        name: str,
        namespace: str,
        requirement_groups: List[ModelRequirement],
        rewards: List[ModelReward],
        updated_at: str,
        schedule: Optional[ModelGoalSchedule] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelGoalResponse:
        instance = cls()
        instance.challenge_code = challenge_code
        instance.code = code
        instance.created_at = created_at
        instance.description = description
        instance.is_active = is_active
        instance.name = name
        instance.namespace = namespace
        instance.requirement_groups = requirement_groups
        instance.rewards = rewards
        instance.updated_at = updated_at
        if schedule is not None:
            instance.schedule = schedule
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGoalResponse:
        instance = cls()
        if not dict_:
            return instance
        if "challengeCode" in dict_ and dict_["challengeCode"] is not None:
            instance.challenge_code = str(dict_["challengeCode"])
        elif include_empty:
            instance.challenge_code = ""
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "schedule" in dict_ and dict_["schedule"] is not None:
            instance.schedule = ModelGoalSchedule.create_from_dict(
                dict_["schedule"], include_empty=include_empty
            )
        elif include_empty:
            instance.schedule = ModelGoalSchedule()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGoalResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGoalResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelGoalResponse, List[ModelGoalResponse], Dict[Any, ModelGoalResponse]
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
            "code": "code",
            "createdAt": "created_at",
            "description": "description",
            "isActive": "is_active",
            "name": "name",
            "namespace": "namespace",
            "requirementGroups": "requirement_groups",
            "rewards": "rewards",
            "updatedAt": "updated_at",
            "schedule": "schedule",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "challengeCode": True,
            "code": True,
            "createdAt": True,
            "description": True,
            "isActive": True,
            "name": True,
            "namespace": True,
            "requirementGroups": True,
            "rewards": True,
            "updatedAt": True,
            "schedule": False,
            "tags": False,
        }

    # endregion static methods
