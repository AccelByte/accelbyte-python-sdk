# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-ds-log-manager-service (2.1.0)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelsPagingCursor(Model):
    """Models paging cursor (models.PagingCursor)

    Properties:
        first: (first) REQUIRED str

        last: (last) REQUIRED str

        next_: (next) REQUIRED str

        previous: (previous) REQUIRED str
    """

    # region fields

    first: str                                                                                     # REQUIRED
    last: str                                                                                      # REQUIRED
    next_: str                                                                                     # REQUIRED
    previous: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_first(self, value: str) -> ModelsPagingCursor:
        self.first = value
        return self

    def with_last(self, value: str) -> ModelsPagingCursor:
        self.last = value
        return self

    def with_next(self, value: str) -> ModelsPagingCursor:
        self.next_ = value
        return self

    def with_previous(self, value: str) -> ModelsPagingCursor:
        self.previous = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "first") or self.first is None:
            return False
        if not hasattr(self, "last") or self.last is None:
            return False
        if not hasattr(self, "next_") or self.next_ is None:
            return False
        if not hasattr(self, "previous") or self.previous is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "first"):
            result["first"] = str(self.first)
        elif include_empty:
            result["first"] = str()
        if hasattr(self, "last"):
            result["last"] = str(self.last)
        elif include_empty:
            result["last"] = str()
        if hasattr(self, "next_"):
            result["next"] = str(self.next_)
        elif include_empty:
            result["next"] = str()
        if hasattr(self, "previous"):
            result["previous"] = str(self.previous)
        elif include_empty:
            result["previous"] = str()
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
    ) -> ModelsPagingCursor:
        instance = cls()
        instance.first = first
        instance.last = last
        instance.next_ = next_
        instance.previous = previous
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPagingCursor:
        instance = cls()
        if not dict_:
            return instance
        if "first" in dict_ and dict_["first"] is not None:
            instance.first = str(dict_["first"])
        elif include_empty:
            instance.first = str()
        if "last" in dict_ and dict_["last"] is not None:
            instance.last = str(dict_["last"])
        elif include_empty:
            instance.last = str()
        if "next" in dict_ and dict_["next"] is not None:
            instance.next_ = str(dict_["next"])
        elif include_empty:
            instance.next_ = str()
        if "previous" in dict_ and dict_["previous"] is not None:
            instance.previous = str(dict_["previous"])
        elif include_empty:
            instance.previous = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsPagingCursor]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsPagingCursor]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsPagingCursor, List[ModelsPagingCursor]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "first": "first",
            "last": "last",
            "next": "next_",
            "previous": "previous",
        }

    # endregion static methods
