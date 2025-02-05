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


class StatusEnum(StrEnum):
    INIT = "INIT"
    RETIRED = "RETIRED"
    TIED = "TIED"


class ModelChallengeResponse(Model):
    """Model challenge response (model.ChallengeResponse)

    Properties:
        active_goals_per_rotation: (activeGoalsPerRotation) REQUIRED int

        assignment_rule: (assignmentRule) REQUIRED Union[str, AssignmentRuleEnum]

        code: (code) REQUIRED str

        created_at: (createdAt) REQUIRED str

        description: (description) REQUIRED str

        goals_visibility: (goalsVisibility) REQUIRED Union[str, GoalsVisibilityEnum]

        name: (name) REQUIRED str

        randomized_per_rotation: (randomizedPerRotation) REQUIRED bool

        reset_config: (resetConfig) REQUIRED ModelResetConfig

        rotation: (rotation) REQUIRED Union[str, RotationEnum]

        start_date: (startDate) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        end_after: (endAfter) OPTIONAL int

        end_date: (endDate) OPTIONAL str

        repeat_after: (repeatAfter) OPTIONAL int

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    active_goals_per_rotation: int  # REQUIRED
    assignment_rule: Union[str, AssignmentRuleEnum]  # REQUIRED
    code: str  # REQUIRED
    created_at: str  # REQUIRED
    description: str  # REQUIRED
    goals_visibility: Union[str, GoalsVisibilityEnum]  # REQUIRED
    name: str  # REQUIRED
    randomized_per_rotation: bool  # REQUIRED
    reset_config: ModelResetConfig  # REQUIRED
    rotation: Union[str, RotationEnum]  # REQUIRED
    start_date: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    end_after: int  # OPTIONAL
    end_date: str  # OPTIONAL
    repeat_after: int  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_active_goals_per_rotation(self, value: int) -> ModelChallengeResponse:
        self.active_goals_per_rotation = value
        return self

    def with_assignment_rule(
        self, value: Union[str, AssignmentRuleEnum]
    ) -> ModelChallengeResponse:
        self.assignment_rule = value
        return self

    def with_code(self, value: str) -> ModelChallengeResponse:
        self.code = value
        return self

    def with_created_at(self, value: str) -> ModelChallengeResponse:
        self.created_at = value
        return self

    def with_description(self, value: str) -> ModelChallengeResponse:
        self.description = value
        return self

    def with_goals_visibility(
        self, value: Union[str, GoalsVisibilityEnum]
    ) -> ModelChallengeResponse:
        self.goals_visibility = value
        return self

    def with_name(self, value: str) -> ModelChallengeResponse:
        self.name = value
        return self

    def with_randomized_per_rotation(self, value: bool) -> ModelChallengeResponse:
        self.randomized_per_rotation = value
        return self

    def with_reset_config(self, value: ModelResetConfig) -> ModelChallengeResponse:
        self.reset_config = value
        return self

    def with_rotation(self, value: Union[str, RotationEnum]) -> ModelChallengeResponse:
        self.rotation = value
        return self

    def with_start_date(self, value: str) -> ModelChallengeResponse:
        self.start_date = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> ModelChallengeResponse:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> ModelChallengeResponse:
        self.updated_at = value
        return self

    def with_end_after(self, value: int) -> ModelChallengeResponse:
        self.end_after = value
        return self

    def with_end_date(self, value: str) -> ModelChallengeResponse:
        self.end_date = value
        return self

    def with_repeat_after(self, value: int) -> ModelChallengeResponse:
        self.repeat_after = value
        return self

    def with_tags(self, value: List[str]) -> ModelChallengeResponse:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active_goals_per_rotation"):
            result["activeGoalsPerRotation"] = int(self.active_goals_per_rotation)
        elif include_empty:
            result["activeGoalsPerRotation"] = 0
        if hasattr(self, "assignment_rule"):
            result["assignmentRule"] = str(self.assignment_rule)
        elif include_empty:
            result["assignmentRule"] = Union[str, AssignmentRuleEnum]()
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
        if hasattr(self, "goals_visibility"):
            result["goalsVisibility"] = str(self.goals_visibility)
        elif include_empty:
            result["goalsVisibility"] = Union[str, GoalsVisibilityEnum]()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "randomized_per_rotation"):
            result["randomizedPerRotation"] = bool(self.randomized_per_rotation)
        elif include_empty:
            result["randomizedPerRotation"] = False
        if hasattr(self, "reset_config"):
            result["resetConfig"] = self.reset_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["resetConfig"] = ModelResetConfig()
        if hasattr(self, "rotation"):
            result["rotation"] = str(self.rotation)
        elif include_empty:
            result["rotation"] = Union[str, RotationEnum]()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "end_after"):
            result["endAfter"] = int(self.end_after)
        elif include_empty:
            result["endAfter"] = 0
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "repeat_after"):
            result["repeatAfter"] = int(self.repeat_after)
        elif include_empty:
            result["repeatAfter"] = 0
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
        active_goals_per_rotation: int,
        assignment_rule: Union[str, AssignmentRuleEnum],
        code: str,
        created_at: str,
        description: str,
        goals_visibility: Union[str, GoalsVisibilityEnum],
        name: str,
        randomized_per_rotation: bool,
        reset_config: ModelResetConfig,
        rotation: Union[str, RotationEnum],
        start_date: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        end_after: Optional[int] = None,
        end_date: Optional[str] = None,
        repeat_after: Optional[int] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> ModelChallengeResponse:
        instance = cls()
        instance.active_goals_per_rotation = active_goals_per_rotation
        instance.assignment_rule = assignment_rule
        instance.code = code
        instance.created_at = created_at
        instance.description = description
        instance.goals_visibility = goals_visibility
        instance.name = name
        instance.randomized_per_rotation = randomized_per_rotation
        instance.reset_config = reset_config
        instance.rotation = rotation
        instance.start_date = start_date
        instance.status = status
        instance.updated_at = updated_at
        if end_after is not None:
            instance.end_after = end_after
        if end_date is not None:
            instance.end_date = end_date
        if repeat_after is not None:
            instance.repeat_after = repeat_after
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelChallengeResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "activeGoalsPerRotation" in dict_
            and dict_["activeGoalsPerRotation"] is not None
        ):
            instance.active_goals_per_rotation = int(dict_["activeGoalsPerRotation"])
        elif include_empty:
            instance.active_goals_per_rotation = 0
        if "assignmentRule" in dict_ and dict_["assignmentRule"] is not None:
            instance.assignment_rule = str(dict_["assignmentRule"])
        elif include_empty:
            instance.assignment_rule = Union[str, AssignmentRuleEnum]()
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
        if "goalsVisibility" in dict_ and dict_["goalsVisibility"] is not None:
            instance.goals_visibility = str(dict_["goalsVisibility"])
        elif include_empty:
            instance.goals_visibility = Union[str, GoalsVisibilityEnum]()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if (
            "randomizedPerRotation" in dict_
            and dict_["randomizedPerRotation"] is not None
        ):
            instance.randomized_per_rotation = bool(dict_["randomizedPerRotation"])
        elif include_empty:
            instance.randomized_per_rotation = False
        if "resetConfig" in dict_ and dict_["resetConfig"] is not None:
            instance.reset_config = ModelResetConfig.create_from_dict(
                dict_["resetConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.reset_config = ModelResetConfig()
        if "rotation" in dict_ and dict_["rotation"] is not None:
            instance.rotation = str(dict_["rotation"])
        elif include_empty:
            instance.rotation = Union[str, RotationEnum]()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "endAfter" in dict_ and dict_["endAfter"] is not None:
            instance.end_after = int(dict_["endAfter"])
        elif include_empty:
            instance.end_after = 0
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "repeatAfter" in dict_ and dict_["repeatAfter"] is not None:
            instance.repeat_after = int(dict_["repeatAfter"])
        elif include_empty:
            instance.repeat_after = 0
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelChallengeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelChallengeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelChallengeResponse,
        List[ModelChallengeResponse],
        Dict[Any, ModelChallengeResponse],
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
            "activeGoalsPerRotation": "active_goals_per_rotation",
            "assignmentRule": "assignment_rule",
            "code": "code",
            "createdAt": "created_at",
            "description": "description",
            "goalsVisibility": "goals_visibility",
            "name": "name",
            "randomizedPerRotation": "randomized_per_rotation",
            "resetConfig": "reset_config",
            "rotation": "rotation",
            "startDate": "start_date",
            "status": "status",
            "updatedAt": "updated_at",
            "endAfter": "end_after",
            "endDate": "end_date",
            "repeatAfter": "repeat_after",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "activeGoalsPerRotation": True,
            "assignmentRule": True,
            "code": True,
            "createdAt": True,
            "description": True,
            "goalsVisibility": True,
            "name": True,
            "randomizedPerRotation": True,
            "resetConfig": True,
            "rotation": True,
            "startDate": True,
            "status": True,
            "updatedAt": True,
            "endAfter": False,
            "endDate": False,
            "repeatAfter": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "assignmentRule": ["CUSTOM", "FIXED", "RANDOMIZED", "UNSCHEDULED"],
            "goalsVisibility": ["PERIODONLY", "SHOWALL"],
            "rotation": ["DAILY", "MONTHLY", "NONE", "WEEKLY"],
            "status": ["INIT", "RETIRED", "TIED"],
        }

    # endregion static methods
