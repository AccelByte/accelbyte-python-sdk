# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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
        next_evaluated_key: (nextEvaluatedKey) OPTIONAL str

        payment_orders: (paymentOrders) OPTIONAL List[PaymentOrder]
    """

    # region fields

    next_evaluated_key: str  # OPTIONAL
    payment_orders: List[PaymentOrder]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_next_evaluated_key(self, value: str) -> PaymentOrderSyncResult:
        self.next_evaluated_key = value
        return self

    def with_payment_orders(self, value: List[PaymentOrder]) -> PaymentOrderSyncResult:
        self.payment_orders = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "next_evaluated_key"):
            result["nextEvaluatedKey"] = str(self.next_evaluated_key)
        elif include_empty:
            result["nextEvaluatedKey"] = ""
        if hasattr(self, "payment_orders"):
            result["paymentOrders"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.payment_orders
            ]
        elif include_empty:
            result["paymentOrders"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        next_evaluated_key: Optional[str] = None,
        payment_orders: Optional[List[PaymentOrder]] = None,
    ) -> PaymentOrderSyncResult:
        instance = cls()
        if next_evaluated_key is not None:
            instance.next_evaluated_key = next_evaluated_key
        if payment_orders is not None:
            instance.payment_orders = payment_orders
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentOrderSyncResult:
        instance = cls()
        if not dict_:
            return instance
        if "nextEvaluatedKey" in dict_ and dict_["nextEvaluatedKey"] is not None:
            instance.next_evaluated_key = str(dict_["nextEvaluatedKey"])
        elif include_empty:
            instance.next_evaluated_key = ""
        if "paymentOrders" in dict_ and dict_["paymentOrders"] is not None:
            instance.payment_orders = [
                PaymentOrder.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["paymentOrders"]
            ]
        elif include_empty:
            instance.payment_orders = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentOrderSyncResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentOrderSyncResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PaymentOrderSyncResult,
        List[PaymentOrderSyncResult],
        Dict[Any, PaymentOrderSyncResult],
    ]:
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
            "paymentOrders": "payment_orders",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "nextEvaluatedKey": False,
            "paymentOrders": False,
        }

    # endregion static methods
