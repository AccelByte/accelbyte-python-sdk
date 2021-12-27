# justice-seasonpass-service (1.5.0)

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


class UserTierGrant(Model):
    """A DTO object for granting user tier. (UserTierGrant)

    Properties:
        count: (count) OPTIONAL int
    """

    # region fields

    count: int                                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> UserTierGrant:
        self.count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        count: Optional[int] = None,
    ) -> UserTierGrant:
        instance = cls()
        if count is not None:
            instance.count = count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserTierGrant:
        instance = cls()
        if not dict_:
            return instance
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "count": "count",
        }

    # endregion static methods