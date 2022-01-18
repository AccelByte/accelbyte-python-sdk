# justice-iam-service (5.0.0)

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


class AccountcommonPagination(Model):
    """Accountcommon pagination (accountcommon.Pagination)

    Properties:
        first: (First) REQUIRED str

        last: (Last) REQUIRED str

        next_: (Next) REQUIRED str

        previous: (Previous) REQUIRED str
    """

    # region fields

    first: str                                                                                     # REQUIRED
    last: str                                                                                      # REQUIRED
    next_: str                                                                                     # REQUIRED
    previous: str                                                                                  # REQUIRED

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
            result["First"] = str()
        if hasattr(self, "last"):
            result["Last"] = str(self.last)
        elif include_empty:
            result["Last"] = str()
        if hasattr(self, "next_"):
            result["Next"] = str(self.next_)
        elif include_empty:
            result["Next"] = str()
        if hasattr(self, "previous"):
            result["Previous"] = str(self.previous)
        elif include_empty:
            result["Previous"] = str()
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonPagination:
        instance = cls()
        if not dict_:
            return instance
        if "First" in dict_ and dict_["First"] is not None:
            instance.first = str(dict_["First"])
        elif include_empty:
            instance.first = str()
        if "Last" in dict_ and dict_["Last"] is not None:
            instance.last = str(dict_["Last"])
        elif include_empty:
            instance.last = str()
        if "Next" in dict_ and dict_["Next"] is not None:
            instance.next_ = str(dict_["Next"])
        elif include_empty:
            instance.next_ = str()
        if "Previous" in dict_ and dict_["Previous"] is not None:
            instance.previous = str(dict_["Previous"])
        elif include_empty:
            instance.previous = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "First": "first",
            "Last": "last",
            "Next": "next_",
            "Previous": "previous",
        }

    # endregion static methods
