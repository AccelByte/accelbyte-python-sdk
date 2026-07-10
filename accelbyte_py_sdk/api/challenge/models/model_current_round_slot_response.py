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

from ..models.model_goal_in_schedules_response import ModelGoalInSchedulesResponse


class ModelCurrentRoundSlotResponse(Model):
    """Model current round slot response (model.CurrentRoundSlotResponse)

    Properties:
        goals: (goals) REQUIRED List[ModelGoalInSchedulesResponse]

        index: (index) REQUIRED int

        start_time: (startTime) REQUIRED str

        end_time: (endTime) OPTIONAL str
    """

    # region fields

    goals: List[ModelGoalInSchedulesResponse]  # REQUIRED
    index: int  # REQUIRED
    start_time: str  # REQUIRED
    end_time: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_goals(
        self, value: List[ModelGoalInSchedulesResponse]
    ) -> ModelCurrentRoundSlotResponse:
        self.goals = value
        return self

    def with_index(self, value: int) -> ModelCurrentRoundSlotResponse:
        self.index = value
        return self

    def with_start_time(self, value: str) -> ModelCurrentRoundSlotResponse:
        self.start_time = value
        return self

    def with_end_time(self, value: str) -> ModelCurrentRoundSlotResponse:
        self.end_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "goals"):
            result["goals"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.goals
            ]
        elif include_empty:
            result["goals"] = []
        if hasattr(self, "index"):
            result["index"] = int(self.index)
        elif include_empty:
            result["index"] = 0
        if hasattr(self, "start_time"):
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = ""
        if hasattr(self, "end_time"):
            result["endTime"] = str(self.end_time)
        elif include_empty:
            result["endTime"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        goals: List[ModelGoalInSchedulesResponse],
        index: int,
        start_time: str,
        end_time: Optional[str] = None,
        **kwargs,
    ) -> ModelCurrentRoundSlotResponse:
        instance = cls()
        instance.goals = goals
        instance.index = index
        instance.start_time = start_time
        if end_time is not None:
            instance.end_time = end_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCurrentRoundSlotResponse:
        instance = cls()
        if not dict_:
            return instance
        if "goals" in dict_ and dict_["goals"] is not None:
            instance.goals = [
                ModelGoalInSchedulesResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["goals"]
            ]
        elif include_empty:
            instance.goals = []
        if "index" in dict_ and dict_["index"] is not None:
            instance.index = int(dict_["index"])
        elif include_empty:
            instance.index = 0
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = ""
        if "endTime" in dict_ and dict_["endTime"] is not None:
            instance.end_time = str(dict_["endTime"])
        elif include_empty:
            instance.end_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCurrentRoundSlotResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCurrentRoundSlotResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCurrentRoundSlotResponse,
        List[ModelCurrentRoundSlotResponse],
        Dict[Any, ModelCurrentRoundSlotResponse],
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
            "goals": "goals",
            "index": "index",
            "startTime": "start_time",
            "endTime": "end_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "goals": True,
            "index": True,
            "startTime": True,
            "endTime": False,
        }

    # endregion static methods
