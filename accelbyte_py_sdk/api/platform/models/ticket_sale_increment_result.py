# justice-platform-service (3.34.0)

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


class TicketSaleIncrementResult(Model):
    """Ticket sale increment result (TicketSaleIncrementResult)

    Properties:
        success: (success) REQUIRED bool

        max_sale_count: (maxSaleCount) REQUIRED int
    """

    # region fields

    success: bool                                                                                  # REQUIRED
    max_sale_count: int                                                                            # REQUIRED

    # endregion fields

    # region with_x methods

    def with_success(self, value: bool) -> TicketSaleIncrementResult:
        self.success = value
        return self

    def with_max_sale_count(self, value: int) -> TicketSaleIncrementResult:
        self.max_sale_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "success") and self.success:
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = bool()
        if hasattr(self, "max_sale_count") and self.max_sale_count:
            result["maxSaleCount"] = int(self.max_sale_count)
        elif include_empty:
            result["maxSaleCount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        success: bool,
        max_sale_count: int,
    ) -> TicketSaleIncrementResult:
        instance = cls()
        instance.success = success
        instance.max_sale_count = max_sale_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TicketSaleIncrementResult:
        instance = cls()
        if not dict_:
            return instance
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = bool()
        if "maxSaleCount" in dict_ and dict_["maxSaleCount"] is not None:
            instance.max_sale_count = int(dict_["maxSaleCount"])
        elif include_empty:
            instance.max_sale_count = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "success": "success",
            "maxSaleCount": "max_sale_count",
        }

    # endregion static methods
