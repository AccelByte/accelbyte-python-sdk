# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class CurrencyTypeEnum(StrEnum):
    REAL = "REAL"
    VIRTUAL = "VIRTUAL"


class CurrencySummary(Model):
    """Currency summary (CurrencySummary)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str

        currency_type: (currencyType) REQUIRED Union[str, CurrencyTypeEnum]

        decimals: (decimals) REQUIRED int

        namespace: (namespace) REQUIRED str
    """

    # region fields

    currency_code: str  # REQUIRED
    currency_symbol: str  # REQUIRED
    currency_type: Union[str, CurrencyTypeEnum]  # REQUIRED
    decimals: int  # REQUIRED
    namespace: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> CurrencySummary:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> CurrencySummary:
        self.currency_symbol = value
        return self

    def with_currency_type(
        self, value: Union[str, CurrencyTypeEnum]
    ) -> CurrencySummary:
        self.currency_type = value
        return self

    def with_decimals(self, value: int) -> CurrencySummary:
        self.decimals = value
        return self

    def with_namespace(self, value: str) -> CurrencySummary:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "currency_symbol"):
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = ""
        if hasattr(self, "currency_type"):
            result["currencyType"] = str(self.currency_type)
        elif include_empty:
            result["currencyType"] = Union[str, CurrencyTypeEnum]()
        if hasattr(self, "decimals"):
            result["decimals"] = int(self.decimals)
        elif include_empty:
            result["decimals"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        currency_symbol: str,
        currency_type: Union[str, CurrencyTypeEnum],
        decimals: int,
        namespace: str,
    ) -> CurrencySummary:
        instance = cls()
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        instance.currency_type = currency_type
        instance.decimals = decimals
        instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CurrencySummary:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = ""
        if "currencyType" in dict_ and dict_["currencyType"] is not None:
            instance.currency_type = str(dict_["currencyType"])
        elif include_empty:
            instance.currency_type = Union[str, CurrencyTypeEnum]()
        if "decimals" in dict_ and dict_["decimals"] is not None:
            instance.decimals = int(dict_["decimals"])
        elif include_empty:
            instance.decimals = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CurrencySummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CurrencySummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CurrencySummary, List[CurrencySummary], Dict[Any, CurrencySummary]]:
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
            "currencyCode": "currency_code",
            "currencySymbol": "currency_symbol",
            "currencyType": "currency_type",
            "decimals": "decimals",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": True,
            "currencySymbol": True,
            "currencyType": True,
            "decimals": True,
            "namespace": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "currencyType": ["REAL", "VIRTUAL"],
        }

    # endregion static methods
