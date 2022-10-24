# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.16.0)

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

    index: int  # OPTIONAL
    quantity: int  # OPTIONAL
    tier: TierInput  # OPTIONAL

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
            result["index"] = 0
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
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
            instance.index = 0
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "tier" in dict_ and dict_["tier"] is not None:
            instance.tier = TierInput.create_from_dict(
                dict_["tier"], include_empty=include_empty
            )
        elif include_empty:
            instance.tier = TierInput()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TierCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TierCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TierCreate, List[TierCreate], Dict[Any, TierCreate]]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "index": "index",
            "quantity": "quantity",
            "tier": "tier",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "index": False,
            "quantity": False,
            "tier": False,
        }

    # endregion static methods
