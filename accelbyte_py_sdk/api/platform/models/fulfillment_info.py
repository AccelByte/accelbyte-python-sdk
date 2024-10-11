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

from ..models.fulfillment_action_history import FulfillmentActionHistory
from ..models.fulfillment_item import FulfillmentItem
from ..models.fulfillment_state_info import FulfillmentStateInfo


class StateEnum(StrEnum):
    FULFILLED = "FULFILLED"
    FULFILL_FAILED = "FULFILL_FAILED"
    REVOKED = "REVOKED"
    REVOKE_FAILED = "REVOKE_FAILED"


class FulfillmentInfo(Model):
    """Fulfillment info (FulfillmentInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        actions: (actions) OPTIONAL List[FulfillmentActionHistory]

        items: (items) OPTIONAL List[FulfillmentItem]

        state: (state) OPTIONAL Union[str, StateEnum]

        state_info: (stateInfo) OPTIONAL FulfillmentStateInfo

        transaction_id: (transactionId) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    actions: List[FulfillmentActionHistory]  # OPTIONAL
    items: List[FulfillmentItem]  # OPTIONAL
    state: Union[str, StateEnum]  # OPTIONAL
    state_info: FulfillmentStateInfo  # OPTIONAL
    transaction_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> FulfillmentInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> FulfillmentInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> FulfillmentInfo:
        self.namespace = value
        return self

    def with_updated_at(self, value: str) -> FulfillmentInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> FulfillmentInfo:
        self.user_id = value
        return self

    def with_actions(self, value: List[FulfillmentActionHistory]) -> FulfillmentInfo:
        self.actions = value
        return self

    def with_items(self, value: List[FulfillmentItem]) -> FulfillmentInfo:
        self.items = value
        return self

    def with_state(self, value: Union[str, StateEnum]) -> FulfillmentInfo:
        self.state = value
        return self

    def with_state_info(self, value: FulfillmentStateInfo) -> FulfillmentInfo:
        self.state_info = value
        return self

    def with_transaction_id(self, value: str) -> FulfillmentInfo:
        self.transaction_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "actions"):
            result["actions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.actions
            ]
        elif include_empty:
            result["actions"] = []
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "state"):
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = Union[str, StateEnum]()
        if hasattr(self, "state_info"):
            result["stateInfo"] = self.state_info.to_dict(include_empty=include_empty)
        elif include_empty:
            result["stateInfo"] = FulfillmentStateInfo()
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        id_: str,
        namespace: str,
        updated_at: str,
        user_id: str,
        actions: Optional[List[FulfillmentActionHistory]] = None,
        items: Optional[List[FulfillmentItem]] = None,
        state: Optional[Union[str, StateEnum]] = None,
        state_info: Optional[FulfillmentStateInfo] = None,
        transaction_id: Optional[str] = None,
        **kwargs,
    ) -> FulfillmentInfo:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.namespace = namespace
        instance.updated_at = updated_at
        instance.user_id = user_id
        if actions is not None:
            instance.actions = actions
        if items is not None:
            instance.items = items
        if state is not None:
            instance.state = state
        if state_info is not None:
            instance.state_info = state_info
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "actions" in dict_ and dict_["actions"] is not None:
            instance.actions = [
                FulfillmentActionHistory.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["actions"]
            ]
        elif include_empty:
            instance.actions = []
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                FulfillmentItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = Union[str, StateEnum]()
        if "stateInfo" in dict_ and dict_["stateInfo"] is not None:
            instance.state_info = FulfillmentStateInfo.create_from_dict(
                dict_["stateInfo"], include_empty=include_empty
            )
        elif include_empty:
            instance.state_info = FulfillmentStateInfo()
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[FulfillmentInfo, List[FulfillmentInfo], Dict[Any, FulfillmentInfo]]:
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
            "createdAt": "created_at",
            "id": "id_",
            "namespace": "namespace",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "actions": "actions",
            "items": "items",
            "state": "state",
            "stateInfo": "state_info",
            "transactionId": "transaction_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "namespace": True,
            "updatedAt": True,
            "userId": True,
            "actions": False,
            "items": False,
            "state": False,
            "stateInfo": False,
            "transactionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "state": ["FULFILLED", "FULFILL_FAILED", "REVOKED", "REVOKE_FAILED"],
        }

    # endregion static methods
