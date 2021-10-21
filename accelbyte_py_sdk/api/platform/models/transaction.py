# Auto-generated at 2021-10-21T08:52:30.820260+08:00
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

from ..models.additional_data import AdditionalData
from ..models.currency_summary import CurrencySummary


class Transaction(Model):
    """Transaction (Transaction)

    Properties:
        tx_id: (txId) OPTIONAL str

        amount: (amount) OPTIONAL int

        tax: (tax) OPTIONAL int

        vat: (vat) OPTIONAL int

        sales_tax: (salesTax) OPTIONAL int

        payment_provider_fee: (paymentProviderFee) OPTIONAL int

        payment_method_fee: (paymentMethodFee) OPTIONAL int

        currency: (currency) OPTIONAL CurrencySummary

        type_: (type) OPTIONAL str

        status: (status) OPTIONAL str

        provider: (provider) OPTIONAL str

        payment_method: (paymentMethod) OPTIONAL str

        merchant_id: (merchantId) OPTIONAL str

        ext_tx_id: (extTxId) OPTIONAL str

        ext_status_code: (extStatusCode) OPTIONAL str

        ext_message: (extMessage) OPTIONAL str

        tx_end_time: (txEndTime) OPTIONAL str

        additional_data: (additionalData) OPTIONAL AdditionalData

        notified: (notified) OPTIONAL bool
    """

    # region fields

    tx_id: str                                                                                     # OPTIONAL
    amount: int                                                                                    # OPTIONAL
    tax: int                                                                                       # OPTIONAL
    vat: int                                                                                       # OPTIONAL
    sales_tax: int                                                                                 # OPTIONAL
    payment_provider_fee: int                                                                      # OPTIONAL
    payment_method_fee: int                                                                        # OPTIONAL
    currency: CurrencySummary                                                                      # OPTIONAL
    type_: str                                                                                     # OPTIONAL
    status: str                                                                                    # OPTIONAL
    provider: str                                                                                  # OPTIONAL
    payment_method: str                                                                            # OPTIONAL
    merchant_id: str                                                                               # OPTIONAL
    ext_tx_id: str                                                                                 # OPTIONAL
    ext_status_code: str                                                                           # OPTIONAL
    ext_message: str                                                                               # OPTIONAL
    tx_end_time: str                                                                               # OPTIONAL
    additional_data: AdditionalData                                                                # OPTIONAL
    notified: bool                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_tx_id(self, value: str) -> Transaction:
        self.tx_id = value
        return self

    def with_amount(self, value: int) -> Transaction:
        self.amount = value
        return self

    def with_tax(self, value: int) -> Transaction:
        self.tax = value
        return self

    def with_vat(self, value: int) -> Transaction:
        self.vat = value
        return self

    def with_sales_tax(self, value: int) -> Transaction:
        self.sales_tax = value
        return self

    def with_payment_provider_fee(self, value: int) -> Transaction:
        self.payment_provider_fee = value
        return self

    def with_payment_method_fee(self, value: int) -> Transaction:
        self.payment_method_fee = value
        return self

    def with_currency(self, value: CurrencySummary) -> Transaction:
        self.currency = value
        return self

    def with_type(self, value: str) -> Transaction:
        self.type_ = value
        return self

    def with_status(self, value: str) -> Transaction:
        self.status = value
        return self

    def with_provider(self, value: str) -> Transaction:
        self.provider = value
        return self

    def with_payment_method(self, value: str) -> Transaction:
        self.payment_method = value
        return self

    def with_merchant_id(self, value: str) -> Transaction:
        self.merchant_id = value
        return self

    def with_ext_tx_id(self, value: str) -> Transaction:
        self.ext_tx_id = value
        return self

    def with_ext_status_code(self, value: str) -> Transaction:
        self.ext_status_code = value
        return self

    def with_ext_message(self, value: str) -> Transaction:
        self.ext_message = value
        return self

    def with_tx_end_time(self, value: str) -> Transaction:
        self.tx_end_time = value
        return self

    def with_additional_data(self, value: AdditionalData) -> Transaction:
        self.additional_data = value
        return self

    def with_notified(self, value: bool) -> Transaction:
        self.notified = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "tx_id") and self.tx_id:
            result["txId"] = str(self.tx_id)
        elif include_empty:
            result["txId"] = str()
        if hasattr(self, "amount") and self.amount:
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
        if hasattr(self, "tax") and self.tax:
            result["tax"] = int(self.tax)
        elif include_empty:
            result["tax"] = int()
        if hasattr(self, "vat") and self.vat:
            result["vat"] = int(self.vat)
        elif include_empty:
            result["vat"] = int()
        if hasattr(self, "sales_tax") and self.sales_tax:
            result["salesTax"] = int(self.sales_tax)
        elif include_empty:
            result["salesTax"] = int()
        if hasattr(self, "payment_provider_fee") and self.payment_provider_fee:
            result["paymentProviderFee"] = int(self.payment_provider_fee)
        elif include_empty:
            result["paymentProviderFee"] = int()
        if hasattr(self, "payment_method_fee") and self.payment_method_fee:
            result["paymentMethodFee"] = int(self.payment_method_fee)
        elif include_empty:
            result["paymentMethodFee"] = int()
        if hasattr(self, "currency") and self.currency:
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "provider") and self.provider:
            result["provider"] = str(self.provider)
        elif include_empty:
            result["provider"] = str()
        if hasattr(self, "payment_method") and self.payment_method:
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = str()
        if hasattr(self, "merchant_id") and self.merchant_id:
            result["merchantId"] = str(self.merchant_id)
        elif include_empty:
            result["merchantId"] = str()
        if hasattr(self, "ext_tx_id") and self.ext_tx_id:
            result["extTxId"] = str(self.ext_tx_id)
        elif include_empty:
            result["extTxId"] = str()
        if hasattr(self, "ext_status_code") and self.ext_status_code:
            result["extStatusCode"] = str(self.ext_status_code)
        elif include_empty:
            result["extStatusCode"] = str()
        if hasattr(self, "ext_message") and self.ext_message:
            result["extMessage"] = str(self.ext_message)
        elif include_empty:
            result["extMessage"] = str()
        if hasattr(self, "tx_end_time") and self.tx_end_time:
            result["txEndTime"] = str(self.tx_end_time)
        elif include_empty:
            result["txEndTime"] = str()
        if hasattr(self, "additional_data") and self.additional_data:
            result["additionalData"] = self.additional_data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["additionalData"] = AdditionalData()
        if hasattr(self, "notified") and self.notified:
            result["notified"] = bool(self.notified)
        elif include_empty:
            result["notified"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        tx_id: Optional[str] = None,
        amount: Optional[int] = None,
        tax: Optional[int] = None,
        vat: Optional[int] = None,
        sales_tax: Optional[int] = None,
        payment_provider_fee: Optional[int] = None,
        payment_method_fee: Optional[int] = None,
        currency: Optional[CurrencySummary] = None,
        type_: Optional[str] = None,
        status: Optional[str] = None,
        provider: Optional[str] = None,
        payment_method: Optional[str] = None,
        merchant_id: Optional[str] = None,
        ext_tx_id: Optional[str] = None,
        ext_status_code: Optional[str] = None,
        ext_message: Optional[str] = None,
        tx_end_time: Optional[str] = None,
        additional_data: Optional[AdditionalData] = None,
        notified: Optional[bool] = None,
    ) -> Transaction:
        instance = cls()
        if tx_id is not None:
            instance.tx_id = tx_id
        if amount is not None:
            instance.amount = amount
        if tax is not None:
            instance.tax = tax
        if vat is not None:
            instance.vat = vat
        if sales_tax is not None:
            instance.sales_tax = sales_tax
        if payment_provider_fee is not None:
            instance.payment_provider_fee = payment_provider_fee
        if payment_method_fee is not None:
            instance.payment_method_fee = payment_method_fee
        if currency is not None:
            instance.currency = currency
        if type_ is not None:
            instance.type_ = type_
        if status is not None:
            instance.status = status
        if provider is not None:
            instance.provider = provider
        if payment_method is not None:
            instance.payment_method = payment_method
        if merchant_id is not None:
            instance.merchant_id = merchant_id
        if ext_tx_id is not None:
            instance.ext_tx_id = ext_tx_id
        if ext_status_code is not None:
            instance.ext_status_code = ext_status_code
        if ext_message is not None:
            instance.ext_message = ext_message
        if tx_end_time is not None:
            instance.tx_end_time = tx_end_time
        if additional_data is not None:
            instance.additional_data = additional_data
        if notified is not None:
            instance.notified = notified
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Transaction:
        instance = cls()
        if not dict_:
            return instance
        if "txId" in dict_ and dict_["txId"] is not None:
            instance.tx_id = str(dict_["txId"])
        elif include_empty:
            instance.tx_id = str()
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        if "tax" in dict_ and dict_["tax"] is not None:
            instance.tax = int(dict_["tax"])
        elif include_empty:
            instance.tax = int()
        if "vat" in dict_ and dict_["vat"] is not None:
            instance.vat = int(dict_["vat"])
        elif include_empty:
            instance.vat = int()
        if "salesTax" in dict_ and dict_["salesTax"] is not None:
            instance.sales_tax = int(dict_["salesTax"])
        elif include_empty:
            instance.sales_tax = int()
        if "paymentProviderFee" in dict_ and dict_["paymentProviderFee"] is not None:
            instance.payment_provider_fee = int(dict_["paymentProviderFee"])
        elif include_empty:
            instance.payment_provider_fee = int()
        if "paymentMethodFee" in dict_ and dict_["paymentMethodFee"] is not None:
            instance.payment_method_fee = int(dict_["paymentMethodFee"])
        elif include_empty:
            instance.payment_method_fee = int()
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(dict_["currency"], include_empty=include_empty)
        elif include_empty:
            instance.currency = CurrencySummary()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "provider" in dict_ and dict_["provider"] is not None:
            instance.provider = str(dict_["provider"])
        elif include_empty:
            instance.provider = str()
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = str()
        if "merchantId" in dict_ and dict_["merchantId"] is not None:
            instance.merchant_id = str(dict_["merchantId"])
        elif include_empty:
            instance.merchant_id = str()
        if "extTxId" in dict_ and dict_["extTxId"] is not None:
            instance.ext_tx_id = str(dict_["extTxId"])
        elif include_empty:
            instance.ext_tx_id = str()
        if "extStatusCode" in dict_ and dict_["extStatusCode"] is not None:
            instance.ext_status_code = str(dict_["extStatusCode"])
        elif include_empty:
            instance.ext_status_code = str()
        if "extMessage" in dict_ and dict_["extMessage"] is not None:
            instance.ext_message = str(dict_["extMessage"])
        elif include_empty:
            instance.ext_message = str()
        if "txEndTime" in dict_ and dict_["txEndTime"] is not None:
            instance.tx_end_time = str(dict_["txEndTime"])
        elif include_empty:
            instance.tx_end_time = str()
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = AdditionalData.create_from_dict(dict_["additionalData"], include_empty=include_empty)
        elif include_empty:
            instance.additional_data = AdditionalData()
        if "notified" in dict_ and dict_["notified"] is not None:
            instance.notified = bool(dict_["notified"])
        elif include_empty:
            instance.notified = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "txId": "tx_id",
            "amount": "amount",
            "tax": "tax",
            "vat": "vat",
            "salesTax": "sales_tax",
            "paymentProviderFee": "payment_provider_fee",
            "paymentMethodFee": "payment_method_fee",
            "currency": "currency",
            "type": "type_",
            "status": "status",
            "provider": "provider",
            "paymentMethod": "payment_method",
            "merchantId": "merchant_id",
            "extTxId": "ext_tx_id",
            "extStatusCode": "ext_status_code",
            "extMessage": "ext_message",
            "txEndTime": "tx_end_time",
            "additionalData": "additional_data",
            "notified": "notified",
        }

    # endregion static methods
