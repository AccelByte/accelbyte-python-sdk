# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Leaderboard Service (2.16.1)

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


class ModelsWeeklyConfig(Model):
    """Models weekly config (models.WeeklyConfig)

    Properties:
        reset_day: (resetDay) REQUIRED int

        reset_time: (resetTime) REQUIRED str
    """

    # region fields

    reset_day: int  # REQUIRED
    reset_time: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_reset_day(self, value: int) -> ModelsWeeklyConfig:
        self.reset_day = value
        return self

    def with_reset_time(self, value: str) -> ModelsWeeklyConfig:
        self.reset_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "reset_day"):
            result["resetDay"] = int(self.reset_day)
        elif include_empty:
            result["resetDay"] = 0
        if hasattr(self, "reset_time"):
            result["resetTime"] = str(self.reset_time)
        elif include_empty:
            result["resetTime"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        reset_day: int,
        reset_time: str,
    ) -> ModelsWeeklyConfig:
        instance = cls()
        instance.reset_day = reset_day
        instance.reset_time = reset_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsWeeklyConfig:
        instance = cls()
        if not dict_:
            return instance
        if "resetDay" in dict_ and dict_["resetDay"] is not None:
            instance.reset_day = int(dict_["resetDay"])
        elif include_empty:
            instance.reset_day = 0
        if "resetTime" in dict_ and dict_["resetTime"] is not None:
            instance.reset_time = str(dict_["resetTime"])
        elif include_empty:
            instance.reset_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsWeeklyConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsWeeklyConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsWeeklyConfig, List[ModelsWeeklyConfig], Dict[Any, ModelsWeeklyConfig]
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
            "resetDay": "reset_day",
            "resetTime": "reset_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "resetDay": True,
            "resetTime": True,
        }

    # endregion static methods
