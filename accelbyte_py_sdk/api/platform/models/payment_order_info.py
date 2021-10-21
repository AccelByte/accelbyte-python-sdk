# justice-platform-service (3.34.0)

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

from ..models.currency_summary import CurrencySummary
from ..models.transaction import Transaction


class PaymentOrderInfo(Model):
    """Payment order info (PaymentOrderInfo)

    Properties:
        payment_order_no: (paymentOrderNo) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        target_namespace: (targetNamespace) OPTIONAL str

        target_user_id: (targetUserId) OPTIONAL str

        ext_order_no: (extOrderNo) REQUIRED str

        sku: (sku) OPTIONAL str

        ext_user_id: (extUserId) OPTIONAL str

        sandbox: (sandbox) REQUIRED bool

        price: (price) REQUIRED int

        payment_provider: (paymentProvider) REQUIRED str

        payment_method: (paymentMethod) OPTIONAL str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str

        tax: (tax) OPTIONAL int

        vat: (vat) OPTIONAL int

        sales_tax: (salesTax) OPTIONAL int

        payment_provider_fee: (paymentProviderFee) OPTIONAL int

        payment_method_fee: (paymentMethodFee) OPTIONAL int

        currency: (currency) REQUIRED CurrencySummary

        payment_station_url: (paymentStationUrl) OPTIONAL str

        transactions: (transactions) OPTIONAL List[Transaction]

        status: (status) REQUIRED str

        status_reason: (statusReason) OPTIONAL str

        created_time: (createdTime) OPTIONAL str

        authorised_time: (authorisedTime) OPTIONAL str

        charged_time: (chargedTime) OPTIONAL str

        refunded_time: (refundedTime) OPTIONAL str

        chargeback_time: (chargebackTime) OPTIONAL str

        chargeback_reversed_time: (chargebackReversedTime) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        notify_url: (notifyUrl) OPTIONAL str

        title: (title) REQUIRED str

        description: (description) OPTIONAL str

        item_type: (itemType) OPTIONAL str

        channel: (channel) REQUIRED str

        custom_parameters: (customParameters) OPTIONAL Dict[str, Any]

        subscription_id: (subscriptionId) OPTIONAL str

        recurring_payment_order_no: (recurringPaymentOrderNo) OPTIONAL str

        charging: (charging) OPTIONAL bool

        omit_notification: (omitNotification) OPTIONAL bool

        metadata: (metadata) OPTIONAL Dict[str, str]

        total_tax: (totalTax) OPTIONAL int

        total_price: (totalPrice) OPTIONAL int

        subtotal_price: (subtotalPrice) OPTIONAL int

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    payment_order_no: str                                                                          # REQUIRED
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    target_namespace: str                                                                          # OPTIONAL
    target_user_id: str                                                                            # OPTIONAL
    ext_order_no: str                                                                              # REQUIRED
    sku: str                                                                                       # OPTIONAL
    ext_user_id: str                                                                               # OPTIONAL
    sandbox: bool                                                                                  # REQUIRED
    price: int                                                                                     # REQUIRED
    payment_provider: str                                                                          # REQUIRED
    payment_method: str                                                                            # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL
    tax: int                                                                                       # OPTIONAL
    vat: int                                                                                       # OPTIONAL
    sales_tax: int                                                                                 # OPTIONAL
    payment_provider_fee: int                                                                      # OPTIONAL
    payment_method_fee: int                                                                        # OPTIONAL
    currency: CurrencySummary                                                                      # REQUIRED
    payment_station_url: str                                                                       # OPTIONAL
    transactions: List[Transaction]                                                                # OPTIONAL
    status: str                                                                                    # REQUIRED
    status_reason: str                                                                             # OPTIONAL
    created_time: str                                                                              # OPTIONAL
    authorised_time: str                                                                           # OPTIONAL
    charged_time: str                                                                              # OPTIONAL
    refunded_time: str                                                                             # OPTIONAL
    chargeback_time: str                                                                           # OPTIONAL
    chargeback_reversed_time: str                                                                  # OPTIONAL
    return_url: str                                                                                # OPTIONAL
    notify_url: str                                                                                # OPTIONAL
    title: str                                                                                     # REQUIRED
    description: str                                                                               # OPTIONAL
    item_type: str                                                                                 # OPTIONAL
    channel: str                                                                                   # REQUIRED
    custom_parameters: Dict[str, Any]                                                              # OPTIONAL
    subscription_id: str                                                                           # OPTIONAL
    recurring_payment_order_no: str                                                                # OPTIONAL
    charging: bool                                                                                 # OPTIONAL
    omit_notification: bool                                                                        # OPTIONAL
    metadata: Dict[str, str]                                                                       # OPTIONAL
    total_tax: int                                                                                 # OPTIONAL
    total_price: int                                                                               # OPTIONAL
    subtotal_price: int                                                                            # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_payment_order_no(self, value: str) -> PaymentOrderInfo:
        self.payment_order_no = value
        return self

    def with_namespace(self, value: str) -> PaymentOrderInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> PaymentOrderInfo:
        self.user_id = value
        return self

    def with_target_namespace(self, value: str) -> PaymentOrderInfo:
        self.target_namespace = value
        return self

    def with_target_user_id(self, value: str) -> PaymentOrderInfo:
        self.target_user_id = value
        return self

    def with_ext_order_no(self, value: str) -> PaymentOrderInfo:
        self.ext_order_no = value
        return self

    def with_sku(self, value: str) -> PaymentOrderInfo:
        self.sku = value
        return self

    def with_ext_user_id(self, value: str) -> PaymentOrderInfo:
        self.ext_user_id = value
        return self

    def with_sandbox(self, value: bool) -> PaymentOrderInfo:
        self.sandbox = value
        return self

    def with_price(self, value: int) -> PaymentOrderInfo:
        self.price = value
        return self

    def with_payment_provider(self, value: str) -> PaymentOrderInfo:
        self.payment_provider = value
        return self

    def with_payment_method(self, value: str) -> PaymentOrderInfo:
        self.payment_method = value
        return self

    def with_region(self, value: str) -> PaymentOrderInfo:
        self.region = value
        return self

    def with_language(self, value: str) -> PaymentOrderInfo:
        self.language = value
        return self

    def with_tax(self, value: int) -> PaymentOrderInfo:
        self.tax = value
        return self

    def with_vat(self, value: int) -> PaymentOrderInfo:
        self.vat = value
        return self

    def with_sales_tax(self, value: int) -> PaymentOrderInfo:
        self.sales_tax = value
        return self

    def with_payment_provider_fee(self, value: int) -> PaymentOrderInfo:
        self.payment_provider_fee = value
        return self

    def with_payment_method_fee(self, value: int) -> PaymentOrderInfo:
        self.payment_method_fee = value
        return self

    def with_currency(self, value: CurrencySummary) -> PaymentOrderInfo:
        self.currency = value
        return self

    def with_payment_station_url(self, value: str) -> PaymentOrderInfo:
        self.payment_station_url = value
        return self

    def with_transactions(self, value: List[Transaction]) -> PaymentOrderInfo:
        self.transactions = value
        return self

    def with_status(self, value: str) -> PaymentOrderInfo:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> PaymentOrderInfo:
        self.status_reason = value
        return self

    def with_created_time(self, value: str) -> PaymentOrderInfo:
        self.created_time = value
        return self

    def with_authorised_time(self, value: str) -> PaymentOrderInfo:
        self.authorised_time = value
        return self

    def with_charged_time(self, value: str) -> PaymentOrderInfo:
        self.charged_time = value
        return self

    def with_refunded_time(self, value: str) -> PaymentOrderInfo:
        self.refunded_time = value
        return self

    def with_chargeback_time(self, value: str) -> PaymentOrderInfo:
        self.chargeback_time = value
        return self

    def with_chargeback_reversed_time(self, value: str) -> PaymentOrderInfo:
        self.chargeback_reversed_time = value
        return self

    def with_return_url(self, value: str) -> PaymentOrderInfo:
        self.return_url = value
        return self

    def with_notify_url(self, value: str) -> PaymentOrderInfo:
        self.notify_url = value
        return self

    def with_title(self, value: str) -> PaymentOrderInfo:
        self.title = value
        return self

    def with_description(self, value: str) -> PaymentOrderInfo:
        self.description = value
        return self

    def with_item_type(self, value: str) -> PaymentOrderInfo:
        self.item_type = value
        return self

    def with_channel(self, value: str) -> PaymentOrderInfo:
        self.channel = value
        return self

    def with_custom_parameters(self, value: Dict[str, Any]) -> PaymentOrderInfo:
        self.custom_parameters = value
        return self

    def with_subscription_id(self, value: str) -> PaymentOrderInfo:
        self.subscription_id = value
        return self

    def with_recurring_payment_order_no(self, value: str) -> PaymentOrderInfo:
        self.recurring_payment_order_no = value
        return self

    def with_charging(self, value: bool) -> PaymentOrderInfo:
        self.charging = value
        return self

    def with_omit_notification(self, value: bool) -> PaymentOrderInfo:
        self.omit_notification = value
        return self

    def with_metadata(self, value: Dict[str, str]) -> PaymentOrderInfo:
        self.metadata = value
        return self

    def with_total_tax(self, value: int) -> PaymentOrderInfo:
        self.total_tax = value
        return self

    def with_total_price(self, value: int) -> PaymentOrderInfo:
        self.total_price = value
        return self

    def with_subtotal_price(self, value: int) -> PaymentOrderInfo:
        self.subtotal_price = value
        return self

    def with_created_at(self, value: str) -> PaymentOrderInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> PaymentOrderInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "target_user_id") and self.target_user_id:
            result["targetUserId"] = str(self.target_user_id)
        elif include_empty:
            result["targetUserId"] = str()
        if hasattr(self, "ext_order_no") and self.ext_order_no:
            result["extOrderNo"] = str(self.ext_order_no)
        elif include_empty:
            result["extOrderNo"] = str()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "ext_user_id") and self.ext_user_id:
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = str()
        if hasattr(self, "sandbox") and self.sandbox:
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "price") and self.price:
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = int()
        if hasattr(self, "payment_provider") and self.payment_provider:
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "payment_method") and self.payment_method:
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
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
        if hasattr(self, "payment_station_url") and self.payment_station_url:
            result["paymentStationUrl"] = str(self.payment_station_url)
        elif include_empty:
            result["paymentStationUrl"] = str()
        if hasattr(self, "transactions") and self.transactions:
            result["transactions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.transactions]
        elif include_empty:
            result["transactions"] = []
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "status_reason") and self.status_reason:
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = str()
        if hasattr(self, "created_time") and self.created_time:
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = str()
        if hasattr(self, "authorised_time") and self.authorised_time:
            result["authorisedTime"] = str(self.authorised_time)
        elif include_empty:
            result["authorisedTime"] = str()
        if hasattr(self, "charged_time") and self.charged_time:
            result["chargedTime"] = str(self.charged_time)
        elif include_empty:
            result["chargedTime"] = str()
        if hasattr(self, "refunded_time") and self.refunded_time:
            result["refundedTime"] = str(self.refunded_time)
        elif include_empty:
            result["refundedTime"] = str()
        if hasattr(self, "chargeback_time") and self.chargeback_time:
            result["chargebackTime"] = str(self.chargeback_time)
        elif include_empty:
            result["chargebackTime"] = str()
        if hasattr(self, "chargeback_reversed_time") and self.chargeback_reversed_time:
            result["chargebackReversedTime"] = str(self.chargeback_reversed_time)
        elif include_empty:
            result["chargebackReversedTime"] = str()
        if hasattr(self, "return_url") and self.return_url:
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        if hasattr(self, "notify_url") and self.notify_url:
            result["notifyUrl"] = str(self.notify_url)
        elif include_empty:
            result["notifyUrl"] = str()
        if hasattr(self, "title") and self.title:
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "channel") and self.channel:
            result["channel"] = str(self.channel)
        elif include_empty:
            result["channel"] = str()
        if hasattr(self, "custom_parameters") and self.custom_parameters:
            result["customParameters"] = {str(k0): v0 for k0, v0 in self.custom_parameters.items()}
        elif include_empty:
            result["customParameters"] = {}
        if hasattr(self, "subscription_id") and self.subscription_id:
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = str()
        if hasattr(self, "recurring_payment_order_no") and self.recurring_payment_order_no:
            result["recurringPaymentOrderNo"] = str(self.recurring_payment_order_no)
        elif include_empty:
            result["recurringPaymentOrderNo"] = str()
        if hasattr(self, "charging") and self.charging:
            result["charging"] = bool(self.charging)
        elif include_empty:
            result["charging"] = bool()
        if hasattr(self, "omit_notification") and self.omit_notification:
            result["omitNotification"] = bool(self.omit_notification)
        elif include_empty:
            result["omitNotification"] = bool()
        if hasattr(self, "metadata") and self.metadata:
            result["metadata"] = {str(k0): str(v0) for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "total_tax") and self.total_tax:
            result["totalTax"] = int(self.total_tax)
        elif include_empty:
            result["totalTax"] = int()
        if hasattr(self, "total_price") and self.total_price:
            result["totalPrice"] = int(self.total_price)
        elif include_empty:
            result["totalPrice"] = int()
        if hasattr(self, "subtotal_price") and self.subtotal_price:
            result["subtotalPrice"] = int(self.subtotal_price)
        elif include_empty:
            result["subtotalPrice"] = int()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_order_no: str,
        namespace: str,
        user_id: str,
        ext_order_no: str,
        sandbox: bool,
        price: int,
        payment_provider: str,
        currency: CurrencySummary,
        status: str,
        title: str,
        channel: str,
        created_at: str,
        updated_at: str,
        target_namespace: Optional[str] = None,
        target_user_id: Optional[str] = None,
        sku: Optional[str] = None,
        ext_user_id: Optional[str] = None,
        payment_method: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
        tax: Optional[int] = None,
        vat: Optional[int] = None,
        sales_tax: Optional[int] = None,
        payment_provider_fee: Optional[int] = None,
        payment_method_fee: Optional[int] = None,
        payment_station_url: Optional[str] = None,
        transactions: Optional[List[Transaction]] = None,
        status_reason: Optional[str] = None,
        created_time: Optional[str] = None,
        authorised_time: Optional[str] = None,
        charged_time: Optional[str] = None,
        refunded_time: Optional[str] = None,
        chargeback_time: Optional[str] = None,
        chargeback_reversed_time: Optional[str] = None,
        return_url: Optional[str] = None,
        notify_url: Optional[str] = None,
        description: Optional[str] = None,
        item_type: Optional[str] = None,
        custom_parameters: Optional[Dict[str, Any]] = None,
        subscription_id: Optional[str] = None,
        recurring_payment_order_no: Optional[str] = None,
        charging: Optional[bool] = None,
        omit_notification: Optional[bool] = None,
        metadata: Optional[Dict[str, str]] = None,
        total_tax: Optional[int] = None,
        total_price: Optional[int] = None,
        subtotal_price: Optional[int] = None,
    ) -> PaymentOrderInfo:
        instance = cls()
        instance.payment_order_no = payment_order_no
        instance.namespace = namespace
        instance.user_id = user_id
        instance.ext_order_no = ext_order_no
        instance.sandbox = sandbox
        instance.price = price
        instance.payment_provider = payment_provider
        instance.currency = currency
        instance.status = status
        instance.title = title
        instance.channel = channel
        instance.created_at = created_at
        instance.updated_at = updated_at
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if target_user_id is not None:
            instance.target_user_id = target_user_id
        if sku is not None:
            instance.sku = sku
        if ext_user_id is not None:
            instance.ext_user_id = ext_user_id
        if payment_method is not None:
            instance.payment_method = payment_method
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
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
        if payment_station_url is not None:
            instance.payment_station_url = payment_station_url
        if transactions is not None:
            instance.transactions = transactions
        if status_reason is not None:
            instance.status_reason = status_reason
        if created_time is not None:
            instance.created_time = created_time
        if authorised_time is not None:
            instance.authorised_time = authorised_time
        if charged_time is not None:
            instance.charged_time = charged_time
        if refunded_time is not None:
            instance.refunded_time = refunded_time
        if chargeback_time is not None:
            instance.chargeback_time = chargeback_time
        if chargeback_reversed_time is not None:
            instance.chargeback_reversed_time = chargeback_reversed_time
        if return_url is not None:
            instance.return_url = return_url
        if notify_url is not None:
            instance.notify_url = notify_url
        if description is not None:
            instance.description = description
        if item_type is not None:
            instance.item_type = item_type
        if custom_parameters is not None:
            instance.custom_parameters = custom_parameters
        if subscription_id is not None:
            instance.subscription_id = subscription_id
        if recurring_payment_order_no is not None:
            instance.recurring_payment_order_no = recurring_payment_order_no
        if charging is not None:
            instance.charging = charging
        if omit_notification is not None:
            instance.omit_notification = omit_notification
        if metadata is not None:
            instance.metadata = metadata
        if total_tax is not None:
            instance.total_tax = total_tax
        if total_price is not None:
            instance.total_price = total_price
        if subtotal_price is not None:
            instance.subtotal_price = subtotal_price
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderInfo:
        instance = cls()
        if not dict_:
            return instance
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "targetUserId" in dict_ and dict_["targetUserId"] is not None:
            instance.target_user_id = str(dict_["targetUserId"])
        elif include_empty:
            instance.target_user_id = str()
        if "extOrderNo" in dict_ and dict_["extOrderNo"] is not None:
            instance.ext_order_no = str(dict_["extOrderNo"])
        elif include_empty:
            instance.ext_order_no = str()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = int()
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
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
        if "paymentStationUrl" in dict_ and dict_["paymentStationUrl"] is not None:
            instance.payment_station_url = str(dict_["paymentStationUrl"])
        elif include_empty:
            instance.payment_station_url = str()
        if "transactions" in dict_ and dict_["transactions"] is not None:
            instance.transactions = [Transaction.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["transactions"]]
        elif include_empty:
            instance.transactions = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = str()
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = str()
        if "authorisedTime" in dict_ and dict_["authorisedTime"] is not None:
            instance.authorised_time = str(dict_["authorisedTime"])
        elif include_empty:
            instance.authorised_time = str()
        if "chargedTime" in dict_ and dict_["chargedTime"] is not None:
            instance.charged_time = str(dict_["chargedTime"])
        elif include_empty:
            instance.charged_time = str()
        if "refundedTime" in dict_ and dict_["refundedTime"] is not None:
            instance.refunded_time = str(dict_["refundedTime"])
        elif include_empty:
            instance.refunded_time = str()
        if "chargebackTime" in dict_ and dict_["chargebackTime"] is not None:
            instance.chargeback_time = str(dict_["chargebackTime"])
        elif include_empty:
            instance.chargeback_time = str()
        if "chargebackReversedTime" in dict_ and dict_["chargebackReversedTime"] is not None:
            instance.chargeback_reversed_time = str(dict_["chargebackReversedTime"])
        elif include_empty:
            instance.chargeback_reversed_time = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        if "notifyUrl" in dict_ and dict_["notifyUrl"] is not None:
            instance.notify_url = str(dict_["notifyUrl"])
        elif include_empty:
            instance.notify_url = str()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "channel" in dict_ and dict_["channel"] is not None:
            instance.channel = str(dict_["channel"])
        elif include_empty:
            instance.channel = str()
        if "customParameters" in dict_ and dict_["customParameters"] is not None:
            instance.custom_parameters = {str(k0): v0 for k0, v0 in dict_["customParameters"].items()}
        elif include_empty:
            instance.custom_parameters = {}
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = str()
        if "recurringPaymentOrderNo" in dict_ and dict_["recurringPaymentOrderNo"] is not None:
            instance.recurring_payment_order_no = str(dict_["recurringPaymentOrderNo"])
        elif include_empty:
            instance.recurring_payment_order_no = str()
        if "charging" in dict_ and dict_["charging"] is not None:
            instance.charging = bool(dict_["charging"])
        elif include_empty:
            instance.charging = bool()
        if "omitNotification" in dict_ and dict_["omitNotification"] is not None:
            instance.omit_notification = bool(dict_["omitNotification"])
        elif include_empty:
            instance.omit_notification = bool()
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): str(v0) for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "totalTax" in dict_ and dict_["totalTax"] is not None:
            instance.total_tax = int(dict_["totalTax"])
        elif include_empty:
            instance.total_tax = int()
        if "totalPrice" in dict_ and dict_["totalPrice"] is not None:
            instance.total_price = int(dict_["totalPrice"])
        elif include_empty:
            instance.total_price = int()
        if "subtotalPrice" in dict_ and dict_["subtotalPrice"] is not None:
            instance.subtotal_price = int(dict_["subtotalPrice"])
        elif include_empty:
            instance.subtotal_price = int()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentOrderNo": "payment_order_no",
            "namespace": "namespace",
            "userId": "user_id",
            "targetNamespace": "target_namespace",
            "targetUserId": "target_user_id",
            "extOrderNo": "ext_order_no",
            "sku": "sku",
            "extUserId": "ext_user_id",
            "sandbox": "sandbox",
            "price": "price",
            "paymentProvider": "payment_provider",
            "paymentMethod": "payment_method",
            "region": "region",
            "language": "language",
            "tax": "tax",
            "vat": "vat",
            "salesTax": "sales_tax",
            "paymentProviderFee": "payment_provider_fee",
            "paymentMethodFee": "payment_method_fee",
            "currency": "currency",
            "paymentStationUrl": "payment_station_url",
            "transactions": "transactions",
            "status": "status",
            "statusReason": "status_reason",
            "createdTime": "created_time",
            "authorisedTime": "authorised_time",
            "chargedTime": "charged_time",
            "refundedTime": "refunded_time",
            "chargebackTime": "chargeback_time",
            "chargebackReversedTime": "chargeback_reversed_time",
            "returnUrl": "return_url",
            "notifyUrl": "notify_url",
            "title": "title",
            "description": "description",
            "itemType": "item_type",
            "channel": "channel",
            "customParameters": "custom_parameters",
            "subscriptionId": "subscription_id",
            "recurringPaymentOrderNo": "recurring_payment_order_no",
            "charging": "charging",
            "omitNotification": "omit_notification",
            "metadata": "metadata",
            "totalTax": "total_tax",
            "totalPrice": "total_price",
            "subtotalPrice": "subtotal_price",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
