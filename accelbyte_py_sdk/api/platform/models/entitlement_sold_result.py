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

from ..models.credit_summary import CreditSummary
from ..models.entitlement_info import EntitlementInfo


class EntitlementSoldResult(Model):
    """Entitlement sold result (EntitlementSoldResult)

    Properties:
        credit_summaries: (creditSummaries) OPTIONAL List[CreditSummary]

        entitlement_info: (entitlementInfo) OPTIONAL EntitlementInfo

        replayed: (replayed) OPTIONAL bool

        request_id: (requestId) OPTIONAL str
    """

    # region fields

    credit_summaries: List[CreditSummary]  # OPTIONAL
    entitlement_info: EntitlementInfo  # OPTIONAL
    replayed: bool  # OPTIONAL
    request_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_credit_summaries(
        self, value: List[CreditSummary]
    ) -> EntitlementSoldResult:
        self.credit_summaries = value
        return self

    def with_entitlement_info(self, value: EntitlementInfo) -> EntitlementSoldResult:
        self.entitlement_info = value
        return self

    def with_replayed(self, value: bool) -> EntitlementSoldResult:
        self.replayed = value
        return self

    def with_request_id(self, value: str) -> EntitlementSoldResult:
        self.request_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "credit_summaries"):
            result["creditSummaries"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.credit_summaries
            ]
        elif include_empty:
            result["creditSummaries"] = []
        if hasattr(self, "entitlement_info"):
            result["entitlementInfo"] = self.entitlement_info.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["entitlementInfo"] = EntitlementInfo()
        if hasattr(self, "replayed"):
            result["replayed"] = bool(self.replayed)
        elif include_empty:
            result["replayed"] = False
        if hasattr(self, "request_id"):
            result["requestId"] = str(self.request_id)
        elif include_empty:
            result["requestId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        credit_summaries: Optional[List[CreditSummary]] = None,
        entitlement_info: Optional[EntitlementInfo] = None,
        replayed: Optional[bool] = None,
        request_id: Optional[str] = None,
        **kwargs,
    ) -> EntitlementSoldResult:
        instance = cls()
        if credit_summaries is not None:
            instance.credit_summaries = credit_summaries
        if entitlement_info is not None:
            instance.entitlement_info = entitlement_info
        if replayed is not None:
            instance.replayed = replayed
        if request_id is not None:
            instance.request_id = request_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EntitlementSoldResult:
        instance = cls()
        if not dict_:
            return instance
        if "creditSummaries" in dict_ and dict_["creditSummaries"] is not None:
            instance.credit_summaries = [
                CreditSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["creditSummaries"]
            ]
        elif include_empty:
            instance.credit_summaries = []
        if "entitlementInfo" in dict_ and dict_["entitlementInfo"] is not None:
            instance.entitlement_info = EntitlementInfo.create_from_dict(
                dict_["entitlementInfo"], include_empty=include_empty
            )
        elif include_empty:
            instance.entitlement_info = EntitlementInfo()
        if "replayed" in dict_ and dict_["replayed"] is not None:
            instance.replayed = bool(dict_["replayed"])
        elif include_empty:
            instance.replayed = False
        if "requestId" in dict_ and dict_["requestId"] is not None:
            instance.request_id = str(dict_["requestId"])
        elif include_empty:
            instance.request_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EntitlementSoldResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EntitlementSoldResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EntitlementSoldResult,
        List[EntitlementSoldResult],
        Dict[Any, EntitlementSoldResult],
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
            "creditSummaries": "credit_summaries",
            "entitlementInfo": "entitlement_info",
            "replayed": "replayed",
            "requestId": "request_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "creditSummaries": False,
            "entitlementInfo": False,
            "replayed": False,
            "requestId": False,
        }

    # endregion static methods
