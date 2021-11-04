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


class CampaignDynamicInfo(Model):
    """Campaign dynamic info (CampaignDynamicInfo)

    Properties:
        available_sale_count: (availableSaleCount) REQUIRED int

        quantity: (quantity) REQUIRED int

        sale_count: (saleCount) REQUIRED int

        last_batch_no: (lastBatchNo) REQUIRED int

        remainder: (remainder) REQUIRED int
    """

    # region fields

    available_sale_count: int                                                                      # REQUIRED
    quantity: int                                                                                  # REQUIRED
    sale_count: int                                                                                # REQUIRED
    last_batch_no: int                                                                             # REQUIRED
    remainder: int                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_available_sale_count(self, value: int) -> CampaignDynamicInfo:
        self.available_sale_count = value
        return self

    def with_quantity(self, value: int) -> CampaignDynamicInfo:
        self.quantity = value
        return self

    def with_sale_count(self, value: int) -> CampaignDynamicInfo:
        self.sale_count = value
        return self

    def with_last_batch_no(self, value: int) -> CampaignDynamicInfo:
        self.last_batch_no = value
        return self

    def with_remainder(self, value: int) -> CampaignDynamicInfo:
        self.remainder = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "available_sale_count"):
            result["availableSaleCount"] = int(self.available_sale_count)
        elif include_empty:
            result["availableSaleCount"] = int()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "sale_count"):
            result["saleCount"] = int(self.sale_count)
        elif include_empty:
            result["saleCount"] = int()
        if hasattr(self, "last_batch_no"):
            result["lastBatchNo"] = int(self.last_batch_no)
        elif include_empty:
            result["lastBatchNo"] = int()
        if hasattr(self, "remainder"):
            result["remainder"] = int(self.remainder)
        elif include_empty:
            result["remainder"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        available_sale_count: int,
        quantity: int,
        sale_count: int,
        last_batch_no: int,
        remainder: int,
    ) -> CampaignDynamicInfo:
        instance = cls()
        instance.available_sale_count = available_sale_count
        instance.quantity = quantity
        instance.sale_count = sale_count
        instance.last_batch_no = last_batch_no
        instance.remainder = remainder
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CampaignDynamicInfo:
        instance = cls()
        if not dict_:
            return instance
        if "availableSaleCount" in dict_ and dict_["availableSaleCount"] is not None:
            instance.available_sale_count = int(dict_["availableSaleCount"])
        elif include_empty:
            instance.available_sale_count = int()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "saleCount" in dict_ and dict_["saleCount"] is not None:
            instance.sale_count = int(dict_["saleCount"])
        elif include_empty:
            instance.sale_count = int()
        if "lastBatchNo" in dict_ and dict_["lastBatchNo"] is not None:
            instance.last_batch_no = int(dict_["lastBatchNo"])
        elif include_empty:
            instance.last_batch_no = int()
        if "remainder" in dict_ and dict_["remainder"] is not None:
            instance.remainder = int(dict_["remainder"])
        elif include_empty:
            instance.remainder = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "availableSaleCount": "available_sale_count",
            "quantity": "quantity",
            "saleCount": "sale_count",
            "lastBatchNo": "last_batch_no",
            "remainder": "remainder",
        }

    # endregion static methods
