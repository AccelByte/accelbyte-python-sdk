# justice-event-log-service (1.18.3)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class ModelsPagination(Model):
    """Models pagination (models.Pagination)

    Properties:
        next_: (Next) OPTIONAL str

        previous: (Previous) OPTIONAL str
    """

    # region fields

    next_: str                                                                                     # OPTIONAL
    previous: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_next(self, value: str) -> ModelsPagination:
        self.next_ = value
        return self

    def with_previous(self, value: str) -> ModelsPagination:
        self.previous = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        next_: Optional[str] = None,
        previous: Optional[str] = None,
    ) -> ModelsPagination:
        instance = cls()
        if next_ is not None:
            instance.next_ = next_
        if previous is not None:
            instance.previous = previous
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPagination:
        instance = cls()
        if not dict_:
            return instance
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
            "Next": "next_",
            "Previous": "previous",
        }

    # endregion static methods