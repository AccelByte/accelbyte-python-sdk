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

from ..models.credit_summary import CreditSummary
from ..models.entitlement_summary import EntitlementSummary
from ..models.fulfillment_item import FulfillmentItem
from ..models.fulfillment_state_info import FulfillmentStateInfo
from ..models.subscription_summary import SubscriptionSummary


class StateEnum(StrEnum):
    FULFILLED = "FULFILLED"
    FULFILL_FAILED = "FULFILL_FAILED"
    REVOKED = "REVOKED"
    REVOKE_FAILED = "REVOKE_FAILED"


class FulfillmentV2Result(Model):
    """Fulfillment V2 result (FulfillmentV2Result)

    Properties:
        items: (items) REQUIRED List[FulfillmentItem]

        namespace: (namespace) REQUIRED str

        state: (state) REQUIRED Union[str, StateEnum]

        state_info: (stateInfo) REQUIRED FulfillmentStateInfo

        transaction_id: (transactionId) REQUIRED str

        user_id: (userId) REQUIRED str

        credit_summaries: (creditSummaries) OPTIONAL List[CreditSummary]

        entitlement_summaries: (entitlementSummaries) OPTIONAL List[EntitlementSummary]

        id_: (id) OPTIONAL str

        subscription_summaries: (subscriptionSummaries) OPTIONAL List[SubscriptionSummary]
    """

    # region fields

    items: List[FulfillmentItem]  # REQUIRED
    namespace: str  # REQUIRED
    state: Union[str, StateEnum]  # REQUIRED
    state_info: FulfillmentStateInfo  # REQUIRED
    transaction_id: str  # REQUIRED
    user_id: str  # REQUIRED
    credit_summaries: List[CreditSummary]  # OPTIONAL
    entitlement_summaries: List[EntitlementSummary]  # OPTIONAL
    id_: str  # OPTIONAL
    subscription_summaries: List[SubscriptionSummary]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_items(self, value: List[FulfillmentItem]) -> FulfillmentV2Result:
        self.items = value
        return self

    def with_namespace(self, value: str) -> FulfillmentV2Result:
        self.namespace = value
        return self

    def with_state(self, value: Union[str, StateEnum]) -> FulfillmentV2Result:
        self.state = value
        return self

    def with_state_info(self, value: FulfillmentStateInfo) -> FulfillmentV2Result:
        self.state_info = value
        return self

    def with_transaction_id(self, value: str) -> FulfillmentV2Result:
        self.transaction_id = value
        return self

    def with_user_id(self, value: str) -> FulfillmentV2Result:
        self.user_id = value
        return self

    def with_credit_summaries(self, value: List[CreditSummary]) -> FulfillmentV2Result:
        self.credit_summaries = value
        return self

    def with_entitlement_summaries(
        self, value: List[EntitlementSummary]
    ) -> FulfillmentV2Result:
        self.entitlement_summaries = value
        return self

    def with_id(self, value: str) -> FulfillmentV2Result:
        self.id_ = value
        return self

    def with_subscription_summaries(
        self, value: List[SubscriptionSummary]
    ) -> FulfillmentV2Result:
        self.subscription_summaries = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "credit_summaries"):
            result["creditSummaries"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.credit_summaries
            ]
        elif include_empty:
            result["creditSummaries"] = []
        if hasattr(self, "entitlement_summaries"):
            result["entitlementSummaries"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.entitlement_summaries
            ]
        elif include_empty:
            result["entitlementSummaries"] = []
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "subscription_summaries"):
            result["subscriptionSummaries"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.subscription_summaries
            ]
        elif include_empty:
            result["subscriptionSummaries"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        items: List[FulfillmentItem],
        namespace: str,
        state: Union[str, StateEnum],
        state_info: FulfillmentStateInfo,
        transaction_id: str,
        user_id: str,
        credit_summaries: Optional[List[CreditSummary]] = None,
        entitlement_summaries: Optional[List[EntitlementSummary]] = None,
        id_: Optional[str] = None,
        subscription_summaries: Optional[List[SubscriptionSummary]] = None,
        **kwargs,
    ) -> FulfillmentV2Result:
        instance = cls()
        instance.items = items
        instance.namespace = namespace
        instance.state = state
        instance.state_info = state_info
        instance.transaction_id = transaction_id
        instance.user_id = user_id
        if credit_summaries is not None:
            instance.credit_summaries = credit_summaries
        if entitlement_summaries is not None:
            instance.entitlement_summaries = entitlement_summaries
        if id_ is not None:
            instance.id_ = id_
        if subscription_summaries is not None:
            instance.subscription_summaries = subscription_summaries
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentV2Result:
        instance = cls()
        if not dict_:
            return instance
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
        if "creditSummaries" in dict_ and dict_["creditSummaries"] is not None:
            instance.credit_summaries = [
                CreditSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["creditSummaries"]
            ]
        elif include_empty:
            instance.credit_summaries = []
        if (
            "entitlementSummaries" in dict_
            and dict_["entitlementSummaries"] is not None
        ):
            instance.entitlement_summaries = [
                EntitlementSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlementSummaries"]
            ]
        elif include_empty:
            instance.entitlement_summaries = []
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if (
            "subscriptionSummaries" in dict_
            and dict_["subscriptionSummaries"] is not None
        ):
            instance.subscription_summaries = [
                SubscriptionSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["subscriptionSummaries"]
            ]
        elif include_empty:
            instance.subscription_summaries = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentV2Result]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentV2Result]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillmentV2Result, List[FulfillmentV2Result], Dict[Any, FulfillmentV2Result]
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
            "items": "items",
            "namespace": "namespace",
            "state": "state",
            "stateInfo": "state_info",
            "transactionId": "transaction_id",
            "userId": "user_id",
            "creditSummaries": "credit_summaries",
            "entitlementSummaries": "entitlement_summaries",
            "id": "id_",
            "subscriptionSummaries": "subscription_summaries",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "items": True,
            "namespace": True,
            "state": True,
            "stateInfo": True,
            "transactionId": True,
            "userId": True,
            "creditSummaries": False,
            "entitlementSummaries": False,
            "id": False,
            "subscriptionSummaries": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "state": ["FULFILLED", "FULFILL_FAILED", "REVOKED", "REVOKE_FAILED"],
        }

    # endregion static methods
