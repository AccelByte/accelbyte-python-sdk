# justice-platform-service (3.40.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ConditionMatchResult(Model):
    """Condition match result (ConditionMatchResult)

    Properties:
        matched: (matched) OPTIONAL bool

        matched_conditions: (matchedConditions) OPTIONAL List[Dict[str, Any]]

        not_match_reason: (notMatchReason) OPTIONAL str
    """

    # region fields

    matched: bool                                                                                  # OPTIONAL
    matched_conditions: List[Dict[str, Any]]                                                       # OPTIONAL
    not_match_reason: str                                                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_matched(self, value: bool) -> ConditionMatchResult:
        self.matched = value
        return self

    def with_matched_conditions(self, value: List[Dict[str, Any]]) -> ConditionMatchResult:
        self.matched_conditions = value
        return self

    def with_not_match_reason(self, value: str) -> ConditionMatchResult:
        self.not_match_reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "matched"):
            result["matched"] = bool(self.matched)
        elif include_empty:
            result["matched"] = bool()
        if hasattr(self, "matched_conditions"):
            result["matchedConditions"] = [{str(k1): v1 for k1, v1 in i0.items()} for i0 in self.matched_conditions]
        elif include_empty:
            result["matchedConditions"] = []
        if hasattr(self, "not_match_reason"):
            result["notMatchReason"] = str(self.not_match_reason)
        elif include_empty:
            result["notMatchReason"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        matched: Optional[bool] = None,
        matched_conditions: Optional[List[Dict[str, Any]]] = None,
        not_match_reason: Optional[str] = None,
    ) -> ConditionMatchResult:
        instance = cls()
        if matched is not None:
            instance.matched = matched
        if matched_conditions is not None:
            instance.matched_conditions = matched_conditions
        if not_match_reason is not None:
            instance.not_match_reason = not_match_reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ConditionMatchResult:
        instance = cls()
        if not dict_:
            return instance
        if "matched" in dict_ and dict_["matched"] is not None:
            instance.matched = bool(dict_["matched"])
        elif include_empty:
            instance.matched = bool()
        if "matchedConditions" in dict_ and dict_["matchedConditions"] is not None:
            instance.matched_conditions = [{str(k1): v1 for k1, v1 in i0.items()} for i0 in dict_["matchedConditions"]]
        elif include_empty:
            instance.matched_conditions = []
        if "notMatchReason" in dict_ and dict_["notMatchReason"] is not None:
            instance.not_match_reason = str(dict_["notMatchReason"])
        elif include_empty:
            instance.not_match_reason = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "matched": "matched",
            "matchedConditions": "matched_conditions",
            "notMatchReason": "not_match_reason",
        }

    # endregion static methods
