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


class OrderDiscountPreviewRequest(Model):
    """Order discount preview request (OrderDiscountPreviewRequest)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        discounted_price: (discountedPrice) REQUIRED int

        item_id: (itemId) REQUIRED str

        quantity: (quantity) REQUIRED int

        discount_codes: (discountCodes) OPTIONAL List[str]

        price: (price) OPTIONAL int
    """

    # region fields

    currency_code: str  # REQUIRED
    discounted_price: int  # REQUIRED
    item_id: str  # REQUIRED
    quantity: int  # REQUIRED
    discount_codes: List[str]  # OPTIONAL
    price: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> OrderDiscountPreviewRequest:
        self.currency_code = value
        return self

    def with_discounted_price(self, value: int) -> OrderDiscountPreviewRequest:
        self.discounted_price = value
        return self

    def with_item_id(self, value: str) -> OrderDiscountPreviewRequest:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> OrderDiscountPreviewRequest:
        self.quantity = value
        return self

    def with_discount_codes(self, value: List[str]) -> OrderDiscountPreviewRequest:
        self.discount_codes = value
        return self

    def with_price(self, value: int) -> OrderDiscountPreviewRequest:
        self.price = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "discounted_price"):
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = 0
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "discount_codes"):
            result["discountCodes"] = [str(i0) for i0 in self.discount_codes]
        elif include_empty:
            result["discountCodes"] = []
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        discounted_price: int,
        item_id: str,
        quantity: int,
        discount_codes: Optional[List[str]] = None,
        price: Optional[int] = None,
        **kwargs,
    ) -> OrderDiscountPreviewRequest:
        instance = cls()
        instance.currency_code = currency_code
        instance.discounted_price = discounted_price
        instance.item_id = item_id
        instance.quantity = quantity
        if discount_codes is not None:
            instance.discount_codes = discount_codes
        if price is not None:
            instance.price = price
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OrderDiscountPreviewRequest:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = 0
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "discountCodes" in dict_ and dict_["discountCodes"] is not None:
            instance.discount_codes = [str(i0) for i0 in dict_["discountCodes"]]
        elif include_empty:
            instance.discount_codes = []
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OrderDiscountPreviewRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OrderDiscountPreviewRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OrderDiscountPreviewRequest,
        List[OrderDiscountPreviewRequest],
        Dict[Any, OrderDiscountPreviewRequest],
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
            "currencyCode": "currency_code",
            "discountedPrice": "discounted_price",
            "itemId": "item_id",
            "quantity": "quantity",
            "discountCodes": "discount_codes",
            "price": "price",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currencyCode": True,
            "discountedPrice": True,
            "itemId": True,
            "quantity": True,
            "discountCodes": False,
            "price": False,
        }

    # endregion static methods
