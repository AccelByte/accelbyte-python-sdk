# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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

from ..models.time_location import TimeLocation


class ApiTime(Model):
    """Api time (api.Time)

    Properties:
        ext: (ext) REQUIRED int

        loc: (loc) REQUIRED TimeLocation

        wall: (wall) REQUIRED int
    """

    # region fields

    ext: int  # REQUIRED
    loc: TimeLocation  # REQUIRED
    wall: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ext(self, value: int) -> ApiTime:
        self.ext = value
        return self

    def with_loc(self, value: TimeLocation) -> ApiTime:
        self.loc = value
        return self

    def with_wall(self, value: int) -> ApiTime:
        self.wall = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "ext"):
            result["ext"] = int(self.ext)
        elif include_empty:
            result["ext"] = 0
        if hasattr(self, "loc"):
            result["loc"] = self.loc.to_dict(include_empty=include_empty)
        elif include_empty:
            result["loc"] = TimeLocation()
        if hasattr(self, "wall"):
            result["wall"] = int(self.wall)
        elif include_empty:
            result["wall"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(cls, ext: int, loc: TimeLocation, wall: int, **kwargs) -> ApiTime:
        instance = cls()
        instance.ext = ext
        instance.loc = loc
        instance.wall = wall
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ApiTime:
        instance = cls()
        if not dict_:
            return instance
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = int(dict_["ext"])
        elif include_empty:
            instance.ext = 0
        if "loc" in dict_ and dict_["loc"] is not None:
            instance.loc = TimeLocation.create_from_dict(
                dict_["loc"], include_empty=include_empty
            )
        elif include_empty:
            instance.loc = TimeLocation()
        if "wall" in dict_ and dict_["wall"] is not None:
            instance.wall = int(dict_["wall"])
        elif include_empty:
            instance.wall = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiTime]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiTime]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiTime, List[ApiTime], Dict[Any, ApiTime]]:
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
            "ext": "ext",
            "loc": "loc",
            "wall": "wall",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ext": True,
            "loc": True,
            "wall": True,
        }

    # endregion static methods
