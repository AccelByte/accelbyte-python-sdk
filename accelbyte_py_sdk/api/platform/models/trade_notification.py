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


class PaymentProviderEnum(StrEnum):
    ADYEN = "ADYEN"
    ALIPAY = "ALIPAY"
    CHECKOUT = "CHECKOUT"
    PAYPAL = "PAYPAL"
    STRIPE = "STRIPE"
    WALLET = "WALLET"
    WXPAY = "WXPAY"
    XSOLLA = "XSOLLA"


class StatusEnum(StrEnum):
    AUTHORISED = "AUTHORISED"
    AUTHORISE_FAILED = "AUTHORISE_FAILED"
    CHARGEBACK = "CHARGEBACK"
    CHARGEBACK_REVERSED = "CHARGEBACK_REVERSED"
    CHARGED = "CHARGED"
    CHARGE_FAILED = "CHARGE_FAILED"
    DELETED = "DELETED"
    INIT = "INIT"
    NOTIFICATION_OF_CHARGEBACK = "NOTIFICATION_OF_CHARGEBACK"
    REFUNDED = "REFUNDED"
    REFUNDING = "REFUNDING"
    REFUND_FAILED = "REFUND_FAILED"
    REQUEST_FOR_INFORMATION = "REQUEST_FOR_INFORMATION"


class TradeNotification(Model):
    """Trade notification (TradeNotification)

    Properties:
        currency: (currency) REQUIRED CurrencySummary

        ext_order_no: (extOrderNo) REQUIRED str

        issued_at: (issuedAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        nonce_str: (nonceStr) REQUIRED str

        payment_order_no: (paymentOrderNo) REQUIRED str

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum]

        price: (price) REQUIRED int

        sandbox: (sandbox) REQUIRED bool

        status: (status) REQUIRED Union[str, StatusEnum]

        type_: (type) REQUIRED str

        additional_data: (additionalData) OPTIONAL AdditionalData

        authorised_time: (authorisedTime) OPTIONAL str

        chargeback_reversed_time: (chargebackReversedTime) OPTIONAL str

        chargeback_time: (chargebackTime) OPTIONAL str

        charged_time: (chargedTime) OPTIONAL str

        created_time: (createdTime) OPTIONAL str

        custom_parameters: (customParameters) OPTIONAL Dict[str, Any]

        ext_tx_id: (extTxId) OPTIONAL str

        ext_user_id: (extUserId) OPTIONAL str

        metadata: (metadata) OPTIONAL Dict[str, str]

        payment_method: (paymentMethod) OPTIONAL str

        payment_method_fee: (paymentMethodFee) OPTIONAL int

        payment_provider_fee: (paymentProviderFee) OPTIONAL int

        payment_station_url: (paymentStationUrl) OPTIONAL str

        refunded_time: (refundedTime) OPTIONAL str

        sales_tax: (salesTax) OPTIONAL int

        sku: (sku) OPTIONAL str

        status_reason: (statusReason) OPTIONAL str

        subscription_id: (subscriptionId) OPTIONAL str

        subtotal_price: (subtotalPrice) OPTIONAL int

        target_namespace: (targetNamespace) OPTIONAL str

        target_user_id: (targetUserId) OPTIONAL str

        tax: (tax) OPTIONAL int

        total_price: (totalPrice) OPTIONAL int

        total_tax: (totalTax) OPTIONAL int

        tx_end_time: (txEndTime) OPTIONAL str

        user_id: (userId) OPTIONAL str

        vat: (vat) OPTIONAL int
    """

    # region fields

    currency: CurrencySummary  # REQUIRED
    ext_order_no: str  # REQUIRED
    issued_at: str  # REQUIRED
    namespace: str  # REQUIRED
    nonce_str: str  # REQUIRED
    payment_order_no: str  # REQUIRED
    payment_provider: Union[str, PaymentProviderEnum]  # REQUIRED
    price: int  # REQUIRED
    sandbox: bool  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    type_: str  # REQUIRED
    additional_data: AdditionalData  # OPTIONAL
    authorised_time: str  # OPTIONAL
    chargeback_reversed_time: str  # OPTIONAL
    chargeback_time: str  # OPTIONAL
    charged_time: str  # OPTIONAL
    created_time: str  # OPTIONAL
    custom_parameters: Dict[str, Any]  # OPTIONAL
    ext_tx_id: str  # OPTIONAL
    ext_user_id: str  # OPTIONAL
    metadata: Dict[str, str]  # OPTIONAL
    payment_method: str  # OPTIONAL
    payment_method_fee: int  # OPTIONAL
    payment_provider_fee: int  # OPTIONAL
    payment_station_url: str  # OPTIONAL
    refunded_time: str  # OPTIONAL
    sales_tax: int  # OPTIONAL
    sku: str  # OPTIONAL
    status_reason: str  # OPTIONAL
    subscription_id: str  # OPTIONAL
    subtotal_price: int  # OPTIONAL
    target_namespace: str  # OPTIONAL
    target_user_id: str  # OPTIONAL
    tax: int  # OPTIONAL
    total_price: int  # OPTIONAL
    total_tax: int  # OPTIONAL
    tx_end_time: str  # OPTIONAL
    user_id: str  # OPTIONAL
    vat: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency(self, value: CurrencySummary) -> TradeNotification:
        self.currency = value
        return self

    def with_ext_order_no(self, value: str) -> TradeNotification:
        self.ext_order_no = value
        return self

    def with_issued_at(self, value: str) -> TradeNotification:
        self.issued_at = value
        return self

    def with_namespace(self, value: str) -> TradeNotification:
        self.namespace = value
        return self

    def with_nonce_str(self, value: str) -> TradeNotification:
        self.nonce_str = value
        return self

    def with_payment_order_no(self, value: str) -> TradeNotification:
        self.payment_order_no = value
        return self

    def with_payment_provider(
        self, value: Union[str, PaymentProviderEnum]
    ) -> TradeNotification:
        self.payment_provider = value
        return self

    def with_price(self, value: int) -> TradeNotification:
        self.price = value
        return self

    def with_sandbox(self, value: bool) -> TradeNotification:
        self.sandbox = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> TradeNotification:
        self.status = value
        return self

    def with_type(self, value: str) -> TradeNotification:
        self.type_ = value
        return self

    def with_additional_data(self, value: AdditionalData) -> TradeNotification:
        self.additional_data = value
        return self

    def with_authorised_time(self, value: str) -> TradeNotification:
        self.authorised_time = value
        return self

    def with_chargeback_reversed_time(self, value: str) -> TradeNotification:
        self.chargeback_reversed_time = value
        return self

    def with_chargeback_time(self, value: str) -> TradeNotification:
        self.chargeback_time = value
        return self

    def with_charged_time(self, value: str) -> TradeNotification:
        self.charged_time = value
        return self

    def with_created_time(self, value: str) -> TradeNotification:
        self.created_time = value
        return self

    def with_custom_parameters(self, value: Dict[str, Any]) -> TradeNotification:
        self.custom_parameters = value
        return self

    def with_ext_tx_id(self, value: str) -> TradeNotification:
        self.ext_tx_id = value
        return self

    def with_ext_user_id(self, value: str) -> TradeNotification:
        self.ext_user_id = value
        return self

    def with_metadata(self, value: Dict[str, str]) -> TradeNotification:
        self.metadata = value
        return self

    def with_payment_method(self, value: str) -> TradeNotification:
        self.payment_method = value
        return self

    def with_payment_method_fee(self, value: int) -> TradeNotification:
        self.payment_method_fee = value
        return self

    def with_payment_provider_fee(self, value: int) -> TradeNotification:
        self.payment_provider_fee = value
        return self

    def with_payment_station_url(self, value: str) -> TradeNotification:
        self.payment_station_url = value
        return self

    def with_refunded_time(self, value: str) -> TradeNotification:
        self.refunded_time = value
        return self

    def with_sales_tax(self, value: int) -> TradeNotification:
        self.sales_tax = value
        return self

    def with_sku(self, value: str) -> TradeNotification:
        self.sku = value
        return self

    def with_status_reason(self, value: str) -> TradeNotification:
        self.status_reason = value
        return self

    def with_subscription_id(self, value: str) -> TradeNotification:
        self.subscription_id = value
        return self

    def with_subtotal_price(self, value: int) -> TradeNotification:
        self.subtotal_price = value
        return self

    def with_target_namespace(self, value: str) -> TradeNotification:
        self.target_namespace = value
        return self

    def with_target_user_id(self, value: str) -> TradeNotification:
        self.target_user_id = value
        return self

    def with_tax(self, value: int) -> TradeNotification:
        self.tax = value
        return self

    def with_total_price(self, value: int) -> TradeNotification:
        self.total_price = value
        return self

    def with_total_tax(self, value: int) -> TradeNotification:
        self.total_tax = value
        return self

    def with_tx_end_time(self, value: str) -> TradeNotification:
        self.tx_end_time = value
        return self

    def with_user_id(self, value: str) -> TradeNotification:
        self.user_id = value
        return self

    def with_vat(self, value: int) -> TradeNotification:
        self.vat = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "ext_order_no"):
            result["extOrderNo"] = str(self.ext_order_no)
        elif include_empty:
            result["extOrderNo"] = ""
        if hasattr(self, "issued_at"):
            result["issuedAt"] = str(self.issued_at)
        elif include_empty:
            result["issuedAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "nonce_str"):
            result["nonceStr"] = str(self.nonce_str)
        elif include_empty:
            result["nonceStr"] = ""
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = ""
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = Union[str, PaymentProviderEnum]()
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "additional_data"):
            result["additionalData"] = self.additional_data.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["additionalData"] = AdditionalData()
        if hasattr(self, "authorised_time"):
            result["authorisedTime"] = str(self.authorised_time)
        elif include_empty:
            result["authorisedTime"] = ""
        if hasattr(self, "chargeback_reversed_time"):
            result["chargebackReversedTime"] = str(self.chargeback_reversed_time)
        elif include_empty:
            result["chargebackReversedTime"] = ""
        if hasattr(self, "chargeback_time"):
            result["chargebackTime"] = str(self.chargeback_time)
        elif include_empty:
            result["chargebackTime"] = ""
        if hasattr(self, "charged_time"):
            result["chargedTime"] = str(self.charged_time)
        elif include_empty:
            result["chargedTime"] = ""
        if hasattr(self, "created_time"):
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = ""
        if hasattr(self, "custom_parameters"):
            result["customParameters"] = {
                str(k0): v0 for k0, v0 in self.custom_parameters.items()
            }
        elif include_empty:
            result["customParameters"] = {}
        if hasattr(self, "ext_tx_id"):
            result["extTxId"] = str(self.ext_tx_id)
        elif include_empty:
            result["extTxId"] = ""
        if hasattr(self, "ext_user_id"):
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = ""
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): str(v0) for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
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
        if hasattr(self, "payment_station_url"):
            result["paymentStationUrl"] = str(self.payment_station_url)
        elif include_empty:
            result["paymentStationUrl"] = ""
        if hasattr(self, "refunded_time"):
            result["refundedTime"] = str(self.refunded_time)
        elif include_empty:
            result["refundedTime"] = ""
        if hasattr(self, "sales_tax"):
            result["salesTax"] = int(self.sales_tax)
        elif include_empty:
            result["salesTax"] = 0
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = ""
        if hasattr(self, "subtotal_price"):
            result["subtotalPrice"] = int(self.subtotal_price)
        elif include_empty:
            result["subtotalPrice"] = 0
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = ""
        if hasattr(self, "target_user_id"):
            result["targetUserId"] = str(self.target_user_id)
        elif include_empty:
            result["targetUserId"] = ""
        if hasattr(self, "tax"):
            result["tax"] = int(self.tax)
        elif include_empty:
            result["tax"] = 0
        if hasattr(self, "total_price"):
            result["totalPrice"] = int(self.total_price)
        elif include_empty:
            result["totalPrice"] = 0
        if hasattr(self, "total_tax"):
            result["totalTax"] = int(self.total_tax)
        elif include_empty:
            result["totalTax"] = 0
        if hasattr(self, "tx_end_time"):
            result["txEndTime"] = str(self.tx_end_time)
        elif include_empty:
            result["txEndTime"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
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
        currency: CurrencySummary,
        ext_order_no: str,
        issued_at: str,
        namespace: str,
        nonce_str: str,
        payment_order_no: str,
        payment_provider: Union[str, PaymentProviderEnum],
        price: int,
        sandbox: bool,
        status: Union[str, StatusEnum],
        type_: str,
        additional_data: Optional[AdditionalData] = None,
        authorised_time: Optional[str] = None,
        chargeback_reversed_time: Optional[str] = None,
        chargeback_time: Optional[str] = None,
        charged_time: Optional[str] = None,
        created_time: Optional[str] = None,
        custom_parameters: Optional[Dict[str, Any]] = None,
        ext_tx_id: Optional[str] = None,
        ext_user_id: Optional[str] = None,
        metadata: Optional[Dict[str, str]] = None,
        payment_method: Optional[str] = None,
        payment_method_fee: Optional[int] = None,
        payment_provider_fee: Optional[int] = None,
        payment_station_url: Optional[str] = None,
        refunded_time: Optional[str] = None,
        sales_tax: Optional[int] = None,
        sku: Optional[str] = None,
        status_reason: Optional[str] = None,
        subscription_id: Optional[str] = None,
        subtotal_price: Optional[int] = None,
        target_namespace: Optional[str] = None,
        target_user_id: Optional[str] = None,
        tax: Optional[int] = None,
        total_price: Optional[int] = None,
        total_tax: Optional[int] = None,
        tx_end_time: Optional[str] = None,
        user_id: Optional[str] = None,
        vat: Optional[int] = None,
    ) -> TradeNotification:
        instance = cls()
        instance.currency = currency
        instance.ext_order_no = ext_order_no
        instance.issued_at = issued_at
        instance.namespace = namespace
        instance.nonce_str = nonce_str
        instance.payment_order_no = payment_order_no
        instance.payment_provider = payment_provider
        instance.price = price
        instance.sandbox = sandbox
        instance.status = status
        instance.type_ = type_
        if additional_data is not None:
            instance.additional_data = additional_data
        if authorised_time is not None:
            instance.authorised_time = authorised_time
        if chargeback_reversed_time is not None:
            instance.chargeback_reversed_time = chargeback_reversed_time
        if chargeback_time is not None:
            instance.chargeback_time = chargeback_time
        if charged_time is not None:
            instance.charged_time = charged_time
        if created_time is not None:
            instance.created_time = created_time
        if custom_parameters is not None:
            instance.custom_parameters = custom_parameters
        if ext_tx_id is not None:
            instance.ext_tx_id = ext_tx_id
        if ext_user_id is not None:
            instance.ext_user_id = ext_user_id
        if metadata is not None:
            instance.metadata = metadata
        if payment_method is not None:
            instance.payment_method = payment_method
        if payment_method_fee is not None:
            instance.payment_method_fee = payment_method_fee
        if payment_provider_fee is not None:
            instance.payment_provider_fee = payment_provider_fee
        if payment_station_url is not None:
            instance.payment_station_url = payment_station_url
        if refunded_time is not None:
            instance.refunded_time = refunded_time
        if sales_tax is not None:
            instance.sales_tax = sales_tax
        if sku is not None:
            instance.sku = sku
        if status_reason is not None:
            instance.status_reason = status_reason
        if subscription_id is not None:
            instance.subscription_id = subscription_id
        if subtotal_price is not None:
            instance.subtotal_price = subtotal_price
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if target_user_id is not None:
            instance.target_user_id = target_user_id
        if tax is not None:
            instance.tax = tax
        if total_price is not None:
            instance.total_price = total_price
        if total_tax is not None:
            instance.total_tax = total_tax
        if tx_end_time is not None:
            instance.tx_end_time = tx_end_time
        if user_id is not None:
            instance.user_id = user_id
        if vat is not None:
            instance.vat = vat
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TradeNotification:
        instance = cls()
        if not dict_:
            return instance
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = CurrencySummary()
        if "extOrderNo" in dict_ and dict_["extOrderNo"] is not None:
            instance.ext_order_no = str(dict_["extOrderNo"])
        elif include_empty:
            instance.ext_order_no = ""
        if "issuedAt" in dict_ and dict_["issuedAt"] is not None:
            instance.issued_at = str(dict_["issuedAt"])
        elif include_empty:
            instance.issued_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "nonceStr" in dict_ and dict_["nonceStr"] is not None:
            instance.nonce_str = str(dict_["nonceStr"])
        elif include_empty:
            instance.nonce_str = ""
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = ""
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = Union[str, PaymentProviderEnum]()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "additionalData" in dict_ and dict_["additionalData"] is not None:
            instance.additional_data = AdditionalData.create_from_dict(
                dict_["additionalData"], include_empty=include_empty
            )
        elif include_empty:
            instance.additional_data = AdditionalData()
        if "authorisedTime" in dict_ and dict_["authorisedTime"] is not None:
            instance.authorised_time = str(dict_["authorisedTime"])
        elif include_empty:
            instance.authorised_time = ""
        if (
            "chargebackReversedTime" in dict_
            and dict_["chargebackReversedTime"] is not None
        ):
            instance.chargeback_reversed_time = str(dict_["chargebackReversedTime"])
        elif include_empty:
            instance.chargeback_reversed_time = ""
        if "chargebackTime" in dict_ and dict_["chargebackTime"] is not None:
            instance.chargeback_time = str(dict_["chargebackTime"])
        elif include_empty:
            instance.chargeback_time = ""
        if "chargedTime" in dict_ and dict_["chargedTime"] is not None:
            instance.charged_time = str(dict_["chargedTime"])
        elif include_empty:
            instance.charged_time = ""
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = ""
        if "customParameters" in dict_ and dict_["customParameters"] is not None:
            instance.custom_parameters = {
                str(k0): v0 for k0, v0 in dict_["customParameters"].items()
            }
        elif include_empty:
            instance.custom_parameters = {}
        if "extTxId" in dict_ and dict_["extTxId"] is not None:
            instance.ext_tx_id = str(dict_["extTxId"])
        elif include_empty:
            instance.ext_tx_id = ""
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = ""
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {
                str(k0): str(v0) for k0, v0 in dict_["metadata"].items()
            }
        elif include_empty:
            instance.metadata = {}
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
        if "paymentStationUrl" in dict_ and dict_["paymentStationUrl"] is not None:
            instance.payment_station_url = str(dict_["paymentStationUrl"])
        elif include_empty:
            instance.payment_station_url = ""
        if "refundedTime" in dict_ and dict_["refundedTime"] is not None:
            instance.refunded_time = str(dict_["refundedTime"])
        elif include_empty:
            instance.refunded_time = ""
        if "salesTax" in dict_ and dict_["salesTax"] is not None:
            instance.sales_tax = int(dict_["salesTax"])
        elif include_empty:
            instance.sales_tax = 0
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = ""
        if "subtotalPrice" in dict_ and dict_["subtotalPrice"] is not None:
            instance.subtotal_price = int(dict_["subtotalPrice"])
        elif include_empty:
            instance.subtotal_price = 0
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = ""
        if "targetUserId" in dict_ and dict_["targetUserId"] is not None:
            instance.target_user_id = str(dict_["targetUserId"])
        elif include_empty:
            instance.target_user_id = ""
        if "tax" in dict_ and dict_["tax"] is not None:
            instance.tax = int(dict_["tax"])
        elif include_empty:
            instance.tax = 0
        if "totalPrice" in dict_ and dict_["totalPrice"] is not None:
            instance.total_price = int(dict_["totalPrice"])
        elif include_empty:
            instance.total_price = 0
        if "totalTax" in dict_ and dict_["totalTax"] is not None:
            instance.total_tax = int(dict_["totalTax"])
        elif include_empty:
            instance.total_tax = 0
        if "txEndTime" in dict_ and dict_["txEndTime"] is not None:
            instance.tx_end_time = str(dict_["txEndTime"])
        elif include_empty:
            instance.tx_end_time = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "vat" in dict_ and dict_["vat"] is not None:
            instance.vat = int(dict_["vat"])
        elif include_empty:
            instance.vat = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TradeNotification]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TradeNotification]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TradeNotification, List[TradeNotification], Dict[Any, TradeNotification]
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
            "extOrderNo": "ext_order_no",
            "issuedAt": "issued_at",
            "namespace": "namespace",
            "nonceStr": "nonce_str",
            "paymentOrderNo": "payment_order_no",
            "paymentProvider": "payment_provider",
            "price": "price",
            "sandbox": "sandbox",
            "status": "status",
            "type": "type_",
            "additionalData": "additional_data",
            "authorisedTime": "authorised_time",
            "chargebackReversedTime": "chargeback_reversed_time",
            "chargebackTime": "chargeback_time",
            "chargedTime": "charged_time",
            "createdTime": "created_time",
            "customParameters": "custom_parameters",
            "extTxId": "ext_tx_id",
            "extUserId": "ext_user_id",
            "metadata": "metadata",
            "paymentMethod": "payment_method",
            "paymentMethodFee": "payment_method_fee",
            "paymentProviderFee": "payment_provider_fee",
            "paymentStationUrl": "payment_station_url",
            "refundedTime": "refunded_time",
            "salesTax": "sales_tax",
            "sku": "sku",
            "statusReason": "status_reason",
            "subscriptionId": "subscription_id",
            "subtotalPrice": "subtotal_price",
            "targetNamespace": "target_namespace",
            "targetUserId": "target_user_id",
            "tax": "tax",
            "totalPrice": "total_price",
            "totalTax": "total_tax",
            "txEndTime": "tx_end_time",
            "userId": "user_id",
            "vat": "vat",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currency": True,
            "extOrderNo": True,
            "issuedAt": True,
            "namespace": True,
            "nonceStr": True,
            "paymentOrderNo": True,
            "paymentProvider": True,
            "price": True,
            "sandbox": True,
            "status": True,
            "type": True,
            "additionalData": False,
            "authorisedTime": False,
            "chargebackReversedTime": False,
            "chargebackTime": False,
            "chargedTime": False,
            "createdTime": False,
            "customParameters": False,
            "extTxId": False,
            "extUserId": False,
            "metadata": False,
            "paymentMethod": False,
            "paymentMethodFee": False,
            "paymentProviderFee": False,
            "paymentStationUrl": False,
            "refundedTime": False,
            "salesTax": False,
            "sku": False,
            "statusReason": False,
            "subscriptionId": False,
            "subtotalPrice": False,
            "targetNamespace": False,
            "targetUserId": False,
            "tax": False,
            "totalPrice": False,
            "totalTax": False,
            "txEndTime": False,
            "userId": False,
            "vat": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "paymentProvider": [
                "ADYEN",
                "ALIPAY",
                "CHECKOUT",
                "PAYPAL",
                "STRIPE",
                "WALLET",
                "WXPAY",
                "XSOLLA",
            ],
            "status": [
                "AUTHORISED",
                "AUTHORISE_FAILED",
                "CHARGEBACK",
                "CHARGEBACK_REVERSED",
                "CHARGED",
                "CHARGE_FAILED",
                "DELETED",
                "INIT",
                "NOTIFICATION_OF_CHARGEBACK",
                "REFUNDED",
                "REFUNDING",
                "REFUND_FAILED",
                "REQUEST_FOR_INFORMATION",
            ],
        }

    # endregion static methods
