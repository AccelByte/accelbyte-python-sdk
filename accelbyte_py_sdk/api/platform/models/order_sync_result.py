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

from ..models.order import Order


class OrderSyncResult(Model):
    """Order sync result (OrderSyncResult)

    Properties:
        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str

        orders: (orders) OPTIONAL List[Order]
    """

    # region fields

    next_evaluated_key: str  # OPTIONAL
    orders: List[Order]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_next_evaluated_key(self, value: str) -> OrderSyncResult:
        self.next_evaluated_key = value
        return self

    def with_orders(self, value: List[Order]) -> OrderSyncResult:
        self.orders = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "next_evaluated_key"):
            result["nextEvaluatedKey"] = str(self.next_evaluated_key)
        elif include_empty:
            result["nextEvaluatedKey"] = ""
        if hasattr(self, "orders"):
            result["orders"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.orders
            ]
        elif include_empty:
            result["orders"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        next_evaluated_key: Optional[str] = None,
        orders: Optional[List[Order]] = None,
    ) -> OrderSyncResult:
        instance = cls()
        if next_evaluated_key is not None:
            instance.next_evaluated_key = next_evaluated_key
        if orders is not None:
            instance.orders = orders
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OrderSyncResult:
        instance = cls()
        if not dict_:
            return instance
        if "nextEvaluatedKey" in dict_ and dict_["nextEvaluatedKey"] is not None:
            instance.next_evaluated_key = str(dict_["nextEvaluatedKey"])
        elif include_empty:
            instance.next_evaluated_key = ""
        if "orders" in dict_ and dict_["orders"] is not None:
            instance.orders = [
                Order.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["orders"]
            ]
        elif include_empty:
            instance.orders = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OrderSyncResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OrderSyncResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[OrderSyncResult, List[OrderSyncResult], Dict[Any, OrderSyncResult]]:
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
            "nextEvaluatedKey": "next_evaluated_key",
            "orders": "orders",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "nextEvaluatedKey": False,
            "orders": False,
        }

    # endregion static methods
