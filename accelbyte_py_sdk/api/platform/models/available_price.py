# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service (4.37.1)

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

from ..models.sub_item_available_price import SubItemAvailablePrice


class AvailablePrice(Model):
    """Available price (AvailablePrice)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        currency_namespace: (currencyNamespace) REQUIRED str

        discounted_price: (discountedPrice) REQUIRED int

        price: (price) REQUIRED int

        price_details: (priceDetails) OPTIONAL List[SubItemAvailablePrice]
    """

    # region fields

    currency_code: str  # REQUIRED
    currency_namespace: str  # REQUIRED
    discounted_price: int  # REQUIRED
    price: int  # REQUIRED
    price_details: List[SubItemAvailablePrice]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> AvailablePrice:
        self.currency_code = value
        return self

    def with_currency_namespace(self, value: str) -> AvailablePrice:
        self.currency_namespace = value
        return self

    def with_discounted_price(self, value: int) -> AvailablePrice:
        self.discounted_price = value
        return self

    def with_price(self, value: int) -> AvailablePrice:
        self.price = value
        return self

    def with_price_details(self, value: List[SubItemAvailablePrice]) -> AvailablePrice:
        self.price_details = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "currency_namespace"):
            result["currencyNamespace"] = str(self.currency_namespace)
        elif include_empty:
            result["currencyNamespace"] = ""
        if hasattr(self, "discounted_price"):
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = 0
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "price_details"):
            result["priceDetails"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.price_details
            ]
        elif include_empty:
            result["priceDetails"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        currency_namespace: str,
        discounted_price: int,
        price: int,
        price_details: Optional[List[SubItemAvailablePrice]] = None,
        **kwargs,
    ) -> AvailablePrice:
        instance = cls()
        instance.currency_code = currency_code
        instance.currency_namespace = currency_namespace
        instance.discounted_price = discounted_price
        instance.price = price
        if price_details is not None:
            instance.price_details = price_details
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AvailablePrice:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "currencyNamespace" in dict_ and dict_["currencyNamespace"] is not None:
            instance.currency_namespace = str(dict_["currencyNamespace"])
        elif include_empty:
            instance.currency_namespace = ""
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = 0
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "priceDetails" in dict_ and dict_["priceDetails"] is not None:
            instance.price_details = [
                SubItemAvailablePrice.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["priceDetails"]
            ]
        elif include_empty:
            instance.price_details = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AvailablePrice]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AvailablePrice]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[AvailablePrice, List[AvailablePrice], Dict[Any, AvailablePrice]]:
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
            "currencyNamespace": "currency_namespace",
            "discountedPrice": "discounted_price",
            "price": "price",
            "priceDetails": "price_details",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": True,
            "currencyNamespace": True,
            "discountedPrice": True,
            "price": True,
            "priceDetails": False,
        }

    # endregion static methods
