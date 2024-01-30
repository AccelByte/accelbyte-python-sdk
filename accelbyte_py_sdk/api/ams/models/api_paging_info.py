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


class ApiPagingInfo(Model):
    """Api paging info (api.PagingInfo)

    Properties:
        current_page: (currentPage) REQUIRED int

        has_next: (hasNext) REQUIRED bool

        has_pages: (hasPages) REQUIRED bool

        has_prev: (hasPrev) REQUIRED bool

        next_: (next) REQUIRED str

        page_nums: (pageNums) REQUIRED List[int]

        previous: (previous) REQUIRED str

        total: (total) REQUIRED int
    """

    # region fields

    current_page: int  # REQUIRED
    has_next: bool  # REQUIRED
    has_pages: bool  # REQUIRED
    has_prev: bool  # REQUIRED
    next_: str  # REQUIRED
    page_nums: List[int]  # REQUIRED
    previous: str  # REQUIRED
    total: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_current_page(self, value: int) -> ApiPagingInfo:
        self.current_page = value
        return self

    def with_has_next(self, value: bool) -> ApiPagingInfo:
        self.has_next = value
        return self

    def with_has_pages(self, value: bool) -> ApiPagingInfo:
        self.has_pages = value
        return self

    def with_has_prev(self, value: bool) -> ApiPagingInfo:
        self.has_prev = value
        return self

    def with_next(self, value: str) -> ApiPagingInfo:
        self.next_ = value
        return self

    def with_page_nums(self, value: List[int]) -> ApiPagingInfo:
        self.page_nums = value
        return self

    def with_previous(self, value: str) -> ApiPagingInfo:
        self.previous = value
        return self

    def with_total(self, value: int) -> ApiPagingInfo:
        self.total = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_page"):
            result["currentPage"] = int(self.current_page)
        elif include_empty:
            result["currentPage"] = 0
        if hasattr(self, "has_next"):
            result["hasNext"] = bool(self.has_next)
        elif include_empty:
            result["hasNext"] = False
        if hasattr(self, "has_pages"):
            result["hasPages"] = bool(self.has_pages)
        elif include_empty:
            result["hasPages"] = False
        if hasattr(self, "has_prev"):
            result["hasPrev"] = bool(self.has_prev)
        elif include_empty:
            result["hasPrev"] = False
        if hasattr(self, "next_"):
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = ""
        if hasattr(self, "page_nums"):
            result["pageNums"] = [int(i0) for i0 in self.page_nums]
        elif include_empty:
            result["pageNums"] = []
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
        cls,
        current_page: int,
        has_next: bool,
        has_pages: bool,
        has_prev: bool,
        next_: str,
        page_nums: List[int],
        previous: str,
        total: int,
        **kwargs,
    ) -> ApiPagingInfo:
        instance = cls()
        instance.current_page = current_page
        instance.has_next = has_next
        instance.has_pages = has_pages
        instance.has_prev = has_prev
        instance.next_ = next_
        instance.page_nums = page_nums
        instance.previous = previous
        instance.total = total
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiPagingInfo:
        instance = cls()
        if not dict_:
            return instance
        if "currentPage" in dict_ and dict_["currentPage"] is not None:
            instance.current_page = int(dict_["currentPage"])
        elif include_empty:
            instance.current_page = 0
        if "hasNext" in dict_ and dict_["hasNext"] is not None:
            instance.has_next = bool(dict_["hasNext"])
        elif include_empty:
            instance.has_next = False
        if "hasPages" in dict_ and dict_["hasPages"] is not None:
            instance.has_pages = bool(dict_["hasPages"])
        elif include_empty:
            instance.has_pages = False
        if "hasPrev" in dict_ and dict_["hasPrev"] is not None:
            instance.has_prev = bool(dict_["hasPrev"])
        elif include_empty:
            instance.has_prev = False
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = ""
        if "pageNums" in dict_ and dict_["pageNums"] is not None:
            instance.page_nums = [int(i0) for i0 in dict_["pageNums"]]
        elif include_empty:
            instance.page_nums = []
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
    ) -> Dict[str, ApiPagingInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiPagingInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApiPagingInfo, List[ApiPagingInfo], Dict[Any, ApiPagingInfo]]:
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
            "currentPage": "current_page",
            "hasNext": "has_next",
            "hasPages": "has_pages",
            "hasPrev": "has_prev",
            "next": "next_",
            "pageNums": "page_nums",
            "previous": "previous",
            "total": "total",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currentPage": True,
            "hasNext": True,
            "hasPages": True,
            "hasPrev": True,
            "next": True,
            "pageNums": True,
            "previous": True,
            "total": True,
        }

    # endregion static methods
