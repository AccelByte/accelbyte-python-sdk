# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.20.0)

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


class RuleEnum(StrEnum):
    SEQUENCE = "SEQUENCE"


class FixedPeriodRotationConfig(Model):
    """Fixed period rotation config (FixedPeriodRotationConfig)

    Properties:
        duration: (duration) OPTIONAL int

        item_count: (itemCount) OPTIONAL int

        rule: (rule) OPTIONAL Union[str, RuleEnum]
    """

    # region fields

    duration: int  # OPTIONAL
    item_count: int  # OPTIONAL
    rule: Union[str, RuleEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_duration(self, value: int) -> FixedPeriodRotationConfig:
        self.duration = value
        return self

    def with_item_count(self, value: int) -> FixedPeriodRotationConfig:
        self.item_count = value
        return self

    def with_rule(self, value: Union[str, RuleEnum]) -> FixedPeriodRotationConfig:
        self.rule = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = 0
        if hasattr(self, "item_count"):
            result["itemCount"] = int(self.item_count)
        elif include_empty:
            result["itemCount"] = 0
        if hasattr(self, "rule"):
            result["rule"] = str(self.rule)
        elif include_empty:
            result["rule"] = Union[str, RuleEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        duration: Optional[int] = None,
        item_count: Optional[int] = None,
        rule: Optional[Union[str, RuleEnum]] = None,
    ) -> FixedPeriodRotationConfig:
        instance = cls()
        if duration is not None:
            instance.duration = duration
        if item_count is not None:
            instance.item_count = item_count
        if rule is not None:
            instance.rule = rule
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FixedPeriodRotationConfig:
        instance = cls()
        if not dict_:
            return instance
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = 0
        if "itemCount" in dict_ and dict_["itemCount"] is not None:
            instance.item_count = int(dict_["itemCount"])
        elif include_empty:
            instance.item_count = 0
        if "rule" in dict_ and dict_["rule"] is not None:
            instance.rule = str(dict_["rule"])
        elif include_empty:
            instance.rule = Union[str, RuleEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FixedPeriodRotationConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FixedPeriodRotationConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FixedPeriodRotationConfig,
        List[FixedPeriodRotationConfig],
        Dict[Any, FixedPeriodRotationConfig],
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
            "duration": "duration",
            "itemCount": "item_count",
            "rule": "rule",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "duration": False,
            "itemCount": False,
            "rule": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "rule": ["SEQUENCE"],
        }

    # endregion static methods
