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

from ..models.credit_revocation import CreditRevocation
from ..models.entitlement_revocation import EntitlementRevocation
from ..models.fulfillment_item import FulfillmentItem
from ..models.fulfillment_state_info import FulfillmentStateInfo
from ..models.item_revocation import ItemRevocation


class StateEnum(StrEnum):
    FULFILLED = "FULFILLED"
    FULFILL_FAILED = "FULFILL_FAILED"
    REVOKED = "REVOKED"
    REVOKE_FAILED = "REVOKE_FAILED"


class RevokeFulfillmentV2Result(Model):
    """Revoke fulfillment V2 result (RevokeFulfillmentV2Result)

    Properties:
        id_: (id) REQUIRED str

        items: (items) REQUIRED List[FulfillmentItem]

        namespace: (namespace) REQUIRED str

        state: (state) REQUIRED Union[str, StateEnum]

        state_info: (stateInfo) REQUIRED FulfillmentStateInfo

        transaction_id: (transactionId) REQUIRED str

        user_id: (userId) REQUIRED str

        credit_revocations: (creditRevocations) OPTIONAL List[CreditRevocation]

        entitlement_revocations: (entitlementRevocations) OPTIONAL List[EntitlementRevocation]

        item_revocations: (itemRevocations) OPTIONAL List[ItemRevocation]
    """

    # region fields

    id_: str  # REQUIRED
    items: List[FulfillmentItem]  # REQUIRED
    namespace: str  # REQUIRED
    state: Union[str, StateEnum]  # REQUIRED
    state_info: FulfillmentStateInfo  # REQUIRED
    transaction_id: str  # REQUIRED
    user_id: str  # REQUIRED
    credit_revocations: List[CreditRevocation]  # OPTIONAL
    entitlement_revocations: List[EntitlementRevocation]  # OPTIONAL
    item_revocations: List[ItemRevocation]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> RevokeFulfillmentV2Result:
        self.id_ = value
        return self

    def with_items(self, value: List[FulfillmentItem]) -> RevokeFulfillmentV2Result:
        self.items = value
        return self

    def with_namespace(self, value: str) -> RevokeFulfillmentV2Result:
        self.namespace = value
        return self

    def with_state(self, value: Union[str, StateEnum]) -> RevokeFulfillmentV2Result:
        self.state = value
        return self

    def with_state_info(self, value: FulfillmentStateInfo) -> RevokeFulfillmentV2Result:
        self.state_info = value
        return self

    def with_transaction_id(self, value: str) -> RevokeFulfillmentV2Result:
        self.transaction_id = value
        return self

    def with_user_id(self, value: str) -> RevokeFulfillmentV2Result:
        self.user_id = value
        return self

    def with_credit_revocations(
        self, value: List[CreditRevocation]
    ) -> RevokeFulfillmentV2Result:
        self.credit_revocations = value
        return self

    def with_entitlement_revocations(
        self, value: List[EntitlementRevocation]
    ) -> RevokeFulfillmentV2Result:
        self.entitlement_revocations = value
        return self

    def with_item_revocations(
        self, value: List[ItemRevocation]
    ) -> RevokeFulfillmentV2Result:
        self.item_revocations = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "credit_revocations"):
            result["creditRevocations"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.credit_revocations
            ]
        elif include_empty:
            result["creditRevocations"] = []
        if hasattr(self, "entitlement_revocations"):
            result["entitlementRevocations"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.entitlement_revocations
            ]
        elif include_empty:
            result["entitlementRevocations"] = []
        if hasattr(self, "item_revocations"):
            result["itemRevocations"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.item_revocations
            ]
        elif include_empty:
            result["itemRevocations"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        items: List[FulfillmentItem],
        namespace: str,
        state: Union[str, StateEnum],
        state_info: FulfillmentStateInfo,
        transaction_id: str,
        user_id: str,
        credit_revocations: Optional[List[CreditRevocation]] = None,
        entitlement_revocations: Optional[List[EntitlementRevocation]] = None,
        item_revocations: Optional[List[ItemRevocation]] = None,
        **kwargs,
    ) -> RevokeFulfillmentV2Result:
        instance = cls()
        instance.id_ = id_
        instance.items = items
        instance.namespace = namespace
        instance.state = state
        instance.state_info = state_info
        instance.transaction_id = transaction_id
        instance.user_id = user_id
        if credit_revocations is not None:
            instance.credit_revocations = credit_revocations
        if entitlement_revocations is not None:
            instance.entitlement_revocations = entitlement_revocations
        if item_revocations is not None:
            instance.item_revocations = item_revocations
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevokeFulfillmentV2Result:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                FulfillmentItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "creditRevocations" in dict_ and dict_["creditRevocations"] is not None:
            instance.credit_revocations = [
                CreditRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["creditRevocations"]
            ]
        elif include_empty:
            instance.credit_revocations = []
        if (
            "entitlementRevocations" in dict_
            and dict_["entitlementRevocations"] is not None
        ):
            instance.entitlement_revocations = [
                EntitlementRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlementRevocations"]
            ]
        elif include_empty:
            instance.entitlement_revocations = []
        if "itemRevocations" in dict_ and dict_["itemRevocations"] is not None:
            instance.item_revocations = [
                ItemRevocation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["itemRevocations"]
            ]
        elif include_empty:
            instance.item_revocations = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeFulfillmentV2Result]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeFulfillmentV2Result]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RevokeFulfillmentV2Result,
        List[RevokeFulfillmentV2Result],
        Dict[Any, RevokeFulfillmentV2Result],
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
            "id": "id_",
            "items": "items",
            "namespace": "namespace",
            "state": "state",
            "stateInfo": "state_info",
            "transactionId": "transaction_id",
            "userId": "user_id",
            "creditRevocations": "credit_revocations",
            "entitlementRevocations": "entitlement_revocations",
            "itemRevocations": "item_revocations",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "items": True,
            "namespace": True,
            "state": True,
            "stateInfo": True,
            "transactionId": True,
            "userId": True,
            "creditRevocations": False,
            "entitlementRevocations": False,
            "itemRevocations": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "state": ["FULFILLED", "FULFILL_FAILED", "REVOKED", "REVOKE_FAILED"],
        }

    # endregion static methods
