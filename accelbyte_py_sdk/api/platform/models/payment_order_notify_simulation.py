# Auto-generated at 2021-10-21T08:52:30.824528+08:00
# from: Justice platform Service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class PaymentOrderNotifySimulation(Model):
    """Payment order notify simulation (PaymentOrderNotifySimulation)

    Properties:
        payment_provider: (paymentProvider) REQUIRED str

        notify_type: (notifyType) REQUIRED str

        currency_code: (currencyCode) REQUIRED str

        amount: (amount) OPTIONAL int

        vat: (vat) OPTIONAL int

        sales_tax: (salesTax) OPTIONAL int
    """

    # region fields

    payment_provider: str                                                                          # REQUIRED
    notify_type: str                                                                               # REQUIRED
    currency_code: str                                                                             # REQUIRED
    amount: int                                                                                    # OPTIONAL
    vat: int                                                                                       # OPTIONAL
    sales_tax: int                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_provider(self, value: str) -> PaymentOrderNotifySimulation:
        self.payment_provider = value
        return self

    def with_notify_type(self, value: str) -> PaymentOrderNotifySimulation:
        self.notify_type = value
        return self

    def with_currency_code(self, value: str) -> PaymentOrderNotifySimulation:
        self.currency_code = value
        return self

    def with_amount(self, value: int) -> PaymentOrderNotifySimulation:
        self.amount = value
        return self

    def with_vat(self, value: int) -> PaymentOrderNotifySimulation:
        self.vat = value
        return self

    def with_sales_tax(self, value: int) -> PaymentOrderNotifySimulation:
        self.sales_tax = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_provider") and self.payment_provider:
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "notify_type") and self.notify_type:
            result["notifyType"] = str(self.notify_type)
        elif include_empty:
            result["notifyType"] = str()
        if hasattr(self, "currency_code") and self.currency_code:
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "amount") and self.amount:
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
        if hasattr(self, "vat") and self.vat:
            result["vat"] = int(self.vat)
        elif include_empty:
            result["vat"] = int()
        if hasattr(self, "sales_tax") and self.sales_tax:
            result["salesTax"] = int(self.sales_tax)
        elif include_empty:
            result["salesTax"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_provider: str,
        notify_type: str,
        currency_code: str,
        amount: Optional[int] = None,
        vat: Optional[int] = None,
        sales_tax: Optional[int] = None,
    ) -> PaymentOrderNotifySimulation:
        instance = cls()
        instance.payment_provider = payment_provider
        instance.notify_type = notify_type
        instance.currency_code = currency_code
        if amount is not None:
            instance.amount = amount
        if vat is not None:
            instance.vat = vat
        if sales_tax is not None:
            instance.sales_tax = sales_tax
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderNotifySimulation:
        instance = cls()
        if not dict_:
            return instance
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "notifyType" in dict_ and dict_["notifyType"] is not None:
            instance.notify_type = str(dict_["notifyType"])
        elif include_empty:
            instance.notify_type = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        if "vat" in dict_ and dict_["vat"] is not None:
            instance.vat = int(dict_["vat"])
        elif include_empty:
            instance.vat = int()
        if "salesTax" in dict_ and dict_["salesTax"] is not None:
            instance.sales_tax = int(dict_["salesTax"])
        elif include_empty:
            instance.sales_tax = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentProvider": "payment_provider",
            "notifyType": "notify_type",
            "currencyCode": "currency_code",
            "amount": "amount",
            "vat": "vat",
            "salesTax": "sales_tax",
        }

    # endregion static methods
