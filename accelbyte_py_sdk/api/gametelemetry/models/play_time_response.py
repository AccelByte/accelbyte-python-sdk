# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Analytics Game Telemetry

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


class PlayTimeResponse(Model):
    """Play time response (PlayTimeResponse)

    Properties:
        total_playtime: (total_playtime) REQUIRED float
    """

    # region fields

    total_playtime: float  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_total_playtime(self, value: float) -> PlayTimeResponse:
        self.total_playtime = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "total_playtime"):
            result["total_playtime"] = float(self.total_playtime)
        elif include_empty:
            result["total_playtime"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, total_playtime: float, **kwargs) -> PlayTimeResponse:
        instance = cls()
        instance.total_playtime = total_playtime
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlayTimeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "total_playtime" in dict_ and dict_["total_playtime"] is not None:
            instance.total_playtime = float(dict_["total_playtime"])
        elif include_empty:
            instance.total_playtime = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlayTimeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlayTimeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PlayTimeResponse, List[PlayTimeResponse], Dict[Any, PlayTimeResponse]]:
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
            "total_playtime": "total_playtime",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "total_playtime": True,
        }

    # endregion static methods
