# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Leaderboard Service (2.19.0)

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


class ModelsDailyConfig(Model):
    """Models daily config (models.DailyConfig)

    Properties:
        reset_time: (resetTime) REQUIRED str
    """

    # region fields

    reset_time: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_reset_time(self, value: str) -> ModelsDailyConfig:
        self.reset_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        reset_time: str,
    ) -> ModelsDailyConfig:
        instance = cls()
        instance.reset_time = reset_time
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDailyConfig:
        instance = cls()
        if not dict_:
            return instance
        if "resetTime" in dict_ and dict_["resetTime"] is not None:
            instance.reset_time = str(dict_["resetTime"])
        elif include_empty:
            instance.reset_time = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDailyConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDailyConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDailyConfig, List[ModelsDailyConfig], Dict[Any, ModelsDailyConfig]
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
            "resetTime": "reset_time",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "resetTime": True,
        }

    # endregion static methods
