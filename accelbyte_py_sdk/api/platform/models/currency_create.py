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


class CurrencyTypeEnum(StrEnum):
    REAL = "REAL"
    VIRTUAL = "VIRTUAL"


class CurrencyCreate(Model):
    """A DTO for creating currency (CurrencyCreate)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) OPTIONAL str

        currency_type: (currencyType) OPTIONAL Union[str, CurrencyTypeEnum]

        decimals: (decimals) OPTIONAL int

        localization_descriptions: (localizationDescriptions) OPTIONAL Dict[str, str]
    """

    # region fields

    currency_code: str  # REQUIRED
    currency_symbol: str  # OPTIONAL
    currency_type: Union[str, CurrencyTypeEnum]  # OPTIONAL
    decimals: int  # OPTIONAL
    localization_descriptions: Dict[str, str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> CurrencyCreate:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> CurrencyCreate:
        self.currency_symbol = value
        return self

    def with_currency_type(self, value: Union[str, CurrencyTypeEnum]) -> CurrencyCreate:
        self.currency_type = value
        return self

    def with_decimals(self, value: int) -> CurrencyCreate:
        self.decimals = value
        return self

    def with_localization_descriptions(self, value: Dict[str, str]) -> CurrencyCreate:
        self.localization_descriptions = value
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
        if hasattr(self, "localization_descriptions"):
            result["localizationDescriptions"] = {
                str(k0): str(v0) for k0, v0 in self.localization_descriptions.items()
            }
        elif include_empty:
            result["localizationDescriptions"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        currency_symbol: Optional[str] = None,
        currency_type: Optional[Union[str, CurrencyTypeEnum]] = None,
        decimals: Optional[int] = None,
        localization_descriptions: Optional[Dict[str, str]] = None,
    ) -> CurrencyCreate:
        instance = cls()
        instance.currency_code = currency_code
        if currency_symbol is not None:
            instance.currency_symbol = currency_symbol
        if currency_type is not None:
            instance.currency_type = currency_type
        if decimals is not None:
            instance.decimals = decimals
        if localization_descriptions is not None:
            instance.localization_descriptions = localization_descriptions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CurrencyCreate:
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
        if (
            "localizationDescriptions" in dict_
            and dict_["localizationDescriptions"] is not None
        ):
            instance.localization_descriptions = {
                str(k0): str(v0) for k0, v0 in dict_["localizationDescriptions"].items()
            }
        elif include_empty:
            instance.localization_descriptions = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CurrencyCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CurrencyCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CurrencyCreate, List[CurrencyCreate], Dict[Any, CurrencyCreate]]:
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
            "localizationDescriptions": "localization_descriptions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": True,
            "currencySymbol": False,
            "currencyType": False,
            "decimals": False,
            "localizationDescriptions": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "currencyType": ["REAL", "VIRTUAL"],
        }

    # endregion static methods
