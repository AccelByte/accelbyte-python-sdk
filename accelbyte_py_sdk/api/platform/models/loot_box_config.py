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

from ..models.loot_box_reward import LootBoxReward


class RollFunctionEnum(StrEnum):
    CUSTOM = "CUSTOM"
    DEFAULT = "DEFAULT"


class LootBoxConfig(Model):
    """Loot box config (LootBoxConfig)

    Properties:
        reward_count: (rewardCount) OPTIONAL int

        rewards: (rewards) OPTIONAL List[LootBoxReward]

        roll_function: (rollFunction) OPTIONAL Union[str, RollFunctionEnum]
    """

    # region fields

    reward_count: int  # OPTIONAL
    rewards: List[LootBoxReward]  # OPTIONAL
    roll_function: Union[str, RollFunctionEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_reward_count(self, value: int) -> LootBoxConfig:
        self.reward_count = value
        return self

    def with_rewards(self, value: List[LootBoxReward]) -> LootBoxConfig:
        self.rewards = value
        return self

    def with_roll_function(self, value: Union[str, RollFunctionEnum]) -> LootBoxConfig:
        self.roll_function = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "reward_count"):
            result["rewardCount"] = int(self.reward_count)
        elif include_empty:
            result["rewardCount"] = 0
        if hasattr(self, "rewards"):
            result["rewards"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.rewards
            ]
        elif include_empty:
            result["rewards"] = []
        if hasattr(self, "roll_function"):
            result["rollFunction"] = str(self.roll_function)
        elif include_empty:
            result["rollFunction"] = Union[str, RollFunctionEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        reward_count: Optional[int] = None,
        rewards: Optional[List[LootBoxReward]] = None,
        roll_function: Optional[Union[str, RollFunctionEnum]] = None,
    ) -> LootBoxConfig:
        instance = cls()
        if reward_count is not None:
            instance.reward_count = reward_count
        if rewards is not None:
            instance.rewards = rewards
        if roll_function is not None:
            instance.roll_function = roll_function
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LootBoxConfig:
        instance = cls()
        if not dict_:
            return instance
        if "rewardCount" in dict_ and dict_["rewardCount"] is not None:
            instance.reward_count = int(dict_["rewardCount"])
        elif include_empty:
            instance.reward_count = 0
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = [
                LootBoxReward.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewards"]
            ]
        elif include_empty:
            instance.rewards = []
        if "rollFunction" in dict_ and dict_["rollFunction"] is not None:
            instance.roll_function = str(dict_["rollFunction"])
        elif include_empty:
            instance.roll_function = Union[str, RollFunctionEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LootBoxConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LootBoxConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[LootBoxConfig, List[LootBoxConfig], Dict[Any, LootBoxConfig]]:
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
            "rewardCount": "reward_count",
            "rewards": "rewards",
            "rollFunction": "roll_function",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "rewardCount": False,
            "rewards": False,
            "rollFunction": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "rollFunction": ["CUSTOM", "DEFAULT"],
        }

    # endregion static methods
