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


class SubscriptionSummary(Model):
    """Subscription summary (SubscriptionSummary)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        item_id: (itemId) REQUIRED str

        sku: (sku) OPTIONAL str

        status: (status) REQUIRED str

        current_period_start: (currentPeriodStart) OPTIONAL str

        current_period_end: (currentPeriodEnd) OPTIONAL str

        subscribed_by: (subscribedBy) OPTIONAL str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    item_id: str                                                                                   # REQUIRED
    sku: str                                                                                       # OPTIONAL
    status: str                                                                                    # REQUIRED
    current_period_start: str                                                                      # OPTIONAL
    current_period_end: str                                                                        # OPTIONAL
    subscribed_by: str                                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> SubscriptionSummary:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> SubscriptionSummary:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> SubscriptionSummary:
        self.user_id = value
        return self

    def with_item_id(self, value: str) -> SubscriptionSummary:
        self.item_id = value
        return self

    def with_sku(self, value: str) -> SubscriptionSummary:
        self.sku = value
        return self

    def with_status(self, value: str) -> SubscriptionSummary:
        self.status = value
        return self

    def with_current_period_start(self, value: str) -> SubscriptionSummary:
        self.current_period_start = value
        return self

    def with_current_period_end(self, value: str) -> SubscriptionSummary:
        self.current_period_end = value
        return self

    def with_subscribed_by(self, value: str) -> SubscriptionSummary:
        self.subscribed_by = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
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
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "current_period_start") and self.current_period_start:
            result["currentPeriodStart"] = str(self.current_period_start)
        elif include_empty:
            result["currentPeriodStart"] = str()
        if hasattr(self, "current_period_end") and self.current_period_end:
            result["currentPeriodEnd"] = str(self.current_period_end)
        elif include_empty:
            result["currentPeriodEnd"] = str()
        if hasattr(self, "subscribed_by") and self.subscribed_by:
            result["subscribedBy"] = str(self.subscribed_by)
        elif include_empty:
            result["subscribedBy"] = str()
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
        status: str,
        sku: Optional[str] = None,
        current_period_start: Optional[str] = None,
        current_period_end: Optional[str] = None,
        subscribed_by: Optional[str] = None,
    ) -> SubscriptionSummary:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.user_id = user_id
        instance.item_id = item_id
        instance.status = status
        if sku is not None:
            instance.sku = sku
        if current_period_start is not None:
            instance.current_period_start = current_period_start
        if current_period_end is not None:
            instance.current_period_end = current_period_end
        if subscribed_by is not None:
            instance.subscribed_by = subscribed_by
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SubscriptionSummary:
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
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "currentPeriodStart" in dict_ and dict_["currentPeriodStart"] is not None:
            instance.current_period_start = str(dict_["currentPeriodStart"])
        elif include_empty:
            instance.current_period_start = str()
        if "currentPeriodEnd" in dict_ and dict_["currentPeriodEnd"] is not None:
            instance.current_period_end = str(dict_["currentPeriodEnd"])
        elif include_empty:
            instance.current_period_end = str()
        if "subscribedBy" in dict_ and dict_["subscribedBy"] is not None:
            instance.subscribed_by = str(dict_["subscribedBy"])
        elif include_empty:
            instance.subscribed_by = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "userId": "user_id",
            "itemId": "item_id",
            "sku": "sku",
            "status": "status",
            "currentPeriodStart": "current_period_start",
            "currentPeriodEnd": "current_period_end",
            "subscribedBy": "subscribed_by",
        }

    # endregion static methods
