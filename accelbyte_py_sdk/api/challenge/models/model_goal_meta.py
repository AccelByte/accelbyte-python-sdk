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

from ..models.model_requirement import ModelRequirement
from ..models.model_reward import ModelReward


class ModelGoalMeta(Model):
    """Model goal meta (model.GoalMeta)

    Properties:
        code: (code) REQUIRED str

        description: (description) REQUIRED str

        name: (name) REQUIRED str

        requirement_groups: (requirementGroups) REQUIRED List[ModelRequirement]

        rewards: (rewards) REQUIRED List[ModelReward]

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    code: str  # REQUIRED
    description: str  # REQUIRED
    name: str  # REQUIRED
    requirement_groups: List[ModelRequirement]  # REQUIRED
    rewards: List[ModelReward]  # REQUIRED
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> ModelGoalMeta:
        self.code = value
        return self

    def with_description(self, value: str) -> ModelGoalMeta:
        self.description = value
        return self

    def with_name(self, value: str) -> ModelGoalMeta:
        self.name = value
        return self

    def with_requirement_groups(self, value: List[ModelRequirement]) -> ModelGoalMeta:
        self.requirement_groups = value
        return self

    def with_rewards(self, value: List[ModelReward]) -> ModelGoalMeta:
        self.rewards = value
        return self

    def with_tags(self, value: List[str]) -> ModelGoalMeta:
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
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        description: str,
        name: str,
        requirement_groups: List[ModelRequirement],
        rewards: List[ModelReward],
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelGoalMeta:
        instance = cls()
        instance.code = code
        instance.description = description
        instance.name = name
        instance.requirement_groups = requirement_groups
        instance.rewards = rewards
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelGoalMeta:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelGoalMeta]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelGoalMeta]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelGoalMeta, List[ModelGoalMeta], Dict[Any, ModelGoalMeta]]:
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
            "description": "description",
            "name": "name",
            "requirementGroups": "requirement_groups",
            "rewards": "rewards",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "code": True,
            "description": True,
            "name": True,
            "requirementGroups": True,
            "rewards": True,
            "tags": False,
        }

    # endregion static methods
