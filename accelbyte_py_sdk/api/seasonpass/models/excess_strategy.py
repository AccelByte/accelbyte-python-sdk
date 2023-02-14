# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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


class MethodEnum(StrEnum):
    CURRENCY = "CURRENCY"
    NONE = "NONE"


class ExcessStrategy(Model):
    """Excess strategy (ExcessStrategy)

    Properties:
        method: (method) REQUIRED Union[str, MethodEnum]

        currency: (currency) OPTIONAL str

        percent_per_exp: (percentPerExp) OPTIONAL int
    """

    # region fields

    method: Union[str, MethodEnum]  # REQUIRED
    currency: str  # OPTIONAL
    percent_per_exp: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_method(self, value: Union[str, MethodEnum]) -> ExcessStrategy:
        self.method = value
        return self

    def with_currency(self, value: str) -> ExcessStrategy:
        self.currency = value
        return self

    def with_percent_per_exp(self, value: int) -> ExcessStrategy:
        self.percent_per_exp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "method"):
            result["method"] = str(self.method)
        elif include_empty:
            result["method"] = Union[str, MethodEnum]()
        if hasattr(self, "currency"):
            result["currency"] = str(self.currency)
        elif include_empty:
            result["currency"] = ""
        if hasattr(self, "percent_per_exp"):
            result["percentPerExp"] = int(self.percent_per_exp)
        elif include_empty:
            result["percentPerExp"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        method: Union[str, MethodEnum],
        currency: Optional[str] = None,
        percent_per_exp: Optional[int] = None,
    ) -> ExcessStrategy:
        instance = cls()
        instance.method = method
        if currency is not None:
            instance.currency = currency
        if percent_per_exp is not None:
            instance.percent_per_exp = percent_per_exp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ExcessStrategy:
        instance = cls()
        if not dict_:
            return instance
        if "method" in dict_ and dict_["method"] is not None:
            instance.method = str(dict_["method"])
        elif include_empty:
            instance.method = Union[str, MethodEnum]()
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = str(dict_["currency"])
        elif include_empty:
            instance.currency = ""
        if "percentPerExp" in dict_ and dict_["percentPerExp"] is not None:
            instance.percent_per_exp = int(dict_["percentPerExp"])
        elif include_empty:
            instance.percent_per_exp = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ExcessStrategy]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ExcessStrategy]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ExcessStrategy, List[ExcessStrategy], Dict[Any, ExcessStrategy]]:
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
            "method": "method",
            "currency": "currency",
            "percentPerExp": "percent_per_exp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "method": True,
            "currency": False,
            "percentPerExp": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "method": ["CURRENCY", "NONE"],
        }

    # endregion static methods
