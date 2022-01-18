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


class RewardItem(Model):
    """Reward item (RewardItem)

    Properties:
        duration: (duration) OPTIONAL int

        item_id: (itemId) OPTIONAL str

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    duration: int                                                                                  # OPTIONAL
    item_id: str                                                                                   # OPTIONAL
    quantity: int                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_duration(self, value: int) -> RewardItem:
        self.duration = value
        return self

    def with_item_id(self, value: str) -> RewardItem:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> RewardItem:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = int()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        duration: Optional[int] = None,
        item_id: Optional[str] = None,
        quantity: Optional[int] = None,
    ) -> RewardItem:
        instance = cls()
        if duration is not None:
            instance.duration = duration
        if item_id is not None:
            instance.item_id = item_id
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardItem:
        instance = cls()
        if not dict_:
            return instance
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = int()
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
            "duration": "duration",
            "itemId": "item_id",
            "quantity": "quantity",
        }

    # endregion static methods
