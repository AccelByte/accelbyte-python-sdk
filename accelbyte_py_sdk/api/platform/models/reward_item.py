# Auto-generated at 2021-09-21T14:10:38.726292+08:00
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


class RewardItem(Model):
    """Reward item

    Properties:
        item_id: (itemId) OPTIONAL str

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    item_id: str                                                                                   # OPTIONAL
    quantity: int                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> RewardItem:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> RewardItem:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "quantity") and self.quantity:
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: Optional[str] = None,
        quantity: Optional[int] = None,
    ) -> RewardItem:
        instance = cls()
        if item_id is not None:
            instance.item_id = item_id
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardItem:
        instance = cls()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemId": "item_id",
            "quantity": "quantity",
        }

    # endregion static methods
