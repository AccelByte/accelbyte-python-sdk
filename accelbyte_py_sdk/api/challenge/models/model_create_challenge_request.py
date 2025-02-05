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

from ..models.model_reset_config import ModelResetConfig


class AssignmentRuleEnum(StrEnum):
    CUSTOM = "CUSTOM"
    FIXED = "FIXED"
    RANDOMIZED = "RANDOMIZED"
    UNSCHEDULED = "UNSCHEDULED"


class GoalsVisibilityEnum(StrEnum):
    PERIODONLY = "PERIODONLY"
    SHOWALL = "SHOWALL"


class RotationEnum(StrEnum):
    DAILY = "DAILY"
    MONTHLY = "MONTHLY"
    NONE = "NONE"
    WEEKLY = "WEEKLY"


class ModelCreateChallengeRequest(Model):
    """Model create challenge request (model.CreateChallengeRequest)

    Properties:
        assignment_rule: (assignmentRule) REQUIRED Union[str, AssignmentRuleEnum]

        code: (code) REQUIRED str

        goals_visibility: (goalsVisibility) REQUIRED Union[str, GoalsVisibilityEnum]

        name: (name) REQUIRED str

        rotation: (rotation) REQUIRED Union[str, RotationEnum]

        start_date: (startDate) REQUIRED str

        active_goals_per_rotation: (activeGoalsPerRotation) OPTIONAL int

        description: (description) OPTIONAL str

        end_after: (endAfter) OPTIONAL int

        end_date: (endDate) OPTIONAL str

        randomized_per_rotation: (randomizedPerRotation) OPTIONAL bool

        repeat_after: (repeatAfter) OPTIONAL int

        reset_config: (resetConfig) OPTIONAL ModelResetConfig

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    assignment_rule: Union[str, AssignmentRuleEnum]  # REQUIRED
    code: str  # REQUIRED
    goals_visibility: Union[str, GoalsVisibilityEnum]  # REQUIRED
    name: str  # REQUIRED
    rotation: Union[str, RotationEnum]  # REQUIRED
    start_date: str  # REQUIRED
    active_goals_per_rotation: int  # OPTIONAL
    description: str  # OPTIONAL
    end_after: int  # OPTIONAL
    end_date: str  # OPTIONAL
    randomized_per_rotation: bool  # OPTIONAL
    repeat_after: int  # OPTIONAL
    reset_config: ModelResetConfig  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_assignment_rule(
        self, value: Union[str, AssignmentRuleEnum]
    ) -> ModelCreateChallengeRequest:
        self.assignment_rule = value
        return self

    def with_code(self, value: str) -> ModelCreateChallengeRequest:
        self.code = value
        return self

    def with_goals_visibility(
        self, value: Union[str, GoalsVisibilityEnum]
    ) -> ModelCreateChallengeRequest:
        self.goals_visibility = value
        return self

    def with_name(self, value: str) -> ModelCreateChallengeRequest:
        self.name = value
        return self

    def with_rotation(
        self, value: Union[str, RotationEnum]
    ) -> ModelCreateChallengeRequest:
        self.rotation = value
        return self

    def with_start_date(self, value: str) -> ModelCreateChallengeRequest:
        self.start_date = value
        return self

    def with_active_goals_per_rotation(self, value: int) -> ModelCreateChallengeRequest:
        self.active_goals_per_rotation = value
        return self

    def with_description(self, value: str) -> ModelCreateChallengeRequest:
        self.description = value
        return self

    def with_end_after(self, value: int) -> ModelCreateChallengeRequest:
        self.end_after = value
        return self

    def with_end_date(self, value: str) -> ModelCreateChallengeRequest:
        self.end_date = value
        return self

    def with_randomized_per_rotation(self, value: bool) -> ModelCreateChallengeRequest:
        self.randomized_per_rotation = value
        return self

    def with_repeat_after(self, value: int) -> ModelCreateChallengeRequest:
        self.repeat_after = value
        return self

    def with_reset_config(self, value: ModelResetConfig) -> ModelCreateChallengeRequest:
        self.reset_config = value
        return self

    def with_tags(self, value: List[str]) -> ModelCreateChallengeRequest:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "assignment_rule"):
            result["assignmentRule"] = str(self.assignment_rule)
        elif include_empty:
            result["assignmentRule"] = Union[str, AssignmentRuleEnum]()
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "goals_visibility"):
            result["goalsVisibility"] = str(self.goals_visibility)
        elif include_empty:
            result["goalsVisibility"] = Union[str, GoalsVisibilityEnum]()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "rotation"):
            result["rotation"] = str(self.rotation)
        elif include_empty:
            result["rotation"] = Union[str, RotationEnum]()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "active_goals_per_rotation"):
            result["activeGoalsPerRotation"] = int(self.active_goals_per_rotation)
        elif include_empty:
            result["activeGoalsPerRotation"] = 0
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "end_after"):
            result["endAfter"] = int(self.end_after)
        elif include_empty:
            result["endAfter"] = 0
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "randomized_per_rotation"):
            result["randomizedPerRotation"] = bool(self.randomized_per_rotation)
        elif include_empty:
            result["randomizedPerRotation"] = False
        if hasattr(self, "repeat_after"):
            result["repeatAfter"] = int(self.repeat_after)
        elif include_empty:
            result["repeatAfter"] = 0
        if hasattr(self, "reset_config"):
            result["resetConfig"] = self.reset_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["resetConfig"] = ModelResetConfig()
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
        assignment_rule: Union[str, AssignmentRuleEnum],
        code: str,
        goals_visibility: Union[str, GoalsVisibilityEnum],
        name: str,
        rotation: Union[str, RotationEnum],
        start_date: str,
        active_goals_per_rotation: Optional[int] = None,
        description: Optional[str] = None,
        end_after: Optional[int] = None,
        end_date: Optional[str] = None,
        randomized_per_rotation: Optional[bool] = None,
        repeat_after: Optional[int] = None,
        reset_config: Optional[ModelResetConfig] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelCreateChallengeRequest:
        instance = cls()
        instance.assignment_rule = assignment_rule
        instance.code = code
        instance.goals_visibility = goals_visibility
        instance.name = name
        instance.rotation = rotation
        instance.start_date = start_date
        if active_goals_per_rotation is not None:
            instance.active_goals_per_rotation = active_goals_per_rotation
        if description is not None:
            instance.description = description
        if end_after is not None:
            instance.end_after = end_after
        if end_date is not None:
            instance.end_date = end_date
        if randomized_per_rotation is not None:
            instance.randomized_per_rotation = randomized_per_rotation
        if repeat_after is not None:
            instance.repeat_after = repeat_after
        if reset_config is not None:
            instance.reset_config = reset_config
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCreateChallengeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "assignmentRule" in dict_ and dict_["assignmentRule"] is not None:
            instance.assignment_rule = str(dict_["assignmentRule"])
        elif include_empty:
            instance.assignment_rule = Union[str, AssignmentRuleEnum]()
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "goalsVisibility" in dict_ and dict_["goalsVisibility"] is not None:
            instance.goals_visibility = str(dict_["goalsVisibility"])
        elif include_empty:
            instance.goals_visibility = Union[str, GoalsVisibilityEnum]()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "rotation" in dict_ and dict_["rotation"] is not None:
            instance.rotation = str(dict_["rotation"])
        elif include_empty:
            instance.rotation = Union[str, RotationEnum]()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if (
            "activeGoalsPerRotation" in dict_
            and dict_["activeGoalsPerRotation"] is not None
        ):
            instance.active_goals_per_rotation = int(dict_["activeGoalsPerRotation"])
        elif include_empty:
            instance.active_goals_per_rotation = 0
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "endAfter" in dict_ and dict_["endAfter"] is not None:
            instance.end_after = int(dict_["endAfter"])
        elif include_empty:
            instance.end_after = 0
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if (
            "randomizedPerRotation" in dict_
            and dict_["randomizedPerRotation"] is not None
        ):
            instance.randomized_per_rotation = bool(dict_["randomizedPerRotation"])
        elif include_empty:
            instance.randomized_per_rotation = False
        if "repeatAfter" in dict_ and dict_["repeatAfter"] is not None:
            instance.repeat_after = int(dict_["repeatAfter"])
        elif include_empty:
            instance.repeat_after = 0
        if "resetConfig" in dict_ and dict_["resetConfig"] is not None:
            instance.reset_config = ModelResetConfig.create_from_dict(
                dict_["resetConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.reset_config = ModelResetConfig()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCreateChallengeRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCreateChallengeRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCreateChallengeRequest,
        List[ModelCreateChallengeRequest],
        Dict[Any, ModelCreateChallengeRequest],
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
            "assignmentRule": "assignment_rule",
            "code": "code",
            "goalsVisibility": "goals_visibility",
            "name": "name",
            "rotation": "rotation",
            "startDate": "start_date",
            "activeGoalsPerRotation": "active_goals_per_rotation",
            "description": "description",
            "endAfter": "end_after",
            "endDate": "end_date",
            "randomizedPerRotation": "randomized_per_rotation",
            "repeatAfter": "repeat_after",
            "resetConfig": "reset_config",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "assignmentRule": True,
            "code": True,
            "goalsVisibility": True,
            "name": True,
            "rotation": True,
            "startDate": True,
            "activeGoalsPerRotation": False,
            "description": False,
            "endAfter": False,
            "endDate": False,
            "randomizedPerRotation": False,
            "repeatAfter": False,
            "resetConfig": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "assignmentRule": ["CUSTOM", "FIXED", "RANDOMIZED", "UNSCHEDULED"],
            "goalsVisibility": ["PERIODONLY", "SHOWALL"],
            "rotation": ["DAILY", "MONTHLY", "NONE", "WEEKLY"],
        }

    # endregion static methods
