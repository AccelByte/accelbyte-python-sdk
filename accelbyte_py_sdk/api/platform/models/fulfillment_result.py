# Auto-generated at 2021-10-14T22:17:16.318374+08:00
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

from ..models.credit_summary import CreditSummary
from ..models.entitlement_summary import EntitlementSummary


class FulfillmentResult(Model):
    """Fulfillment result (FulfillmentResult)

    Properties:
        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        entitlement_summaries: (entitlementSummaries) OPTIONAL List[EntitlementSummary]

        credit_summaries: (creditSummaries) OPTIONAL List[CreditSummary]
    """

    # region fields

    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    entitlement_summaries: List[EntitlementSummary]                                                # OPTIONAL
    credit_summaries: List[CreditSummary]                                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_namespace(self, value: str) -> FulfillmentResult:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> FulfillmentResult:
        self.user_id = value
        return self

    def with_entitlement_summaries(self, value: List[EntitlementSummary]) -> FulfillmentResult:
        self.entitlement_summaries = value
        return self

    def with_credit_summaries(self, value: List[CreditSummary]) -> FulfillmentResult:
        self.credit_summaries = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "entitlement_summaries") and self.entitlement_summaries:
            result["entitlementSummaries"] = [i0.to_dict(include_empty=include_empty) for i0 in self.entitlement_summaries]
        elif include_empty:
            result["entitlementSummaries"] = []
        if hasattr(self, "credit_summaries") and self.credit_summaries:
            result["creditSummaries"] = [i0.to_dict(include_empty=include_empty) for i0 in self.credit_summaries]
        elif include_empty:
            result["creditSummaries"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        user_id: str,
        entitlement_summaries: Optional[List[EntitlementSummary]] = None,
        credit_summaries: Optional[List[CreditSummary]] = None,
    ) -> FulfillmentResult:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if entitlement_summaries is not None:
            instance.entitlement_summaries = entitlement_summaries
        if credit_summaries is not None:
            instance.credit_summaries = credit_summaries
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FulfillmentResult:
        instance = cls()
        if not dict_:
            return instance
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "entitlementSummaries" in dict_ and dict_["entitlementSummaries"] is not None:
            instance.entitlement_summaries = [EntitlementSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["entitlementSummaries"]]
        elif include_empty:
            instance.entitlement_summaries = []
        if "creditSummaries" in dict_ and dict_["creditSummaries"] is not None:
            instance.credit_summaries = [CreditSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["creditSummaries"]]
        elif include_empty:
            instance.credit_summaries = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "entitlementSummaries": "entitlement_summaries",
            "creditSummaries": "credit_summaries",
        }

    # endregion static methods
