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


class ModelsCreateMockTicket(Model):
    """Models create mock ticket (models.CreateMockTicket)

    Properties:
        attribute_name: (attribute_name) REQUIRED str

        count: (count) REQUIRED int

        mmr_max: (mmrMax) REQUIRED float

        mmr_mean: (mmrMean) REQUIRED float

        mmr_min: (mmrMin) REQUIRED float

        mmr_std_dev: (mmrStdDev) REQUIRED float
    """

    # region fields

    attribute_name: str  # REQUIRED
    count: int  # REQUIRED
    mmr_max: float  # REQUIRED
    mmr_mean: float  # REQUIRED
    mmr_min: float  # REQUIRED
    mmr_std_dev: float  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_attribute_name(self, value: str) -> ModelsCreateMockTicket:
        self.attribute_name = value
        return self

    def with_count(self, value: int) -> ModelsCreateMockTicket:
        self.count = value
        return self

    def with_mmr_max(self, value: float) -> ModelsCreateMockTicket:
        self.mmr_max = value
        return self

    def with_mmr_mean(self, value: float) -> ModelsCreateMockTicket:
        self.mmr_mean = value
        return self

    def with_mmr_min(self, value: float) -> ModelsCreateMockTicket:
        self.mmr_min = value
        return self

    def with_mmr_std_dev(self, value: float) -> ModelsCreateMockTicket:
        self.mmr_std_dev = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "attribute_name"):
            result["attribute_name"] = str(self.attribute_name)
        elif include_empty:
            result["attribute_name"] = ""
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "mmr_max"):
            result["mmrMax"] = float(self.mmr_max)
        elif include_empty:
            result["mmrMax"] = 0.0
        if hasattr(self, "mmr_mean"):
            result["mmrMean"] = float(self.mmr_mean)
        elif include_empty:
            result["mmrMean"] = 0.0
        if hasattr(self, "mmr_min"):
            result["mmrMin"] = float(self.mmr_min)
        elif include_empty:
            result["mmrMin"] = 0.0
        if hasattr(self, "mmr_std_dev"):
            result["mmrStdDev"] = float(self.mmr_std_dev)
        elif include_empty:
            result["mmrStdDev"] = 0.0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        attribute_name: str,
        count: int,
        mmr_max: float,
        mmr_mean: float,
        mmr_min: float,
        mmr_std_dev: float,
        **kwargs,
    ) -> ModelsCreateMockTicket:
        instance = cls()
        instance.attribute_name = attribute_name
        instance.count = count
        instance.mmr_max = mmr_max
        instance.mmr_mean = mmr_mean
        instance.mmr_min = mmr_min
        instance.mmr_std_dev = mmr_std_dev
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreateMockTicket:
        instance = cls()
        if not dict_:
            return instance
        if "attribute_name" in dict_ and dict_["attribute_name"] is not None:
            instance.attribute_name = str(dict_["attribute_name"])
        elif include_empty:
            instance.attribute_name = ""
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "mmrMax" in dict_ and dict_["mmrMax"] is not None:
            instance.mmr_max = float(dict_["mmrMax"])
        elif include_empty:
            instance.mmr_max = 0.0
        if "mmrMean" in dict_ and dict_["mmrMean"] is not None:
            instance.mmr_mean = float(dict_["mmrMean"])
        elif include_empty:
            instance.mmr_mean = 0.0
        if "mmrMin" in dict_ and dict_["mmrMin"] is not None:
            instance.mmr_min = float(dict_["mmrMin"])
        elif include_empty:
            instance.mmr_min = 0.0
        if "mmrStdDev" in dict_ and dict_["mmrStdDev"] is not None:
            instance.mmr_std_dev = float(dict_["mmrStdDev"])
        elif include_empty:
            instance.mmr_std_dev = 0.0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreateMockTicket]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreateMockTicket]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreateMockTicket,
        List[ModelsCreateMockTicket],
        Dict[Any, ModelsCreateMockTicket],
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
            "attribute_name": "attribute_name",
            "count": "count",
            "mmrMax": "mmr_max",
            "mmrMean": "mmr_mean",
            "mmrMin": "mmr_min",
            "mmrStdDev": "mmr_std_dev",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "attribute_name": True,
            "count": True,
            "mmrMax": True,
            "mmrMean": True,
            "mmrMin": True,
            "mmrStdDev": True,
        }

    # endregion static methods
