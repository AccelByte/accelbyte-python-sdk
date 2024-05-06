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

from ..models.deduction_detail import DeductionDetail


class OrderDiscountPreviewResponse(Model):
    """Order discount preview response (OrderDiscountPreviewResponse)

    Properties:
        deduction: (deduction) REQUIRED int

        discounted_price: (discountedPrice) REQUIRED int

        item_id: (itemId) REQUIRED str

        quantity: (quantity) REQUIRED int

        deduction_details: (deductionDetails) OPTIONAL List[DeductionDetail]

        final_price: (finalPrice) OPTIONAL int

        price: (price) OPTIONAL int
    """

    # region fields

    deduction: int  # REQUIRED
    discounted_price: int  # REQUIRED
    item_id: str  # REQUIRED
    quantity: int  # REQUIRED
    deduction_details: List[DeductionDetail]  # OPTIONAL
    final_price: int  # OPTIONAL
    price: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_deduction(self, value: int) -> OrderDiscountPreviewResponse:
        self.deduction = value
        return self

    def with_discounted_price(self, value: int) -> OrderDiscountPreviewResponse:
        self.discounted_price = value
        return self

    def with_item_id(self, value: str) -> OrderDiscountPreviewResponse:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> OrderDiscountPreviewResponse:
        self.quantity = value
        return self

    def with_deduction_details(
        self, value: List[DeductionDetail]
    ) -> OrderDiscountPreviewResponse:
        self.deduction_details = value
        return self

    def with_final_price(self, value: int) -> OrderDiscountPreviewResponse:
        self.final_price = value
        return self

    def with_price(self, value: int) -> OrderDiscountPreviewResponse:
        self.price = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deduction"):
            result["deduction"] = int(self.deduction)
        elif include_empty:
            result["deduction"] = 0
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
        if hasattr(self, "deduction_details"):
            result["deductionDetails"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.deduction_details
            ]
        elif include_empty:
            result["deductionDetails"] = []
        if hasattr(self, "final_price"):
            result["finalPrice"] = int(self.final_price)
        elif include_empty:
            result["finalPrice"] = 0
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
        deduction: int,
        discounted_price: int,
        item_id: str,
        quantity: int,
        deduction_details: Optional[List[DeductionDetail]] = None,
        final_price: Optional[int] = None,
        price: Optional[int] = None,
        **kwargs,
    ) -> OrderDiscountPreviewResponse:
        instance = cls()
        instance.deduction = deduction
        instance.discounted_price = discounted_price
        instance.item_id = item_id
        instance.quantity = quantity
        if deduction_details is not None:
            instance.deduction_details = deduction_details
        if final_price is not None:
            instance.final_price = final_price
        if price is not None:
            instance.price = price
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OrderDiscountPreviewResponse:
        instance = cls()
        if not dict_:
            return instance
        if "deduction" in dict_ and dict_["deduction"] is not None:
            instance.deduction = int(dict_["deduction"])
        elif include_empty:
            instance.deduction = 0
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
        if "deductionDetails" in dict_ and dict_["deductionDetails"] is not None:
            instance.deduction_details = [
                DeductionDetail.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["deductionDetails"]
            ]
        elif include_empty:
            instance.deduction_details = []
        if "finalPrice" in dict_ and dict_["finalPrice"] is not None:
            instance.final_price = int(dict_["finalPrice"])
        elif include_empty:
            instance.final_price = 0
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OrderDiscountPreviewResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OrderDiscountPreviewResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OrderDiscountPreviewResponse,
        List[OrderDiscountPreviewResponse],
        Dict[Any, OrderDiscountPreviewResponse],
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
            "deduction": "deduction",
            "discountedPrice": "discounted_price",
            "itemId": "item_id",
            "quantity": "quantity",
            "deductionDetails": "deduction_details",
            "finalPrice": "final_price",
            "price": "price",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deduction": True,
            "discountedPrice": True,
            "itemId": True,
            "quantity": True,
            "deductionDetails": False,
            "finalPrice": False,
            "price": False,
        }

    # endregion static methods
