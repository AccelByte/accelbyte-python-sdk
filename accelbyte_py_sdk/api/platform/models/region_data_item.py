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


class RegionDataItem(Model):
    """Region data (RegionDataItem)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        currency_namespace: (currencyNamespace) REQUIRED str

        currency_type: (currencyType) REQUIRED Union[str, CurrencyTypeEnum]

        price: (price) REQUIRED int

        discount_amount: (discountAmount) OPTIONAL int

        discount_expire_at: (discountExpireAt) OPTIONAL str

        discount_percentage: (discountPercentage) OPTIONAL int

        discount_purchase_at: (discountPurchaseAt) OPTIONAL str

        discounted_price: (discountedPrice) OPTIONAL int

        expire_at: (expireAt) OPTIONAL str

        purchase_at: (purchaseAt) OPTIONAL str

        trial_price: (trialPrice) OPTIONAL int
    """

    # region fields

    currency_code: str  # REQUIRED
    currency_namespace: str  # REQUIRED
    currency_type: Union[str, CurrencyTypeEnum]  # REQUIRED
    price: int  # REQUIRED
    discount_amount: int  # OPTIONAL
    discount_expire_at: str  # OPTIONAL
    discount_percentage: int  # OPTIONAL
    discount_purchase_at: str  # OPTIONAL
    discounted_price: int  # OPTIONAL
    expire_at: str  # OPTIONAL
    purchase_at: str  # OPTIONAL
    trial_price: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> RegionDataItem:
        self.currency_code = value
        return self

    def with_currency_namespace(self, value: str) -> RegionDataItem:
        self.currency_namespace = value
        return self

    def with_currency_type(self, value: Union[str, CurrencyTypeEnum]) -> RegionDataItem:
        self.currency_type = value
        return self

    def with_price(self, value: int) -> RegionDataItem:
        self.price = value
        return self

    def with_discount_amount(self, value: int) -> RegionDataItem:
        self.discount_amount = value
        return self

    def with_discount_expire_at(self, value: str) -> RegionDataItem:
        self.discount_expire_at = value
        return self

    def with_discount_percentage(self, value: int) -> RegionDataItem:
        self.discount_percentage = value
        return self

    def with_discount_purchase_at(self, value: str) -> RegionDataItem:
        self.discount_purchase_at = value
        return self

    def with_discounted_price(self, value: int) -> RegionDataItem:
        self.discounted_price = value
        return self

    def with_expire_at(self, value: str) -> RegionDataItem:
        self.expire_at = value
        return self

    def with_purchase_at(self, value: str) -> RegionDataItem:
        self.purchase_at = value
        return self

    def with_trial_price(self, value: int) -> RegionDataItem:
        self.trial_price = value
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
        if hasattr(self, "currency_type"):
            result["currencyType"] = str(self.currency_type)
        elif include_empty:
            result["currencyType"] = Union[str, CurrencyTypeEnum]()
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "discount_amount"):
            result["discountAmount"] = int(self.discount_amount)
        elif include_empty:
            result["discountAmount"] = 0
        if hasattr(self, "discount_expire_at"):
            result["discountExpireAt"] = str(self.discount_expire_at)
        elif include_empty:
            result["discountExpireAt"] = ""
        if hasattr(self, "discount_percentage"):
            result["discountPercentage"] = int(self.discount_percentage)
        elif include_empty:
            result["discountPercentage"] = 0
        if hasattr(self, "discount_purchase_at"):
            result["discountPurchaseAt"] = str(self.discount_purchase_at)
        elif include_empty:
            result["discountPurchaseAt"] = ""
        if hasattr(self, "discounted_price"):
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = 0
        if hasattr(self, "expire_at"):
            result["expireAt"] = str(self.expire_at)
        elif include_empty:
            result["expireAt"] = ""
        if hasattr(self, "purchase_at"):
            result["purchaseAt"] = str(self.purchase_at)
        elif include_empty:
            result["purchaseAt"] = ""
        if hasattr(self, "trial_price"):
            result["trialPrice"] = int(self.trial_price)
        elif include_empty:
            result["trialPrice"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        currency_namespace: str,
        currency_type: Union[str, CurrencyTypeEnum],
        price: int,
        discount_amount: Optional[int] = None,
        discount_expire_at: Optional[str] = None,
        discount_percentage: Optional[int] = None,
        discount_purchase_at: Optional[str] = None,
        discounted_price: Optional[int] = None,
        expire_at: Optional[str] = None,
        purchase_at: Optional[str] = None,
        trial_price: Optional[int] = None,
    ) -> RegionDataItem:
        instance = cls()
        instance.currency_code = currency_code
        instance.currency_namespace = currency_namespace
        instance.currency_type = currency_type
        instance.price = price
        if discount_amount is not None:
            instance.discount_amount = discount_amount
        if discount_expire_at is not None:
            instance.discount_expire_at = discount_expire_at
        if discount_percentage is not None:
            instance.discount_percentage = discount_percentage
        if discount_purchase_at is not None:
            instance.discount_purchase_at = discount_purchase_at
        if discounted_price is not None:
            instance.discounted_price = discounted_price
        if expire_at is not None:
            instance.expire_at = expire_at
        if purchase_at is not None:
            instance.purchase_at = purchase_at
        if trial_price is not None:
            instance.trial_price = trial_price
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RegionDataItem:
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
        if "currencyType" in dict_ and dict_["currencyType"] is not None:
            instance.currency_type = str(dict_["currencyType"])
        elif include_empty:
            instance.currency_type = Union[str, CurrencyTypeEnum]()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "discountAmount" in dict_ and dict_["discountAmount"] is not None:
            instance.discount_amount = int(dict_["discountAmount"])
        elif include_empty:
            instance.discount_amount = 0
        if "discountExpireAt" in dict_ and dict_["discountExpireAt"] is not None:
            instance.discount_expire_at = str(dict_["discountExpireAt"])
        elif include_empty:
            instance.discount_expire_at = ""
        if "discountPercentage" in dict_ and dict_["discountPercentage"] is not None:
            instance.discount_percentage = int(dict_["discountPercentage"])
        elif include_empty:
            instance.discount_percentage = 0
        if "discountPurchaseAt" in dict_ and dict_["discountPurchaseAt"] is not None:
            instance.discount_purchase_at = str(dict_["discountPurchaseAt"])
        elif include_empty:
            instance.discount_purchase_at = ""
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = 0
        if "expireAt" in dict_ and dict_["expireAt"] is not None:
            instance.expire_at = str(dict_["expireAt"])
        elif include_empty:
            instance.expire_at = ""
        if "purchaseAt" in dict_ and dict_["purchaseAt"] is not None:
            instance.purchase_at = str(dict_["purchaseAt"])
        elif include_empty:
            instance.purchase_at = ""
        if "trialPrice" in dict_ and dict_["trialPrice"] is not None:
            instance.trial_price = int(dict_["trialPrice"])
        elif include_empty:
            instance.trial_price = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RegionDataItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RegionDataItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RegionDataItem, List[RegionDataItem], Dict[Any, RegionDataItem]]:
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
            "currencyType": "currency_type",
            "price": "price",
            "discountAmount": "discount_amount",
            "discountExpireAt": "discount_expire_at",
            "discountPercentage": "discount_percentage",
            "discountPurchaseAt": "discount_purchase_at",
            "discountedPrice": "discounted_price",
            "expireAt": "expire_at",
            "purchaseAt": "purchase_at",
            "trialPrice": "trial_price",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": True,
            "currencyNamespace": True,
            "currencyType": True,
            "price": True,
            "discountAmount": False,
            "discountExpireAt": False,
            "discountPercentage": False,
            "discountPurchaseAt": False,
            "discountedPrice": False,
            "expireAt": False,
            "purchaseAt": False,
            "trialPrice": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "currencyType": ["REAL", "VIRTUAL"],
        }

    # endregion static methods
