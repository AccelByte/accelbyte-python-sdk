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

from ..models.billing_account import BillingAccount
from ..models.currency_summary import CurrencySummary
from ..models.entitlement_summary import EntitlementSummary
from ..models.item_snapshot import ItemSnapshot
from ..models.recurring import Recurring


class ChargeStatusEnum(StrEnum):
    CHARGED = "CHARGED"
    CHARGE_FAILED = "CHARGE_FAILED"
    NEVER = "NEVER"
    RECURRING_CHARGING = "RECURRING_CHARGING"
    SETUP = "SETUP"


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    CANCELLED = "CANCELLED"
    EXPIRED = "EXPIRED"
    INIT = "INIT"


class SubscribedByEnum(StrEnum):
    PLATFORM = "PLATFORM"
    USER = "USER"


class SubscriptionInfo(Model):
    """Subscription info (SubscriptionInfo)

    Properties:
        charge_status: (chargeStatus) REQUIRED Union[str, ChargeStatusEnum]

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        in_fixed_cycle_trial: (inFixedCycleTrial) REQUIRED bool

        in_fixed_free_days: (inFixedFreeDays) REQUIRED bool

        item_id: (itemId) REQUIRED str

        namespace: (namespace) REQUIRED str

        payment_flow_required: (paymentFlowRequired) REQUIRED bool

        recurring: (recurring) REQUIRED Recurring

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        billing_account: (billingAccount) OPTIONAL BillingAccount

        charged_cycles: (chargedCycles) OPTIONAL int

        currency: (currency) OPTIONAL CurrencySummary

        current_cycle: (currentCycle) OPTIONAL int

        current_period_end: (currentPeriodEnd) OPTIONAL str

        current_period_start: (currentPeriodStart) OPTIONAL str

        description: (description) OPTIONAL str

        end: (end) OPTIONAL str

        entitlements: (entitlements) OPTIONAL List[EntitlementSummary]

        first_subscribe: (firstSubscribe) OPTIONAL bool

        item_snapshot: (itemSnapshot) OPTIONAL ItemSnapshot

        language: (language) OPTIONAL str

        next_billing_date: (nextBillingDate) OPTIONAL str

        paid: (paid) OPTIONAL bool

        payment_order_no: (paymentOrderNo) OPTIONAL str

        payment_station_url: (paymentStationUrl) OPTIONAL str

        price: (price) OPTIONAL int

        region: (region) OPTIONAL str

        retry_attempted: (retryAttempted) OPTIONAL int

        return_url: (returnUrl) OPTIONAL str

        sandbox: (sandbox) OPTIONAL bool

        sku: (sku) OPTIONAL str

        source: (source) OPTIONAL str

        start: (start) OPTIONAL str

        subscribed_at: (subscribedAt) OPTIONAL str

        subscribed_by: (subscribedBy) OPTIONAL Union[str, SubscribedByEnum]

        title: (title) OPTIONAL str

        trial_price: (trialPrice) OPTIONAL int

        trialed_cycles: (trialedCycles) OPTIONAL int

        unsubscribe_reason: (unsubscribeReason) OPTIONAL str

        unsubscribed_at: (unsubscribedAt) OPTIONAL str
    """

    # region fields

    charge_status: Union[str, ChargeStatusEnum]  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    in_fixed_cycle_trial: bool  # REQUIRED
    in_fixed_free_days: bool  # REQUIRED
    item_id: str  # REQUIRED
    namespace: str  # REQUIRED
    payment_flow_required: bool  # REQUIRED
    recurring: Recurring  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    billing_account: BillingAccount  # OPTIONAL
    charged_cycles: int  # OPTIONAL
    currency: CurrencySummary  # OPTIONAL
    current_cycle: int  # OPTIONAL
    current_period_end: str  # OPTIONAL
    current_period_start: str  # OPTIONAL
    description: str  # OPTIONAL
    end: str  # OPTIONAL
    entitlements: List[EntitlementSummary]  # OPTIONAL
    first_subscribe: bool  # OPTIONAL
    item_snapshot: ItemSnapshot  # OPTIONAL
    language: str  # OPTIONAL
    next_billing_date: str  # OPTIONAL
    paid: bool  # OPTIONAL
    payment_order_no: str  # OPTIONAL
    payment_station_url: str  # OPTIONAL
    price: int  # OPTIONAL
    region: str  # OPTIONAL
    retry_attempted: int  # OPTIONAL
    return_url: str  # OPTIONAL
    sandbox: bool  # OPTIONAL
    sku: str  # OPTIONAL
    source: str  # OPTIONAL
    start: str  # OPTIONAL
    subscribed_at: str  # OPTIONAL
    subscribed_by: Union[str, SubscribedByEnum]  # OPTIONAL
    title: str  # OPTIONAL
    trial_price: int  # OPTIONAL
    trialed_cycles: int  # OPTIONAL
    unsubscribe_reason: str  # OPTIONAL
    unsubscribed_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_charge_status(
        self, value: Union[str, ChargeStatusEnum]
    ) -> SubscriptionInfo:
        self.charge_status = value
        return self

    def with_created_at(self, value: str) -> SubscriptionInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> SubscriptionInfo:
        self.id_ = value
        return self

    def with_in_fixed_cycle_trial(self, value: bool) -> SubscriptionInfo:
        self.in_fixed_cycle_trial = value
        return self

    def with_in_fixed_free_days(self, value: bool) -> SubscriptionInfo:
        self.in_fixed_free_days = value
        return self

    def with_item_id(self, value: str) -> SubscriptionInfo:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> SubscriptionInfo:
        self.namespace = value
        return self

    def with_payment_flow_required(self, value: bool) -> SubscriptionInfo:
        self.payment_flow_required = value
        return self

    def with_recurring(self, value: Recurring) -> SubscriptionInfo:
        self.recurring = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> SubscriptionInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> SubscriptionInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> SubscriptionInfo:
        self.user_id = value
        return self

    def with_billing_account(self, value: BillingAccount) -> SubscriptionInfo:
        self.billing_account = value
        return self

    def with_charged_cycles(self, value: int) -> SubscriptionInfo:
        self.charged_cycles = value
        return self

    def with_currency(self, value: CurrencySummary) -> SubscriptionInfo:
        self.currency = value
        return self

    def with_current_cycle(self, value: int) -> SubscriptionInfo:
        self.current_cycle = value
        return self

    def with_current_period_end(self, value: str) -> SubscriptionInfo:
        self.current_period_end = value
        return self

    def with_current_period_start(self, value: str) -> SubscriptionInfo:
        self.current_period_start = value
        return self

    def with_description(self, value: str) -> SubscriptionInfo:
        self.description = value
        return self

    def with_end(self, value: str) -> SubscriptionInfo:
        self.end = value
        return self

    def with_entitlements(self, value: List[EntitlementSummary]) -> SubscriptionInfo:
        self.entitlements = value
        return self

    def with_first_subscribe(self, value: bool) -> SubscriptionInfo:
        self.first_subscribe = value
        return self

    def with_item_snapshot(self, value: ItemSnapshot) -> SubscriptionInfo:
        self.item_snapshot = value
        return self

    def with_language(self, value: str) -> SubscriptionInfo:
        self.language = value
        return self

    def with_next_billing_date(self, value: str) -> SubscriptionInfo:
        self.next_billing_date = value
        return self

    def with_paid(self, value: bool) -> SubscriptionInfo:
        self.paid = value
        return self

    def with_payment_order_no(self, value: str) -> SubscriptionInfo:
        self.payment_order_no = value
        return self

    def with_payment_station_url(self, value: str) -> SubscriptionInfo:
        self.payment_station_url = value
        return self

    def with_price(self, value: int) -> SubscriptionInfo:
        self.price = value
        return self

    def with_region(self, value: str) -> SubscriptionInfo:
        self.region = value
        return self

    def with_retry_attempted(self, value: int) -> SubscriptionInfo:
        self.retry_attempted = value
        return self

    def with_return_url(self, value: str) -> SubscriptionInfo:
        self.return_url = value
        return self

    def with_sandbox(self, value: bool) -> SubscriptionInfo:
        self.sandbox = value
        return self

    def with_sku(self, value: str) -> SubscriptionInfo:
        self.sku = value
        return self

    def with_source(self, value: str) -> SubscriptionInfo:
        self.source = value
        return self

    def with_start(self, value: str) -> SubscriptionInfo:
        self.start = value
        return self

    def with_subscribed_at(self, value: str) -> SubscriptionInfo:
        self.subscribed_at = value
        return self

    def with_subscribed_by(
        self, value: Union[str, SubscribedByEnum]
    ) -> SubscriptionInfo:
        self.subscribed_by = value
        return self

    def with_title(self, value: str) -> SubscriptionInfo:
        self.title = value
        return self

    def with_trial_price(self, value: int) -> SubscriptionInfo:
        self.trial_price = value
        return self

    def with_trialed_cycles(self, value: int) -> SubscriptionInfo:
        self.trialed_cycles = value
        return self

    def with_unsubscribe_reason(self, value: str) -> SubscriptionInfo:
        self.unsubscribe_reason = value
        return self

    def with_unsubscribed_at(self, value: str) -> SubscriptionInfo:
        self.unsubscribed_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "charge_status"):
            result["chargeStatus"] = str(self.charge_status)
        elif include_empty:
            result["chargeStatus"] = Union[str, ChargeStatusEnum]()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "in_fixed_cycle_trial"):
            result["inFixedCycleTrial"] = bool(self.in_fixed_cycle_trial)
        elif include_empty:
            result["inFixedCycleTrial"] = False
        if hasattr(self, "in_fixed_free_days"):
            result["inFixedFreeDays"] = bool(self.in_fixed_free_days)
        elif include_empty:
            result["inFixedFreeDays"] = False
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "payment_flow_required"):
            result["paymentFlowRequired"] = bool(self.payment_flow_required)
        elif include_empty:
            result["paymentFlowRequired"] = False
        if hasattr(self, "recurring"):
            result["recurring"] = self.recurring.to_dict(include_empty=include_empty)
        elif include_empty:
            result["recurring"] = Recurring()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "billing_account"):
            result["billingAccount"] = self.billing_account.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["billingAccount"] = BillingAccount()
        if hasattr(self, "charged_cycles"):
            result["chargedCycles"] = int(self.charged_cycles)
        elif include_empty:
            result["chargedCycles"] = 0
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = CurrencySummary()
        if hasattr(self, "current_cycle"):
            result["currentCycle"] = int(self.current_cycle)
        elif include_empty:
            result["currentCycle"] = 0
        if hasattr(self, "current_period_end"):
            result["currentPeriodEnd"] = str(self.current_period_end)
        elif include_empty:
            result["currentPeriodEnd"] = ""
        if hasattr(self, "current_period_start"):
            result["currentPeriodStart"] = str(self.current_period_start)
        elif include_empty:
            result["currentPeriodStart"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = ""
        if hasattr(self, "entitlements"):
            result["entitlements"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.entitlements
            ]
        elif include_empty:
            result["entitlements"] = []
        if hasattr(self, "first_subscribe"):
            result["firstSubscribe"] = bool(self.first_subscribe)
        elif include_empty:
            result["firstSubscribe"] = False
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
        if hasattr(self, "next_billing_date"):
            result["nextBillingDate"] = str(self.next_billing_date)
        elif include_empty:
            result["nextBillingDate"] = ""
        if hasattr(self, "paid"):
            result["paid"] = bool(self.paid)
        elif include_empty:
            result["paid"] = False
        if hasattr(self, "payment_order_no"):
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = ""
        if hasattr(self, "payment_station_url"):
            result["paymentStationUrl"] = str(self.payment_station_url)
        elif include_empty:
            result["paymentStationUrl"] = ""
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "retry_attempted"):
            result["retryAttempted"] = int(self.retry_attempted)
        elif include_empty:
            result["retryAttempted"] = 0
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = ""
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        if hasattr(self, "subscribed_at"):
            result["subscribedAt"] = str(self.subscribed_at)
        elif include_empty:
            result["subscribedAt"] = ""
        if hasattr(self, "subscribed_by"):
            result["subscribedBy"] = str(self.subscribed_by)
        elif include_empty:
            result["subscribedBy"] = Union[str, SubscribedByEnum]()
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "trial_price"):
            result["trialPrice"] = int(self.trial_price)
        elif include_empty:
            result["trialPrice"] = 0
        if hasattr(self, "trialed_cycles"):
            result["trialedCycles"] = int(self.trialed_cycles)
        elif include_empty:
            result["trialedCycles"] = 0
        if hasattr(self, "unsubscribe_reason"):
            result["unsubscribeReason"] = str(self.unsubscribe_reason)
        elif include_empty:
            result["unsubscribeReason"] = ""
        if hasattr(self, "unsubscribed_at"):
            result["unsubscribedAt"] = str(self.unsubscribed_at)
        elif include_empty:
            result["unsubscribedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        charge_status: Union[str, ChargeStatusEnum],
        created_at: str,
        id_: str,
        in_fixed_cycle_trial: bool,
        in_fixed_free_days: bool,
        item_id: str,
        namespace: str,
        payment_flow_required: bool,
        recurring: Recurring,
        status: Union[str, StatusEnum],
        updated_at: str,
        user_id: str,
        billing_account: Optional[BillingAccount] = None,
        charged_cycles: Optional[int] = None,
        currency: Optional[CurrencySummary] = None,
        current_cycle: Optional[int] = None,
        current_period_end: Optional[str] = None,
        current_period_start: Optional[str] = None,
        description: Optional[str] = None,
        end: Optional[str] = None,
        entitlements: Optional[List[EntitlementSummary]] = None,
        first_subscribe: Optional[bool] = None,
        item_snapshot: Optional[ItemSnapshot] = None,
        language: Optional[str] = None,
        next_billing_date: Optional[str] = None,
        paid: Optional[bool] = None,
        payment_order_no: Optional[str] = None,
        payment_station_url: Optional[str] = None,
        price: Optional[int] = None,
        region: Optional[str] = None,
        retry_attempted: Optional[int] = None,
        return_url: Optional[str] = None,
        sandbox: Optional[bool] = None,
        sku: Optional[str] = None,
        source: Optional[str] = None,
        start: Optional[str] = None,
        subscribed_at: Optional[str] = None,
        subscribed_by: Optional[Union[str, SubscribedByEnum]] = None,
        title: Optional[str] = None,
        trial_price: Optional[int] = None,
        trialed_cycles: Optional[int] = None,
        unsubscribe_reason: Optional[str] = None,
        unsubscribed_at: Optional[str] = None,
    ) -> SubscriptionInfo:
        instance = cls()
        instance.charge_status = charge_status
        instance.created_at = created_at
        instance.id_ = id_
        instance.in_fixed_cycle_trial = in_fixed_cycle_trial
        instance.in_fixed_free_days = in_fixed_free_days
        instance.item_id = item_id
        instance.namespace = namespace
        instance.payment_flow_required = payment_flow_required
        instance.recurring = recurring
        instance.status = status
        instance.updated_at = updated_at
        instance.user_id = user_id
        if billing_account is not None:
            instance.billing_account = billing_account
        if charged_cycles is not None:
            instance.charged_cycles = charged_cycles
        if currency is not None:
            instance.currency = currency
        if current_cycle is not None:
            instance.current_cycle = current_cycle
        if current_period_end is not None:
            instance.current_period_end = current_period_end
        if current_period_start is not None:
            instance.current_period_start = current_period_start
        if description is not None:
            instance.description = description
        if end is not None:
            instance.end = end
        if entitlements is not None:
            instance.entitlements = entitlements
        if first_subscribe is not None:
            instance.first_subscribe = first_subscribe
        if item_snapshot is not None:
            instance.item_snapshot = item_snapshot
        if language is not None:
            instance.language = language
        if next_billing_date is not None:
            instance.next_billing_date = next_billing_date
        if paid is not None:
            instance.paid = paid
        if payment_order_no is not None:
            instance.payment_order_no = payment_order_no
        if payment_station_url is not None:
            instance.payment_station_url = payment_station_url
        if price is not None:
            instance.price = price
        if region is not None:
            instance.region = region
        if retry_attempted is not None:
            instance.retry_attempted = retry_attempted
        if return_url is not None:
            instance.return_url = return_url
        if sandbox is not None:
            instance.sandbox = sandbox
        if sku is not None:
            instance.sku = sku
        if source is not None:
            instance.source = source
        if start is not None:
            instance.start = start
        if subscribed_at is not None:
            instance.subscribed_at = subscribed_at
        if subscribed_by is not None:
            instance.subscribed_by = subscribed_by
        if title is not None:
            instance.title = title
        if trial_price is not None:
            instance.trial_price = trial_price
        if trialed_cycles is not None:
            instance.trialed_cycles = trialed_cycles
        if unsubscribe_reason is not None:
            instance.unsubscribe_reason = unsubscribe_reason
        if unsubscribed_at is not None:
            instance.unsubscribed_at = unsubscribed_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SubscriptionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "chargeStatus" in dict_ and dict_["chargeStatus"] is not None:
            instance.charge_status = str(dict_["chargeStatus"])
        elif include_empty:
            instance.charge_status = Union[str, ChargeStatusEnum]()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "inFixedCycleTrial" in dict_ and dict_["inFixedCycleTrial"] is not None:
            instance.in_fixed_cycle_trial = bool(dict_["inFixedCycleTrial"])
        elif include_empty:
            instance.in_fixed_cycle_trial = False
        if "inFixedFreeDays" in dict_ and dict_["inFixedFreeDays"] is not None:
            instance.in_fixed_free_days = bool(dict_["inFixedFreeDays"])
        elif include_empty:
            instance.in_fixed_free_days = False
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "paymentFlowRequired" in dict_ and dict_["paymentFlowRequired"] is not None:
            instance.payment_flow_required = bool(dict_["paymentFlowRequired"])
        elif include_empty:
            instance.payment_flow_required = False
        if "recurring" in dict_ and dict_["recurring"] is not None:
            instance.recurring = Recurring.create_from_dict(
                dict_["recurring"], include_empty=include_empty
            )
        elif include_empty:
            instance.recurring = Recurring()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "billingAccount" in dict_ and dict_["billingAccount"] is not None:
            instance.billing_account = BillingAccount.create_from_dict(
                dict_["billingAccount"], include_empty=include_empty
            )
        elif include_empty:
            instance.billing_account = BillingAccount()
        if "chargedCycles" in dict_ and dict_["chargedCycles"] is not None:
            instance.charged_cycles = int(dict_["chargedCycles"])
        elif include_empty:
            instance.charged_cycles = 0
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = CurrencySummary.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = CurrencySummary()
        if "currentCycle" in dict_ and dict_["currentCycle"] is not None:
            instance.current_cycle = int(dict_["currentCycle"])
        elif include_empty:
            instance.current_cycle = 0
        if "currentPeriodEnd" in dict_ and dict_["currentPeriodEnd"] is not None:
            instance.current_period_end = str(dict_["currentPeriodEnd"])
        elif include_empty:
            instance.current_period_end = ""
        if "currentPeriodStart" in dict_ and dict_["currentPeriodStart"] is not None:
            instance.current_period_start = str(dict_["currentPeriodStart"])
        elif include_empty:
            instance.current_period_start = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "entitlements" in dict_ and dict_["entitlements"] is not None:
            instance.entitlements = [
                EntitlementSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlements"]
            ]
        elif include_empty:
            instance.entitlements = []
        if "firstSubscribe" in dict_ and dict_["firstSubscribe"] is not None:
            instance.first_subscribe = bool(dict_["firstSubscribe"])
        elif include_empty:
            instance.first_subscribe = False
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
        if "nextBillingDate" in dict_ and dict_["nextBillingDate"] is not None:
            instance.next_billing_date = str(dict_["nextBillingDate"])
        elif include_empty:
            instance.next_billing_date = ""
        if "paid" in dict_ and dict_["paid"] is not None:
            instance.paid = bool(dict_["paid"])
        elif include_empty:
            instance.paid = False
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = ""
        if "paymentStationUrl" in dict_ and dict_["paymentStationUrl"] is not None:
            instance.payment_station_url = str(dict_["paymentStationUrl"])
        elif include_empty:
            instance.payment_station_url = ""
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "retryAttempted" in dict_ and dict_["retryAttempted"] is not None:
            instance.retry_attempted = int(dict_["retryAttempted"])
        elif include_empty:
            instance.retry_attempted = 0
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = ""
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        if "subscribedAt" in dict_ and dict_["subscribedAt"] is not None:
            instance.subscribed_at = str(dict_["subscribedAt"])
        elif include_empty:
            instance.subscribed_at = ""
        if "subscribedBy" in dict_ and dict_["subscribedBy"] is not None:
            instance.subscribed_by = str(dict_["subscribedBy"])
        elif include_empty:
            instance.subscribed_by = Union[str, SubscribedByEnum]()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "trialPrice" in dict_ and dict_["trialPrice"] is not None:
            instance.trial_price = int(dict_["trialPrice"])
        elif include_empty:
            instance.trial_price = 0
        if "trialedCycles" in dict_ and dict_["trialedCycles"] is not None:
            instance.trialed_cycles = int(dict_["trialedCycles"])
        elif include_empty:
            instance.trialed_cycles = 0
        if "unsubscribeReason" in dict_ and dict_["unsubscribeReason"] is not None:
            instance.unsubscribe_reason = str(dict_["unsubscribeReason"])
        elif include_empty:
            instance.unsubscribe_reason = ""
        if "unsubscribedAt" in dict_ and dict_["unsubscribedAt"] is not None:
            instance.unsubscribed_at = str(dict_["unsubscribedAt"])
        elif include_empty:
            instance.unsubscribed_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SubscriptionInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SubscriptionInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SubscriptionInfo, List[SubscriptionInfo], Dict[Any, SubscriptionInfo]]:
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
            "chargeStatus": "charge_status",
            "createdAt": "created_at",
            "id": "id_",
            "inFixedCycleTrial": "in_fixed_cycle_trial",
            "inFixedFreeDays": "in_fixed_free_days",
            "itemId": "item_id",
            "namespace": "namespace",
            "paymentFlowRequired": "payment_flow_required",
            "recurring": "recurring",
            "status": "status",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "billingAccount": "billing_account",
            "chargedCycles": "charged_cycles",
            "currency": "currency",
            "currentCycle": "current_cycle",
            "currentPeriodEnd": "current_period_end",
            "currentPeriodStart": "current_period_start",
            "description": "description",
            "end": "end",
            "entitlements": "entitlements",
            "firstSubscribe": "first_subscribe",
            "itemSnapshot": "item_snapshot",
            "language": "language",
            "nextBillingDate": "next_billing_date",
            "paid": "paid",
            "paymentOrderNo": "payment_order_no",
            "paymentStationUrl": "payment_station_url",
            "price": "price",
            "region": "region",
            "retryAttempted": "retry_attempted",
            "returnUrl": "return_url",
            "sandbox": "sandbox",
            "sku": "sku",
            "source": "source",
            "start": "start",
            "subscribedAt": "subscribed_at",
            "subscribedBy": "subscribed_by",
            "title": "title",
            "trialPrice": "trial_price",
            "trialedCycles": "trialed_cycles",
            "unsubscribeReason": "unsubscribe_reason",
            "unsubscribedAt": "unsubscribed_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "chargeStatus": True,
            "createdAt": True,
            "id": True,
            "inFixedCycleTrial": True,
            "inFixedFreeDays": True,
            "itemId": True,
            "namespace": True,
            "paymentFlowRequired": True,
            "recurring": True,
            "status": True,
            "updatedAt": True,
            "userId": True,
            "billingAccount": False,
            "chargedCycles": False,
            "currency": False,
            "currentCycle": False,
            "currentPeriodEnd": False,
            "currentPeriodStart": False,
            "description": False,
            "end": False,
            "entitlements": False,
            "firstSubscribe": False,
            "itemSnapshot": False,
            "language": False,
            "nextBillingDate": False,
            "paid": False,
            "paymentOrderNo": False,
            "paymentStationUrl": False,
            "price": False,
            "region": False,
            "retryAttempted": False,
            "returnUrl": False,
            "sandbox": False,
            "sku": False,
            "source": False,
            "start": False,
            "subscribedAt": False,
            "subscribedBy": False,
            "title": False,
            "trialPrice": False,
            "trialedCycles": False,
            "unsubscribeReason": False,
            "unsubscribedAt": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "chargeStatus": [
                "CHARGED",
                "CHARGE_FAILED",
                "NEVER",
                "RECURRING_CHARGING",
                "SETUP",
            ],
            "status": ["ACTIVE", "CANCELLED", "EXPIRED", "INIT"],
            "subscribedBy": ["PLATFORM", "USER"],
        }

    # endregion static methods
