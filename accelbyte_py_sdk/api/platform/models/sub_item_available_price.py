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


class SubItemAvailablePrice(Model):
    """Sub item available price (SubItemAvailablePrice)

    Properties:
        discounted_price: (discountedPrice) REQUIRED int

        item_id: (itemId) REQUIRED str

        item_name: (itemName) REQUIRED str

        item_sku: (itemSku) REQUIRED str

        price: (price) REQUIRED int

        owned: (owned) OPTIONAL bool

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    discounted_price: int  # REQUIRED
    item_id: str  # REQUIRED
    item_name: str  # REQUIRED
    item_sku: str  # REQUIRED
    price: int  # REQUIRED
    owned: bool  # OPTIONAL
    quantity: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_discounted_price(self, value: int) -> SubItemAvailablePrice:
        self.discounted_price = value
        return self

    def with_item_id(self, value: str) -> SubItemAvailablePrice:
        self.item_id = value
        return self

    def with_item_name(self, value: str) -> SubItemAvailablePrice:
        self.item_name = value
        return self

    def with_item_sku(self, value: str) -> SubItemAvailablePrice:
        self.item_sku = value
        return self

    def with_price(self, value: int) -> SubItemAvailablePrice:
        self.price = value
        return self

    def with_owned(self, value: bool) -> SubItemAvailablePrice:
        self.owned = value
        return self

    def with_quantity(self, value: int) -> SubItemAvailablePrice:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "discounted_price"):
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = 0
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_name"):
            result["itemName"] = str(self.item_name)
        elif include_empty:
            result["itemName"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "owned"):
            result["owned"] = bool(self.owned)
        elif include_empty:
            result["owned"] = False
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        discounted_price: int,
        item_id: str,
        item_name: str,
        item_sku: str,
        price: int,
        owned: Optional[bool] = None,
        quantity: Optional[int] = None,
        **kwargs,
    ) -> SubItemAvailablePrice:
        instance = cls()
        instance.discounted_price = discounted_price
        instance.item_id = item_id
        instance.item_name = item_name
        instance.item_sku = item_sku
        instance.price = price
        if owned is not None:
            instance.owned = owned
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SubItemAvailablePrice:
        instance = cls()
        if not dict_:
            return instance
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = 0
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemName" in dict_ and dict_["itemName"] is not None:
            instance.item_name = str(dict_["itemName"])
        elif include_empty:
            instance.item_name = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "owned" in dict_ and dict_["owned"] is not None:
            instance.owned = bool(dict_["owned"])
        elif include_empty:
            instance.owned = False
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SubItemAvailablePrice]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SubItemAvailablePrice]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SubItemAvailablePrice,
        List[SubItemAvailablePrice],
        Dict[Any, SubItemAvailablePrice],
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
            "discountedPrice": "discounted_price",
            "itemId": "item_id",
            "itemName": "item_name",
            "itemSku": "item_sku",
            "price": "price",
            "owned": "owned",
            "quantity": "quantity",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "discountedPrice": True,
            "itemId": True,
            "itemName": True,
            "itemSku": True,
            "price": True,
            "owned": False,
            "quantity": False,
        }

    # endregion static methods
