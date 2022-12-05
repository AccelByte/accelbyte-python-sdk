# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.18.1)

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


class ActionEnum(StrEnum):
    CHARGEBACK = "CHARGEBACK"
    CHARGEBACK_REVERSED = "CHARGEBACK_REVERSED"
    CHARGED = "CHARGED"
    CLOSE = "CLOSE"
    DELETED = "DELETED"
    FULFILLED = "FULFILLED"
    FULFILL_FAILED = "FULFILL_FAILED"
    INIT = "INIT"
    REFUNDED = "REFUNDED"
    REFUNDING = "REFUNDING"
    REFUND_FAILED = "REFUND_FAILED"
    SET_STATUS = "SET_STATUS"


class OrderHistoryInfo(Model):
    """Order history info (OrderHistoryInfo)

    Properties:
        action: (action) REQUIRED Union[str, ActionEnum]

        created_at: (createdAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        operator: (operator) REQUIRED str

        order_no: (orderNo) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        reason: (reason) OPTIONAL str
    """

    # region fields

    action: Union[str, ActionEnum]  # REQUIRED
    created_at: str  # REQUIRED
    namespace: str  # REQUIRED
    operator: str  # REQUIRED
    order_no: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: Union[str, ActionEnum]) -> OrderHistoryInfo:
        self.action = value
        return self

    def with_created_at(self, value: str) -> OrderHistoryInfo:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> OrderHistoryInfo:
        self.namespace = value
        return self

    def with_operator(self, value: str) -> OrderHistoryInfo:
        self.operator = value
        return self

    def with_order_no(self, value: str) -> OrderHistoryInfo:
        self.order_no = value
        return self

    def with_updated_at(self, value: str) -> OrderHistoryInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> OrderHistoryInfo:
        self.user_id = value
        return self

    def with_reason(self, value: str) -> OrderHistoryInfo:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = Union[str, ActionEnum]()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "operator"):
            result["operator"] = str(self.operator)
        elif include_empty:
            result["operator"] = ""
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: Union[str, ActionEnum],
        created_at: str,
        namespace: str,
        operator: str,
        order_no: str,
        updated_at: str,
        user_id: str,
        reason: Optional[str] = None,
    ) -> OrderHistoryInfo:
        instance = cls()
        instance.action = action
        instance.created_at = created_at
        instance.namespace = namespace
        instance.operator = operator
        instance.order_no = order_no
        instance.updated_at = updated_at
        instance.user_id = user_id
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OrderHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = Union[str, ActionEnum]()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "operator" in dict_ and dict_["operator"] is not None:
            instance.operator = str(dict_["operator"])
        elif include_empty:
            instance.operator = ""
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OrderHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OrderHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[OrderHistoryInfo, List[OrderHistoryInfo], Dict[Any, OrderHistoryInfo]]:
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
            "action": "action",
            "createdAt": "created_at",
            "namespace": "namespace",
            "operator": "operator",
            "orderNo": "order_no",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "reason": "reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "createdAt": True,
            "namespace": True,
            "operator": True,
            "orderNo": True,
            "updatedAt": True,
            "userId": True,
            "reason": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "action": [
                "CHARGEBACK",
                "CHARGEBACK_REVERSED",
                "CHARGED",
                "CLOSE",
                "DELETED",
                "FULFILLED",
                "FULFILL_FAILED",
                "INIT",
                "REFUNDED",
                "REFUNDING",
                "REFUND_FAILED",
                "SET_STATUS",
            ],
        }

    # endregion static methods
