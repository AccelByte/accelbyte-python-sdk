# Auto-generated at 2021-09-27T17:12:36.305381+08:00
# from: Justice Platform Service (3.24.0)

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


class OrderHistoryInfo(Model):
    """Order history info

    Properties:
        order_no: (orderNo) REQUIRED str

        operator: (operator) REQUIRED str

        action: (action) REQUIRED str

        reason: (reason) OPTIONAL str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    order_no: str                                                                                  # REQUIRED
    operator: str                                                                                  # REQUIRED
    action: str                                                                                    # REQUIRED
    reason: str                                                                                    # OPTIONAL
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_order_no(self, value: str) -> OrderHistoryInfo:
        self.order_no = value
        return self

    def with_operator(self, value: str) -> OrderHistoryInfo:
        self.operator = value
        return self

    def with_action(self, value: str) -> OrderHistoryInfo:
        self.action = value
        return self

    def with_reason(self, value: str) -> OrderHistoryInfo:
        self.reason = value
        return self

    def with_namespace(self, value: str) -> OrderHistoryInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> OrderHistoryInfo:
        self.user_id = value
        return self

    def with_created_at(self, value: str) -> OrderHistoryInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> OrderHistoryInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "order_no") and self.order_no:
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = str()
        if hasattr(self, "operator") and self.operator:
            result["operator"] = str(self.operator)
        elif include_empty:
            result["operator"] = str()
        if hasattr(self, "action") and self.action:
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = str()
        if hasattr(self, "reason") and self.reason:
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
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
        order_no: str,
        operator: str,
        action: str,
        namespace: str,
        user_id: str,
        created_at: str,
        updated_at: str,
        reason: Optional[str] = None,
    ) -> OrderHistoryInfo:
        instance = cls()
        instance.order_no = order_no
        instance.operator = operator
        instance.action = action
        instance.namespace = namespace
        instance.user_id = user_id
        instance.created_at = created_at
        instance.updated_at = updated_at
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OrderHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = str()
        if "operator" in dict_ and dict_["operator"] is not None:
            instance.operator = str(dict_["operator"])
        elif include_empty:
            instance.operator = str()
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = str()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
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
            "orderNo": "order_no",
            "operator": "operator",
            "action": "action",
            "reason": "reason",
            "namespace": "namespace",
            "userId": "user_id",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
