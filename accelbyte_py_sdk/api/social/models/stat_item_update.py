# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Social Service (1.30.1)

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


class UpdateStrategyEnum(StrEnum):
    INCREMENT = "INCREMENT"
    MAX = "MAX"
    MIN = "MIN"
    OVERRIDE = "OVERRIDE"


class StatItemUpdate(Model):
    """Stat item update (StatItemUpdate)

    Properties:
        update_strategy: (updateStrategy) REQUIRED Union[str, UpdateStrategyEnum]

        value: (value) REQUIRED float

        additional_data: (additionalData) OPTIONAL Dict[str, Any]
    """

    # region fields

    update_strategy: Union[str, UpdateStrategyEnum]  # REQUIRED
    value: float  # REQUIRED
    additional_data: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_update_strategy(
        self, value: Union[str, UpdateStrategyEnum]
    ) -> StatItemUpdate:
        self.update_strategy = value
        return self

    def with_value(self, value: float) -> StatItemUpdate:
        self.value = value
        return self

    def with_additional_data(self, value: Dict[str, Any]) -> StatItemUpdate:
        self.additional_data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "update_strategy"):
            result["updateStrategy"] = str(self.update_strategy)
        elif include_empty:
            result["updateStrategy"] = Union[str, UpdateStrategyEnum]()
        if hasattr(self, "value"):
            result["value"] = float(self.value)
        elif include_empty:
            result["value"] = 0.0
        if hasattr(self, "additional_data"):
            result["additionalData"] = {
                str(k0): v0 for k0, v0 in self.additional_data.items()
            }
        elif include_empty:
            result["additionalData"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        update_strategy: Union[str, UpdateStrategyEnum],
        value: float,
        additional_data: Optional[Dict[str, Any]] = None,
    ) -> StatItemUpdate:
        instance = cls()
        instance.update_strategy = update_strategy
        instance.value = value
        if additional_data is not None:
            instance.additional_data = additional_data
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> StatItemUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "updateStrategy" in dict_ and dict_["updateStrategy"] is not None:
            instance.update_strategy = str(dict_["updateStrategy"])
        elif include_empty:
            instance.update_strategy = Union[str, UpdateStrategyEnum]()
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = float(dict_["value"])
        elif include_empty:
            instance.value = 0.0
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = {
                str(k0): v0 for k0, v0 in dict_["additionalData"].items()
            }
        elif include_empty:
            instance.additional_data = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StatItemUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatItemUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatItemUpdate, List[StatItemUpdate], Dict[Any, StatItemUpdate]]:
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
            "updateStrategy": "update_strategy",
            "value": "value",
            "additionalData": "additional_data",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "updateStrategy": True,
            "value": True,
            "additionalData": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "updateStrategy": ["INCREMENT", "MAX", "MIN", "OVERRIDE"],
        }

    # endregion static methods
