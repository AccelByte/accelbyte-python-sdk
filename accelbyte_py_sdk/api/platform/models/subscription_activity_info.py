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


class SubscriptionActivityInfo(Model):
    """Subscription activity info (SubscriptionActivityInfo)

    Properties:
        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        subscription_id: (subscriptionId) REQUIRED str

        operator: (operator) REQUIRED str

        action: (action) REQUIRED str

        subscribed_by: (subscribedBy) REQUIRED str

        current_cycle: (currentCycle) REQUIRED int

        charged_cycles: (chargedCycles) REQUIRED int

        trialed_cycles: (trialedCycles) OPTIONAL int

        in_fixed_free_days: (inFixedFreeDays) OPTIONAL bool

        in_fixed_cycle_trial: (inFixedCycleTrial) OPTIONAL bool

        reason: (reason) OPTIONAL str

        grant_days: (grantDays) OPTIONAL int

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    subscription_id: str                                                                           # REQUIRED
    operator: str                                                                                  # REQUIRED
    action: str                                                                                    # REQUIRED
    subscribed_by: str                                                                             # REQUIRED
    current_cycle: int                                                                             # REQUIRED
    charged_cycles: int                                                                            # REQUIRED
    trialed_cycles: int                                                                            # OPTIONAL
    in_fixed_free_days: bool                                                                       # OPTIONAL
    in_fixed_cycle_trial: bool                                                                     # OPTIONAL
    reason: str                                                                                    # OPTIONAL
    grant_days: int                                                                                # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> SubscriptionActivityInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> SubscriptionActivityInfo:
        self.user_id = value
        return self

    def with_subscription_id(self, value: str) -> SubscriptionActivityInfo:
        self.subscription_id = value
        return self

    def with_operator(self, value: str) -> SubscriptionActivityInfo:
        self.operator = value
        return self

    def with_action(self, value: str) -> SubscriptionActivityInfo:
        self.action = value
        return self

    def with_subscribed_by(self, value: str) -> SubscriptionActivityInfo:
        self.subscribed_by = value
        return self

    def with_current_cycle(self, value: int) -> SubscriptionActivityInfo:
        self.current_cycle = value
        return self

    def with_charged_cycles(self, value: int) -> SubscriptionActivityInfo:
        self.charged_cycles = value
        return self

    def with_trialed_cycles(self, value: int) -> SubscriptionActivityInfo:
        self.trialed_cycles = value
        return self

    def with_in_fixed_free_days(self, value: bool) -> SubscriptionActivityInfo:
        self.in_fixed_free_days = value
        return self

    def with_in_fixed_cycle_trial(self, value: bool) -> SubscriptionActivityInfo:
        self.in_fixed_cycle_trial = value
        return self

    def with_reason(self, value: str) -> SubscriptionActivityInfo:
        self.reason = value
        return self

    def with_grant_days(self, value: int) -> SubscriptionActivityInfo:
        self.grant_days = value
        return self

    def with_created_at(self, value: str) -> SubscriptionActivityInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> SubscriptionActivityInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "subscription_id") and self.subscription_id:
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = str()
        if hasattr(self, "operator") and self.operator:
            result["operator"] = str(self.operator)
        elif include_empty:
            result["operator"] = str()
        if hasattr(self, "action") and self.action:
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = str()
        if hasattr(self, "subscribed_by") and self.subscribed_by:
            result["subscribedBy"] = str(self.subscribed_by)
        elif include_empty:
            result["subscribedBy"] = str()
        if hasattr(self, "current_cycle") and self.current_cycle:
            result["currentCycle"] = int(self.current_cycle)
        elif include_empty:
            result["currentCycle"] = int()
        if hasattr(self, "charged_cycles") and self.charged_cycles:
            result["chargedCycles"] = int(self.charged_cycles)
        elif include_empty:
            result["chargedCycles"] = int()
        if hasattr(self, "trialed_cycles") and self.trialed_cycles:
            result["trialedCycles"] = int(self.trialed_cycles)
        elif include_empty:
            result["trialedCycles"] = int()
        if hasattr(self, "in_fixed_free_days") and self.in_fixed_free_days:
            result["inFixedFreeDays"] = bool(self.in_fixed_free_days)
        elif include_empty:
            result["inFixedFreeDays"] = bool()
        if hasattr(self, "in_fixed_cycle_trial") and self.in_fixed_cycle_trial:
            result["inFixedCycleTrial"] = bool(self.in_fixed_cycle_trial)
        elif include_empty:
            result["inFixedCycleTrial"] = bool()
        if hasattr(self, "reason") and self.reason:
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = str()
        if hasattr(self, "grant_days") and self.grant_days:
            result["grantDays"] = int(self.grant_days)
        elif include_empty:
            result["grantDays"] = int()
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
        namespace: str,
        user_id: str,
        subscription_id: str,
        operator: str,
        action: str,
        subscribed_by: str,
        current_cycle: int,
        charged_cycles: int,
        created_at: str,
        updated_at: str,
        trialed_cycles: Optional[int] = None,
        in_fixed_free_days: Optional[bool] = None,
        in_fixed_cycle_trial: Optional[bool] = None,
        reason: Optional[str] = None,
        grant_days: Optional[int] = None,
    ) -> SubscriptionActivityInfo:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        instance.subscription_id = subscription_id
        instance.operator = operator
        instance.action = action
        instance.subscribed_by = subscribed_by
        instance.current_cycle = current_cycle
        instance.charged_cycles = charged_cycles
        instance.created_at = created_at
        instance.updated_at = updated_at
        if trialed_cycles is not None:
            instance.trialed_cycles = trialed_cycles
        if in_fixed_free_days is not None:
            instance.in_fixed_free_days = in_fixed_free_days
        if in_fixed_cycle_trial is not None:
            instance.in_fixed_cycle_trial = in_fixed_cycle_trial
        if reason is not None:
            instance.reason = reason
        if grant_days is not None:
            instance.grant_days = grant_days
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SubscriptionActivityInfo:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = str()
        if "operator" in dict_ and dict_["operator"] is not None:
            instance.operator = str(dict_["operator"])
        elif include_empty:
            instance.operator = str()
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = str()
        if "subscribedBy" in dict_ and dict_["subscribedBy"] is not None:
            instance.subscribed_by = str(dict_["subscribedBy"])
        elif include_empty:
            instance.subscribed_by = str()
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
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        if "grantDays" in dict_ and dict_["grantDays"] is not None:
            instance.grant_days = int(dict_["grantDays"])
        elif include_empty:
            instance.grant_days = int()
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
            "namespace": "namespace",
            "userId": "user_id",
            "subscriptionId": "subscription_id",
            "operator": "operator",
            "action": "action",
            "subscribedBy": "subscribed_by",
            "currentCycle": "current_cycle",
            "chargedCycles": "charged_cycles",
            "trialedCycles": "trialed_cycles",
            "inFixedFreeDays": "in_fixed_free_days",
            "inFixedCycleTrial": "in_fixed_cycle_trial",
            "reason": "reason",
            "grantDays": "grant_days",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods