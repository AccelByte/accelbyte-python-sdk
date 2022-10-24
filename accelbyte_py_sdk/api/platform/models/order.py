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

from ..models.a_dto_object_for_order_creation_options import (
    ADTOObjectForOrderCreationOptions,
)
from ..models.currency_summary import CurrencySummary
from ..models.item_snapshot import ItemSnapshot


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
    CHARGEBACK = "CHARGEBACK"
    CHARGEBACK_REVERSED = "CHARGEBACK_REVERSED"
    CHARGED = "CHARGED"
    CLOSED = "CLOSED"
    DELETED = "DELETED"
    FULFILLED = "FULFILLED"
    FULFILL_FAILED = "FULFILL_FAILED"
    INIT = "INIT"
    REFUNDED = "REFUNDED"
    REFUNDING = "REFUNDING"
    REFUND_FAILED = "REFUND_FAILED"


class Order(Model):
    """Order (Order)

    Properties:
        chargeback_reversed_time: (chargebackReversedTime) OPTIONAL str

        chargeback_time: (chargebackTime) OPTIONAL str

        charged: (charged) OPTIONAL bool

        charged_time: (chargedTime) OPTIONAL str

        count_item_id: (countItemId) OPTIONAL str

        count_namespace: (countNamespace) OPTIONAL str

        count_user_id: (countUserId) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        created_time: (createdTime) OPTIONAL str

        creation_options: (creationOptions) OPTIONAL ADTOObjectForOrderCreationOptions

        currency: (currency) OPTIONAL CurrencySummary

        discounted_price: (discountedPrice) OPTIONAL int

        expire_time: (expireTime) OPTIONAL str

        ext: (ext) OPTIONAL Dict[str, Any]

        free: (free) OPTIONAL bool

        fulfilled_time: (fulfilledTime) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        language: (language) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        order_no: (orderNo) OPTIONAL str

        payment_method: (paymentMethod) OPTIONAL str

        payment_method_fee: (paymentMethodFee) OPTIONAL int

        payment_order_no: (paymentOrderNo) OPTIONAL str

        payment_provider: (paymentProvider) OPTIONAL Union[str, PaymentProviderEnum]

        payment_provider_fee: (paymentProviderFee) OPTIONAL int

        payment_remain_seconds: (paymentRemainSeconds) OPTIONAL int

        payment_station_url: (paymentStationUrl) OPTIONAL str

        price: (price) OPTIONAL int

        quantity: (quantity) OPTIONAL int

        refunded_time: (refundedTime) OPTIONAL str

        region: (region) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        rvn: (rvn) OPTIONAL int

        sales_tax: (salesTax) OPTIONAL int

        sandbox: (sandbox) OPTIONAL bool

        status: (status) OPTIONAL Union[str, StatusEnum]

        status_reason: (statusReason) OPTIONAL str

        subtotal_price: (subtotalPrice) OPTIONAL int

        tax: (tax) OPTIONAL int

        total_price: (totalPrice) OPTIONAL int

        total_tax: (totalTax) OPTIONAL int

        updated_at: (updatedAt) OPTIONAL str

        user_id: (userId) OPTIONAL str

        vat: (vat) OPTIONAL int
    """

    # region fields

    chargeback_reversed_time: str  # OPTIONAL
    chargeback_time: str  # OPTIONAL
    charged: bool  # OPTIONAL
    charged_time: str  # OPTIONAL
    count_item_id: str  # OPTIONAL
    count_namespace: str  # OPTIONAL
    count_user_id: str  # OPTIONAL
    created_at: str  # OPTIONAL
    created_time: str  # OPTIONAL
    creation_options: ADTOObjectForOrderCreationOptions  # OPTIONAL
    currency: CurrencySummary  # OPTIONAL
    discounted_price: int  # OPTIONAL
    expire_time: str  # OPTIONAL
    ext: Dict[str, Any]  # OPTIONAL
    free: bool  # OPTIONAL
    fulfilled_time: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_snapshot: ItemSnapshot  # OPTIONAL
    language: str  # OPTIONAL
    namespace: str  # OPTIONAL
    order_no: str  # OPTIONAL
    payment_method: str  # OPTIONAL
    payment_method_fee: int  # OPTIONAL
    payment_order_no: str  # OPTIONAL
    payment_provider: Union[str, PaymentProviderEnum]  # OPTIONAL
    payment_provider_fee: int  # OPTIONAL
    payment_remain_seconds: int  # OPTIONAL
    payment_station_url: str  # OPTIONAL
    price: int  # OPTIONAL
    quantity: int  # OPTIONAL
    refunded_time: str  # OPTIONAL
    region: str  # OPTIONAL
    return_url: str  # OPTIONAL
    rvn: int  # OPTIONAL
    sales_tax: int  # OPTIONAL
    sandbox: bool  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    status_reason: str  # OPTIONAL
    subtotal_price: int  # OPTIONAL
    tax: int  # OPTIONAL
    total_price: int  # OPTIONAL
    total_tax: int  # OPTIONAL
    updated_at: str  # OPTIONAL
    user_id: str  # OPTIONAL
    vat: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_chargeback_reversed_time(self, value: str) -> Order:
        self.chargeback_reversed_time = value
        return self

    def with_chargeback_time(self, value: str) -> Order:
        self.chargeback_time = value
        return self

    def with_charged(self, value: bool) -> Order:
        self.charged = value
        return self

    def with_charged_time(self, value: str) -> Order:
        self.charged_time = value
        return self

    def with_count_item_id(self, value: str) -> Order:
        self.count_item_id = value
        return self

    def with_count_namespace(self, value: str) -> Order:
        self.count_namespace = value
        return self

    def with_count_user_id(self, value: str) -> Order:
        self.count_user_id = value
        return self

    def with_created_at(self, value: str) -> Order:
        self.created_at = value
        return self

    def with_created_time(self, value: str) -> Order:
        self.created_time = value
        return self

    def with_creation_options(self, value: ADTOObjectForOrderCreationOptions) -> Order:
        self.creation_options = value
        return self

    def with_currency(self, value: CurrencySummary) -> Order:
        self.currency = value
        return self

    def with_discounted_price(self, value: int) -> Order:
        self.discounted_price = value
        return self

    def with_expire_time(self, value: str) -> Order:
        self.expire_time = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> Order:
        self.ext = value
        return self

    def with_free(self, value: bool) -> Order:
        self.free = value
        return self

    def with_fulfilled_time(self, value: str) -> Order:
        self.fulfilled_time = value
        return self

    def with_item_id(self, value: str) -> Order:
        self.item_id = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> Order:
        self.item_snapshot = value
        return self

    def with_language(self, value: str) -> Order:
        self.language = value
        return self

    def with_namespace(self, value: str) -> Order:
        self.namespace = value
        return self

    def with_order_no(self, value: str) -> Order:
        self.order_no = value
        return self

    def with_payment_method(self, value: str) -> Order:
        self.payment_method = value
        return self

    def with_payment_method_fee(self, value: int) -> Order:
        self.payment_method_fee = value
        return self

    def with_payment_order_no(self, value: str) -> Order:
        self.payment_order_no = value
        return self

    def with_payment_provider(self, value: Union[str, PaymentProviderEnum]) -> Order:
        self.payment_provider = value
        return self

    def with_payment_provider_fee(self, value: int) -> Order:
        self.payment_provider_fee = value
        return self

    def with_payment_remain_seconds(self, value: int) -> Order:
        self.payment_remain_seconds = value
        return self

    def with_payment_station_url(self, value: str) -> Order:
        self.payment_station_url = value
        return self

    def with_price(self, value: int) -> Order:
        self.price = value
        return self

    def with_quantity(self, value: int) -> Order:
        self.quantity = value
        return self

    def with_refunded_time(self, value: str) -> Order:
        self.refunded_time = value
        return self

    def with_region(self, value: str) -> Order:
        self.region = value
        return self

    def with_return_url(self, value: str) -> Order:
        self.return_url = value
        return self

    def with_rvn(self, value: int) -> Order:
        self.rvn = value
        return self

    def with_sales_tax(self, value: int) -> Order:
        self.sales_tax = value
        return self

    def with_sandbox(self, value: bool) -> Order:
        self.sandbox = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> Order:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> Order:
        self.status_reason = value
        return self

    def with_subtotal_price(self, value: int) -> Order:
        self.subtotal_price = value
        return self

    def with_tax(self, value: int) -> Order:
        self.tax = value
        return self

    def with_total_price(self, value: int) -> Order:
        self.total_price = value
        return self

    def with_total_tax(self, value: int) -> Order:
        self.total_tax = value
        return self

    def with_updated_at(self, value: str) -> Order:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> Order:
        self.user_id = value
        return self

    def with_vat(self, value: int) -> Order:
        self.vat = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "chargeback_reversed_time"):
            result["chargebackReversedTime"] = str(self.chargeback_reversed_time)
        elif include_empty:
            result["chargebackReversedTime"] = ""
        if hasattr(self, "chargeback_time"):
            result["chargebackTime"] = str(self.chargeback_time)
        elif include_empty:
            result["chargebackTime"] = ""
        if hasattr(self, "charged"):
            result["charged"] = bool(self.charged)
        elif include_empty:
            result["charged"] = False
        if hasattr(self, "charged_time"):
            result["chargedTime"] = str(self.charged_time)
        elif include_empty:
            result["chargedTime"] = ""
        if hasattr(self, "count_item_id"):
            result["countItemId"] = str(self.count_item_id)
        elif include_empty:
            result["countItemId"] = ""
        if hasattr(self, "count_namespace"):
            result["countNamespace"] = str(self.count_namespace)
        elif include_empty:
            result["countNamespace"] = ""
        if hasattr(self, "count_user_id"):
            result["countUserId"] = str(self.count_user_id)
        elif include_empty:
            result["countUserId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "created_time"):
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = ""
        if hasattr(self, "creation_options"):
            result["creationOptions"] = self.creation_options.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["creationOptions"] = ADTOObjectForOrderCreationOptions()
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "discounted_price"):
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = 0
        if hasattr(self, "expire_time"):
            result["expireTime"] = str(self.expire_time)
        elif include_empty:
            result["expireTime"] = ""
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        if hasattr(self, "free"):
            result["free"] = bool(self.free)
        elif include_empty:
            result["free"] = False
        if hasattr(self, "fulfilled_time"):
            result["fulfilledTime"] = str(self.fulfilled_time)
        elif include_empty:
            result["fulfilledTime"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_snapshot"):
            result["itemSnapshot"] = self.item_snapshot.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = ""
        if hasattr(self, "payment_method"):
            result["paymentMethod"] = str(self.payment_method)
        elif include_empty:
            result["paymentMethod"] = ""
        if hasattr(self, "payment_method_fee"):
            result["paymentMethodFee"] = int(self.payment_method_fee)
        elif include_empty:
            result["paymentMethodFee"] = 0
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = ""
        if hasattr(self, "payment_provider"):
            result["paymentProvider"] = str(self.payment_provider)
        elif include_empty:
            result["paymentProvider"] = Union[str, PaymentProviderEnum]()
        if hasattr(self, "payment_provider_fee"):
            result["paymentProviderFee"] = int(self.payment_provider_fee)
        elif include_empty:
            result["paymentProviderFee"] = 0
        if hasattr(self, "payment_remain_seconds"):
            result["paymentRemainSeconds"] = int(self.payment_remain_seconds)
        elif include_empty:
            result["paymentRemainSeconds"] = 0
        if hasattr(self, "payment_station_url"):
            result["paymentStationUrl"] = str(self.payment_station_url)
        elif include_empty:
            result["paymentStationUrl"] = ""
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
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
        if hasattr(self, "rvn"):
            result["rvn"] = int(self.rvn)
        elif include_empty:
            result["rvn"] = 0
        if hasattr(self, "sales_tax"):
            result["salesTax"] = int(self.sales_tax)
        elif include_empty:
            result["salesTax"] = 0
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        if hasattr(self, "subtotal_price"):
            result["subtotalPrice"] = int(self.subtotal_price)
        elif include_empty:
            result["subtotalPrice"] = 0
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
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
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
        chargeback_reversed_time: Optional[str] = None,
        chargeback_time: Optional[str] = None,
        charged: Optional[bool] = None,
        charged_time: Optional[str] = None,
        count_item_id: Optional[str] = None,
        count_namespace: Optional[str] = None,
        count_user_id: Optional[str] = None,
        created_at: Optional[str] = None,
        created_time: Optional[str] = None,
        creation_options: Optional[ADTOObjectForOrderCreationOptions] = None,
        currency: Optional[CurrencySummary] = None,
        discounted_price: Optional[int] = None,
        expire_time: Optional[str] = None,
        ext: Optional[Dict[str, Any]] = None,
        free: Optional[bool] = None,
        fulfilled_time: Optional[str] = None,
        item_id: Optional[str] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        language: Optional[str] = None,
        namespace: Optional[str] = None,
        order_no: Optional[str] = None,
        payment_method: Optional[str] = None,
        payment_method_fee: Optional[int] = None,
        payment_order_no: Optional[str] = None,
        payment_provider: Optional[Union[str, PaymentProviderEnum]] = None,
        payment_provider_fee: Optional[int] = None,
        payment_remain_seconds: Optional[int] = None,
        payment_station_url: Optional[str] = None,
        price: Optional[int] = None,
        quantity: Optional[int] = None,
        refunded_time: Optional[str] = None,
        region: Optional[str] = None,
        return_url: Optional[str] = None,
        rvn: Optional[int] = None,
        sales_tax: Optional[int] = None,
        sandbox: Optional[bool] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        status_reason: Optional[str] = None,
        subtotal_price: Optional[int] = None,
        tax: Optional[int] = None,
        total_price: Optional[int] = None,
        total_tax: Optional[int] = None,
        updated_at: Optional[str] = None,
        user_id: Optional[str] = None,
        vat: Optional[int] = None,
    ) -> Order:
        instance = cls()
        if chargeback_reversed_time is not None:
            instance.chargeback_reversed_time = chargeback_reversed_time
        if chargeback_time is not None:
            instance.chargeback_time = chargeback_time
        if charged is not None:
            instance.charged = charged
        if charged_time is not None:
            instance.charged_time = charged_time
        if count_item_id is not None:
            instance.count_item_id = count_item_id
        if count_namespace is not None:
            instance.count_namespace = count_namespace
        if count_user_id is not None:
            instance.count_user_id = count_user_id
        if created_at is not None:
            instance.created_at = created_at
        if created_time is not None:
            instance.created_time = created_time
        if creation_options is not None:
            instance.creation_options = creation_options
        if currency is not None:
            instance.currency = currency
        if discounted_price is not None:
            instance.discounted_price = discounted_price
        if expire_time is not None:
            instance.expire_time = expire_time
        if ext is not None:
            instance.ext = ext
        if free is not None:
            instance.free = free
        if fulfilled_time is not None:
            instance.fulfilled_time = fulfilled_time
        if item_id is not None:
            instance.item_id = item_id
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if language is not None:
            instance.language = language
        if namespace is not None:
            instance.namespace = namespace
        if order_no is not None:
            instance.order_no = order_no
        if payment_method is not None:
            instance.payment_method = payment_method
        if payment_method_fee is not None:
            instance.payment_method_fee = payment_method_fee
        if payment_order_no is not None:
            instance.payment_order_no = payment_order_no
        if payment_provider is not None:
            instance.payment_provider = payment_provider
        if payment_provider_fee is not None:
            instance.payment_provider_fee = payment_provider_fee
        if payment_remain_seconds is not None:
            instance.payment_remain_seconds = payment_remain_seconds
        if payment_station_url is not None:
            instance.payment_station_url = payment_station_url
        if price is not None:
            instance.price = price
        if quantity is not None:
            instance.quantity = quantity
        if refunded_time is not None:
            instance.refunded_time = refunded_time
        if region is not None:
            instance.region = region
        if return_url is not None:
            instance.return_url = return_url
        if rvn is not None:
            instance.rvn = rvn
        if sales_tax is not None:
            instance.sales_tax = sales_tax
        if sandbox is not None:
            instance.sandbox = sandbox
        if status is not None:
            instance.status = status
        if status_reason is not None:
            instance.status_reason = status_reason
        if subtotal_price is not None:
            instance.subtotal_price = subtotal_price
        if tax is not None:
            instance.tax = tax
        if total_price is not None:
            instance.total_price = total_price
        if total_tax is not None:
            instance.total_tax = total_tax
        if updated_at is not None:
            instance.updated_at = updated_at
        if user_id is not None:
            instance.user_id = user_id
        if vat is not None:
            instance.vat = vat
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Order:
        instance = cls()
        if not dict_:
            return instance
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
        if "charged" in dict_ and dict_["charged"] is not None:
            instance.charged = bool(dict_["charged"])
        elif include_empty:
            instance.charged = False
        if "chargedTime" in dict_ and dict_["chargedTime"] is not None:
            instance.charged_time = str(dict_["chargedTime"])
        elif include_empty:
            instance.charged_time = ""
        if "countItemId" in dict_ and dict_["countItemId"] is not None:
            instance.count_item_id = str(dict_["countItemId"])
        elif include_empty:
            instance.count_item_id = ""
        if "countNamespace" in dict_ and dict_["countNamespace"] is not None:
            instance.count_namespace = str(dict_["countNamespace"])
        elif include_empty:
            instance.count_namespace = ""
        if "countUserId" in dict_ and dict_["countUserId"] is not None:
            instance.count_user_id = str(dict_["countUserId"])
        elif include_empty:
            instance.count_user_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = ""
        if "creationOptions" in dict_ and dict_["creationOptions"] is not None:
            instance.creation_options = (
                ADTOObjectForOrderCreationOptions.create_from_dict(
                    dict_["creationOptions"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.creation_options = ADTOObjectForOrderCreationOptions()
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = CurrencySummary()
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = 0
        if "expireTime" in dict_ and dict_["expireTime"] is not None:
            instance.expire_time = str(dict_["expireTime"])
        elif include_empty:
            instance.expire_time = ""
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        if "free" in dict_ and dict_["free"] is not None:
            instance.free = bool(dict_["free"])
        elif include_empty:
            instance.free = False
        if "fulfilledTime" in dict_ and dict_["fulfilledTime"] is not None:
            instance.fulfilled_time = str(dict_["fulfilledTime"])
        elif include_empty:
            instance.fulfilled_time = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(
                dict_["itemSnapshot"], include_empty=include_empty
            )
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = ""
        if "paymentMethod" in dict_ and dict_["paymentMethod"] is not None:
            instance.payment_method = str(dict_["paymentMethod"])
        elif include_empty:
            instance.payment_method = ""
        if "paymentMethodFee" in dict_ and dict_["paymentMethodFee"] is not None:
            instance.payment_method_fee = int(dict_["paymentMethodFee"])
        elif include_empty:
            instance.payment_method_fee = 0
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = ""
        if "paymentProvider" in dict_ and dict_["paymentProvider"] is not None:
            instance.payment_provider = str(dict_["paymentProvider"])
        elif include_empty:
            instance.payment_provider = Union[str, PaymentProviderEnum]()
        if "paymentProviderFee" in dict_ and dict_["paymentProviderFee"] is not None:
            instance.payment_provider_fee = int(dict_["paymentProviderFee"])
        elif include_empty:
            instance.payment_provider_fee = 0
        if (
            "paymentRemainSeconds" in dict_
            and dict_["paymentRemainSeconds"] is not None
        ):
            instance.payment_remain_seconds = int(dict_["paymentRemainSeconds"])
        elif include_empty:
            instance.payment_remain_seconds = 0
        if "paymentStationUrl" in dict_ and dict_["paymentStationUrl"] is not None:
            instance.payment_station_url = str(dict_["paymentStationUrl"])
        elif include_empty:
            instance.payment_station_url = ""
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
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
        if "rvn" in dict_ and dict_["rvn"] is not None:
            instance.rvn = int(dict_["rvn"])
        elif include_empty:
            instance.rvn = 0
        if "salesTax" in dict_ and dict_["salesTax"] is not None:
            instance.sales_tax = int(dict_["salesTax"])
        elif include_empty:
            instance.sales_tax = 0
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        if "subtotalPrice" in dict_ and dict_["subtotalPrice"] is not None:
            instance.subtotal_price = int(dict_["subtotalPrice"])
        elif include_empty:
            instance.subtotal_price = 0
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
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
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
    ) -> Dict[str, Order]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Order]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Order, List[Order], Dict[Any, Order]]:
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
            "chargebackReversedTime": "chargeback_reversed_time",
            "chargebackTime": "chargeback_time",
            "charged": "charged",
            "chargedTime": "charged_time",
            "countItemId": "count_item_id",
            "countNamespace": "count_namespace",
            "countUserId": "count_user_id",
            "createdAt": "created_at",
            "createdTime": "created_time",
            "creationOptions": "creation_options",
            "currency": "currency",
            "discountedPrice": "discounted_price",
            "expireTime": "expire_time",
            "ext": "ext",
            "free": "free",
            "fulfilledTime": "fulfilled_time",
            "itemId": "item_id",
            "itemSnapshot": "item_snapshot",
            "language": "language",
            "namespace": "namespace",
            "orderNo": "order_no",
            "paymentMethod": "payment_method",
            "paymentMethodFee": "payment_method_fee",
            "paymentOrderNo": "payment_order_no",
            "paymentProvider": "payment_provider",
            "paymentProviderFee": "payment_provider_fee",
            "paymentRemainSeconds": "payment_remain_seconds",
            "paymentStationUrl": "payment_station_url",
            "price": "price",
            "quantity": "quantity",
            "refundedTime": "refunded_time",
            "region": "region",
            "returnUrl": "return_url",
            "rvn": "rvn",
            "salesTax": "sales_tax",
            "sandbox": "sandbox",
            "status": "status",
            "statusReason": "status_reason",
            "subtotalPrice": "subtotal_price",
            "tax": "tax",
            "totalPrice": "total_price",
            "totalTax": "total_tax",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "vat": "vat",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "chargebackReversedTime": False,
            "chargebackTime": False,
            "charged": False,
            "chargedTime": False,
            "countItemId": False,
            "countNamespace": False,
            "countUserId": False,
            "createdAt": False,
            "createdTime": False,
            "creationOptions": False,
            "currency": False,
            "discountedPrice": False,
            "expireTime": False,
            "ext": False,
            "free": False,
            "fulfilledTime": False,
            "itemId": False,
            "itemSnapshot": False,
            "language": False,
            "namespace": False,
            "orderNo": False,
            "paymentMethod": False,
            "paymentMethodFee": False,
            "paymentOrderNo": False,
            "paymentProvider": False,
            "paymentProviderFee": False,
            "paymentRemainSeconds": False,
            "paymentStationUrl": False,
            "price": False,
            "quantity": False,
            "refundedTime": False,
            "region": False,
            "returnUrl": False,
            "rvn": False,
            "salesTax": False,
            "sandbox": False,
            "status": False,
            "statusReason": False,
            "subtotalPrice": False,
            "tax": False,
            "totalPrice": False,
            "totalTax": False,
            "updatedAt": False,
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
                "CHARGEBACK",
                "CHARGEBACK_REVERSED",
                "CHARGED",
                "CLOSED",
                "DELETED",
                "FULFILLED",
                "FULFILL_FAILED",
                "INIT",
                "REFUNDED",
                "REFUNDING",
                "REFUND_FAILED",
            ],
        }

    # endregion static methods
