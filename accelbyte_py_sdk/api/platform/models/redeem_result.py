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

from ..models.redeemable_item import RedeemableItem


class RedeemResult(Model):
    """Redeem result (RedeemResult)

    Properties:
        items: (items) OPTIONAL List[RedeemableItem]
    """

    # region fields

    items: List[RedeemableItem]                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_items(self, value: List[RedeemableItem]) -> RedeemResult:
        self.items = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "items") and self.items:
            result["items"] = [i0.to_dict(include_empty=include_empty) for i0 in self.items]
        elif include_empty:
            result["items"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        items: Optional[List[RedeemableItem]] = None,
    ) -> RedeemResult:
        instance = cls()
        if items is not None:
            instance.items = items
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RedeemResult:
        instance = cls()
        if not dict_:
            return instance
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [RedeemableItem.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["items"]]
        elif include_empty:
            instance.items = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "items": "items",
        }

    # endregion static methods
