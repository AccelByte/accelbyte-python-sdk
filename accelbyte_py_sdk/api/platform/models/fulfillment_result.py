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

from ..models.credit_summary import CreditSummary
from ..models.entitlement_summary import EntitlementSummary
from ..models.subscription_summary import SubscriptionSummary


class FulfillmentResult(Model):
    """Fulfillment result (FulfillmentResult)

    Properties:
        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        credit_summaries: (creditSummaries) OPTIONAL List[CreditSummary]

        entitlement_summaries: (entitlementSummaries) OPTIONAL List[EntitlementSummary]

        subscription_summaries: (subscriptionSummaries) OPTIONAL List[SubscriptionSummary]
    """

    # region fields

    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    credit_summaries: List[CreditSummary]  # OPTIONAL
    entitlement_summaries: List[EntitlementSummary]  # OPTIONAL
    subscription_summaries: List[SubscriptionSummary]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> FulfillmentResult:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> FulfillmentResult:
        self.user_id = value
        return self

    def with_credit_summaries(self, value: List[CreditSummary]) -> FulfillmentResult:
        self.credit_summaries = value
        return self

    def with_entitlement_summaries(
        self, value: List[EntitlementSummary]
    ) -> FulfillmentResult:
        self.entitlement_summaries = value
        return self

    def with_subscription_summaries(
        self, value: List[SubscriptionSummary]
    ) -> FulfillmentResult:
        self.subscription_summaries = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        namespace: str,
        user_id: str,
        credit_summaries: Optional[List[CreditSummary]] = None,
        entitlement_summaries: Optional[List[EntitlementSummary]] = None,
        subscription_summaries: Optional[List[SubscriptionSummary]] = None,
    ) -> FulfillmentResult:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if credit_summaries is not None:
            instance.credit_summaries = credit_summaries
        if entitlement_summaries is not None:
            instance.entitlement_summaries = entitlement_summaries
        if subscription_summaries is not None:
            instance.subscription_summaries = subscription_summaries
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentResult:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
    ) -> Dict[str, FulfillmentResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillmentResult, List[FulfillmentResult], Dict[Any, FulfillmentResult]
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
            "namespace": "namespace",
            "userId": "user_id",
            "creditSummaries": "credit_summaries",
            "entitlementSummaries": "entitlement_summaries",
            "subscriptionSummaries": "subscription_summaries",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "creditSummaries": False,
            "entitlementSummaries": False,
            "subscriptionSummaries": False,
        }

    # endregion static methods
