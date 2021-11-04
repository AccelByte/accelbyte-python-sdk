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

from ..models.order import Order


class OrderSyncResult(Model):
    """Order sync result (OrderSyncResult)

    Properties:
        orders: (orders) OPTIONAL List[Order]

        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str
    """

    # region fields

    orders: List[Order]                                                                            # OPTIONAL
    next_evaluated_key: str                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_orders(self, value: List[Order]) -> OrderSyncResult:
        self.orders = value
        return self

    def with_next_evaluated_key(self, value: str) -> OrderSyncResult:
        self.next_evaluated_key = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "orders"):
            result["orders"] = [i0.to_dict(include_empty=include_empty) for i0 in self.orders]
        elif include_empty:
            result["orders"] = []
        if hasattr(self, "next_evaluated_key"):
            result["nextEvaluatedKey"] = str(self.next_evaluated_key)
        elif include_empty:
            result["nextEvaluatedKey"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        orders: Optional[List[Order]] = None,
        next_evaluated_key: Optional[str] = None,
    ) -> OrderSyncResult:
        instance = cls()
        if orders is not None:
            instance.orders = orders
        if next_evaluated_key is not None:
            instance.next_evaluated_key = next_evaluated_key
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OrderSyncResult:
        instance = cls()
        if not dict_:
            return instance
        if "orders" in dict_ and dict_["orders"] is not None:
            instance.orders = [Order.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["orders"]]
        elif include_empty:
            instance.orders = []
        if "nextEvaluatedKey" in dict_ and dict_["nextEvaluatedKey"] is not None:
            instance.next_evaluated_key = str(dict_["nextEvaluatedKey"])
        elif include_empty:
            instance.next_evaluated_key = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "orders": "orders",
            "nextEvaluatedKey": "next_evaluated_key",
        }

    # endregion static methods
