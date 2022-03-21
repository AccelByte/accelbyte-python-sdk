# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-leaderboard-service (2.15.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelsMonthlyConfig(Model):
    """Models monthly config (models.MonthlyConfig)

    Properties:
        reset_date: (resetDate) REQUIRED int

        reset_time: (resetTime) REQUIRED str
    """

    # region fields

    reset_date: int                                                                                # REQUIRED
    reset_time: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_reset_date(self, value: int) -> ModelsMonthlyConfig:
        self.reset_date = value
        return self

    def with_reset_time(self, value: str) -> ModelsMonthlyConfig:
        self.reset_time = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "reset_date") or self.reset_date is None:
            return False
        if not hasattr(self, "reset_time") or self.reset_time is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "reset_date"):
            result["resetDate"] = int(self.reset_date)
        elif include_empty:
            result["resetDate"] = int()
        if hasattr(self, "reset_time"):
            result["resetTime"] = str(self.reset_time)
        elif include_empty:
            result["resetTime"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        reset_date: int,
        reset_time: str,
    ) -> ModelsMonthlyConfig:
        instance = cls()
        instance.reset_date = reset_date
        instance.reset_time = reset_time
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsMonthlyConfig:
        instance = cls()
        if not dict_:
            return instance
        if "resetDate" in dict_ and dict_["resetDate"] is not None:
            instance.reset_date = int(dict_["resetDate"])
        elif include_empty:
            instance.reset_date = int()
        if "resetTime" in dict_ and dict_["resetTime"] is not None:
            instance.reset_time = str(dict_["resetTime"])
        elif include_empty:
            instance.reset_time = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsMonthlyConfig]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsMonthlyConfig]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsMonthlyConfig, List[ModelsMonthlyConfig]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "resetDate": "reset_date",
            "resetTime": "reset_time",
        }

    # endregion static methods
