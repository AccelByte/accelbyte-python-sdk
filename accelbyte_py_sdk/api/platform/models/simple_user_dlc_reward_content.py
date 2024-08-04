# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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
from ....core import StrEnum

from ..models.platform_reward_currency import PlatformRewardCurrency
from ..models.simple_dlc_reward_item import SimpleDLCRewardItem


class TypeEnum(StrEnum):
    CURRENCY = "CURRENCY"
    ITEM = "ITEM"


class SimpleUserDLCRewardContent(Model):
    """Simple user DLC reward content (SimpleUserDLCRewardContent)

    Properties:
        currency: (currency) OPTIONAL PlatformRewardCurrency

        item: (item) OPTIONAL SimpleDLCRewardItem

        obtained_at: (obtainedAt) OPTIONAL str

        quantity: (quantity) OPTIONAL int

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    currency: PlatformRewardCurrency  # OPTIONAL
    item: SimpleDLCRewardItem  # OPTIONAL
    obtained_at: str  # OPTIONAL
    quantity: int  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency(
        self, value: PlatformRewardCurrency
    ) -> SimpleUserDLCRewardContent:
        self.currency = value
        return self

    def with_item(self, value: SimpleDLCRewardItem) -> SimpleUserDLCRewardContent:
        self.item = value
        return self

    def with_obtained_at(self, value: str) -> SimpleUserDLCRewardContent:
        self.obtained_at = value
        return self

    def with_quantity(self, value: int) -> SimpleUserDLCRewardContent:
        self.quantity = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> SimpleUserDLCRewardContent:
        self.type_ = value
        return self

    # endregion with_x methods

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
            result["item"] = SimpleDLCRewardItem()
        if hasattr(self, "obtained_at"):
            result["obtainedAt"] = str(self.obtained_at)
        elif include_empty:
            result["obtainedAt"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency: Optional[PlatformRewardCurrency] = None,
        item: Optional[SimpleDLCRewardItem] = None,
        obtained_at: Optional[str] = None,
        quantity: Optional[int] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        **kwargs,
    ) -> SimpleUserDLCRewardContent:
        instance = cls()
        if currency is not None:
            instance.currency = currency
        if item is not None:
            instance.item = item
        if obtained_at is not None:
            instance.obtained_at = obtained_at
        if quantity is not None:
            instance.quantity = quantity
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> SimpleUserDLCRewardContent:
        instance = cls()
        if not dict_:
            return instance
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = PlatformRewardCurrency.create_from_dict(
                dict_["currency"], include_empty=include_empty
            )
        elif include_empty:
            instance.currency = PlatformRewardCurrency()
        if "item" in dict_ and dict_["item"] is not None:
            instance.item = SimpleDLCRewardItem.create_from_dict(
                dict_["item"], include_empty=include_empty
            )
        elif include_empty:
            instance.item = SimpleDLCRewardItem()
        if "obtainedAt" in dict_ and dict_["obtainedAt"] is not None:
            instance.obtained_at = str(dict_["obtainedAt"])
        elif include_empty:
            instance.obtained_at = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SimpleUserDLCRewardContent]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SimpleUserDLCRewardContent]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        SimpleUserDLCRewardContent,
        List[SimpleUserDLCRewardContent],
        Dict[Any, SimpleUserDLCRewardContent],
    ]:
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
            "currency": "currency",
            "item": "item",
            "obtainedAt": "obtained_at",
            "quantity": "quantity",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currency": False,
            "item": False,
            "obtainedAt": False,
            "quantity": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["CURRENCY", "ITEM"],
        }

    # endregion static methods
