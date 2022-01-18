# justice-seasonpass-service (1.7.0)

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

from ..models.tier_input import TierInput


class TierCreate(Model):
    """A DTO object for creating tier API call. (TierCreate)

    Properties:
        index: (index) OPTIONAL int

        quantity: (quantity) OPTIONAL int

        tier: (tier) OPTIONAL TierInput
    """

    # region fields

    index: int                                                                                     # OPTIONAL
    quantity: int                                                                                  # OPTIONAL
    tier: TierInput                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_index(self, value: int) -> TierCreate:
        self.index = value
        return self

    def with_quantity(self, value: int) -> TierCreate:
        self.quantity = value
        return self

    def with_tier(self, value: TierInput) -> TierCreate:
        self.tier = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "index"):
            result["index"] = int(self.index)
        elif include_empty:
            result["index"] = int()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "tier"):
            result["tier"] = self.tier.to_dict(include_empty=include_empty)
        elif include_empty:
            result["tier"] = TierInput()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        index: Optional[int] = None,
        quantity: Optional[int] = None,
        tier: Optional[TierInput] = None,
    ) -> TierCreate:
        instance = cls()
        if index is not None:
            instance.index = index
        if quantity is not None:
            instance.quantity = quantity
        if tier is not None:
            instance.tier = tier
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TierCreate:
        instance = cls()
        if not dict_:
            return instance
        if "index" in dict_ and dict_["index"] is not None:
            instance.index = int(dict_["index"])
        elif include_empty:
            instance.index = int()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "tier" in dict_ and dict_["tier"] is not None:
            instance.tier = TierInput.create_from_dict(dict_["tier"], include_empty=include_empty)
        elif include_empty:
            instance.tier = TierInput()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "index": "index",
            "quantity": "quantity",
            "tier": "tier",
        }

    # endregion static methods
