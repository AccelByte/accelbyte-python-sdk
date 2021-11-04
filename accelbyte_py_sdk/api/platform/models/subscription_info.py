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

from ..models.billing_account import BillingAccount
from ..models.currency_summary import CurrencySummary
from ..models.entitlement_summary import EntitlementSummary
from ..models.item_snapshot import ItemSnapshot
from ..models.recurring import Recurring


class SubscriptionInfo(Model):
    """Subscription info (SubscriptionInfo)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        item_id: (itemId) REQUIRED str

        sku: (sku) OPTIONAL str

        title: (title) OPTIONAL str

        description: (description) OPTIONAL str

        currency: (currency) OPTIONAL CurrencySummary

        price: (price) OPTIONAL int

        trial_price: (trialPrice) OPTIONAL int

        recurring: (recurring) REQUIRED Recurring

        status: (status) REQUIRED str

        charge_status: (chargeStatus) REQUIRED str

        next_billing_date: (nextBillingDate) OPTIONAL str

        entitlements: (entitlements) OPTIONAL List[EntitlementSummary]

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        current_period_start: (currentPeriodStart) OPTIONAL str

        current_period_end: (currentPeriodEnd) OPTIONAL str

        start: (start) OPTIONAL str

        end: (end) OPTIONAL str

        current_cycle: (currentCycle) OPTIONAL int

        charged_cycles: (chargedCycles) OPTIONAL int

        trialed_cycles: (trialedCycles) OPTIONAL int

        in_fixed_free_days: (inFixedFreeDays) REQUIRED bool

        in_fixed_cycle_trial: (inFixedCycleTrial) REQUIRED bool

        first_subscribe: (firstSubscribe) OPTIONAL bool

        paid: (paid) OPTIONAL bool

        payment_flow_required: (paymentFlowRequired) REQUIRED bool

        payment_station_url: (paymentStationUrl) OPTIONAL str

        source: (source) OPTIONAL str

        subscribed_by: (subscribedBy) OPTIONAL str

        subscribed_at: (subscribedAt) OPTIONAL str

        unsubscribed_at: (unsubscribedAt) OPTIONAL str

        unsubscribe_reason: (unsubscribeReason) OPTIONAL str

        payment_order_no: (paymentOrderNo) OPTIONAL str

        billing_account: (billingAccount) OPTIONAL BillingAccount

        return_url: (returnUrl) OPTIONAL str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str

        sandbox: (sandbox) OPTIONAL bool

        retry_attempted: (retryAttempted) OPTIONAL int

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    item_id: str                                                                                   # REQUIRED
    sku: str                                                                                       # OPTIONAL
    title: str                                                                                     # OPTIONAL
    description: str                                                                               # OPTIONAL
    currency: CurrencySummary                                                                      # OPTIONAL
    price: int                                                                                     # OPTIONAL
    trial_price: int                                                                               # OPTIONAL
    recurring: Recurring                                                                           # REQUIRED
    status: str                                                                                    # REQUIRED
    charge_status: str                                                                             # REQUIRED
    next_billing_date: str                                                                         # OPTIONAL
    entitlements: List[EntitlementSummary]                                                         # OPTIONAL
    item_snapshot: ItemSnapshot                                                                    # OPTIONAL
    current_period_start: str                                                                      # OPTIONAL
    current_period_end: str                                                                        # OPTIONAL
    start: str                                                                                     # OPTIONAL
    end: str                                                                                       # OPTIONAL
    current_cycle: int                                                                             # OPTIONAL
    charged_cycles: int                                                                            # OPTIONAL
    trialed_cycles: int                                                                            # OPTIONAL
    in_fixed_free_days: bool                                                                       # REQUIRED
    in_fixed_cycle_trial: bool                                                                     # REQUIRED
    first_subscribe: bool                                                                          # OPTIONAL
    paid: bool                                                                                     # OPTIONAL
    payment_flow_required: bool                                                                    # REQUIRED
    payment_station_url: str                                                                       # OPTIONAL
    source: str                                                                                    # OPTIONAL
    subscribed_by: str                                                                             # OPTIONAL
    subscribed_at: str                                                                             # OPTIONAL
    unsubscribed_at: str                                                                           # OPTIONAL
    unsubscribe_reason: str                                                                        # OPTIONAL
    payment_order_no: str                                                                          # OPTIONAL
    billing_account: BillingAccount                                                                # OPTIONAL
    return_url: str                                                                                # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL
    sandbox: bool                                                                                  # OPTIONAL
    retry_attempted: int                                                                           # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> SubscriptionInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> SubscriptionInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> SubscriptionInfo:
        self.user_id = value
        return self

    def with_item_id(self, value: str) -> SubscriptionInfo:
        self.item_id = value
        return self

    def with_sku(self, value: str) -> SubscriptionInfo:
        self.sku = value
        return self

    def with_title(self, value: str) -> SubscriptionInfo:
        self.title = value
        return self

    def with_description(self, value: str) -> SubscriptionInfo:
        self.description = value
        return self

    def with_currency(self, value: CurrencySummary) -> SubscriptionInfo:
        self.currency = value
        return self

    def with_price(self, value: int) -> SubscriptionInfo:
        self.price = value
        return self

    def with_trial_price(self, value: int) -> SubscriptionInfo:
        self.trial_price = value
        return self

    def with_recurring(self, value: Recurring) -> SubscriptionInfo:
        self.recurring = value
        return self

    def with_status(self, value: str) -> SubscriptionInfo:
        self.status = value
        return self

    def with_charge_status(self, value: str) -> SubscriptionInfo:
        self.charge_status = value
        return self

    def with_next_billing_date(self, value: str) -> SubscriptionInfo:
        self.next_billing_date = value
        return self

    def with_entitlements(self, value: List[EntitlementSummary]) -> SubscriptionInfo:
        self.entitlements = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> SubscriptionInfo:
        self.item_snapshot = value
        return self

    def with_current_period_start(self, value: str) -> SubscriptionInfo:
        self.current_period_start = value
        return self

    def with_current_period_end(self, value: str) -> SubscriptionInfo:
        self.current_period_end = value
        return self

    def with_start(self, value: str) -> SubscriptionInfo:
        self.start = value
        return self

    def with_end(self, value: str) -> SubscriptionInfo:
        self.end = value
        return self

    def with_current_cycle(self, value: int) -> SubscriptionInfo:
        self.current_cycle = value
        return self

    def with_charged_cycles(self, value: int) -> SubscriptionInfo:
        self.charged_cycles = value
        return self

    def with_trialed_cycles(self, value: int) -> SubscriptionInfo:
        self.trialed_cycles = value
        return self

    def with_in_fixed_free_days(self, value: bool) -> SubscriptionInfo:
        self.in_fixed_free_days = value
        return self

    def with_in_fixed_cycle_trial(self, value: bool) -> SubscriptionInfo:
        self.in_fixed_cycle_trial = value
        return self

    def with_first_subscribe(self, value: bool) -> SubscriptionInfo:
        self.first_subscribe = value
        return self

    def with_paid(self, value: bool) -> SubscriptionInfo:
        self.paid = value
        return self

    def with_payment_flow_required(self, value: bool) -> SubscriptionInfo:
        self.payment_flow_required = value
        return self

    def with_payment_station_url(self, value: str) -> SubscriptionInfo:
        self.payment_station_url = value
        return self

    def with_source(self, value: str) -> SubscriptionInfo:
        self.source = value
        return self

    def with_subscribed_by(self, value: str) -> SubscriptionInfo:
        self.subscribed_by = value
        return self

    def with_subscribed_at(self, value: str) -> SubscriptionInfo:
        self.subscribed_at = value
        return self

    def with_unsubscribed_at(self, value: str) -> SubscriptionInfo:
        self.unsubscribed_at = value
        return self

    def with_unsubscribe_reason(self, value: str) -> SubscriptionInfo:
        self.unsubscribe_reason = value
        return self

    def with_payment_order_no(self, value: str) -> SubscriptionInfo:
        self.payment_order_no = value
        return self

    def with_billing_account(self, value: BillingAccount) -> SubscriptionInfo:
        self.billing_account = value
        return self

    def with_return_url(self, value: str) -> SubscriptionInfo:
        self.return_url = value
        return self

    def with_region(self, value: str) -> SubscriptionInfo:
        self.region = value
        return self

    def with_language(self, value: str) -> SubscriptionInfo:
        self.language = value
        return self

    def with_sandbox(self, value: bool) -> SubscriptionInfo:
        self.sandbox = value
        return self

    def with_retry_attempted(self, value: int) -> SubscriptionInfo:
        self.retry_attempted = value
        return self

    def with_created_at(self, value: str) -> SubscriptionInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> SubscriptionInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = int()
        if hasattr(self, "trial_price"):
            result["trialPrice"] = int(self.trial_price)
        elif include_empty:
            result["trialPrice"] = int()
        if hasattr(self, "recurring"):
            result["recurring"] = self.recurring.to_dict(include_empty=include_empty)
        elif include_empty:
            result["recurring"] = Recurring()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "charge_status"):
            result["chargeStatus"] = str(self.charge_status)
        elif include_empty:
            result["chargeStatus"] = str()
        if hasattr(self, "next_billing_date"):
            result["nextBillingDate"] = str(self.next_billing_date)
        elif include_empty:
            result["nextBillingDate"] = str()
        if hasattr(self, "entitlements"):
            result["entitlements"] = [i0.to_dict(include_empty=include_empty) for i0 in self.entitlements]
        elif include_empty:
            result["entitlements"] = []
        if hasattr(self, "item_snapshot"):
            result["itemSnapshot"] = self.item_snapshot.to_dict(include_empty=include_empty)
        elif include_empty:
            result["itemSnapshot"] = ItemSnapshot()
        if hasattr(self, "current_period_start"):
            result["currentPeriodStart"] = str(self.current_period_start)
        elif include_empty:
            result["currentPeriodStart"] = str()
        if hasattr(self, "current_period_end"):
            result["currentPeriodEnd"] = str(self.current_period_end)
        elif include_empty:
            result["currentPeriodEnd"] = str()
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = str()
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = str()
        if hasattr(self, "current_cycle"):
            result["currentCycle"] = int(self.current_cycle)
        elif include_empty:
            result["currentCycle"] = int()
        if hasattr(self, "charged_cycles"):
            result["chargedCycles"] = int(self.charged_cycles)
        elif include_empty:
            result["chargedCycles"] = int()
        if hasattr(self, "trialed_cycles"):
            result["trialedCycles"] = int(self.trialed_cycles)
        elif include_empty:
            result["trialedCycles"] = int()
        if hasattr(self, "in_fixed_free_days"):
            result["inFixedFreeDays"] = bool(self.in_fixed_free_days)
        elif include_empty:
            result["inFixedFreeDays"] = bool()
        if hasattr(self, "in_fixed_cycle_trial"):
            result["inFixedCycleTrial"] = bool(self.in_fixed_cycle_trial)
        elif include_empty:
            result["inFixedCycleTrial"] = bool()
        if hasattr(self, "first_subscribe"):
            result["firstSubscribe"] = bool(self.first_subscribe)
        elif include_empty:
            result["firstSubscribe"] = bool()
        if hasattr(self, "paid"):
            result["paid"] = bool(self.paid)
        elif include_empty:
            result["paid"] = bool()
        if hasattr(self, "payment_flow_required"):
            result["paymentFlowRequired"] = bool(self.payment_flow_required)
        elif include_empty:
            result["paymentFlowRequired"] = bool()
        if hasattr(self, "payment_station_url"):
            result["paymentStationUrl"] = str(self.payment_station_url)
        elif include_empty:
            result["paymentStationUrl"] = str()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        if hasattr(self, "subscribed_by"):
            result["subscribedBy"] = str(self.subscribed_by)
        elif include_empty:
            result["subscribedBy"] = str()
        if hasattr(self, "subscribed_at"):
            result["subscribedAt"] = str(self.subscribed_at)
        elif include_empty:
            result["subscribedAt"] = str()
        if hasattr(self, "unsubscribed_at"):
            result["unsubscribedAt"] = str(self.unsubscribed_at)
        elif include_empty:
            result["unsubscribedAt"] = str()
        if hasattr(self, "unsubscribe_reason"):
            result["unsubscribeReason"] = str(self.unsubscribe_reason)
        elif include_empty:
            result["unsubscribeReason"] = str()
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        if hasattr(self, "billing_account"):
            result["billingAccount"] = self.billing_account.to_dict(include_empty=include_empty)
        elif include_empty:
            result["billingAccount"] = BillingAccount()
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "retry_attempted"):
            result["retryAttempted"] = int(self.retry_attempted)
        elif include_empty:
            result["retryAttempted"] = int()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        user_id: str,
        item_id: str,
        recurring: Recurring,
        status: str,
        charge_status: str,
        in_fixed_free_days: bool,
        in_fixed_cycle_trial: bool,
        payment_flow_required: bool,
        created_at: str,
        updated_at: str,
        sku: Optional[str] = None,
        title: Optional[str] = None,
        description: Optional[str] = None,
        currency: Optional[CurrencySummary] = None,
        price: Optional[int] = None,
        trial_price: Optional[int] = None,
        next_billing_date: Optional[str] = None,
        entitlements: Optional[List[EntitlementSummary]] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        current_period_start: Optional[str] = None,
        current_period_end: Optional[str] = None,
        start: Optional[str] = None,
        end: Optional[str] = None,
        current_cycle: Optional[int] = None,
        charged_cycles: Optional[int] = None,
        trialed_cycles: Optional[int] = None,
        first_subscribe: Optional[bool] = None,
        paid: Optional[bool] = None,
        payment_station_url: Optional[str] = None,
        source: Optional[str] = None,
        subscribed_by: Optional[str] = None,
        subscribed_at: Optional[str] = None,
        unsubscribed_at: Optional[str] = None,
        unsubscribe_reason: Optional[str] = None,
        payment_order_no: Optional[str] = None,
        billing_account: Optional[BillingAccount] = None,
        return_url: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
        sandbox: Optional[bool] = None,
        retry_attempted: Optional[int] = None,
    ) -> SubscriptionInfo:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.user_id = user_id
        instance.item_id = item_id
        instance.recurring = recurring
        instance.status = status
        instance.charge_status = charge_status
        instance.in_fixed_free_days = in_fixed_free_days
        instance.in_fixed_cycle_trial = in_fixed_cycle_trial
        instance.payment_flow_required = payment_flow_required
        instance.created_at = created_at
        instance.updated_at = updated_at
        if sku is not None:
            instance.sku = sku
        if title is not None:
            instance.title = title
        if description is not None:
            instance.description = description
        if currency is not None:
            instance.currency = currency
        if price is not None:
            instance.price = price
        if trial_price is not None:
            instance.trial_price = trial_price
        if next_billing_date is not None:
            instance.next_billing_date = next_billing_date
        if entitlements is not None:
            instance.entitlements = entitlements
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if current_period_start is not None:
            instance.current_period_start = current_period_start
        if current_period_end is not None:
            instance.current_period_end = current_period_end
        if start is not None:
            instance.start = start
        if end is not None:
            instance.end = end
        if current_cycle is not None:
            instance.current_cycle = current_cycle
        if charged_cycles is not None:
            instance.charged_cycles = charged_cycles
        if trialed_cycles is not None:
            instance.trialed_cycles = trialed_cycles
        if first_subscribe is not None:
            instance.first_subscribe = first_subscribe
        if paid is not None:
            instance.paid = paid
        if payment_station_url is not None:
            instance.payment_station_url = payment_station_url
        if source is not None:
            instance.source = source
        if subscribed_by is not None:
            instance.subscribed_by = subscribed_by
        if subscribed_at is not None:
            instance.subscribed_at = subscribed_at
        if unsubscribed_at is not None:
            instance.unsubscribed_at = unsubscribed_at
        if unsubscribe_reason is not None:
            instance.unsubscribe_reason = unsubscribe_reason
        if payment_order_no is not None:
            instance.payment_order_no = payment_order_no
        if billing_account is not None:
            instance.billing_account = billing_account
        if return_url is not None:
            instance.return_url = return_url
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        if sandbox is not None:
            instance.sandbox = sandbox
        if retry_attempted is not None:
            instance.retry_attempted = retry_attempted
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SubscriptionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
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
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(dict_["currency"], include_empty=include_empty)
        elif include_empty:
            instance.currency = CurrencySummary()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = int()
        if "trialPrice" in dict_ and dict_["trialPrice"] is not None:
            instance.trial_price = int(dict_["trialPrice"])
        elif include_empty:
            instance.trial_price = int()
        if "recurring" in dict_ and dict_["recurring"] is not None:
            instance.recurring = Recurring.create_from_dict(dict_["recurring"], include_empty=include_empty)
        elif include_empty:
            instance.recurring = Recurring()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "chargeStatus" in dict_ and dict_["chargeStatus"] is not None:
            instance.charge_status = str(dict_["chargeStatus"])
        elif include_empty:
            instance.charge_status = str()
        if "nextBillingDate" in dict_ and dict_["nextBillingDate"] is not None:
            instance.next_billing_date = str(dict_["nextBillingDate"])
        elif include_empty:
            instance.next_billing_date = str()
        if "entitlements" in dict_ and dict_["entitlements"] is not None:
            instance.entitlements = [EntitlementSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["entitlements"]]
        elif include_empty:
            instance.entitlements = []
        if "itemSnapshot" in dict_ and dict_["itemSnapshot"] is not None:
            instance.item_snapshot = ItemSnapshot.create_from_dict(dict_["itemSnapshot"], include_empty=include_empty)
        elif include_empty:
            instance.item_snapshot = ItemSnapshot()
        if "currentPeriodStart" in dict_ and dict_["currentPeriodStart"] is not None:
            instance.current_period_start = str(dict_["currentPeriodStart"])
        elif include_empty:
            instance.current_period_start = str()
        if "currentPeriodEnd" in dict_ and dict_["currentPeriodEnd"] is not None:
            instance.current_period_end = str(dict_["currentPeriodEnd"])
        elif include_empty:
            instance.current_period_end = str()
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = str()
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = str()
        if "currentCycle" in dict_ and dict_["currentCycle"] is not None:
            instance.current_cycle = int(dict_["currentCycle"])
        elif include_empty:
            instance.current_cycle = int()
        if "chargedCycles" in dict_ and dict_["chargedCycles"] is not None:
            instance.charged_cycles = int(dict_["chargedCycles"])
        elif include_empty:
            instance.charged_cycles = int()
        if "trialedCycles" in dict_ and dict_["trialedCycles"] is not None:
            instance.trialed_cycles = int(dict_["trialedCycles"])
        elif include_empty:
            instance.trialed_cycles = int()
        if "inFixedFreeDays" in dict_ and dict_["inFixedFreeDays"] is not None:
            instance.in_fixed_free_days = bool(dict_["inFixedFreeDays"])
        elif include_empty:
            instance.in_fixed_free_days = bool()
        if "inFixedCycleTrial" in dict_ and dict_["inFixedCycleTrial"] is not None:
            instance.in_fixed_cycle_trial = bool(dict_["inFixedCycleTrial"])
        elif include_empty:
            instance.in_fixed_cycle_trial = bool()
        if "firstSubscribe" in dict_ and dict_["firstSubscribe"] is not None:
            instance.first_subscribe = bool(dict_["firstSubscribe"])
        elif include_empty:
            instance.first_subscribe = bool()
        if "paid" in dict_ and dict_["paid"] is not None:
            instance.paid = bool(dict_["paid"])
        elif include_empty:
            instance.paid = bool()
        if "paymentFlowRequired" in dict_ and dict_["paymentFlowRequired"] is not None:
            instance.payment_flow_required = bool(dict_["paymentFlowRequired"])
        elif include_empty:
            instance.payment_flow_required = bool()
        if "paymentStationUrl" in dict_ and dict_["paymentStationUrl"] is not None:
            instance.payment_station_url = str(dict_["paymentStationUrl"])
        elif include_empty:
            instance.payment_station_url = str()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "subscribedBy" in dict_ and dict_["subscribedBy"] is not None:
            instance.subscribed_by = str(dict_["subscribedBy"])
        elif include_empty:
            instance.subscribed_by = str()
        if "subscribedAt" in dict_ and dict_["subscribedAt"] is not None:
            instance.subscribed_at = str(dict_["subscribedAt"])
        elif include_empty:
            instance.subscribed_at = str()
        if "unsubscribedAt" in dict_ and dict_["unsubscribedAt"] is not None:
            instance.unsubscribed_at = str(dict_["unsubscribedAt"])
        elif include_empty:
            instance.unsubscribed_at = str()
        if "unsubscribeReason" in dict_ and dict_["unsubscribeReason"] is not None:
            instance.unsubscribe_reason = str(dict_["unsubscribeReason"])
        elif include_empty:
            instance.unsubscribe_reason = str()
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        if "billingAccount" in dict_ and dict_["billingAccount"] is not None:
            instance.billing_account = BillingAccount.create_from_dict(dict_["billingAccount"], include_empty=include_empty)
        elif include_empty:
            instance.billing_account = BillingAccount()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "retryAttempted" in dict_ and dict_["retryAttempted"] is not None:
            instance.retry_attempted = int(dict_["retryAttempted"])
        elif include_empty:
            instance.retry_attempted = int()
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
            "id": "id_",
            "namespace": "namespace",
            "userId": "user_id",
            "itemId": "item_id",
            "sku": "sku",
            "title": "title",
            "description": "description",
            "currency": "currency",
            "price": "price",
            "trialPrice": "trial_price",
            "recurring": "recurring",
            "status": "status",
            "chargeStatus": "charge_status",
            "nextBillingDate": "next_billing_date",
            "entitlements": "entitlements",
            "itemSnapshot": "item_snapshot",
            "currentPeriodStart": "current_period_start",
            "currentPeriodEnd": "current_period_end",
            "start": "start",
            "end": "end",
            "currentCycle": "current_cycle",
            "chargedCycles": "charged_cycles",
            "trialedCycles": "trialed_cycles",
            "inFixedFreeDays": "in_fixed_free_days",
            "inFixedCycleTrial": "in_fixed_cycle_trial",
            "firstSubscribe": "first_subscribe",
            "paid": "paid",
            "paymentFlowRequired": "payment_flow_required",
            "paymentStationUrl": "payment_station_url",
            "source": "source",
            "subscribedBy": "subscribed_by",
            "subscribedAt": "subscribed_at",
            "unsubscribedAt": "unsubscribed_at",
            "unsubscribeReason": "unsubscribe_reason",
            "paymentOrderNo": "payment_order_no",
            "billingAccount": "billing_account",
            "returnUrl": "return_url",
            "region": "region",
            "language": "language",
            "sandbox": "sandbox",
            "retryAttempted": "retry_attempted",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
