# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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

from ..models.action import Action


class StatusEnum(StrEnum):
    FAILED = "FAILED"
    INIT = "INIT"
    SUCCESS = "SUCCESS"


class TradeChainActionHistoryInfo(Model):
    """Trade chain action history info (TradeChainActionHistoryInfo)

    Properties:
        actions: (actions) OPTIONAL List[Action]

        metadata: (metadata) OPTIONAL Dict[str, Any]

        namespace: (namespace) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]

        status_reason: (statusReason) OPTIONAL str

        transaction_id: (transactionId) OPTIONAL str

        type_: (type) OPTIONAL str

        user_ids: (userIds) OPTIONAL List[str]
    """

    # region fields

    actions: List[Action]  # OPTIONAL
    metadata: Dict[str, Any]  # OPTIONAL
    namespace: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    status_reason: str  # OPTIONAL
    transaction_id: str  # OPTIONAL
    type_: str  # OPTIONAL
    user_ids: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_actions(self, value: List[Action]) -> TradeChainActionHistoryInfo:
        self.actions = value
        return self

    def with_metadata(self, value: Dict[str, Any]) -> TradeChainActionHistoryInfo:
        self.metadata = value
        return self

    def with_namespace(self, value: str) -> TradeChainActionHistoryInfo:
        self.namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> TradeChainActionHistoryInfo:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> TradeChainActionHistoryInfo:
        self.status_reason = value
        return self

    def with_transaction_id(self, value: str) -> TradeChainActionHistoryInfo:
        self.transaction_id = value
        return self

    def with_type(self, value: str) -> TradeChainActionHistoryInfo:
        self.type_ = value
        return self

    def with_user_ids(self, value: List[str]) -> TradeChainActionHistoryInfo:
        self.user_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "actions"):
            result["actions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.actions
            ]
        elif include_empty:
            result["actions"] = []
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): v0 for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "user_ids"):
            result["userIds"] = [str(i0) for i0 in self.user_ids]
        elif include_empty:
            result["userIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        actions: Optional[List[Action]] = None,
        metadata: Optional[Dict[str, Any]] = None,
        namespace: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        status_reason: Optional[str] = None,
        transaction_id: Optional[str] = None,
        type_: Optional[str] = None,
        user_ids: Optional[List[str]] = None,
        **kwargs,
    ) -> TradeChainActionHistoryInfo:
        instance = cls()
        if actions is not None:
            instance.actions = actions
        if metadata is not None:
            instance.metadata = metadata
        if namespace is not None:
            instance.namespace = namespace
        if status is not None:
            instance.status = status
        if status_reason is not None:
            instance.status_reason = status_reason
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        if type_ is not None:
            instance.type_ = type_
        if user_ids is not None:
            instance.user_ids = user_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TradeChainActionHistoryInfo:
        instance = cls()
        if not dict_:
            return instance
        if "actions" in dict_ and dict_["actions"] is not None:
            instance.actions = [
                Action.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["actions"]
            ]
        elif include_empty:
            instance.actions = []
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "userIds" in dict_ and dict_["userIds"] is not None:
            instance.user_ids = [str(i0) for i0 in dict_["userIds"]]
        elif include_empty:
            instance.user_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TradeChainActionHistoryInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TradeChainActionHistoryInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TradeChainActionHistoryInfo,
        List[TradeChainActionHistoryInfo],
        Dict[Any, TradeChainActionHistoryInfo],
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
            "actions": "actions",
            "metadata": "metadata",
            "namespace": "namespace",
            "status": "status",
            "statusReason": "status_reason",
            "transactionId": "transaction_id",
            "type": "type_",
            "userIds": "user_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "actions": False,
            "metadata": False,
            "namespace": False,
            "status": False,
            "statusReason": False,
            "transactionId": False,
            "type": False,
            "userIds": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAILED", "INIT", "SUCCESS"],
        }

    # endregion static methods
