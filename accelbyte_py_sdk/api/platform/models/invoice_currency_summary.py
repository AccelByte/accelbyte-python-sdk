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

from ..models.currency_summary import CurrencySummary


class InvoiceCurrencySummary(Model):
    """Invoice currency summary (InvoiceCurrencySummary)

    Properties:
        currency: (currency) REQUIRED CurrencySummary

        sales_volume: (salesVolume) REQUIRED int

        subtotal_price: (subtotalPrice) REQUIRED int

        total_price: (totalPrice) REQUIRED int

        total_tax: (totalTax) REQUIRED int
    """

    # region fields

    currency: CurrencySummary  # REQUIRED
    sales_volume: int  # REQUIRED
    subtotal_price: int  # REQUIRED
    total_price: int  # REQUIRED
    total_tax: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_currency(self, value: CurrencySummary) -> InvoiceCurrencySummary:
        self.currency = value
        return self

    def with_sales_volume(self, value: int) -> InvoiceCurrencySummary:
        self.sales_volume = value
        return self

    def with_subtotal_price(self, value: int) -> InvoiceCurrencySummary:
        self.subtotal_price = value
        return self

    def with_total_price(self, value: int) -> InvoiceCurrencySummary:
        self.total_price = value
        return self

    def with_total_tax(self, value: int) -> InvoiceCurrencySummary:
        self.total_tax = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "sales_volume"):
            result["salesVolume"] = int(self.sales_volume)
        elif include_empty:
            result["salesVolume"] = 0
        if hasattr(self, "subtotal_price"):
            result["subtotalPrice"] = int(self.subtotal_price)
        elif include_empty:
            result["subtotalPrice"] = 0
        if hasattr(self, "total_price"):
            result["totalPrice"] = int(self.total_price)
        elif include_empty:
            result["totalPrice"] = 0
        if hasattr(self, "total_tax"):
            result["totalTax"] = int(self.total_tax)
        elif include_empty:
            result["totalTax"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency: CurrencySummary,
        sales_volume: int,
        subtotal_price: int,
        total_price: int,
        total_tax: int,
    ) -> InvoiceCurrencySummary:
        instance = cls()
        instance.currency = currency
        instance.sales_volume = sales_volume
        instance.subtotal_price = subtotal_price
        instance.total_price = total_price
        instance.total_tax = total_tax
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> InvoiceCurrencySummary:
        instance = cls()
        if not dict_:
            return instance
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = CurrencySummary()
        if "salesVolume" in dict_ and dict_["salesVolume"] is not None:
            instance.sales_volume = int(dict_["salesVolume"])
        elif include_empty:
            instance.sales_volume = 0
        if "subtotalPrice" in dict_ and dict_["subtotalPrice"] is not None:
            instance.subtotal_price = int(dict_["subtotalPrice"])
        elif include_empty:
            instance.subtotal_price = 0
        if "totalPrice" in dict_ and dict_["totalPrice"] is not None:
            instance.total_price = int(dict_["totalPrice"])
        elif include_empty:
            instance.total_price = 0
        if "totalTax" in dict_ and dict_["totalTax"] is not None:
            instance.total_tax = int(dict_["totalTax"])
        elif include_empty:
            instance.total_tax = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, InvoiceCurrencySummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[InvoiceCurrencySummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        InvoiceCurrencySummary,
        List[InvoiceCurrencySummary],
        Dict[Any, InvoiceCurrencySummary],
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
            "currency": "currency",
            "salesVolume": "sales_volume",
            "subtotalPrice": "subtotal_price",
            "totalPrice": "total_price",
            "totalTax": "total_tax",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currency": True,
            "salesVolume": True,
            "subtotalPrice": True,
            "totalPrice": True,
            "totalTax": True,
        }

    # endregion static methods
