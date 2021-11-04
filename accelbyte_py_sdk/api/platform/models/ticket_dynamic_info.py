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


class TicketDynamicInfo(Model):
    """Ticket dynamic info (TicketDynamicInfo)

    Properties:
        available_sale_count: (availableSaleCount) REQUIRED int
    """

    # region fields

    available_sale_count: int                                                                      # REQUIRED

    # endregion fields

    # region with_x methods

    def with_available_sale_count(self, value: int) -> TicketDynamicInfo:
        self.available_sale_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "available_sale_count"):
            result["availableSaleCount"] = int(self.available_sale_count)
        elif include_empty:
            result["availableSaleCount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        available_sale_count: int,
    ) -> TicketDynamicInfo:
        instance = cls()
        instance.available_sale_count = available_sale_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TicketDynamicInfo:
        instance = cls()
        if not dict_:
            return instance
        if "availableSaleCount" in dict_ and dict_["availableSaleCount"] is not None:
            instance.available_sale_count = int(dict_["availableSaleCount"])
        elif include_empty:
            instance.available_sale_count = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "availableSaleCount": "available_sale_count",
        }

    # endregion static methods
