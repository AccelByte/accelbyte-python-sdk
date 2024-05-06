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
from ....core import StrEnum

from ..models.discount_category import DiscountCategory
from ..models.discount_item import DiscountItem


class DiscountTypeEnum(StrEnum):
    AMOUNT = "AMOUNT"
    PERCENTAGE = "PERCENTAGE"


class RestrictTypeEnum(StrEnum):
    ITEMS_AND_CATEGORIES = "ITEMS_AND_CATEGORIES"
    NONE = "NONE"


class DiscountConfig(Model):
    """Discount config (DiscountConfig)

    Properties:
        categories: (categories) OPTIONAL List[DiscountCategory]

        currency_code: (currencyCode) OPTIONAL str

        currency_namespace: (currencyNamespace) OPTIONAL str

        discount_amount: (discountAmount) OPTIONAL int

        discount_percentage: (discountPercentage) OPTIONAL int

        discount_type: (discountType) OPTIONAL Union[str, DiscountTypeEnum]

        items: (items) OPTIONAL List[DiscountItem]

        restrict_type: (restrictType) OPTIONAL Union[str, RestrictTypeEnum]

        stackable: (stackable) OPTIONAL bool
    """

    # region fields

    categories: List[DiscountCategory]  # OPTIONAL
    currency_code: str  # OPTIONAL
    currency_namespace: str  # OPTIONAL
    discount_amount: int  # OPTIONAL
    discount_percentage: int  # OPTIONAL
    discount_type: Union[str, DiscountTypeEnum]  # OPTIONAL
    items: List[DiscountItem]  # OPTIONAL
    restrict_type: Union[str, RestrictTypeEnum]  # OPTIONAL
    stackable: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_categories(self, value: List[DiscountCategory]) -> DiscountConfig:
        self.categories = value
        return self

    def with_currency_code(self, value: str) -> DiscountConfig:
        self.currency_code = value
        return self

    def with_currency_namespace(self, value: str) -> DiscountConfig:
        self.currency_namespace = value
        return self

    def with_discount_amount(self, value: int) -> DiscountConfig:
        self.discount_amount = value
        return self

    def with_discount_percentage(self, value: int) -> DiscountConfig:
        self.discount_percentage = value
        return self

    def with_discount_type(self, value: Union[str, DiscountTypeEnum]) -> DiscountConfig:
        self.discount_type = value
        return self

    def with_items(self, value: List[DiscountItem]) -> DiscountConfig:
        self.items = value
        return self

    def with_restrict_type(self, value: Union[str, RestrictTypeEnum]) -> DiscountConfig:
        self.restrict_type = value
        return self

    def with_stackable(self, value: bool) -> DiscountConfig:
        self.stackable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "categories"):
            result["categories"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.categories
            ]
        elif include_empty:
            result["categories"] = []
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "currency_namespace"):
            result["currencyNamespace"] = str(self.currency_namespace)
        elif include_empty:
            result["currencyNamespace"] = ""
        if hasattr(self, "discount_amount"):
            result["discountAmount"] = int(self.discount_amount)
        elif include_empty:
            result["discountAmount"] = 0
        if hasattr(self, "discount_percentage"):
            result["discountPercentage"] = int(self.discount_percentage)
        elif include_empty:
            result["discountPercentage"] = 0
        if hasattr(self, "discount_type"):
            result["discountType"] = str(self.discount_type)
        elif include_empty:
            result["discountType"] = Union[str, DiscountTypeEnum]()
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "restrict_type"):
            result["restrictType"] = str(self.restrict_type)
        elif include_empty:
            result["restrictType"] = Union[str, RestrictTypeEnum]()
        if hasattr(self, "stackable"):
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        categories: Optional[List[DiscountCategory]] = None,
        currency_code: Optional[str] = None,
        currency_namespace: Optional[str] = None,
        discount_amount: Optional[int] = None,
        discount_percentage: Optional[int] = None,
        discount_type: Optional[Union[str, DiscountTypeEnum]] = None,
        items: Optional[List[DiscountItem]] = None,
        restrict_type: Optional[Union[str, RestrictTypeEnum]] = None,
        stackable: Optional[bool] = None,
        **kwargs,
    ) -> DiscountConfig:
        instance = cls()
        if categories is not None:
            instance.categories = categories
        if currency_code is not None:
            instance.currency_code = currency_code
        if currency_namespace is not None:
            instance.currency_namespace = currency_namespace
        if discount_amount is not None:
            instance.discount_amount = discount_amount
        if discount_percentage is not None:
            instance.discount_percentage = discount_percentage
        if discount_type is not None:
            instance.discount_type = discount_type
        if items is not None:
            instance.items = items
        if restrict_type is not None:
            instance.restrict_type = restrict_type
        if stackable is not None:
            instance.stackable = stackable
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DiscountConfig:
        instance = cls()
        if not dict_:
            return instance
        if "categories" in dict_ and dict_["categories"] is not None:
            instance.categories = [
                DiscountCategory.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["categories"]
            ]
        elif include_empty:
            instance.categories = []
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "currencyNamespace" in dict_ and dict_["currencyNamespace"] is not None:
            instance.currency_namespace = str(dict_["currencyNamespace"])
        elif include_empty:
            instance.currency_namespace = ""
        if "discountAmount" in dict_ and dict_["discountAmount"] is not None:
            instance.discount_amount = int(dict_["discountAmount"])
        elif include_empty:
            instance.discount_amount = 0
        if "discountPercentage" in dict_ and dict_["discountPercentage"] is not None:
            instance.discount_percentage = int(dict_["discountPercentage"])
        elif include_empty:
            instance.discount_percentage = 0
        if "discountType" in dict_ and dict_["discountType"] is not None:
            instance.discount_type = str(dict_["discountType"])
        elif include_empty:
            instance.discount_type = Union[str, DiscountTypeEnum]()
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                DiscountItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "restrictType" in dict_ and dict_["restrictType"] is not None:
            instance.restrict_type = str(dict_["restrictType"])
        elif include_empty:
            instance.restrict_type = Union[str, RestrictTypeEnum]()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DiscountConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DiscountConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[DiscountConfig, List[DiscountConfig], Dict[Any, DiscountConfig]]:
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
            "categories": "categories",
            "currencyCode": "currency_code",
            "currencyNamespace": "currency_namespace",
            "discountAmount": "discount_amount",
            "discountPercentage": "discount_percentage",
            "discountType": "discount_type",
            "items": "items",
            "restrictType": "restrict_type",
            "stackable": "stackable",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "categories": False,
            "currencyCode": False,
            "currencyNamespace": False,
            "discountAmount": False,
            "discountPercentage": False,
            "discountType": False,
            "items": False,
            "restrictType": False,
            "stackable": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "discountType": ["AMOUNT", "PERCENTAGE"],
            "restrictType": ["ITEMS_AND_CATEGORIES", "NONE"],
        }

    # endregion static methods
