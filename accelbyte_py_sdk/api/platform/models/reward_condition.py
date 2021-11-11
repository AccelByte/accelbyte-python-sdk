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

from ..models.reward_item import RewardItem


class RewardCondition(Model):
    """Reward condition (RewardCondition)

    Properties:
        condition: (condition) OPTIONAL str

        condition_name: (conditionName) OPTIONAL str

        event_name: (eventName) OPTIONAL str

        reward_items: (rewardItems) OPTIONAL List[RewardItem]
    """

    # region fields

    condition: str                                                                                 # OPTIONAL
    condition_name: str                                                                            # OPTIONAL
    event_name: str                                                                                # OPTIONAL
    reward_items: List[RewardItem]                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_condition(self, value: str) -> RewardCondition:
        self.condition = value
        return self

    def with_condition_name(self, value: str) -> RewardCondition:
        self.condition_name = value
        return self

    def with_event_name(self, value: str) -> RewardCondition:
        self.event_name = value
        return self

    def with_reward_items(self, value: List[RewardItem]) -> RewardCondition:
        self.reward_items = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "condition"):
            result["condition"] = str(self.condition)
        elif include_empty:
            result["condition"] = str()
        if hasattr(self, "condition_name"):
            result["conditionName"] = str(self.condition_name)
        elif include_empty:
            result["conditionName"] = str()
        if hasattr(self, "event_name"):
            result["eventName"] = str(self.event_name)
        elif include_empty:
            result["eventName"] = str()
        if hasattr(self, "reward_items"):
            result["rewardItems"] = [i0.to_dict(include_empty=include_empty) for i0 in self.reward_items]
        elif include_empty:
            result["rewardItems"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        condition_name: Optional[str] = None,
        condition: Optional[str] = None,
        event_name: Optional[str] = None,
        reward_items: Optional[List[RewardItem]] = None,
    ) -> RewardCondition:
        instance = cls()
        if condition_name is not None:
            instance.condition_name = condition_name
        if condition is not None:
            instance.condition = condition
        if event_name is not None:
            instance.event_name = event_name
        if reward_items is not None:
            instance.reward_items = reward_items
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardCondition:
        instance = cls()
        if not dict_:
            return instance
        if "condition" in dict_ and dict_["condition"] is not None:
            instance.condition = str(dict_["condition"])
        elif include_empty:
            instance.condition = str()
        if "conditionName" in dict_ and dict_["conditionName"] is not None:
            instance.condition_name = str(dict_["conditionName"])
        elif include_empty:
            instance.condition_name = str()
        if "eventName" in dict_ and dict_["eventName"] is not None:
            instance.event_name = str(dict_["eventName"])
        elif include_empty:
            instance.event_name = str()
        if "rewardItems" in dict_ and dict_["rewardItems"] is not None:
            instance.reward_items = [RewardItem.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["rewardItems"]]
        elif include_empty:
            instance.reward_items = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "condition": "condition",
            "conditionName": "condition_name",
            "eventName": "event_name",
            "rewardItems": "reward_items",
        }

    # endregion static methods
