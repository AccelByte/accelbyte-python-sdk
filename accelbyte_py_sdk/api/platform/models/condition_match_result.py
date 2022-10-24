# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

    matched: bool  # OPTIONAL
    matched_conditions: List[Dict[str, Any]]  # OPTIONAL
    not_match_reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_matched(self, value: bool) -> ConditionMatchResult:
        self.matched = value
        return self

    def with_matched_conditions(
        self, value: List[Dict[str, Any]]
    ) -> ConditionMatchResult:
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
            result["matched"] = False
        if hasattr(self, "matched_conditions"):
            result["matchedConditions"] = [
                {str(k1): v1 for k1, v1 in i0.items()} for i0 in self.matched_conditions
            ]
        elif include_empty:
            result["matchedConditions"] = []
        if hasattr(self, "not_match_reason"):
            result["notMatchReason"] = str(self.not_match_reason)
        elif include_empty:
            result["notMatchReason"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ConditionMatchResult:
        instance = cls()
        if not dict_:
            return instance
        if "matched" in dict_ and dict_["matched"] is not None:
            instance.matched = bool(dict_["matched"])
        elif include_empty:
            instance.matched = False
        if "matchedConditions" in dict_ and dict_["matchedConditions"] is not None:
            instance.matched_conditions = [
                {str(k1): v1 for k1, v1 in i0.items()}
                for i0 in dict_["matchedConditions"]
            ]
        elif include_empty:
            instance.matched_conditions = []
        if "notMatchReason" in dict_ and dict_["notMatchReason"] is not None:
            instance.not_match_reason = str(dict_["notMatchReason"])
        elif include_empty:
            instance.not_match_reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ConditionMatchResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ConditionMatchResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ConditionMatchResult,
        List[ConditionMatchResult],
        Dict[Any, ConditionMatchResult],
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
            "matched": "matched",
            "matchedConditions": "matched_conditions",
            "notMatchReason": "not_match_reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matched": False,
            "matchedConditions": False,
            "notMatchReason": False,
        }

    # endregion static methods
