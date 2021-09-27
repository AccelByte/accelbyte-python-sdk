# Auto-generated at 2021-09-27T17:12:36.186217+08:00
# from: Justice Platform Service (3.24.0)

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


class ItemAcquireResult(Model):
    """Item acquire result

    Properties:
        success: (success) REQUIRED bool

        max_count: (maxCount) REQUIRED int
    """

    # region fields

    success: bool                                                                                  # REQUIRED
    max_count: int                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_success(self, value: bool) -> ItemAcquireResult:
        self.success = value
        return self

    def with_max_count(self, value: int) -> ItemAcquireResult:
        self.max_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "success") and self.success:
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = bool()
        if hasattr(self, "max_count") and self.max_count:
            result["maxCount"] = int(self.max_count)
        elif include_empty:
            result["maxCount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        success: bool,
        max_count: int,
    ) -> ItemAcquireResult:
        instance = cls()
        instance.success = success
        instance.max_count = max_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ItemAcquireResult:
        instance = cls()
        if not dict_:
            return instance
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = bool()
        if "maxCount" in dict_ and dict_["maxCount"] is not None:
            instance.max_count = int(dict_["maxCount"])
        elif include_empty:
            instance.max_count = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "success": "success",
            "maxCount": "max_count",
        }

    # endregion static methods
