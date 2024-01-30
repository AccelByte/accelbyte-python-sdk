# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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


class ModelsStatResumeResponse(Model):
    """Models stat resume response (models.StatResumeResponse)

    Properties:
        max: (max) REQUIRED str

        mean: (mean) REQUIRED str

        min: (min) REQUIRED str

        multiplier: (multiplier) REQUIRED str

        stddev: (stddev) REQUIRED str

        value_shifts: (valueShifts) REQUIRED Dict[str, str]

        zscores: (zscores) REQUIRED Dict[str, str]
    """

    # region fields

    max: str  # REQUIRED
    mean: str  # REQUIRED
    min: str  # REQUIRED
    multiplier: str  # REQUIRED
    stddev: str  # REQUIRED
    value_shifts: Dict[str, str]  # REQUIRED
    zscores: Dict[str, str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_max(self, value: str) -> ModelsStatResumeResponse:
        self.max = value
        return self

    def with_mean(self, value: str) -> ModelsStatResumeResponse:
        self.mean = value
        return self

    def with_min(self, value: str) -> ModelsStatResumeResponse:
        self.min = value
        return self

    def with_multiplier(self, value: str) -> ModelsStatResumeResponse:
        self.multiplier = value
        return self

    def with_stddev(self, value: str) -> ModelsStatResumeResponse:
        self.stddev = value
        return self

    def with_value_shifts(self, value: Dict[str, str]) -> ModelsStatResumeResponse:
        self.value_shifts = value
        return self

    def with_zscores(self, value: Dict[str, str]) -> ModelsStatResumeResponse:
        self.zscores = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max"):
            result["max"] = str(self.max)
        elif include_empty:
            result["max"] = ""
        if hasattr(self, "mean"):
            result["mean"] = str(self.mean)
        elif include_empty:
            result["mean"] = ""
        if hasattr(self, "min"):
            result["min"] = str(self.min)
        elif include_empty:
            result["min"] = ""
        if hasattr(self, "multiplier"):
            result["multiplier"] = str(self.multiplier)
        elif include_empty:
            result["multiplier"] = ""
        if hasattr(self, "stddev"):
            result["stddev"] = str(self.stddev)
        elif include_empty:
            result["stddev"] = ""
        if hasattr(self, "value_shifts"):
            result["valueShifts"] = {
                str(k0): str(v0) for k0, v0 in self.value_shifts.items()
            }
        elif include_empty:
            result["valueShifts"] = {}
        if hasattr(self, "zscores"):
            result["zscores"] = {str(k0): str(v0) for k0, v0 in self.zscores.items()}
        elif include_empty:
            result["zscores"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max: str,
        mean: str,
        min: str,
        multiplier: str,
        stddev: str,
        value_shifts: Dict[str, str],
        zscores: Dict[str, str],
        **kwargs,
    ) -> ModelsStatResumeResponse:
        instance = cls()
        instance.max = max
        instance.mean = mean
        instance.min = min
        instance.multiplier = multiplier
        instance.stddev = stddev
        instance.value_shifts = value_shifts
        instance.zscores = zscores
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsStatResumeResponse:
        instance = cls()
        if not dict_:
            return instance
        if "max" in dict_ and dict_["max"] is not None:
            instance.max = str(dict_["max"])
        elif include_empty:
            instance.max = ""
        if "mean" in dict_ and dict_["mean"] is not None:
            instance.mean = str(dict_["mean"])
        elif include_empty:
            instance.mean = ""
        if "min" in dict_ and dict_["min"] is not None:
            instance.min = str(dict_["min"])
        elif include_empty:
            instance.min = ""
        if "multiplier" in dict_ and dict_["multiplier"] is not None:
            instance.multiplier = str(dict_["multiplier"])
        elif include_empty:
            instance.multiplier = ""
        if "stddev" in dict_ and dict_["stddev"] is not None:
            instance.stddev = str(dict_["stddev"])
        elif include_empty:
            instance.stddev = ""
        if "valueShifts" in dict_ and dict_["valueShifts"] is not None:
            instance.value_shifts = {
                str(k0): str(v0) for k0, v0 in dict_["valueShifts"].items()
            }
        elif include_empty:
            instance.value_shifts = {}
        if "zscores" in dict_ and dict_["zscores"] is not None:
            instance.zscores = {str(k0): str(v0) for k0, v0 in dict_["zscores"].items()}
        elif include_empty:
            instance.zscores = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsStatResumeResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsStatResumeResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsStatResumeResponse,
        List[ModelsStatResumeResponse],
        Dict[Any, ModelsStatResumeResponse],
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
            "max": "max",
            "mean": "mean",
            "min": "min",
            "multiplier": "multiplier",
            "stddev": "stddev",
            "valueShifts": "value_shifts",
            "zscores": "zscores",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "max": True,
            "mean": True,
            "min": True,
            "multiplier": True,
            "stddev": True,
            "valueShifts": True,
            "zscores": True,
        }

    # endregion static methods
