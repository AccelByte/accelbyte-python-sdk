# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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

        discount_expire_at: (discountExpireAt) OPTIONAL str

        discount_purchase_at: (discountPurchaseAt) OPTIONAL str

        expire_at: (expireAt) OPTIONAL str

        price_details: (priceDetails) OPTIONAL List[SubItemAvailablePrice]

        purchase_at: (purchaseAt) OPTIONAL str
    """

    # region fields

    currency_code: str  # REQUIRED
    currency_namespace: str  # REQUIRED
    discounted_price: int  # REQUIRED
    price: int  # REQUIRED
    discount_expire_at: str  # OPTIONAL
    discount_purchase_at: str  # OPTIONAL
    expire_at: str  # OPTIONAL
    price_details: List[SubItemAvailablePrice]  # OPTIONAL
    purchase_at: str  # OPTIONAL

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

    def with_discount_expire_at(self, value: str) -> AvailablePrice:
        self.discount_expire_at = value
        return self

    def with_discount_purchase_at(self, value: str) -> AvailablePrice:
        self.discount_purchase_at = value
        return self

    def with_expire_at(self, value: str) -> AvailablePrice:
        self.expire_at = value
        return self

    def with_price_details(self, value: List[SubItemAvailablePrice]) -> AvailablePrice:
        self.price_details = value
        return self

    def with_purchase_at(self, value: str) -> AvailablePrice:
        self.purchase_at = value
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
        if hasattr(self, "discount_expire_at"):
            result["discountExpireAt"] = str(self.discount_expire_at)
        elif include_empty:
            result["discountExpireAt"] = ""
        if hasattr(self, "discount_purchase_at"):
            result["discountPurchaseAt"] = str(self.discount_purchase_at)
        elif include_empty:
            result["discountPurchaseAt"] = ""
        if hasattr(self, "expire_at"):
            result["expireAt"] = str(self.expire_at)
        elif include_empty:
            result["expireAt"] = ""
        if hasattr(self, "price_details"):
            result["priceDetails"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.price_details
            ]
        elif include_empty:
            result["priceDetails"] = []
        if hasattr(self, "purchase_at"):
            result["purchaseAt"] = str(self.purchase_at)
        elif include_empty:
            result["purchaseAt"] = ""
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
        discount_expire_at: Optional[str] = None,
        discount_purchase_at: Optional[str] = None,
        expire_at: Optional[str] = None,
        price_details: Optional[List[SubItemAvailablePrice]] = None,
        purchase_at: Optional[str] = None,
        **kwargs,
    ) -> AvailablePrice:
        instance = cls()
        instance.currency_code = currency_code
        instance.currency_namespace = currency_namespace
        instance.discounted_price = discounted_price
        instance.price = price
        if discount_expire_at is not None:
            instance.discount_expire_at = discount_expire_at
        if discount_purchase_at is not None:
            instance.discount_purchase_at = discount_purchase_at
        if expire_at is not None:
            instance.expire_at = expire_at
        if price_details is not None:
            instance.price_details = price_details
        if purchase_at is not None:
            instance.purchase_at = purchase_at
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
        if "discountExpireAt" in dict_ and dict_["discountExpireAt"] is not None:
            instance.discount_expire_at = str(dict_["discountExpireAt"])
        elif include_empty:
            instance.discount_expire_at = ""
        if "discountPurchaseAt" in dict_ and dict_["discountPurchaseAt"] is not None:
            instance.discount_purchase_at = str(dict_["discountPurchaseAt"])
        elif include_empty:
            instance.discount_purchase_at = ""
        if "expireAt" in dict_ and dict_["expireAt"] is not None:
            instance.expire_at = str(dict_["expireAt"])
        elif include_empty:
            instance.expire_at = ""
        if "priceDetails" in dict_ and dict_["priceDetails"] is not None:
            instance.price_details = [
                SubItemAvailablePrice.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["priceDetails"]
            ]
        elif include_empty:
            instance.price_details = []
        if "purchaseAt" in dict_ and dict_["purchaseAt"] is not None:
            instance.purchase_at = str(dict_["purchaseAt"])
        elif include_empty:
            instance.purchase_at = ""
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
            "discountExpireAt": "discount_expire_at",
            "discountPurchaseAt": "discount_purchase_at",
            "expireAt": "expire_at",
            "priceDetails": "price_details",
            "purchaseAt": "purchase_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": True,
            "currencyNamespace": True,
            "discountedPrice": True,
            "price": True,
            "discountExpireAt": False,
            "discountPurchaseAt": False,
            "expireAt": False,
            "priceDetails": False,
            "purchaseAt": False,
        }

    # endregion static methods
