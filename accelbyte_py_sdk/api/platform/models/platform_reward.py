# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model

from ..models.platform_reward_currency import PlatformRewardCurrency
from ..models.platform_reward_item import PlatformRewardItem


class PlatformReward(Model):
    """Platform reward (PlatformReward)

    Properties:
        currency: (currency) OPTIONAL PlatformRewardCurrency

        item: (item) OPTIONAL PlatformRewardItem

        quantity: (quantity) OPTIONAL int

        type_: (type) OPTIONAL str
    """

    # region fields

    currency: PlatformRewardCurrency                                                               # OPTIONAL
    item: PlatformRewardItem                                                                       # OPTIONAL
    quantity: int                                                                                  # OPTIONAL
    type_: str                                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency(self, value: PlatformRewardCurrency) -> PlatformReward:
        self.currency = value
        return self

    def with_item(self, value: PlatformRewardItem) -> PlatformReward:
        self.item = value
        return self

    def with_quantity(self, value: int) -> PlatformReward:
        self.quantity = value
        return self

    def with_type(self, value: str) -> PlatformReward:
        self.type_ = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = PlatformRewardCurrency()
        if hasattr(self, "item"):
            result["item"] = self.item.to_dict(include_empty=include_empty)
        elif include_empty:
            result["item"] = PlatformRewardItem()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency: Optional[PlatformRewardCurrency] = None,
        item: Optional[PlatformRewardItem] = None,
        quantity: Optional[int] = None,
        type_: Optional[str] = None,
    ) -> PlatformReward:
        instance = cls()
        if currency is not None:
            instance.currency = currency
        if item is not None:
            instance.item = item
        if quantity is not None:
            instance.quantity = quantity
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PlatformReward:
        instance = cls()
        if not dict_:
            return instance
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = PlatformRewardCurrency.create_from_dict(dict_["currency"], include_empty=include_empty)
        elif include_empty:
            instance.currency = PlatformRewardCurrency()
        if "item" in dict_ and dict_["item"] is not None:
            instance.item = PlatformRewardItem.create_from_dict(dict_["item"], include_empty=include_empty)
        elif include_empty:
            instance.item = PlatformRewardItem()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, PlatformReward]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[PlatformReward]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[PlatformReward, List[PlatformReward]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "currency": "currency",
            "item": "item",
            "quantity": "quantity",
            "type": "type_",
        }

    # endregion static methods
