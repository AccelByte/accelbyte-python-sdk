# Auto-generated at 2021-10-14T22:17:16.380769+08:00
# from: Justice Platform Service (3.24.0)

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
from ..models.item_snapshot import ItemSnapshot


class OrderInfo(Model):
    """Order info (OrderInfo)

    Properties:
        order_no: (orderNo) REQUIRED str

        payment_order_no: (paymentOrderNo) OPTIONAL str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        item_id: (itemId) REQUIRED str

        sandbox: (sandbox) REQUIRED bool

        quantity: (quantity) REQUIRED int

        price: (price) REQUIRED int

        discounted_price: (discountedPrice) REQUIRED int

        payment_provider: (paymentProvider) OPTIONAL str

        payment_method: (paymentMethod) OPTIONAL str

        tax: (tax) OPTIONAL int

        vat: (vat) OPTIONAL int

        sales_tax: (salesTax) OPTIONAL int

        payment_provider_fee: (paymentProviderFee) OPTIONAL int

        payment_method_fee: (paymentMethodFee) OPTIONAL int

        currency: (currency) REQUIRED CurrencySummary

        payment_station_url: (paymentStationUrl) OPTIONAL str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str

        status: (status) REQUIRED str

        status_reason: (statusReason) OPTIONAL str

        created_time: (createdTime) OPTIONAL str

        charged_time: (chargedTime) OPTIONAL str

        fulfilled_time: (fulfilledTime) OPTIONAL str

        refunded_time: (refundedTime) OPTIONAL str

        chargeback_time: (chargebackTime) OPTIONAL str

        chargeback_reversed_time: (chargebackReversedTime) OPTIONAL str

        expire_time: (expireTime) REQUIRED str

        payment_remain_seconds: (paymentRemainSeconds) REQUIRED int

        ext: (ext) OPTIONAL Dict[str, Any]

        total_tax: (totalTax) OPTIONAL int

        total_price: (totalPrice) OPTIONAL int

        subtotal_price: (subtotalPrice) OPTIONAL int

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    order_no: str                                                                                  # REQUIRED
    payment_order_no: str                                                                          # OPTIONAL
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    item_id: str                                                                                   # REQUIRED
    sandbox: bool                                                                                  # REQUIRED
    quantity: int                                                                                  # REQUIRED
    price: int                                                                                     # REQUIRED
    discounted_price: int                                                                          # REQUIRED
    payment_provider: str                                                                          # OPTIONAL
    payment_method: str                                                                            # OPTIONAL
    tax: int                                                                                       # OPTIONAL
    vat: int                                                                                       # OPTIONAL
    sales_tax: int                                                                                 # OPTIONAL
    payment_provider_fee: int                                                                      # OPTIONAL
    payment_method_fee: int                                                                        # OPTIONAL
    currency: CurrencySummary                                                                      # REQUIRED
    payment_station_url: str                                                                       # OPTIONAL
    item_snapshot: ItemSnapshot                                                                    # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL
    status: str                                                                                    # REQUIRED
    status_reason: str                                                                             # OPTIONAL
    created_time: str                                                                              # OPTIONAL
    charged_time: str                                                                              # OPTIONAL
    fulfilled_time: str                                                                            # OPTIONAL
    refunded_time: str                                                                             # OPTIONAL
    chargeback_time: str                                                                           # OPTIONAL
    chargeback_reversed_time: str                                                                  # OPTIONAL
    expire_time: str                                                                               # REQUIRED
    payment_remain_seconds: int                                                                    # REQUIRED
    ext: Dict[str, Any]                                                                            # OPTIONAL
    total_tax: int                                                                                 # OPTIONAL
    total_price: int                                                                               # OPTIONAL
    subtotal_price: int                                                                            # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_order_no(self, value: str) -> OrderInfo:
        self.order_no = value
        return self

    def with_payment_order_no(self, value: str) -> OrderInfo:
        self.payment_order_no = value
        return self

    def with_namespace(self, value: str) -> OrderInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> OrderInfo:
        self.user_id = value
        return self

    def with_item_id(self, value: str) -> OrderInfo:
        self.item_id = value
        return self

    def with_sandbox(self, value: bool) -> OrderInfo:
        self.sandbox = value
        return self

    def with_quantity(self, value: int) -> OrderInfo:
        self.quantity = value
        return self

    def with_price(self, value: int) -> OrderInfo:
        self.price = value
        return self

    def with_discounted_price(self, value: int) -> OrderInfo:
        self.discounted_price = value
        return self

    def with_payment_provider(self, value: str) -> OrderInfo:
        self.payment_provider = value
        return self

    def with_payment_method(self, value: str) -> OrderInfo:
        self.payment_method = value
        return self

    def with_tax(self, value: int) -> OrderInfo:
        self.tax = value
        return self

    def with_vat(self, value: int) -> OrderInfo:
        self.vat = value
        return self

    def with_sales_tax(self, value: int) -> OrderInfo:
        self.sales_tax = value
        return self

    def with_payment_provider_fee(self, value: int) -> OrderInfo:
        self.payment_provider_fee = value
        return self

    def with_payment_method_fee(self, value: int) -> OrderInfo:
        self.payment_method_fee = value
        return self

    def with_currency(self, value: CurrencySummary) -> OrderInfo:
        self.currency = value
        return self

    def with_payment_station_url(self, value: str) -> OrderInfo:
        self.payment_station_url = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> OrderInfo:
        self.item_snapshot = value
        return self

    def with_region(self, value: str) -> OrderInfo:
        self.region = value
        return self

    def with_language(self, value: str) -> OrderInfo:
        self.language = value
        return self

    def with_status(self, value: str) -> OrderInfo:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> OrderInfo:
        self.status_reason = value
        return self

    def with_created_time(self, value: str) -> OrderInfo:
        self.created_time = value
        return self

    def with_charged_time(self, value: str) -> OrderInfo:
        self.charged_time = value
        return self

    def with_fulfilled_time(self, value: str) -> OrderInfo:
        self.fulfilled_time = value
        return self

    def with_refunded_time(self, value: str) -> OrderInfo:
        self.refunded_time = value
        return self

    def with_chargeback_time(self, value: str) -> OrderInfo:
        self.chargeback_time = value
        return self

    def with_chargeback_reversed_time(self, value: str) -> OrderInfo:
        self.chargeback_reversed_time = value
        return self

    def with_expire_time(self, value: str) -> OrderInfo:
        self.expire_time = value
        return self

    def with_payment_remain_seconds(self, value: int) -> OrderInfo:
        self.payment_remain_seconds = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> OrderInfo:
        self.ext = value
        return self

    def with_total_tax(self, value: int) -> OrderInfo:
        self.total_tax = value
        return self

    def with_total_price(self, value: int) -> OrderInfo:
        self.total_price = value
        return self

    def with_subtotal_price(self, value: int) -> OrderInfo:
        self.subtotal_price = value
        return self

    def with_created_at(self, value: str) -> OrderInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> OrderInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "order_no") and self.order_no:
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = str()
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
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "sandbox") and self.sandbox:
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "quantity") and self.quantity:
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "price") and self.price:
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = int()
        if hasattr(self, "discounted_price") and self.discounted_price:
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = int()
        if hasattr(self, "payment_provider") and self.payment_provider:
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = str()
        if hasattr(self, "payment_method") and self.payment_method:
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = str()
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
        if hasattr(self, "item_snapshot") and self.item_snapshot:
            result["itemSnapshot"] = self.item_snapshot.to_dict(include_empty=include_empty)
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
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
        if hasattr(self, "charged_time") and self.charged_time:
            result["chargedTime"] = str(self.charged_time)
        elif include_empty:
            result["chargedTime"] = str()
        if hasattr(self, "fulfilled_time") and self.fulfilled_time:
            result["fulfilledTime"] = str(self.fulfilled_time)
        elif include_empty:
            result["fulfilledTime"] = str()
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
        if hasattr(self, "expire_time") and self.expire_time:
            result["expireTime"] = str(self.expire_time)
        elif include_empty:
            result["expireTime"] = str()
        if hasattr(self, "payment_remain_seconds") and self.payment_remain_seconds:
            result["paymentRemainSeconds"] = int(self.payment_remain_seconds)
        elif include_empty:
            result["paymentRemainSeconds"] = int()
        if hasattr(self, "ext") and self.ext:
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
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
        order_no: str,
        namespace: str,
        user_id: str,
        item_id: str,
        sandbox: bool,
        quantity: int,
        price: int,
        discounted_price: int,
        currency: CurrencySummary,
        status: str,
        expire_time: str,
        payment_remain_seconds: int,
        created_at: str,
        updated_at: str,
        payment_order_no: Optional[str] = None,
        payment_provider: Optional[str] = None,
        payment_method: Optional[str] = None,
        tax: Optional[int] = None,
        vat: Optional[int] = None,
        sales_tax: Optional[int] = None,
        payment_provider_fee: Optional[int] = None,
        payment_method_fee: Optional[int] = None,
        payment_station_url: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
        status_reason: Optional[str] = None,
        created_time: Optional[str] = None,
        charged_time: Optional[str] = None,
        fulfilled_time: Optional[str] = None,
        refunded_time: Optional[str] = None,
        chargeback_time: Optional[str] = None,
        chargeback_reversed_time: Optional[str] = None,
        ext: Optional[Dict[str, Any]] = None,
        total_tax: Optional[int] = None,
        total_price: Optional[int] = None,
        subtotal_price: Optional[int] = None,
    ) -> OrderInfo:
        instance = cls()
        instance.order_no = order_no
        instance.namespace = namespace
        instance.user_id = user_id
        instance.item_id = item_id
        instance.sandbox = sandbox
        instance.quantity = quantity
        instance.price = price
        instance.discounted_price = discounted_price
        instance.currency = currency
        instance.status = status
        instance.expire_time = expire_time
        instance.payment_remain_seconds = payment_remain_seconds
        instance.created_at = created_at
        instance.updated_at = updated_at
        if payment_order_no is not None:
            instance.payment_order_no = payment_order_no
        if payment_provider is not None:
            instance.payment_provider = payment_provider
        if payment_method is not None:
            instance.payment_method = payment_method
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
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        if status_reason is not None:
            instance.status_reason = status_reason
        if created_time is not None:
            instance.created_time = created_time
        if charged_time is not None:
            instance.charged_time = charged_time
        if fulfilled_time is not None:
            instance.fulfilled_time = fulfilled_time
        if refunded_time is not None:
            instance.refunded_time = refunded_time
        if chargeback_time is not None:
            instance.chargeback_time = chargeback_time
        if chargeback_reversed_time is not None:
            instance.chargeback_reversed_time = chargeback_reversed_time
        if ext is not None:
            instance.ext = ext
        if total_tax is not None:
            instance.total_tax = total_tax
        if total_price is not None:
            instance.total_price = total_price
        if subtotal_price is not None:
            instance.subtotal_price = subtotal_price
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OrderInfo:
        instance = cls()
        if not dict_:
            return instance
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = str()
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
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = int()
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = int()
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = str()
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = str()
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
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(dict_["itemSnapshot"], include_empty=include_empty)
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
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
        if "chargedTime" in dict_ and dict_["chargedTime"] is not None:
            instance.charged_time = str(dict_["chargedTime"])
        elif include_empty:
            instance.charged_time = str()
        if "fulfilledTime" in dict_ and dict_["fulfilledTime"] is not None:
            instance.fulfilled_time = str(dict_["fulfilledTime"])
        elif include_empty:
            instance.fulfilled_time = str()
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
        if "expireTime" in dict_ and dict_["expireTime"] is not None:
            instance.expire_time = str(dict_["expireTime"])
        elif include_empty:
            instance.expire_time = str()
        if "paymentRemainSeconds" in dict_ and dict_["paymentRemainSeconds"] is not None:
            instance.payment_remain_seconds = int(dict_["paymentRemainSeconds"])
        elif include_empty:
            instance.payment_remain_seconds = int()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
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
            "orderNo": "order_no",
            "paymentOrderNo": "payment_order_no",
            "namespace": "namespace",
            "userId": "user_id",
            "itemId": "item_id",
            "sandbox": "sandbox",
            "quantity": "quantity",
            "price": "price",
            "discountedPrice": "discounted_price",
            "paymentProvider": "payment_provider",
            "paymentMethod": "payment_method",
            "tax": "tax",
            "vat": "vat",
            "salesTax": "sales_tax",
            "paymentProviderFee": "payment_provider_fee",
            "paymentMethodFee": "payment_method_fee",
            "currency": "currency",
            "paymentStationUrl": "payment_station_url",
            "itemSnapshot": "item_snapshot",
            "region": "region",
            "language": "language",
            "status": "status",
            "statusReason": "status_reason",
            "createdTime": "created_time",
            "chargedTime": "charged_time",
            "fulfilledTime": "fulfilled_time",
            "refundedTime": "refunded_time",
            "chargebackTime": "chargeback_time",
            "chargebackReversedTime": "chargeback_reversed_time",
            "expireTime": "expire_time",
            "paymentRemainSeconds": "payment_remain_seconds",
            "ext": "ext",
            "totalTax": "total_tax",
            "totalPrice": "total_price",
            "subtotalPrice": "subtotal_price",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
