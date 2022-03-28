# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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

from ..models.billing_account import BillingAccount
from ..models.currency_summary import CurrencySummary


class BillingHistoryInfo(Model):
    """Billing history info (BillingHistoryInfo)

    Properties:
        amount: (amount) REQUIRED int

        created_at: (createdAt) REQUIRED str

        currency: (currency) REQUIRED CurrencySummary

        item_id: (itemId) REQUIRED str

        namespace: (namespace) REQUIRED str

        payment_order_no: (paymentOrderNo) REQUIRED str

        recurring_order_no: (recurringOrderNo) REQUIRED str

        sandbox: (sandbox) REQUIRED bool

        status: (status) REQUIRED str

        subscription_id: (subscriptionId) REQUIRED str

        title: (title) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        billing_account: (billingAccount) OPTIONAL BillingAccount

        change_billing_account: (changeBillingAccount) OPTIONAL bool

        description: (description) OPTIONAL str

        ext_tx_id: (extTxId) OPTIONAL str

        retry_attempted: (retryAttempted) OPTIONAL int

        sku: (sku) OPTIONAL str

        status_reason: (statusReason) OPTIONAL str

        subtotal_price: (subtotalPrice) OPTIONAL int

        total_price: (totalPrice) OPTIONAL int

        total_tax: (totalTax) OPTIONAL int

        tx_end_time: (txEndTime) OPTIONAL str
    """

    # region fields

    amount: int                                                                                    # REQUIRED
    created_at: str                                                                                # REQUIRED
    currency: CurrencySummary                                                                      # REQUIRED
    item_id: str                                                                                   # REQUIRED
    namespace: str                                                                                 # REQUIRED
    payment_order_no: str                                                                          # REQUIRED
    recurring_order_no: str                                                                        # REQUIRED
    sandbox: bool                                                                                  # REQUIRED
    status: str                                                                                    # REQUIRED
    subscription_id: str                                                                           # REQUIRED
    title: str                                                                                     # REQUIRED
    updated_at: str                                                                                # REQUIRED
    user_id: str                                                                                   # REQUIRED
    billing_account: BillingAccount                                                                # OPTIONAL
    change_billing_account: bool                                                                   # OPTIONAL
    description: str                                                                               # OPTIONAL
    ext_tx_id: str                                                                                 # OPTIONAL
    retry_attempted: int                                                                           # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    status_reason: str                                                                             # OPTIONAL
    subtotal_price: int                                                                            # OPTIONAL
    total_price: int                                                                               # OPTIONAL
    total_tax: int                                                                                 # OPTIONAL
    tx_end_time: str                                                                               # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> BillingHistoryInfo:
        self.amount = value
        return self

    def with_created_at(self, value: str) -> BillingHistoryInfo:
        self.created_at = value
        return self

    def with_currency(self, value: CurrencySummary) -> BillingHistoryInfo:
        self.currency = value
        return self

    def with_item_id(self, value: str) -> BillingHistoryInfo:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> BillingHistoryInfo:
        self.namespace = value
        return self

    def with_payment_order_no(self, value: str) -> BillingHistoryInfo:
        self.payment_order_no = value
        return self

    def with_recurring_order_no(self, value: str) -> BillingHistoryInfo:
        self.recurring_order_no = value
        return self

    def with_sandbox(self, value: bool) -> BillingHistoryInfo:
        self.sandbox = value
        return self

    def with_status(self, value: str) -> BillingHistoryInfo:
        self.status = value
        return self

    def with_subscription_id(self, value: str) -> BillingHistoryInfo:
        self.subscription_id = value
        return self

    def with_title(self, value: str) -> BillingHistoryInfo:
        self.title = value
        return self

    def with_updated_at(self, value: str) -> BillingHistoryInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> BillingHistoryInfo:
        self.user_id = value
        return self

    def with_billing_account(self, value: BillingAccount) -> BillingHistoryInfo:
        self.billing_account = value
        return self

    def with_change_billing_account(self, value: bool) -> BillingHistoryInfo:
        self.change_billing_account = value
        return self

    def with_description(self, value: str) -> BillingHistoryInfo:
        self.description = value
        return self

    def with_ext_tx_id(self, value: str) -> BillingHistoryInfo:
        self.ext_tx_id = value
        return self

    def with_retry_attempted(self, value: int) -> BillingHistoryInfo:
        self.retry_attempted = value
        return self

    def with_sku(self, value: str) -> BillingHistoryInfo:
        self.sku = value
        return self

    def with_status_reason(self, value: str) -> BillingHistoryInfo:
        self.status_reason = value
        return self

    def with_subtotal_price(self, value: int) -> BillingHistoryInfo:
        self.subtotal_price = value
        return self

    def with_total_price(self, value: int) -> BillingHistoryInfo:
        self.total_price = value
        return self

    def with_total_tax(self, value: int) -> BillingHistoryInfo:
        self.total_tax = value
        return self

    def with_tx_end_time(self, value: str) -> BillingHistoryInfo:
        self.tx_end_time = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "amount") or self.amount is None:
            return False
        if not hasattr(self, "created_at") or self.created_at is None:
            return False
        if not hasattr(self, "currency") or self.currency is None:
            return False
        if not hasattr(self, "item_id") or self.item_id is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "payment_order_no") or self.payment_order_no is None:
            return False
        if not hasattr(self, "recurring_order_no") or self.recurring_order_no is None:
            return False
        if not hasattr(self, "sandbox") or self.sandbox is None:
            return False
        if not hasattr(self, "status") or self.status is None:
            return False
        if not hasattr(self, "subscription_id") or self.subscription_id is None:
            return False
        if not hasattr(self, "title") or self.title is None:
            return False
        if not hasattr(self, "updated_at") or self.updated_at is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        if hasattr(self, "recurring_order_no"):
            result["recurringOrderNo"] = str(self.recurring_order_no)
        elif include_empty:
            result["recurringOrderNo"] = str()
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = str()
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "billing_account"):
            result["billingAccount"] = self.billing_account.to_dict(include_empty=include_empty)
        elif include_empty:
            result["billingAccount"] = BillingAccount()
        if hasattr(self, "change_billing_account"):
            result["changeBillingAccount"] = bool(self.change_billing_account)
        elif include_empty:
            result["changeBillingAccount"] = bool()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "ext_tx_id"):
            result["extTxId"] = str(self.ext_tx_id)
        elif include_empty:
            result["extTxId"] = str()
        if hasattr(self, "retry_attempted"):
            result["retryAttempted"] = int(self.retry_attempted)
        elif include_empty:
            result["retryAttempted"] = int()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = str()
        if hasattr(self, "subtotal_price"):
            result["subtotalPrice"] = int(self.subtotal_price)
        elif include_empty:
            result["subtotalPrice"] = int()
        if hasattr(self, "total_price"):
            result["totalPrice"] = int(self.total_price)
        elif include_empty:
            result["totalPrice"] = int()
        if hasattr(self, "total_tax"):
            result["totalTax"] = int(self.total_tax)
        elif include_empty:
            result["totalTax"] = int()
        if hasattr(self, "tx_end_time"):
            result["txEndTime"] = str(self.tx_end_time)
        elif include_empty:
            result["txEndTime"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount: int,
        created_at: str,
        currency: CurrencySummary,
        item_id: str,
        namespace: str,
        payment_order_no: str,
        recurring_order_no: str,
        sandbox: bool,
        status: str,
        subscription_id: str,
        title: str,
        updated_at: str,
        user_id: str,
        billing_account: Optional[BillingAccount] = None,
        change_billing_account: Optional[bool] = None,
        description: Optional[str] = None,
        ext_tx_id: Optional[str] = None,
        retry_attempted: Optional[int] = None,
        sku: Optional[str] = None,
        status_reason: Optional[str] = None,
        subtotal_price: Optional[int] = None,
        total_price: Optional[int] = None,
        total_tax: Optional[int] = None,
        tx_end_time: Optional[str] = None,
    ) -> BillingHistoryInfo:
        instance = cls()
        instance.amount = amount
        instance.created_at = created_at
        instance.currency = currency
        instance.item_id = item_id
        instance.namespace = namespace
        instance.payment_order_no = payment_order_no
        instance.recurring_order_no = recurring_order_no
        instance.sandbox = sandbox
        instance.status = status
        instance.subscription_id = subscription_id
        instance.title = title
        instance.updated_at = updated_at
        instance.user_id = user_id
        if billing_account is not None:
            instance.billing_account = billing_account
        if change_billing_account is not None:
            instance.change_billing_account = change_billing_account
        if description is not None:
            instance.description = description
        if ext_tx_id is not None:
            instance.ext_tx_id = ext_tx_id
        if retry_attempted is not None:
            instance.retry_attempted = retry_attempted
        if sku is not None:
            instance.sku = sku
        if status_reason is not None:
            instance.status_reason = status_reason
        if subtotal_price is not None:
            instance.subtotal_price = subtotal_price
        if total_price is not None:
            instance.total_price = total_price
        if total_tax is not None:
            instance.total_tax = total_tax
        if tx_end_time is not None:
            instance.tx_end_time = tx_end_time
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> BillingHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(dict_["currency"], include_empty=include_empty)
        elif include_empty:
            instance.currency = CurrencySummary()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        if "recurringOrderNo" in dict_ and dict_["recurringOrderNo"] is not None:
            instance.recurring_order_no = str(dict_["recurringOrderNo"])
        elif include_empty:
            instance.recurring_order_no = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = str()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "billingAccount" in dict_ and dict_["billingAccount"] is not None:
            instance.billing_account = BillingAccount.create_from_dict(dict_["billingAccount"], include_empty=include_empty)
        elif include_empty:
            instance.billing_account = BillingAccount()
        if "changeBillingAccount" in dict_ and dict_["changeBillingAccount"] is not None:
            instance.change_billing_account = bool(dict_["changeBillingAccount"])
        elif include_empty:
            instance.change_billing_account = bool()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "extTxId" in dict_ and dict_["extTxId"] is not None:
            instance.ext_tx_id = str(dict_["extTxId"])
        elif include_empty:
            instance.ext_tx_id = str()
        if "retryAttempted" in dict_ and dict_["retryAttempted"] is not None:
            instance.retry_attempted = int(dict_["retryAttempted"])
        elif include_empty:
            instance.retry_attempted = int()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = str()
        if "subtotalPrice" in dict_ and dict_["subtotalPrice"] is not None:
            instance.subtotal_price = int(dict_["subtotalPrice"])
        elif include_empty:
            instance.subtotal_price = int()
        if "totalPrice" in dict_ and dict_["totalPrice"] is not None:
            instance.total_price = int(dict_["totalPrice"])
        elif include_empty:
            instance.total_price = int()
        if "totalTax" in dict_ and dict_["totalTax"] is not None:
            instance.total_tax = int(dict_["totalTax"])
        elif include_empty:
            instance.total_tax = int()
        if "txEndTime" in dict_ and dict_["txEndTime"] is not None:
            instance.tx_end_time = str(dict_["txEndTime"])
        elif include_empty:
            instance.tx_end_time = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, BillingHistoryInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[BillingHistoryInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[BillingHistoryInfo, List[BillingHistoryInfo]]:
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
            "amount": "amount",
            "createdAt": "created_at",
            "currency": "currency",
            "itemId": "item_id",
            "namespace": "namespace",
            "paymentOrderNo": "payment_order_no",
            "recurringOrderNo": "recurring_order_no",
            "sandbox": "sandbox",
            "status": "status",
            "subscriptionId": "subscription_id",
            "title": "title",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "billingAccount": "billing_account",
            "changeBillingAccount": "change_billing_account",
            "description": "description",
            "extTxId": "ext_tx_id",
            "retryAttempted": "retry_attempted",
            "sku": "sku",
            "statusReason": "status_reason",
            "subtotalPrice": "subtotal_price",
            "totalPrice": "total_price",
            "totalTax": "total_tax",
            "txEndTime": "tx_end_time",
        }

    # endregion static methods
