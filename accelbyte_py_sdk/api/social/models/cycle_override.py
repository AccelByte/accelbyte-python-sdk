# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

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


class CycleOverride(Model):
    """Cycle override (CycleOverride)

    Properties:
        cycle_id: (cycleId) OPTIONAL str

        maximum: (maximum) OPTIONAL float

        minimum: (minimum) OPTIONAL float
    """

    # region fields

    cycle_id: str  # OPTIONAL
    maximum: float  # OPTIONAL
    minimum: float  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_cycle_id(self, value: str) -> CycleOverride:
        self.cycle_id = value
        return self

    def with_maximum(self, value: float) -> CycleOverride:
        self.maximum = value
        return self

    def with_minimum(self, value: float) -> CycleOverride:
        self.minimum = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cycle_id"):
            result["cycleId"] = str(self.cycle_id)
        elif include_empty:
            result["cycleId"] = ""
        if hasattr(self, "maximum"):
            result["maximum"] = float(self.maximum)
        elif include_empty:
            result["maximum"] = 0.0
        if hasattr(self, "minimum"):
            result["minimum"] = float(self.minimum)
        elif include_empty:
            result["minimum"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cycle_id: Optional[str] = None,
        maximum: Optional[float] = None,
        minimum: Optional[float] = None,
        **kwargs,
    ) -> CycleOverride:
        instance = cls()
        if cycle_id is not None:
            instance.cycle_id = cycle_id
        if maximum is not None:
            instance.maximum = maximum
        if minimum is not None:
            instance.minimum = minimum
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CycleOverride:
        instance = cls()
        if not dict_:
            return instance
        if "cycleId" in dict_ and dict_["cycleId"] is not None:
            instance.cycle_id = str(dict_["cycleId"])
        elif include_empty:
            instance.cycle_id = ""
        if "maximum" in dict_ and dict_["maximum"] is not None:
            instance.maximum = float(dict_["maximum"])
        elif include_empty:
            instance.maximum = 0.0
        if "minimum" in dict_ and dict_["minimum"] is not None:
            instance.minimum = float(dict_["minimum"])
        elif include_empty:
            instance.minimum = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CycleOverride]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CycleOverride]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CycleOverride, List[CycleOverride], Dict[Any, CycleOverride]]:
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
            "cycleId": "cycle_id",
            "maximum": "maximum",
            "minimum": "minimum",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cycleId": False,
            "maximum": False,
            "minimum": False,
        }

    # endregion static methods
