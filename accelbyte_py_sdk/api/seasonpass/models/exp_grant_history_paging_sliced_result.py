# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.16.0)

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

from ..models.exp_grant_history_info import ExpGrantHistoryInfo
from ..models.paging import Paging


class ExpGrantHistoryPagingSlicedResult(Model):
    """Exp grant history paging sliced result (ExpGrantHistoryPagingSlicedResult)

    Properties:
        data: (data) REQUIRED List[ExpGrantHistoryInfo]

        paging: (paging) OPTIONAL Paging

        total: (total) OPTIONAL int
    """

    # region fields

    data: List[ExpGrantHistoryInfo]  # REQUIRED
    paging: Paging  # OPTIONAL
    total: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_data(
        self, value: List[ExpGrantHistoryInfo]
    ) -> ExpGrantHistoryPagingSlicedResult:
        self.data = value
        return self

    def with_paging(self, value: Paging) -> ExpGrantHistoryPagingSlicedResult:
        self.paging = value
        return self

    def with_total(self, value: int) -> ExpGrantHistoryPagingSlicedResult:
        self.total = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.data
            ]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = Paging()
        if hasattr(self, "total"):
            result["total"] = int(self.total)
        elif include_empty:
            result["total"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: List[ExpGrantHistoryInfo],
        paging: Optional[Paging] = None,
        total: Optional[int] = None,
    ) -> ExpGrantHistoryPagingSlicedResult:
        instance = cls()
        instance.data = data
        if paging is not None:
            instance.paging = paging
        if total is not None:
            instance.total = total
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ExpGrantHistoryPagingSlicedResult:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [
                ExpGrantHistoryInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["data"]
            ]
        elif include_empty:
            instance.data = []
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = Paging.create_from_dict(
                dict_["paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = Paging()
        if "total" in dict_ and dict_["total"] is not None:
            instance.total = int(dict_["total"])
        elif include_empty:
            instance.total = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ExpGrantHistoryPagingSlicedResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ExpGrantHistoryPagingSlicedResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ExpGrantHistoryPagingSlicedResult,
        List[ExpGrantHistoryPagingSlicedResult],
        Dict[Any, ExpGrantHistoryPagingSlicedResult],
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
            "data": "data",
            "paging": "paging",
            "total": "total",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": True,
            "paging": False,
            "total": False,
        }

    # endregion static methods
