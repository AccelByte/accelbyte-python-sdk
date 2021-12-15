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


class UserPurchasable(Model):
    """A DTO object for user purchasable. (UserPurchasable)

    Properties:
        pass_item_id: (passItemId) OPTIONAL str

        tier_item_count: (tierItemCount) OPTIONAL int

        tier_item_id: (tierItemId) OPTIONAL str
    """

    # region fields

    pass_item_id: str                                                                              # OPTIONAL
    tier_item_count: int                                                                           # OPTIONAL
    tier_item_id: str                                                                              # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_pass_item_id(self, value: str) -> UserPurchasable:
        self.pass_item_id = value
        return self

    def with_tier_item_count(self, value: int) -> UserPurchasable:
        self.tier_item_count = value
        return self

    def with_tier_item_id(self, value: str) -> UserPurchasable:
        self.tier_item_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pass_item_id"):
            result["passItemId"] = str(self.pass_item_id)
        elif include_empty:
            result["passItemId"] = str()
        if hasattr(self, "tier_item_count"):
            result["tierItemCount"] = int(self.tier_item_count)
        elif include_empty:
            result["tierItemCount"] = int()
        if hasattr(self, "tier_item_id"):
            result["tierItemId"] = str(self.tier_item_id)
        elif include_empty:
            result["tierItemId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        pass_item_id: Optional[str] = None,
        tier_item_count: Optional[int] = None,
        tier_item_id: Optional[str] = None,
    ) -> UserPurchasable:
        instance = cls()
        if pass_item_id is not None:
            instance.pass_item_id = pass_item_id
        if tier_item_count is not None:
            instance.tier_item_count = tier_item_count
        if tier_item_id is not None:
            instance.tier_item_id = tier_item_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserPurchasable:
        instance = cls()
        if not dict_:
            return instance
        if "passItemId" in dict_ and dict_["passItemId"] is not None:
            instance.pass_item_id = str(dict_["passItemId"])
        elif include_empty:
            instance.pass_item_id = str()
        if "tierItemCount" in dict_ and dict_["tierItemCount"] is not None:
            instance.tier_item_count = int(dict_["tierItemCount"])
        elif include_empty:
            instance.tier_item_count = int()
        if "tierItemId" in dict_ and dict_["tierItemId"] is not None:
            instance.tier_item_id = str(dict_["tierItemId"])
        elif include_empty:
            instance.tier_item_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "passItemId": "pass_item_id",
            "tierItemCount": "tier_item_count",
            "tierItemId": "tier_item_id",
        }

    # endregion static methods
