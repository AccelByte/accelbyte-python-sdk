# justice-platform-service (3.34.0)

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


class OrderGrantInfo(Model):
    """Order grant info (OrderGrantInfo)

    Properties:
        entitlements: (entitlements) OPTIONAL List[EntitlementSummary]

        credits: (credits) OPTIONAL List[CreditSummary]
    """

    # region fields

    entitlements: List[EntitlementSummary]                                                         # OPTIONAL
    credits: List[CreditSummary]                                                                   # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlements(self, value: List[EntitlementSummary]) -> OrderGrantInfo:
        self.entitlements = value
        return self

    def with_credits(self, value: List[CreditSummary]) -> OrderGrantInfo:
        self.credits = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlements"):
            result["entitlements"] = [i0.to_dict(include_empty=include_empty) for i0 in self.entitlements]
        elif include_empty:
            result["entitlements"] = []
        if hasattr(self, "credits"):
            result["credits"] = [i0.to_dict(include_empty=include_empty) for i0 in self.credits]
        elif include_empty:
            result["credits"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlements: Optional[List[EntitlementSummary]] = None,
        credits: Optional[List[CreditSummary]] = None,
    ) -> OrderGrantInfo:
        instance = cls()
        if entitlements is not None:
            instance.entitlements = entitlements
        if credits is not None:
            instance.credits = credits
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OrderGrantInfo:
        instance = cls()
        if not dict_:
            return instance
        if "entitlements" in dict_ and dict_["entitlements"] is not None:
            instance.entitlements = [EntitlementSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["entitlements"]]
        elif include_empty:
            instance.entitlements = []
        if "credits" in dict_ and dict_["credits"] is not None:
            instance.credits = [CreditSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["credits"]]
        elif include_empty:
            instance.credits = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "entitlements": "entitlements",
            "credits": "credits",
        }

    # endregion static methods
