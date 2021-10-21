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

from ..models.payment_order import PaymentOrder


class PaymentOrderSyncResult(Model):
    """Payment order sync result (PaymentOrderSyncResult)

    Properties:
        payment_orders: (paymentOrders) OPTIONAL List[PaymentOrder]

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str
    """

    # region fields

    payment_orders: List[PaymentOrder]                                                             # OPTIONAL
    next_evaluated_key: str                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_orders(self, value: List[PaymentOrder]) -> PaymentOrderSyncResult:
        self.payment_orders = value
        return self

    def with_next_evaluated_key(self, value: str) -> PaymentOrderSyncResult:
        self.next_evaluated_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_orders") and self.payment_orders:
            result["paymentOrders"] = [i0.to_dict(include_empty=include_empty) for i0 in self.payment_orders]
        elif include_empty:
            result["paymentOrders"] = []
        if hasattr(self, "next_evaluated_key") and self.next_evaluated_key:
            result["nextEvaluatedKey"] = str(self.next_evaluated_key)
        elif include_empty:
            result["nextEvaluatedKey"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_orders: Optional[List[PaymentOrder]] = None,
        next_evaluated_key: Optional[str] = None,
    ) -> PaymentOrderSyncResult:
        instance = cls()
        if payment_orders is not None:
            instance.payment_orders = payment_orders
        if next_evaluated_key is not None:
            instance.next_evaluated_key = next_evaluated_key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderSyncResult:
        instance = cls()
        if not dict_:
            return instance
        if "paymentOrders" in dict_ and dict_["paymentOrders"] is not None:
            instance.payment_orders = [PaymentOrder.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["paymentOrders"]]
        elif include_empty:
            instance.payment_orders = []
        if "nextEvaluatedKey" in dict_ and dict_["nextEvaluatedKey"] is not None:
            instance.next_evaluated_key = str(dict_["nextEvaluatedKey"])
        elif include_empty:
            instance.next_evaluated_key = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentOrders": "payment_orders",
            "nextEvaluatedKey": "next_evaluated_key",
        }

    # endregion static methods
