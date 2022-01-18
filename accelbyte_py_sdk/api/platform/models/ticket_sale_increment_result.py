# justice-platform-service (4.1.1)

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


class TicketSaleIncrementResult(Model):
    """Ticket sale increment result (TicketSaleIncrementResult)

    Properties:
        max_sale_count: (maxSaleCount) REQUIRED int

        success: (success) REQUIRED bool
    """

    # region fields

    max_sale_count: int                                                                            # REQUIRED
    success: bool                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_max_sale_count(self, value: int) -> TicketSaleIncrementResult:
        self.max_sale_count = value
        return self

    def with_success(self, value: bool) -> TicketSaleIncrementResult:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_sale_count"):
            result["maxSaleCount"] = int(self.max_sale_count)
        elif include_empty:
            result["maxSaleCount"] = int()
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_sale_count: int,
        success: bool,
    ) -> TicketSaleIncrementResult:
        instance = cls()
        instance.max_sale_count = max_sale_count
        instance.success = success
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TicketSaleIncrementResult:
        instance = cls()
        if not dict_:
            return instance
        if "maxSaleCount" in dict_ and dict_["maxSaleCount"] is not None:
            instance.max_sale_count = int(dict_["maxSaleCount"])
        elif include_empty:
            instance.max_sale_count = int()
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "maxSaleCount": "max_sale_count",
            "success": "success",
        }

    # endregion static methods
