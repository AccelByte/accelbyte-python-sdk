# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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

from ..models.box_item import BoxItem


class TypeEnum(StrEnum):
    PROBABILITY_GROUP = "PROBABILITY_GROUP"
    REWARD = "REWARD"
    REWARD_GROUP = "REWARD_GROUP"


class LootBoxReward(Model):
    """Loot box reward (LootBoxReward)

    Properties:
        loot_box_items: (lootBoxItems) OPTIONAL List[BoxItem]

        name: (name) OPTIONAL str

        odds: (odds) OPTIONAL float

        type_: (type) OPTIONAL Union[str, TypeEnum]

        weight: (weight) OPTIONAL int
    """

    # region fields

    loot_box_items: List[BoxItem]  # OPTIONAL
    name: str  # OPTIONAL
    odds: float  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL
    weight: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_loot_box_items(self, value: List[BoxItem]) -> LootBoxReward:
        self.loot_box_items = value
        return self

    def with_name(self, value: str) -> LootBoxReward:
        self.name = value
        return self

    def with_odds(self, value: float) -> LootBoxReward:
        self.odds = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> LootBoxReward:
        self.type_ = value
        return self

    def with_weight(self, value: int) -> LootBoxReward:
        self.weight = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "loot_box_items"):
            result["lootBoxItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.loot_box_items
            ]
        elif include_empty:
            result["lootBoxItems"] = []
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "odds"):
            result["odds"] = float(self.odds)
        elif include_empty:
            result["odds"] = 0.0
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "weight"):
            result["weight"] = int(self.weight)
        elif include_empty:
            result["weight"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        loot_box_items: Optional[List[BoxItem]] = None,
        name: Optional[str] = None,
        odds: Optional[float] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        weight: Optional[int] = None,
    ) -> LootBoxReward:
        instance = cls()
        if loot_box_items is not None:
            instance.loot_box_items = loot_box_items
        if name is not None:
            instance.name = name
        if odds is not None:
            instance.odds = odds
        if type_ is not None:
            instance.type_ = type_
        if weight is not None:
            instance.weight = weight
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LootBoxReward:
        instance = cls()
        if not dict_:
            return instance
        if "lootBoxItems" in dict_ and dict_["lootBoxItems"] is not None:
            instance.loot_box_items = [
                BoxItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["lootBoxItems"]
            ]
        elif include_empty:
            instance.loot_box_items = []
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "odds" in dict_ and dict_["odds"] is not None:
            instance.odds = float(dict_["odds"])
        elif include_empty:
            instance.odds = 0.0
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "weight" in dict_ and dict_["weight"] is not None:
            instance.weight = int(dict_["weight"])
        elif include_empty:
            instance.weight = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LootBoxReward]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LootBoxReward]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[LootBoxReward, List[LootBoxReward], Dict[Any, LootBoxReward]]:
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
            "lootBoxItems": "loot_box_items",
            "name": "name",
            "odds": "odds",
            "type": "type_",
            "weight": "weight",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "lootBoxItems": False,
            "name": False,
            "odds": False,
            "type": False,
            "weight": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["PROBABILITY_GROUP", "REWARD", "REWARD_GROUP"],
        }

    # endregion static methods
