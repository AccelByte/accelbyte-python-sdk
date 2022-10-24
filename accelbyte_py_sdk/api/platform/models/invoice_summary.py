# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.invoice_currency_summary import InvoiceCurrencySummary


class InvoiceSummary(Model):
    """Invoice summary (InvoiceSummary)

    Properties:
        invoice_currency_summary: (invoiceCurrencySummary) REQUIRED List[InvoiceCurrencySummary]

        total_sales_volume: (totalSalesVolume) REQUIRED int
    """

    # region fields

    invoice_currency_summary: List[InvoiceCurrencySummary]  # REQUIRED
    total_sales_volume: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_invoice_currency_summary(
        self, value: List[InvoiceCurrencySummary]
    ) -> InvoiceSummary:
        self.invoice_currency_summary = value
        return self

    def with_total_sales_volume(self, value: int) -> InvoiceSummary:
        self.total_sales_volume = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "invoice_currency_summary"):
            result["invoiceCurrencySummary"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.invoice_currency_summary
            ]
        elif include_empty:
            result["invoiceCurrencySummary"] = []
        if hasattr(self, "total_sales_volume"):
            result["totalSalesVolume"] = int(self.total_sales_volume)
        elif include_empty:
            result["totalSalesVolume"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        invoice_currency_summary: List[InvoiceCurrencySummary],
        total_sales_volume: int,
    ) -> InvoiceSummary:
        instance = cls()
        instance.invoice_currency_summary = invoice_currency_summary
        instance.total_sales_volume = total_sales_volume
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> InvoiceSummary:
        instance = cls()
        if not dict_:
            return instance
        if (
            "invoiceCurrencySummary" in dict_
            and dict_["invoiceCurrencySummary"] is not None
        ):
            instance.invoice_currency_summary = [
                InvoiceCurrencySummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["invoiceCurrencySummary"]
            ]
        elif include_empty:
            instance.invoice_currency_summary = []
        if "totalSalesVolume" in dict_ and dict_["totalSalesVolume"] is not None:
            instance.total_sales_volume = int(dict_["totalSalesVolume"])
        elif include_empty:
            instance.total_sales_volume = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, InvoiceSummary]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[InvoiceSummary]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[InvoiceSummary, List[InvoiceSummary], Dict[Any, InvoiceSummary]]:
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
            "invoiceCurrencySummary": "invoice_currency_summary",
            "totalSalesVolume": "total_sales_volume",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "invoiceCurrencySummary": True,
            "totalSalesVolume": True,
        }

    # endregion static methods
