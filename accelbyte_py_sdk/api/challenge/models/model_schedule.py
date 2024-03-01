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

from ..models.model_goal_order import ModelGoalOrder


class ModelSchedule(Model):
    """Model schedule (model.Schedule)

    Properties:
        challenge_code: (challengeCode) REQUIRED str

        created_at: (createdAt) REQUIRED str

        end_time: (endTime) REQUIRED str

        goals: (goals) REQUIRED List[ModelGoalOrder]

        namespace: (namespace) REQUIRED str

        start_time: (startTime) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    challenge_code: str  # REQUIRED
    created_at: str  # REQUIRED
    end_time: str  # REQUIRED
    goals: List[ModelGoalOrder]  # REQUIRED
    namespace: str  # REQUIRED
    start_time: str  # REQUIRED
    updated_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_challenge_code(self, value: str) -> ModelSchedule:
        self.challenge_code = value
        return self

    def with_created_at(self, value: str) -> ModelSchedule:
        self.created_at = value
        return self

    def with_end_time(self, value: str) -> ModelSchedule:
        self.end_time = value
        return self

    def with_goals(self, value: List[ModelGoalOrder]) -> ModelSchedule:
        self.goals = value
        return self

    def with_namespace(self, value: str) -> ModelSchedule:
        self.namespace = value
        return self

    def with_start_time(self, value: str) -> ModelSchedule:
        self.start_time = value
        return self

    def with_updated_at(self, value: str) -> ModelSchedule:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "challenge_code"):
            result["challengeCode"] = str(self.challenge_code)
        elif include_empty:
            result["challengeCode"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "end_time"):
            result["endTime"] = str(self.end_time)
        elif include_empty:
            result["endTime"] = ""
        if hasattr(self, "goals"):
            result["goals"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.goals
            ]
        elif include_empty:
            result["goals"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "start_time"):
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        challenge_code: str,
        created_at: str,
        end_time: str,
        goals: List[ModelGoalOrder],
        namespace: str,
        start_time: str,
        updated_at: str,
        **kwargs,
    ) -> ModelSchedule:
        instance = cls()
        instance.challenge_code = challenge_code
        instance.created_at = created_at
        instance.end_time = end_time
        instance.goals = goals
        instance.namespace = namespace
        instance.start_time = start_time
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelSchedule:
        instance = cls()
        if not dict_:
            return instance
        if "challengeCode" in dict_ and dict_["challengeCode"] is not None:
            instance.challenge_code = str(dict_["challengeCode"])
        elif include_empty:
            instance.challenge_code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "endTime" in dict_ and dict_["endTime"] is not None:
            instance.end_time = str(dict_["endTime"])
        elif include_empty:
            instance.end_time = ""
        if "goals" in dict_ and dict_["goals"] is not None:
            instance.goals = [
                ModelGoalOrder.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["goals"]
            ]
        elif include_empty:
            instance.goals = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelSchedule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelSchedule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelSchedule, List[ModelSchedule], Dict[Any, ModelSchedule]]:
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
            "createdAt": "created_at",
            "endTime": "end_time",
            "goals": "goals",
            "namespace": "namespace",
            "startTime": "start_time",
            "updatedAt": "updated_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "challengeCode": True,
            "createdAt": True,
            "endTime": True,
            "goals": True,
            "namespace": True,
            "startTime": True,
            "updatedAt": True,
        }

    # endregion static methods
