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


class PredicateValidateResult(Model):
    """Predicate validate result (PredicateValidateResult)

    Properties:
        matched: (matched) OPTIONAL List[str]

        predicate_name: (predicateName) OPTIONAL str

        unmatched: (unmatched) OPTIONAL List[str]

        validated: (validated) OPTIONAL bool
    """

    # region fields

    matched: List[str]  # OPTIONAL
    predicate_name: str  # OPTIONAL
    unmatched: List[str]  # OPTIONAL
    validated: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_matched(self, value: List[str]) -> PredicateValidateResult:
        self.matched = value
        return self

    def with_predicate_name(self, value: str) -> PredicateValidateResult:
        self.predicate_name = value
        return self

    def with_unmatched(self, value: List[str]) -> PredicateValidateResult:
        self.unmatched = value
        return self

    def with_validated(self, value: bool) -> PredicateValidateResult:
        self.validated = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "matched"):
            result["matched"] = [str(i0) for i0 in self.matched]
        elif include_empty:
            result["matched"] = []
        if hasattr(self, "predicate_name"):
            result["predicateName"] = str(self.predicate_name)
        elif include_empty:
            result["predicateName"] = ""
        if hasattr(self, "unmatched"):
            result["unmatched"] = [str(i0) for i0 in self.unmatched]
        elif include_empty:
            result["unmatched"] = []
        if hasattr(self, "validated"):
            result["validated"] = bool(self.validated)
        elif include_empty:
            result["validated"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        matched: Optional[List[str]] = None,
        predicate_name: Optional[str] = None,
        unmatched: Optional[List[str]] = None,
        validated: Optional[bool] = None,
    ) -> PredicateValidateResult:
        instance = cls()
        if matched is not None:
            instance.matched = matched
        if predicate_name is not None:
            instance.predicate_name = predicate_name
        if unmatched is not None:
            instance.unmatched = unmatched
        if validated is not None:
            instance.validated = validated
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PredicateValidateResult:
        instance = cls()
        if not dict_:
            return instance
        if "matched" in dict_ and dict_["matched"] is not None:
            instance.matched = [str(i0) for i0 in dict_["matched"]]
        elif include_empty:
            instance.matched = []
        if "predicateName" in dict_ and dict_["predicateName"] is not None:
            instance.predicate_name = str(dict_["predicateName"])
        elif include_empty:
            instance.predicate_name = ""
        if "unmatched" in dict_ and dict_["unmatched"] is not None:
            instance.unmatched = [str(i0) for i0 in dict_["unmatched"]]
        elif include_empty:
            instance.unmatched = []
        if "validated" in dict_ and dict_["validated"] is not None:
            instance.validated = bool(dict_["validated"])
        elif include_empty:
            instance.validated = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PredicateValidateResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PredicateValidateResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PredicateValidateResult,
        List[PredicateValidateResult],
        Dict[Any, PredicateValidateResult],
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
            "predicateName": "predicate_name",
            "unmatched": "unmatched",
            "validated": "validated",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matched": False,
            "predicateName": False,
            "unmatched": False,
            "validated": False,
        }

    # endregion static methods
