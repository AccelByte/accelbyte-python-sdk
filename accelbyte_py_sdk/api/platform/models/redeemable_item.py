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


class RedeemableItem(Model):
    """Redeemable item (RedeemableItem)

    Properties:
        item_id: (itemId) REQUIRED str

        item_name: (itemName) REQUIRED str

        extra_subscription_days: (extraSubscriptionDays) OPTIONAL int

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    item_id: str                                                                                   # REQUIRED
    item_name: str                                                                                 # REQUIRED
    extra_subscription_days: int                                                                   # OPTIONAL
    quantity: int                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> RedeemableItem:
        self.item_id = value
        return self

    def with_item_name(self, value: str) -> RedeemableItem:
        self.item_name = value
        return self

    def with_extra_subscription_days(self, value: int) -> RedeemableItem:
        self.extra_subscription_days = value
        return self

    def with_quantity(self, value: int) -> RedeemableItem:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "item_name"):
            result["itemName"] = str(self.item_name)
        elif include_empty:
            result["itemName"] = str()
        if hasattr(self, "extra_subscription_days"):
            result["extraSubscriptionDays"] = int(self.extra_subscription_days)
        elif include_empty:
            result["extraSubscriptionDays"] = int()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        item_name: str,
        quantity: Optional[int] = None,
        extra_subscription_days: Optional[int] = None,
    ) -> RedeemableItem:
        instance = cls()
        instance.item_id = item_id
        instance.item_name = item_name
        if quantity is not None:
            instance.quantity = quantity
        if extra_subscription_days is not None:
            instance.extra_subscription_days = extra_subscription_days
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RedeemableItem:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "itemName" in dict_ and dict_["itemName"] is not None:
            instance.item_name = str(dict_["itemName"])
        elif include_empty:
            instance.item_name = str()
        if "extraSubscriptionDays" in dict_ and dict_["extraSubscriptionDays"] is not None:
            instance.extra_subscription_days = int(dict_["extraSubscriptionDays"])
        elif include_empty:
            instance.extra_subscription_days = int()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemId": "item_id",
            "itemName": "item_name",
            "extraSubscriptionDays": "extra_subscription_days",
            "quantity": "quantity",
        }

    # endregion static methods
