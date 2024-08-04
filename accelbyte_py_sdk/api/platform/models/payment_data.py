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


class PaymentData(Model):
    """Payment data (PaymentData)

    Properties:
        discount_amount: (discountAmount) OPTIONAL int

        discount_code: (discountCode) OPTIONAL str

        subtotal_price: (subtotalPrice) OPTIONAL int

        tax: (tax) OPTIONAL int

        total_price: (totalPrice) OPTIONAL int
    """

    # region fields

    discount_amount: int  # OPTIONAL
    discount_code: str  # OPTIONAL
    subtotal_price: int  # OPTIONAL
    tax: int  # OPTIONAL
    total_price: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_discount_amount(self, value: int) -> PaymentData:
        self.discount_amount = value
        return self

    def with_discount_code(self, value: str) -> PaymentData:
        self.discount_code = value
        return self

    def with_subtotal_price(self, value: int) -> PaymentData:
        self.subtotal_price = value
        return self

    def with_tax(self, value: int) -> PaymentData:
        self.tax = value
        return self

    def with_total_price(self, value: int) -> PaymentData:
        self.total_price = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "discount_amount"):
            result["discountAmount"] = int(self.discount_amount)
        elif include_empty:
            result["discountAmount"] = 0
        if hasattr(self, "discount_code"):
            result["discountCode"] = str(self.discount_code)
        elif include_empty:
            result["discountCode"] = ""
        if hasattr(self, "subtotal_price"):
            result["subtotalPrice"] = int(self.subtotal_price)
        elif include_empty:
            result["subtotalPrice"] = 0
        if hasattr(self, "tax"):
            result["tax"] = int(self.tax)
        elif include_empty:
            result["tax"] = 0
        if hasattr(self, "total_price"):
            result["totalPrice"] = int(self.total_price)
        elif include_empty:
            result["totalPrice"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        discount_amount: Optional[int] = None,
        discount_code: Optional[str] = None,
        subtotal_price: Optional[int] = None,
        tax: Optional[int] = None,
        total_price: Optional[int] = None,
        **kwargs,
    ) -> PaymentData:
        instance = cls()
        if discount_amount is not None:
            instance.discount_amount = discount_amount
        if discount_code is not None:
            instance.discount_code = discount_code
        if subtotal_price is not None:
            instance.subtotal_price = subtotal_price
        if tax is not None:
            instance.tax = tax
        if total_price is not None:
            instance.total_price = total_price
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentData:
        instance = cls()
        if not dict_:
            return instance
        if "discountAmount" in dict_ and dict_["discountAmount"] is not None:
            instance.discount_amount = int(dict_["discountAmount"])
        elif include_empty:
            instance.discount_amount = 0
        if "discountCode" in dict_ and dict_["discountCode"] is not None:
            instance.discount_code = str(dict_["discountCode"])
        elif include_empty:
            instance.discount_code = ""
        if "subtotalPrice" in dict_ and dict_["subtotalPrice"] is not None:
            instance.subtotal_price = int(dict_["subtotalPrice"])
        elif include_empty:
            instance.subtotal_price = 0
        if "tax" in dict_ and dict_["tax"] is not None:
            instance.tax = int(dict_["tax"])
        elif include_empty:
            instance.tax = 0
        if "totalPrice" in dict_ and dict_["totalPrice"] is not None:
            instance.total_price = int(dict_["totalPrice"])
        elif include_empty:
            instance.total_price = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PaymentData, List[PaymentData], Dict[Any, PaymentData]]:
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
            "discountAmount": "discount_amount",
            "discountCode": "discount_code",
            "subtotalPrice": "subtotal_price",
            "tax": "tax",
            "totalPrice": "total_price",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "discountAmount": False,
            "discountCode": False,
            "subtotalPrice": False,
            "tax": False,
            "totalPrice": False,
        }

    # endregion static methods
