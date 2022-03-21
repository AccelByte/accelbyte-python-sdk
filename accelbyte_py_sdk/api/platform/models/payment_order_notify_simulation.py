# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class PaymentOrderNotifySimulation(Model):
    """Payment order notify simulation (PaymentOrderNotifySimulation)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        notify_type: (notifyType) REQUIRED str

        payment_provider: (paymentProvider) REQUIRED str

        amount: (amount) OPTIONAL int

        sales_tax: (salesTax) OPTIONAL int

        vat: (vat) OPTIONAL int
    """

    # region fields

    currency_code: str                                                                             # REQUIRED
    notify_type: str                                                                               # REQUIRED
    payment_provider: str                                                                          # REQUIRED
    amount: int                                                                                    # OPTIONAL
    sales_tax: int                                                                                 # OPTIONAL
    vat: int                                                                                       # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> PaymentOrderNotifySimulation:
        self.currency_code = value
        return self

    def with_notify_type(self, value: str) -> PaymentOrderNotifySimulation:
        self.notify_type = value
        return self

    def with_payment_provider(self, value: str) -> PaymentOrderNotifySimulation:
        self.payment_provider = value
        return self

    def with_amount(self, value: int) -> PaymentOrderNotifySimulation:
        self.amount = value
        return self

    def with_sales_tax(self, value: int) -> PaymentOrderNotifySimulation:
        self.sales_tax = value
        return self

    def with_vat(self, value: int) -> PaymentOrderNotifySimulation:
        self.vat = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "currency_code") or self.currency_code is None:
            return False
        if not hasattr(self, "notify_type") or self.notify_type is None:
            return False
        if not hasattr(self, "payment_provider") or self.payment_provider is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "notify_type"):
            result["notifyType"] = str(self.notify_type)
        elif include_empty:
            result["notifyType"] = str()
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
        if hasattr(self, "sales_tax"):
            result["salesTax"] = int(self.sales_tax)
        elif include_empty:
            result["salesTax"] = int()
        if hasattr(self, "vat"):
            result["vat"] = int(self.vat)
        elif include_empty:
            result["vat"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        notify_type: str,
        payment_provider: str,
        amount: Optional[int] = None,
        sales_tax: Optional[int] = None,
        vat: Optional[int] = None,
    ) -> PaymentOrderNotifySimulation:
        instance = cls()
        instance.currency_code = currency_code
        instance.notify_type = notify_type
        instance.payment_provider = payment_provider
        if amount is not None:
            instance.amount = amount
        if sales_tax is not None:
            instance.sales_tax = sales_tax
        if vat is not None:
            instance.vat = vat
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderNotifySimulation:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "notifyType" in dict_ and dict_["notifyType"] is not None:
            instance.notify_type = str(dict_["notifyType"])
        elif include_empty:
            instance.notify_type = str()
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        if "salesTax" in dict_ and dict_["salesTax"] is not None:
            instance.sales_tax = int(dict_["salesTax"])
        elif include_empty:
            instance.sales_tax = int()
        if "vat" in dict_ and dict_["vat"] is not None:
            instance.vat = int(dict_["vat"])
        elif include_empty:
            instance.vat = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PaymentOrderNotifySimulation]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PaymentOrderNotifySimulation]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PaymentOrderNotifySimulation, List[PaymentOrderNotifySimulation]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "currencyCode": "currency_code",
            "notifyType": "notify_type",
            "paymentProvider": "payment_provider",
            "amount": "amount",
            "salesTax": "sales_tax",
            "vat": "vat",
        }

    # endregion static methods
