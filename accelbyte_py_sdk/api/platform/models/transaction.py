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
from ....core import StrEnum

from ..models.additional_data import AdditionalData
from ..models.currency_summary import CurrencySummary


class ProviderEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class StatusEnum(StrEnum):
    FAILED = "FAILED"
    FINISHED = "FINISHED"


class TypeEnum(StrEnum):
    AUTHORISATION = "AUTHORISATION"
    CHARGE = "CHARGE"
    CHARGEBACK = "CHARGEBACK"
    CHARGEBACK_REVERSED = "CHARGEBACK_REVERSED"
    CHARGE_FAILED = "CHARGE_FAILED"
    NOTIFICATION_OF_CHARGEBACK = "NOTIFICATION_OF_CHARGEBACK"
    REFUND = "REFUND"
    REFUND_FAILED = "REFUND_FAILED"
    REQUEST_FOR_INFORMATION = "REQUEST_FOR_INFORMATION"


class Transaction(Model):
    """Transaction (Transaction)

    Properties:
        additional_data: (additionalData) OPTIONAL AdditionalData

        amount: (amount) OPTIONAL int

        currency: (currency) OPTIONAL CurrencySummary

        ext_message: (extMessage) OPTIONAL str

        ext_status_code: (extStatusCode) OPTIONAL str

        ext_tx_id: (extTxId) OPTIONAL str

        merchant_id: (merchantId) OPTIONAL str

        notified: (notified) OPTIONAL bool

        payment_method: (paymentMethod) OPTIONAL str

        payment_method_fee: (paymentMethodFee) OPTIONAL int

        payment_provider_fee: (paymentProviderFee) OPTIONAL int

        provider: (provider) OPTIONAL Union[str, ProviderEnum]

        sales_tax: (salesTax) OPTIONAL int

        status: (status) OPTIONAL Union[str, StatusEnum]

        tax: (tax) OPTIONAL int

        tx_end_time: (txEndTime) OPTIONAL str

        tx_id: (txId) OPTIONAL str

        type_: (type) OPTIONAL Union[str, TypeEnum]

        vat: (vat) OPTIONAL int
    """

    # region fields

    additional_data: AdditionalData  # OPTIONAL
    amount: int  # OPTIONAL
    currency: CurrencySummary  # OPTIONAL
    ext_message: str  # OPTIONAL
    ext_status_code: str  # OPTIONAL
    ext_tx_id: str  # OPTIONAL
    merchant_id: str  # OPTIONAL
    notified: bool  # OPTIONAL
    payment_method: str  # OPTIONAL
    payment_method_fee: int  # OPTIONAL
    payment_provider_fee: int  # OPTIONAL
    provider: Union[str, ProviderEnum]  # OPTIONAL
    sales_tax: int  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    tax: int  # OPTIONAL
    tx_end_time: str  # OPTIONAL
    tx_id: str  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL
    vat: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_additional_data(self, value: AdditionalData) -> Transaction:
        self.additional_data = value
        return self

    def with_amount(self, value: int) -> Transaction:
        self.amount = value
        return self

    def with_currency(self, value: CurrencySummary) -> Transaction:
        self.currency = value
        return self

    def with_ext_message(self, value: str) -> Transaction:
        self.ext_message = value
        return self

    def with_ext_status_code(self, value: str) -> Transaction:
        self.ext_status_code = value
        return self

    def with_ext_tx_id(self, value: str) -> Transaction:
        self.ext_tx_id = value
        return self

    def with_merchant_id(self, value: str) -> Transaction:
        self.merchant_id = value
        return self

    def with_notified(self, value: bool) -> Transaction:
        self.notified = value
        return self

    def with_payment_method(self, value: str) -> Transaction:
        self.payment_method = value
        return self

    def with_payment_method_fee(self, value: int) -> Transaction:
        self.payment_method_fee = value
        return self

    def with_payment_provider_fee(self, value: int) -> Transaction:
        self.payment_provider_fee = value
        return self

    def with_provider(self, value: Union[str, ProviderEnum]) -> Transaction:
        self.provider = value
        return self

    def with_sales_tax(self, value: int) -> Transaction:
        self.sales_tax = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> Transaction:
        self.status = value
        return self

    def with_tax(self, value: int) -> Transaction:
        self.tax = value
        return self

    def with_tx_end_time(self, value: str) -> Transaction:
        self.tx_end_time = value
        return self

    def with_tx_id(self, value: str) -> Transaction:
        self.tx_id = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> Transaction:
        self.type_ = value
        return self

    def with_vat(self, value: int) -> Transaction:
        self.vat = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "additional_data"):
            result["additionalData"] = self.additional_data.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["additionalData"] = AdditionalData()
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = 0
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "ext_message"):
            result["extMessage"] = str(self.ext_message)
        elif include_empty:
            result["extMessage"] = ""
        if hasattr(self, "ext_status_code"):
            result["extStatusCode"] = str(self.ext_status_code)
        elif include_empty:
            result["extStatusCode"] = ""
        if hasattr(self, "ext_tx_id"):
            result["extTxId"] = str(self.ext_tx_id)
        elif include_empty:
            result["extTxId"] = ""
        if hasattr(self, "merchant_id"):
            result["merchantId"] = str(self.merchant_id)
        elif include_empty:
            result["merchantId"] = ""
        if hasattr(self, "notified"):
            result["notified"] = bool(self.notified)
        elif include_empty:
            result["notified"] = False
        if hasattr(self, "payment_method"):
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = ""
        if hasattr(self, "payment_method_fee"):
            result["paymentMethodFee"] = int(self.payment_method_fee)
        elif include_empty:
            result["paymentMethodFee"] = 0
        if hasattr(self, "payment_provider_fee"):
            result["paymentProviderFee"] = int(self.payment_provider_fee)
        elif include_empty:
            result["paymentProviderFee"] = 0
        if hasattr(self, "provider"):
            result["provider"] = str(self.provider)
        elif include_empty:
            result["provider"] = Union[str, ProviderEnum]()
        if hasattr(self, "sales_tax"):
            result["salesTax"] = int(self.sales_tax)
        elif include_empty:
            result["salesTax"] = 0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "tax"):
            result["tax"] = int(self.tax)
        elif include_empty:
            result["tax"] = 0
        if hasattr(self, "tx_end_time"):
            result["txEndTime"] = str(self.tx_end_time)
        elif include_empty:
            result["txEndTime"] = ""
        if hasattr(self, "tx_id"):
            result["txId"] = str(self.tx_id)
        elif include_empty:
            result["txId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "vat"):
            result["vat"] = int(self.vat)
        elif include_empty:
            result["vat"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        additional_data: Optional[AdditionalData] = None,
        amount: Optional[int] = None,
        currency: Optional[CurrencySummary] = None,
        ext_message: Optional[str] = None,
        ext_status_code: Optional[str] = None,
        ext_tx_id: Optional[str] = None,
        merchant_id: Optional[str] = None,
        notified: Optional[bool] = None,
        payment_method: Optional[str] = None,
        payment_method_fee: Optional[int] = None,
        payment_provider_fee: Optional[int] = None,
        provider: Optional[Union[str, ProviderEnum]] = None,
        sales_tax: Optional[int] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        tax: Optional[int] = None,
        tx_end_time: Optional[str] = None,
        tx_id: Optional[str] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        vat: Optional[int] = None,
    ) -> Transaction:
        instance = cls()
        if additional_data is not None:
            instance.additional_data = additional_data
        if amount is not None:
            instance.amount = amount
        if currency is not None:
            instance.currency = currency
        if ext_message is not None:
            instance.ext_message = ext_message
        if ext_status_code is not None:
            instance.ext_status_code = ext_status_code
        if ext_tx_id is not None:
            instance.ext_tx_id = ext_tx_id
        if merchant_id is not None:
            instance.merchant_id = merchant_id
        if notified is not None:
            instance.notified = notified
        if payment_method is not None:
            instance.payment_method = payment_method
        if payment_method_fee is not None:
            instance.payment_method_fee = payment_method_fee
        if payment_provider_fee is not None:
            instance.payment_provider_fee = payment_provider_fee
        if provider is not None:
            instance.provider = provider
        if sales_tax is not None:
            instance.sales_tax = sales_tax
        if status is not None:
            instance.status = status
        if tax is not None:
            instance.tax = tax
        if tx_end_time is not None:
            instance.tx_end_time = tx_end_time
        if tx_id is not None:
            instance.tx_id = tx_id
        if type_ is not None:
            instance.type_ = type_
        if vat is not None:
            instance.vat = vat
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Transaction:
        instance = cls()
        if not dict_:
            return instance
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = AdditionalData.create_from_dict(
                dict_["additionalData"], include_empty=include_empty
            )
        elif include_empty:
            instance.additional_data = AdditionalData()
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = CurrencySummary()
        if "extMessage" in dict_ and dict_["extMessage"] is not None:
            instance.ext_message = str(dict_["extMessage"])
        elif include_empty:
            instance.ext_message = ""
        if "extStatusCode" in dict_ and dict_["extStatusCode"] is not None:
            instance.ext_status_code = str(dict_["extStatusCode"])
        elif include_empty:
            instance.ext_status_code = ""
        if "extTxId" in dict_ and dict_["extTxId"] is not None:
            instance.ext_tx_id = str(dict_["extTxId"])
        elif include_empty:
            instance.ext_tx_id = ""
        if "merchantId" in dict_ and dict_["merchantId"] is not None:
            instance.merchant_id = str(dict_["merchantId"])
        elif include_empty:
            instance.merchant_id = ""
        if "notified" in dict_ and dict_["notified"] is not None:
            instance.notified = bool(dict_["notified"])
        elif include_empty:
            instance.notified = False
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = ""
        if "paymentMethodFee" in dict_ and dict_["paymentMethodFee"] is not None:
            instance.payment_method_fee = int(dict_["paymentMethodFee"])
        elif include_empty:
            instance.payment_method_fee = 0
        if "paymentProviderFee" in dict_ and dict_["paymentProviderFee"] is not None:
            instance.payment_provider_fee = int(dict_["paymentProviderFee"])
        elif include_empty:
            instance.payment_provider_fee = 0
        if "provider" in dict_ and dict_["provider"] is not None:
            instance.provider = str(dict_["provider"])
        elif include_empty:
            instance.provider = Union[str, ProviderEnum]()
        if "salesTax" in dict_ and dict_["salesTax"] is not None:
            instance.sales_tax = int(dict_["salesTax"])
        elif include_empty:
            instance.sales_tax = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "tax" in dict_ and dict_["tax"] is not None:
            instance.tax = int(dict_["tax"])
        elif include_empty:
            instance.tax = 0
        if "txEndTime" in dict_ and dict_["txEndTime"] is not None:
            instance.tx_end_time = str(dict_["txEndTime"])
        elif include_empty:
            instance.tx_end_time = ""
        if "txId" in dict_ and dict_["txId"] is not None:
            instance.tx_id = str(dict_["txId"])
        elif include_empty:
            instance.tx_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "vat" in dict_ and dict_["vat"] is not None:
            instance.vat = int(dict_["vat"])
        elif include_empty:
            instance.vat = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Transaction]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Transaction]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Transaction, List[Transaction], Dict[Any, Transaction]]:
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
            "additionalData": "additional_data",
            "amount": "amount",
            "currency": "currency",
            "extMessage": "ext_message",
            "extStatusCode": "ext_status_code",
            "extTxId": "ext_tx_id",
            "merchantId": "merchant_id",
            "notified": "notified",
            "paymentMethod": "payment_method",
            "paymentMethodFee": "payment_method_fee",
            "paymentProviderFee": "payment_provider_fee",
            "provider": "provider",
            "salesTax": "sales_tax",
            "status": "status",
            "tax": "tax",
            "txEndTime": "tx_end_time",
            "txId": "tx_id",
            "type": "type_",
            "vat": "vat",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "additionalData": False,
            "amount": False,
            "currency": False,
            "extMessage": False,
            "extStatusCode": False,
            "extTxId": False,
            "merchantId": False,
            "notified": False,
            "paymentMethod": False,
            "paymentMethodFee": False,
            "paymentProviderFee": False,
            "provider": False,
            "salesTax": False,
            "status": False,
            "tax": False,
            "txEndTime": False,
            "txId": False,
            "type": False,
            "vat": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "provider": [
                "ADYEN",
                "ALIPAY",
                "CHECKOUT",
                "PAYPAL",
                "STRIPE",
                "WALLET",
                "WXPAY",
                "XSOLLA",
            ],
            "status": ["FAILED", "FINISHED"],
            "type": [
                "AUTHORISATION",
                "CHARGE",
                "CHARGEBACK",
                "CHARGEBACK_REVERSED",
                "CHARGE_FAILED",
                "NOTIFICATION_OF_CHARGEBACK",
                "REFUND",
                "REFUND_FAILED",
                "REQUEST_FOR_INFORMATION",
            ],
        }

    # endregion static methods
