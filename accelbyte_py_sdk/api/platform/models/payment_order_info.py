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
from ....core import StrEnum

from ..models.currency_summary import CurrencySummary
from ..models.transaction import Transaction


class ChannelEnum(StrEnum):
    EXTERNAL = "EXTERNAL"
    INTERNAL = "INTERNAL"


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


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class PaymentOrderInfo(Model):
    """Payment order info (PaymentOrderInfo)

    Properties:
        channel: (channel) REQUIRED Union[str, ChannelEnum]

        created_at: (createdAt) REQUIRED str

        currency: (currency) REQUIRED CurrencySummary

        ext_order_no: (extOrderNo) REQUIRED str

        namespace: (namespace) REQUIRED str

        payment_order_no: (paymentOrderNo) REQUIRED str

        payment_provider: (paymentProvider) REQUIRED Union[str, PaymentProviderEnum]

        price: (price) REQUIRED int

        sandbox: (sandbox) REQUIRED bool

        status: (status) REQUIRED Union[str, StatusEnum]

        title: (title) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        authorised_time: (authorisedTime) OPTIONAL str

        chargeback_reversed_time: (chargebackReversedTime) OPTIONAL str

        chargeback_time: (chargebackTime) OPTIONAL str

        charged_time: (chargedTime) OPTIONAL str

        charging: (charging) OPTIONAL bool

        created_time: (createdTime) OPTIONAL str

        custom_parameters: (customParameters) OPTIONAL Dict[str, Any]

        description: (description) OPTIONAL str

        ext_user_id: (extUserId) OPTIONAL str

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum]

        language: (language) OPTIONAL str

        metadata: (metadata) OPTIONAL Dict[str, str]

        notify_url: (notifyUrl) OPTIONAL str

        omit_notification: (omitNotification) OPTIONAL bool

        payment_method: (paymentMethod) OPTIONAL str

        payment_method_fee: (paymentMethodFee) OPTIONAL int

        payment_provider_fee: (paymentProviderFee) OPTIONAL int

        payment_station_url: (paymentStationUrl) OPTIONAL str

        recurring_payment_order_no: (recurringPaymentOrderNo) OPTIONAL str

        refunded_time: (refundedTime) OPTIONAL str

        region: (region) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

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

        transactions: (transactions) OPTIONAL List[Transaction]

        vat: (vat) OPTIONAL int
    """

    # region fields

    channel: Union[str, ChannelEnum]  # REQUIRED
    created_at: str  # REQUIRED
    currency: CurrencySummary  # REQUIRED
    ext_order_no: str  # REQUIRED
    namespace: str  # REQUIRED
    payment_order_no: str  # REQUIRED
    payment_provider: Union[str, PaymentProviderEnum]  # REQUIRED
    price: int  # REQUIRED
    sandbox: bool  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    title: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    authorised_time: str  # OPTIONAL
    chargeback_reversed_time: str  # OPTIONAL
    chargeback_time: str  # OPTIONAL
    charged_time: str  # OPTIONAL
    charging: bool  # OPTIONAL
    created_time: str  # OPTIONAL
    custom_parameters: Dict[str, Any]  # OPTIONAL
    description: str  # OPTIONAL
    ext_user_id: str  # OPTIONAL
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL
    language: str  # OPTIONAL
    metadata: Dict[str, str]  # OPTIONAL
    notify_url: str  # OPTIONAL
    omit_notification: bool  # OPTIONAL
    payment_method: str  # OPTIONAL
    payment_method_fee: int  # OPTIONAL
    payment_provider_fee: int  # OPTIONAL
    payment_station_url: str  # OPTIONAL
    recurring_payment_order_no: str  # OPTIONAL
    refunded_time: str  # OPTIONAL
    region: str  # OPTIONAL
    return_url: str  # OPTIONAL
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
    transactions: List[Transaction]  # OPTIONAL
    vat: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_channel(self, value: Union[str, ChannelEnum]) -> PaymentOrderInfo:
        self.channel = value
        return self

    def with_created_at(self, value: str) -> PaymentOrderInfo:
        self.created_at = value
        return self

    def with_currency(self, value: CurrencySummary) -> PaymentOrderInfo:
        self.currency = value
        return self

    def with_ext_order_no(self, value: str) -> PaymentOrderInfo:
        self.ext_order_no = value
        return self

    def with_namespace(self, value: str) -> PaymentOrderInfo:
        self.namespace = value
        return self

    def with_payment_order_no(self, value: str) -> PaymentOrderInfo:
        self.payment_order_no = value
        return self

    def with_payment_provider(
        self, value: Union[str, PaymentProviderEnum]
    ) -> PaymentOrderInfo:
        self.payment_provider = value
        return self

    def with_price(self, value: int) -> PaymentOrderInfo:
        self.price = value
        return self

    def with_sandbox(self, value: bool) -> PaymentOrderInfo:
        self.sandbox = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> PaymentOrderInfo:
        self.status = value
        return self

    def with_title(self, value: str) -> PaymentOrderInfo:
        self.title = value
        return self

    def with_updated_at(self, value: str) -> PaymentOrderInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> PaymentOrderInfo:
        self.user_id = value
        return self

    def with_authorised_time(self, value: str) -> PaymentOrderInfo:
        self.authorised_time = value
        return self

    def with_chargeback_reversed_time(self, value: str) -> PaymentOrderInfo:
        self.chargeback_reversed_time = value
        return self

    def with_chargeback_time(self, value: str) -> PaymentOrderInfo:
        self.chargeback_time = value
        return self

    def with_charged_time(self, value: str) -> PaymentOrderInfo:
        self.charged_time = value
        return self

    def with_charging(self, value: bool) -> PaymentOrderInfo:
        self.charging = value
        return self

    def with_created_time(self, value: str) -> PaymentOrderInfo:
        self.created_time = value
        return self

    def with_custom_parameters(self, value: Dict[str, Any]) -> PaymentOrderInfo:
        self.custom_parameters = value
        return self

    def with_description(self, value: str) -> PaymentOrderInfo:
        self.description = value
        return self

    def with_ext_user_id(self, value: str) -> PaymentOrderInfo:
        self.ext_user_id = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> PaymentOrderInfo:
        self.item_type = value
        return self

    def with_language(self, value: str) -> PaymentOrderInfo:
        self.language = value
        return self

    def with_metadata(self, value: Dict[str, str]) -> PaymentOrderInfo:
        self.metadata = value
        return self

    def with_notify_url(self, value: str) -> PaymentOrderInfo:
        self.notify_url = value
        return self

    def with_omit_notification(self, value: bool) -> PaymentOrderInfo:
        self.omit_notification = value
        return self

    def with_payment_method(self, value: str) -> PaymentOrderInfo:
        self.payment_method = value
        return self

    def with_payment_method_fee(self, value: int) -> PaymentOrderInfo:
        self.payment_method_fee = value
        return self

    def with_payment_provider_fee(self, value: int) -> PaymentOrderInfo:
        self.payment_provider_fee = value
        return self

    def with_payment_station_url(self, value: str) -> PaymentOrderInfo:
        self.payment_station_url = value
        return self

    def with_recurring_payment_order_no(self, value: str) -> PaymentOrderInfo:
        self.recurring_payment_order_no = value
        return self

    def with_refunded_time(self, value: str) -> PaymentOrderInfo:
        self.refunded_time = value
        return self

    def with_region(self, value: str) -> PaymentOrderInfo:
        self.region = value
        return self

    def with_return_url(self, value: str) -> PaymentOrderInfo:
        self.return_url = value
        return self

    def with_sales_tax(self, value: int) -> PaymentOrderInfo:
        self.sales_tax = value
        return self

    def with_sku(self, value: str) -> PaymentOrderInfo:
        self.sku = value
        return self

    def with_status_reason(self, value: str) -> PaymentOrderInfo:
        self.status_reason = value
        return self

    def with_subscription_id(self, value: str) -> PaymentOrderInfo:
        self.subscription_id = value
        return self

    def with_subtotal_price(self, value: int) -> PaymentOrderInfo:
        self.subtotal_price = value
        return self

    def with_target_namespace(self, value: str) -> PaymentOrderInfo:
        self.target_namespace = value
        return self

    def with_target_user_id(self, value: str) -> PaymentOrderInfo:
        self.target_user_id = value
        return self

    def with_tax(self, value: int) -> PaymentOrderInfo:
        self.tax = value
        return self

    def with_total_price(self, value: int) -> PaymentOrderInfo:
        self.total_price = value
        return self

    def with_total_tax(self, value: int) -> PaymentOrderInfo:
        self.total_tax = value
        return self

    def with_transactions(self, value: List[Transaction]) -> PaymentOrderInfo:
        self.transactions = value
        return self

    def with_vat(self, value: int) -> PaymentOrderInfo:
        self.vat = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "channel"):
            result["channel"] = str(self.channel)
        elif include_empty:
            result["channel"] = Union[str, ChannelEnum]()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "ext_order_no"):
            result["extOrderNo"] = str(self.ext_order_no)
        elif include_empty:
            result["extOrderNo"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
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
        if hasattr(self, "charging"):
            result["charging"] = bool(self.charging)
        elif include_empty:
            result["charging"] = False
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
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "ext_user_id"):
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): str(v0) for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "notify_url"):
            result["notifyUrl"] = str(self.notify_url)
        elif include_empty:
            result["notifyUrl"] = ""
        if hasattr(self, "omit_notification"):
            result["omitNotification"] = bool(self.omit_notification)
        elif include_empty:
            result["omitNotification"] = False
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
        if hasattr(self, "recurring_payment_order_no"):
            result["recurringPaymentOrderNo"] = str(self.recurring_payment_order_no)
        elif include_empty:
            result["recurringPaymentOrderNo"] = ""
        if hasattr(self, "refunded_time"):
            result["refundedTime"] = str(self.refunded_time)
        elif include_empty:
            result["refundedTime"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
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
        if hasattr(self, "transactions"):
            result["transactions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.transactions
            ]
        elif include_empty:
            result["transactions"] = []
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
        channel: Union[str, ChannelEnum],
        created_at: str,
        currency: CurrencySummary,
        ext_order_no: str,
        namespace: str,
        payment_order_no: str,
        payment_provider: Union[str, PaymentProviderEnum],
        price: int,
        sandbox: bool,
        status: Union[str, StatusEnum],
        title: str,
        updated_at: str,
        user_id: str,
        authorised_time: Optional[str] = None,
        chargeback_reversed_time: Optional[str] = None,
        chargeback_time: Optional[str] = None,
        charged_time: Optional[str] = None,
        charging: Optional[bool] = None,
        created_time: Optional[str] = None,
        custom_parameters: Optional[Dict[str, Any]] = None,
        description: Optional[str] = None,
        ext_user_id: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        language: Optional[str] = None,
        metadata: Optional[Dict[str, str]] = None,
        notify_url: Optional[str] = None,
        omit_notification: Optional[bool] = None,
        payment_method: Optional[str] = None,
        payment_method_fee: Optional[int] = None,
        payment_provider_fee: Optional[int] = None,
        payment_station_url: Optional[str] = None,
        recurring_payment_order_no: Optional[str] = None,
        refunded_time: Optional[str] = None,
        region: Optional[str] = None,
        return_url: Optional[str] = None,
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
        transactions: Optional[List[Transaction]] = None,
        vat: Optional[int] = None,
    ) -> PaymentOrderInfo:
        instance = cls()
        instance.channel = channel
        instance.created_at = created_at
        instance.currency = currency
        instance.ext_order_no = ext_order_no
        instance.namespace = namespace
        instance.payment_order_no = payment_order_no
        instance.payment_provider = payment_provider
        instance.price = price
        instance.sandbox = sandbox
        instance.status = status
        instance.title = title
        instance.updated_at = updated_at
        instance.user_id = user_id
        if authorised_time is not None:
            instance.authorised_time = authorised_time
        if chargeback_reversed_time is not None:
            instance.chargeback_reversed_time = chargeback_reversed_time
        if chargeback_time is not None:
            instance.chargeback_time = chargeback_time
        if charged_time is not None:
            instance.charged_time = charged_time
        if charging is not None:
            instance.charging = charging
        if created_time is not None:
            instance.created_time = created_time
        if custom_parameters is not None:
            instance.custom_parameters = custom_parameters
        if description is not None:
            instance.description = description
        if ext_user_id is not None:
            instance.ext_user_id = ext_user_id
        if item_type is not None:
            instance.item_type = item_type
        if language is not None:
            instance.language = language
        if metadata is not None:
            instance.metadata = metadata
        if notify_url is not None:
            instance.notify_url = notify_url
        if omit_notification is not None:
            instance.omit_notification = omit_notification
        if payment_method is not None:
            instance.payment_method = payment_method
        if payment_method_fee is not None:
            instance.payment_method_fee = payment_method_fee
        if payment_provider_fee is not None:
            instance.payment_provider_fee = payment_provider_fee
        if payment_station_url is not None:
            instance.payment_station_url = payment_station_url
        if recurring_payment_order_no is not None:
            instance.recurring_payment_order_no = recurring_payment_order_no
        if refunded_time is not None:
            instance.refunded_time = refunded_time
        if region is not None:
            instance.region = region
        if return_url is not None:
            instance.return_url = return_url
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
        if transactions is not None:
            instance.transactions = transactions
        if vat is not None:
            instance.vat = vat
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentOrderInfo:
        instance = cls()
        if not dict_:
            return instance
        if "channel" in dict_ and dict_["channel"] is not None:
            instance.channel = str(dict_["channel"])
        elif include_empty:
            instance.channel = Union[str, ChannelEnum]()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
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
        if "charging" in dict_ and dict_["charging"] is not None:
            instance.charging = bool(dict_["charging"])
        elif include_empty:
            instance.charging = False
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
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {
                str(k0): str(v0) for k0, v0 in dict_["metadata"].items()
            }
        elif include_empty:
            instance.metadata = {}
        if "notifyUrl" in dict_ and dict_["notifyUrl"] is not None:
            instance.notify_url = str(dict_["notifyUrl"])
        elif include_empty:
            instance.notify_url = ""
        if "omitNotification" in dict_ and dict_["omitNotification"] is not None:
            instance.omit_notification = bool(dict_["omitNotification"])
        elif include_empty:
            instance.omit_notification = False
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
        if (
            "recurringPaymentOrderNo" in dict_
            and dict_["recurringPaymentOrderNo"] is not None
        ):
            instance.recurring_payment_order_no = str(dict_["recurringPaymentOrderNo"])
        elif include_empty:
            instance.recurring_payment_order_no = ""
        if "refundedTime" in dict_ and dict_["refundedTime"] is not None:
            instance.refunded_time = str(dict_["refundedTime"])
        elif include_empty:
            instance.refunded_time = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
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
        if "transactions" in dict_ and dict_["transactions"] is not None:
            instance.transactions = [
                Transaction.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["transactions"]
            ]
        elif include_empty:
            instance.transactions = []
        if "vat" in dict_ and dict_["vat"] is not None:
            instance.vat = int(dict_["vat"])
        elif include_empty:
            instance.vat = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentOrderInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentOrderInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PaymentOrderInfo, List[PaymentOrderInfo], Dict[Any, PaymentOrderInfo]]:
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
            "channel": "channel",
            "createdAt": "created_at",
            "currency": "currency",
            "extOrderNo": "ext_order_no",
            "namespace": "namespace",
            "paymentOrderNo": "payment_order_no",
            "paymentProvider": "payment_provider",
            "price": "price",
            "sandbox": "sandbox",
            "status": "status",
            "title": "title",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "authorisedTime": "authorised_time",
            "chargebackReversedTime": "chargeback_reversed_time",
            "chargebackTime": "chargeback_time",
            "chargedTime": "charged_time",
            "charging": "charging",
            "createdTime": "created_time",
            "customParameters": "custom_parameters",
            "description": "description",
            "extUserId": "ext_user_id",
            "itemType": "item_type",
            "language": "language",
            "metadata": "metadata",
            "notifyUrl": "notify_url",
            "omitNotification": "omit_notification",
            "paymentMethod": "payment_method",
            "paymentMethodFee": "payment_method_fee",
            "paymentProviderFee": "payment_provider_fee",
            "paymentStationUrl": "payment_station_url",
            "recurringPaymentOrderNo": "recurring_payment_order_no",
            "refundedTime": "refunded_time",
            "region": "region",
            "returnUrl": "return_url",
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
            "transactions": "transactions",
            "vat": "vat",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "channel": True,
            "createdAt": True,
            "currency": True,
            "extOrderNo": True,
            "namespace": True,
            "paymentOrderNo": True,
            "paymentProvider": True,
            "price": True,
            "sandbox": True,
            "status": True,
            "title": True,
            "updatedAt": True,
            "userId": True,
            "authorisedTime": False,
            "chargebackReversedTime": False,
            "chargebackTime": False,
            "chargedTime": False,
            "charging": False,
            "createdTime": False,
            "customParameters": False,
            "description": False,
            "extUserId": False,
            "itemType": False,
            "language": False,
            "metadata": False,
            "notifyUrl": False,
            "omitNotification": False,
            "paymentMethod": False,
            "paymentMethodFee": False,
            "paymentProviderFee": False,
            "paymentStationUrl": False,
            "recurringPaymentOrderNo": False,
            "refundedTime": False,
            "region": False,
            "returnUrl": False,
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
            "transactions": False,
            "vat": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "channel": ["EXTERNAL", "INTERNAL"],
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
            "itemType": [
                "APP",
                "BUNDLE",
                "CODE",
                "COINS",
                "EXTENSION",
                "INGAMEITEM",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],
        }

    # endregion static methods
