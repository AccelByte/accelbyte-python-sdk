# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class AccountcommonPagination(Model):
    """Accountcommon pagination (accountcommon.Pagination)

    Properties:
        first: (First) REQUIRED str

        last: (Last) REQUIRED str

        next_: (Next) REQUIRED str

        previous: (Previous) REQUIRED str
    """

    # region fields

    first: str  # REQUIRED
    last: str  # REQUIRED
    next_: str  # REQUIRED
    previous: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_first(self, value: str) -> AccountcommonPagination:
        self.first = value
        return self

    def with_last(self, value: str) -> AccountcommonPagination:
        self.last = value
        return self

    def with_next(self, value: str) -> AccountcommonPagination:
        self.next_ = value
        return self

    def with_previous(self, value: str) -> AccountcommonPagination:
        self.previous = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "first"):
            result["First"] = str(self.first)
        elif include_empty:
            result["First"] = ""
        if hasattr(self, "last"):
            result["Last"] = str(self.last)
        elif include_empty:
            result["Last"] = ""
        if hasattr(self, "next_"):
            result["Next"] = str(self.next_)
        elif include_empty:
            result["Next"] = ""
        if hasattr(self, "previous"):
            result["Previous"] = str(self.previous)
        elif include_empty:
            result["Previous"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        first: str,
        last: str,
        next_: str,
        previous: str,
    ) -> AccountcommonPagination:
        instance = cls()
        instance.first = first
        instance.last = last
        instance.next_ = next_
        instance.previous = previous
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonPagination:
        instance = cls()
        if not dict_:
            return instance
        if "First" in dict_ and dict_["First"] is not None:
            instance.first = str(dict_["First"])
        elif include_empty:
            instance.first = ""
        if "Last" in dict_ and dict_["Last"] is not None:
            instance.last = str(dict_["Last"])
        elif include_empty:
            instance.last = ""
        if "Next" in dict_ and dict_["Next"] is not None:
            instance.next_ = str(dict_["Next"])
        elif include_empty:
            instance.next_ = ""
        if "Previous" in dict_ and dict_["Previous"] is not None:
            instance.previous = str(dict_["Previous"])
        elif include_empty:
            instance.previous = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonPagination]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonPagination]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonPagination,
        List[AccountcommonPagination],
        Dict[Any, AccountcommonPagination],
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
            "First": "first",
            "Last": "last",
            "Next": "next_",
            "Previous": "previous",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "First": True,
            "Last": True,
            "Next": True,
            "Previous": True,
        }

    # endregion static methods
