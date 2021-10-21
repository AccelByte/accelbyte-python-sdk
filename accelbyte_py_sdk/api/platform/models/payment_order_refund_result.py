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


class PaymentOrderRefundResult(Model):
    """Payment order refund result (PaymentOrderRefundResult)

    Properties:
        payment_order_no: (paymentOrderNo) REQUIRED str

        namespace: (namespace) REQUIRED str

        target_namespace: (targetNamespace) OPTIONAL str

        target_user_id: (targetUserId) OPTIONAL str

        status: (status) REQUIRED str

        created_time: (createdTime) REQUIRED str

        refunded_time: (refundedTime) OPTIONAL str
    """

    # region fields

    payment_order_no: str                                                                          # REQUIRED
    namespace: str                                                                                 # REQUIRED
    target_namespace: str                                                                          # OPTIONAL
    target_user_id: str                                                                            # OPTIONAL
    status: str                                                                                    # REQUIRED
    created_time: str                                                                              # REQUIRED
    refunded_time: str                                                                             # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_payment_order_no(self, value: str) -> PaymentOrderRefundResult:
        self.payment_order_no = value
        return self

    def with_namespace(self, value: str) -> PaymentOrderRefundResult:
        self.namespace = value
        return self

    def with_target_namespace(self, value: str) -> PaymentOrderRefundResult:
        self.target_namespace = value
        return self

    def with_target_user_id(self, value: str) -> PaymentOrderRefundResult:
        self.target_user_id = value
        return self

    def with_status(self, value: str) -> PaymentOrderRefundResult:
        self.status = value
        return self

    def with_created_time(self, value: str) -> PaymentOrderRefundResult:
        self.created_time = value
        return self

    def with_refunded_time(self, value: str) -> PaymentOrderRefundResult:
        self.refunded_time = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "payment_order_no") and self.payment_order_no:
            result["paymentOrderNo"] = str(self.payment_order_no)
        elif include_empty:
            result["paymentOrderNo"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "target_user_id") and self.target_user_id:
            result["targetUserId"] = str(self.target_user_id)
        elif include_empty:
            result["targetUserId"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "created_time") and self.created_time:
            result["createdTime"] = str(self.created_time)
        elif include_empty:
            result["createdTime"] = str()
        if hasattr(self, "refunded_time") and self.refunded_time:
            result["refundedTime"] = str(self.refunded_time)
        elif include_empty:
            result["refundedTime"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        payment_order_no: str,
        namespace: str,
        status: str,
        created_time: str,
        target_namespace: Optional[str] = None,
        target_user_id: Optional[str] = None,
        refunded_time: Optional[str] = None,
    ) -> PaymentOrderRefundResult:
        instance = cls()
        instance.payment_order_no = payment_order_no
        instance.namespace = namespace
        instance.status = status
        instance.created_time = created_time
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if target_user_id is not None:
            instance.target_user_id = target_user_id
        if refunded_time is not None:
            instance.refunded_time = refunded_time
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderRefundResult:
        instance = cls()
        if not dict_:
            return instance
        if "paymentOrderNo" in dict_ and dict_["paymentOrderNo"] is not None:
            instance.payment_order_no = str(dict_["paymentOrderNo"])
        elif include_empty:
            instance.payment_order_no = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "targetUserId" in dict_ and dict_["targetUserId"] is not None:
            instance.target_user_id = str(dict_["targetUserId"])
        elif include_empty:
            instance.target_user_id = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "createdTime" in dict_ and dict_["createdTime"] is not None:
            instance.created_time = str(dict_["createdTime"])
        elif include_empty:
            instance.created_time = str()
        if "refundedTime" in dict_ and dict_["refundedTime"] is not None:
            instance.refunded_time = str(dict_["refundedTime"])
        elif include_empty:
            instance.refunded_time = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "paymentOrderNo": "payment_order_no",
            "namespace": "namespace",
            "targetNamespace": "target_namespace",
            "targetUserId": "target_user_id",
            "status": "status",
            "createdTime": "created_time",
            "refundedTime": "refunded_time",
        }

    # endregion static methods
