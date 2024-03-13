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


class TimeZoneTrans(Model):
    """Time zone trans (time.zoneTrans)

    Properties:
        index: (index) REQUIRED int

        isstd: (isstd) REQUIRED bool

        isutc: (isutc) REQUIRED bool

        when: (when) REQUIRED int
    """

    # region fields

    index: int  # REQUIRED
    isstd: bool  # REQUIRED
    isutc: bool  # REQUIRED
    when: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_index(self, value: int) -> TimeZoneTrans:
        self.index = value
        return self

    def with_isstd(self, value: bool) -> TimeZoneTrans:
        self.isstd = value
        return self

    def with_isutc(self, value: bool) -> TimeZoneTrans:
        self.isutc = value
        return self

    def with_when(self, value: int) -> TimeZoneTrans:
        self.when = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "index"):
            result["index"] = int(self.index)
        elif include_empty:
            result["index"] = 0
        if hasattr(self, "isstd"):
            result["isstd"] = bool(self.isstd)
        elif include_empty:
            result["isstd"] = False
        if hasattr(self, "isutc"):
            result["isutc"] = bool(self.isutc)
        elif include_empty:
            result["isutc"] = False
        if hasattr(self, "when"):
            result["when"] = int(self.when)
        elif include_empty:
            result["when"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, index: int, isstd: bool, isutc: bool, when: int, **kwargs
    ) -> TimeZoneTrans:
        instance = cls()
        instance.index = index
        instance.isstd = isstd
        instance.isutc = isutc
        instance.when = when
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TimeZoneTrans:
        instance = cls()
        if not dict_:
            return instance
        if "index" in dict_ and dict_["index"] is not None:
            instance.index = int(dict_["index"])
        elif include_empty:
            instance.index = 0
        if "isstd" in dict_ and dict_["isstd"] is not None:
            instance.isstd = bool(dict_["isstd"])
        elif include_empty:
            instance.isstd = False
        if "isutc" in dict_ and dict_["isutc"] is not None:
            instance.isutc = bool(dict_["isutc"])
        elif include_empty:
            instance.isutc = False
        if "when" in dict_ and dict_["when"] is not None:
            instance.when = int(dict_["when"])
        elif include_empty:
            instance.when = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TimeZoneTrans]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TimeZoneTrans]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TimeZoneTrans, List[TimeZoneTrans], Dict[Any, TimeZoneTrans]]:
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
            "index": "index",
            "isstd": "isstd",
            "isutc": "isutc",
            "when": "when",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "index": True,
            "isstd": True,
            "isutc": True,
            "when": True,
        }

    # endregion static methods
