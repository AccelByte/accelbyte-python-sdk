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


class TicketSaleIncrementRequest(Model):
    """Ticket sale increment request (TicketSaleIncrementRequest)

    Properties:
        count: (count) REQUIRED int

        order_no: (orderNo) REQUIRED str
    """

    # region fields

    count: int                                                                                     # REQUIRED
    order_no: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> TicketSaleIncrementRequest:
        self.count = value
        return self

    def with_order_no(self, value: str) -> TicketSaleIncrementRequest:
        self.order_no = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count") and self.count:
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = int()
        if hasattr(self, "order_no") and self.order_no:
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        count: int,
        order_no: str,
    ) -> TicketSaleIncrementRequest:
        instance = cls()
        instance.count = count
        instance.order_no = order_no
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TicketSaleIncrementRequest:
        instance = cls()
        if not dict_:
            return instance
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = int()
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "count": "count",
            "orderNo": "order_no",
        }

    # endregion static methods