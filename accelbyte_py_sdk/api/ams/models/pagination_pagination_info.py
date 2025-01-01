# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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


class PaginationPaginationInfo(Model):
    """Pagination pagination info (pagination.PaginationInfo)

    Properties:
        first: (first) REQUIRED str

        last: (last) REQUIRED str

        next_: (next) REQUIRED str

        previous: (previous) REQUIRED str

        total: (total) REQUIRED int
    """

    # region fields

    first: str  # REQUIRED
    last: str  # REQUIRED
    next_: str  # REQUIRED
    previous: str  # REQUIRED
    total: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_first(self, value: str) -> PaginationPaginationInfo:
        self.first = value
        return self

    def with_last(self, value: str) -> PaginationPaginationInfo:
        self.last = value
        return self

    def with_next(self, value: str) -> PaginationPaginationInfo:
        self.next_ = value
        return self

    def with_previous(self, value: str) -> PaginationPaginationInfo:
        self.previous = value
        return self

    def with_total(self, value: int) -> PaginationPaginationInfo:
        self.total = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "first"):
            result["first"] = str(self.first)
        elif include_empty:
            result["first"] = ""
        if hasattr(self, "last"):
            result["last"] = str(self.last)
        elif include_empty:
            result["last"] = ""
        if hasattr(self, "next_"):
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = ""
        if hasattr(self, "previous"):
            result["previous"] = str(self.previous)
        elif include_empty:
            result["previous"] = ""
        if hasattr(self, "total"):
            result["total"] = int(self.total)
        elif include_empty:
            result["total"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, first: str, last: str, next_: str, previous: str, total: int, **kwargs
    ) -> PaginationPaginationInfo:
        instance = cls()
        instance.first = first
        instance.last = last
        instance.next_ = next_
        instance.previous = previous
        instance.total = total
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaginationPaginationInfo:
        instance = cls()
        if not dict_:
            return instance
        if "first" in dict_ and dict_["first"] is not None:
            instance.first = str(dict_["first"])
        elif include_empty:
            instance.first = ""
        if "last" in dict_ and dict_["last"] is not None:
            instance.last = str(dict_["last"])
        elif include_empty:
            instance.last = ""
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = ""
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = ""
        if "total" in dict_ and dict_["total"] is not None:
            instance.total = int(dict_["total"])
        elif include_empty:
            instance.total = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaginationPaginationInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaginationPaginationInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PaginationPaginationInfo,
        List[PaginationPaginationInfo],
        Dict[Any, PaginationPaginationInfo],
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
            "first": "first",
            "last": "last",
            "next": "next_",
            "previous": "previous",
            "total": "total",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "first": True,
            "last": True,
            "next": True,
            "previous": True,
            "total": True,
        }

    # endregion static methods
