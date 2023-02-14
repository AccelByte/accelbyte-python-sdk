# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class ComparisonEnum(StrEnum):
    EXCLUDES = "excludes"
    INCLUDES = "includes"
    IS = "is"
    ISGREATERTHAN = "isGreaterThan"
    ISGREATERTHANOREQUAL = "isGreaterThanOrEqual"
    ISLESSTHAN = "isLessThan"
    ISLESSTHANOREQUAL = "isLessThanOrEqual"
    ISNOT = "isNot"


class AvailableComparisonObject(Model):
    """Available comparison object (available comparison object)

    Properties:
        comparison: (comparison) OPTIONAL Union[str, ComparisonEnum]

        text: (text) OPTIONAL str
    """

    # region fields

    comparison: Union[str, ComparisonEnum]  # OPTIONAL
    text: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_comparison(
        self, value: Union[str, ComparisonEnum]
    ) -> AvailableComparisonObject:
        self.comparison = value
        return self

    def with_text(self, value: str) -> AvailableComparisonObject:
        self.text = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "comparison"):
            result["comparison"] = str(self.comparison)
        elif include_empty:
            result["comparison"] = Union[str, ComparisonEnum]()
        if hasattr(self, "text"):
            result["text"] = str(self.text)
        elif include_empty:
            result["text"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        comparison: Optional[Union[str, ComparisonEnum]] = None,
        text: Optional[str] = None,
    ) -> AvailableComparisonObject:
        instance = cls()
        if comparison is not None:
            instance.comparison = comparison
        if text is not None:
            instance.text = text
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AvailableComparisonObject:
        instance = cls()
        if not dict_:
            return instance
        if "comparison" in dict_ and dict_["comparison"] is not None:
            instance.comparison = str(dict_["comparison"])
        elif include_empty:
            instance.comparison = Union[str, ComparisonEnum]()
        if "text" in dict_ and dict_["text"] is not None:
            instance.text = str(dict_["text"])
        elif include_empty:
            instance.text = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AvailableComparisonObject]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AvailableComparisonObject]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AvailableComparisonObject,
        List[AvailableComparisonObject],
        Dict[Any, AvailableComparisonObject],
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
            "comparison": "comparison",
            "text": "text",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "comparison": False,
            "text": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "comparison": [
                "excludes",
                "includes",
                "is",
                "isGreaterThan",
                "isGreaterThanOrEqual",
                "isLessThan",
                "isLessThanOrEqual",
                "isNot",
            ],
        }

    # endregion static methods
