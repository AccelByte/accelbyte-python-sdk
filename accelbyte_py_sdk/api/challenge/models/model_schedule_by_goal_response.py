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


class ModelScheduleByGoalResponse(Model):
    """Model schedule by goal response (model.ScheduleByGoalResponse)

    Properties:
        end_time: (endTime) REQUIRED str

        start_time: (startTime) REQUIRED str
    """

    # region fields

    end_time: str  # REQUIRED
    start_time: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_end_time(self, value: str) -> ModelScheduleByGoalResponse:
        self.end_time = value
        return self

    def with_start_time(self, value: str) -> ModelScheduleByGoalResponse:
        self.start_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "end_time"):
            result["endTime"] = str(self.end_time)
        elif include_empty:
            result["endTime"] = ""
        if hasattr(self, "start_time"):
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, end_time: str, start_time: str, **kwargs
    ) -> ModelScheduleByGoalResponse:
        instance = cls()
        instance.end_time = end_time
        instance.start_time = start_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelScheduleByGoalResponse:
        instance = cls()
        if not dict_:
            return instance
        if "endTime" in dict_ and dict_["endTime"] is not None:
            instance.end_time = str(dict_["endTime"])
        elif include_empty:
            instance.end_time = ""
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelScheduleByGoalResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelScheduleByGoalResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelScheduleByGoalResponse,
        List[ModelScheduleByGoalResponse],
        Dict[Any, ModelScheduleByGoalResponse],
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
            "endTime": "end_time",
            "startTime": "start_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "endTime": True,
            "startTime": True,
        }

    # endregion static methods
