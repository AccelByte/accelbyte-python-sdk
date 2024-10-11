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


class ActionEnum(StrEnum):
    FULFILLMENT = "FULFILLMENT"
    REVOKE_FULFILLMENT = "REVOKE_FULFILLMENT"


class StateEnum(StrEnum):
    FULFILLED = "FULFILLED"
    FULFILL_FAILED = "FULFILL_FAILED"
    REVOKED = "REVOKED"
    REVOKE_FAILED = "REVOKE_FAILED"


class FulfillmentActionHistory(Model):
    """Fulfillment action history (FulfillmentActionHistory)

    Properties:
        action: (action) OPTIONAL Union[str, ActionEnum]

        created_at: (createdAt) OPTIONAL str

        fulfillment_history_id: (fulfillmentHistoryId) OPTIONAL str

        revocation_history_id: (revocationHistoryId) OPTIONAL str

        state: (state) OPTIONAL Union[str, StateEnum]
    """

    # region fields

    action: Union[str, ActionEnum]  # OPTIONAL
    created_at: str  # OPTIONAL
    fulfillment_history_id: str  # OPTIONAL
    revocation_history_id: str  # OPTIONAL
    state: Union[str, StateEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: Union[str, ActionEnum]) -> FulfillmentActionHistory:
        self.action = value
        return self

    def with_created_at(self, value: str) -> FulfillmentActionHistory:
        self.created_at = value
        return self

    def with_fulfillment_history_id(self, value: str) -> FulfillmentActionHistory:
        self.fulfillment_history_id = value
        return self

    def with_revocation_history_id(self, value: str) -> FulfillmentActionHistory:
        self.revocation_history_id = value
        return self

    def with_state(self, value: Union[str, StateEnum]) -> FulfillmentActionHistory:
        self.state = value
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
        if hasattr(self, "fulfillment_history_id"):
            result["fulfillmentHistoryId"] = str(self.fulfillment_history_id)
        elif include_empty:
            result["fulfillmentHistoryId"] = ""
        if hasattr(self, "revocation_history_id"):
            result["revocationHistoryId"] = str(self.revocation_history_id)
        elif include_empty:
            result["revocationHistoryId"] = ""
        if hasattr(self, "state"):
            result["state"] = str(self.state)
        elif include_empty:
            result["state"] = Union[str, StateEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: Optional[Union[str, ActionEnum]] = None,
        created_at: Optional[str] = None,
        fulfillment_history_id: Optional[str] = None,
        revocation_history_id: Optional[str] = None,
        state: Optional[Union[str, StateEnum]] = None,
        **kwargs,
    ) -> FulfillmentActionHistory:
        instance = cls()
        if action is not None:
            instance.action = action
        if created_at is not None:
            instance.created_at = created_at
        if fulfillment_history_id is not None:
            instance.fulfillment_history_id = fulfillment_history_id
        if revocation_history_id is not None:
            instance.revocation_history_id = revocation_history_id
        if state is not None:
            instance.state = state
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentActionHistory:
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
        if (
            "fulfillmentHistoryId" in dict_
            and dict_["fulfillmentHistoryId"] is not None
        ):
            instance.fulfillment_history_id = str(dict_["fulfillmentHistoryId"])
        elif include_empty:
            instance.fulfillment_history_id = ""
        if "revocationHistoryId" in dict_ and dict_["revocationHistoryId"] is not None:
            instance.revocation_history_id = str(dict_["revocationHistoryId"])
        elif include_empty:
            instance.revocation_history_id = ""
        if "state" in dict_ and dict_["state"] is not None:
            instance.state = str(dict_["state"])
        elif include_empty:
            instance.state = Union[str, StateEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentActionHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentActionHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillmentActionHistory,
        List[FulfillmentActionHistory],
        Dict[Any, FulfillmentActionHistory],
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
            "action": "action",
            "createdAt": "created_at",
            "fulfillmentHistoryId": "fulfillment_history_id",
            "revocationHistoryId": "revocation_history_id",
            "state": "state",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": False,
            "createdAt": False,
            "fulfillmentHistoryId": False,
            "revocationHistoryId": False,
            "state": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "action": ["FULFILLMENT", "REVOKE_FULFILLMENT"],
            "state": ["FULFILLED", "FULFILL_FAILED", "REVOKED", "REVOKE_FAILED"],
        }

    # endregion static methods
