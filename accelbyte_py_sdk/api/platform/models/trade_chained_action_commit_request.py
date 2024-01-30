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

from ..models.action_request import ActionRequest


class TradeChainedActionCommitRequest(Model):
    """Represents the request to commit a chained trade action. (TradeChainedActionCommitRequest)

    Properties:
        actions: (actions) OPTIONAL List[ActionRequest]

        metadata: (metadata) OPTIONAL Dict[str, Any]

        need_pre_check: (needPreCheck) OPTIONAL bool

        transaction_id: (transactionId) OPTIONAL str

        type_: (type) OPTIONAL str
    """

    # region fields

    actions: List[ActionRequest]  # OPTIONAL
    metadata: Dict[str, Any]  # OPTIONAL
    need_pre_check: bool  # OPTIONAL
    transaction_id: str  # OPTIONAL
    type_: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_actions(
        self, value: List[ActionRequest]
    ) -> TradeChainedActionCommitRequest:
        self.actions = value
        return self

    def with_metadata(self, value: Dict[str, Any]) -> TradeChainedActionCommitRequest:
        self.metadata = value
        return self

    def with_need_pre_check(self, value: bool) -> TradeChainedActionCommitRequest:
        self.need_pre_check = value
        return self

    def with_transaction_id(self, value: str) -> TradeChainedActionCommitRequest:
        self.transaction_id = value
        return self

    def with_type(self, value: str) -> TradeChainedActionCommitRequest:
        self.type_ = value
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
        if hasattr(self, "need_pre_check"):
            result["needPreCheck"] = bool(self.need_pre_check)
        elif include_empty:
            result["needPreCheck"] = False
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        actions: Optional[List[ActionRequest]] = None,
        metadata: Optional[Dict[str, Any]] = None,
        need_pre_check: Optional[bool] = None,
        transaction_id: Optional[str] = None,
        type_: Optional[str] = None,
        **kwargs,
    ) -> TradeChainedActionCommitRequest:
        instance = cls()
        if actions is not None:
            instance.actions = actions
        if metadata is not None:
            instance.metadata = metadata
        if need_pre_check is not None:
            instance.need_pre_check = need_pre_check
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TradeChainedActionCommitRequest:
        instance = cls()
        if not dict_:
            return instance
        if "actions" in dict_ and dict_["actions"] is not None:
            instance.actions = [
                ActionRequest.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["actions"]
            ]
        elif include_empty:
            instance.actions = []
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "needPreCheck" in dict_ and dict_["needPreCheck"] is not None:
            instance.need_pre_check = bool(dict_["needPreCheck"])
        elif include_empty:
            instance.need_pre_check = False
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TradeChainedActionCommitRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TradeChainedActionCommitRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TradeChainedActionCommitRequest,
        List[TradeChainedActionCommitRequest],
        Dict[Any, TradeChainedActionCommitRequest],
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
            "needPreCheck": "need_pre_check",
            "transactionId": "transaction_id",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "actions": False,
            "metadata": False,
            "needPreCheck": False,
            "transactionId": False,
            "type": False,
        }

    # endregion static methods
