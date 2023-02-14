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

    condition: str  # OPTIONAL
    condition_name: str  # OPTIONAL
    event_name: str  # OPTIONAL
    reward_items: List[RewardItem]  # OPTIONAL

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
            result["condition"] = ""
        if hasattr(self, "condition_name"):
            result["conditionName"] = str(self.condition_name)
        elif include_empty:
            result["conditionName"] = ""
        if hasattr(self, "event_name"):
            result["eventName"] = str(self.event_name)
        elif include_empty:
            result["eventName"] = ""
        if hasattr(self, "reward_items"):
            result["rewardItems"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.reward_items
            ]
        elif include_empty:
            result["rewardItems"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        condition: Optional[str] = None,
        condition_name: Optional[str] = None,
        event_name: Optional[str] = None,
        reward_items: Optional[List[RewardItem]] = None,
    ) -> RewardCondition:
        instance = cls()
        if condition is not None:
            instance.condition = condition
        if condition_name is not None:
            instance.condition_name = condition_name
        if event_name is not None:
            instance.event_name = event_name
        if reward_items is not None:
            instance.reward_items = reward_items
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RewardCondition:
        instance = cls()
        if not dict_:
            return instance
        if "condition" in dict_ and dict_["condition"] is not None:
            instance.condition = str(dict_["condition"])
        elif include_empty:
            instance.condition = ""
        if "conditionName" in dict_ and dict_["conditionName"] is not None:
            instance.condition_name = str(dict_["conditionName"])
        elif include_empty:
            instance.condition_name = ""
        if "eventName" in dict_ and dict_["eventName"] is not None:
            instance.event_name = str(dict_["eventName"])
        elif include_empty:
            instance.event_name = ""
        if "rewardItems" in dict_ and dict_["rewardItems"] is not None:
            instance.reward_items = [
                RewardItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewardItems"]
            ]
        elif include_empty:
            instance.reward_items = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardCondition]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardCondition]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RewardCondition, List[RewardCondition], Dict[Any, RewardCondition]]:
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
            "condition": "condition",
            "conditionName": "condition_name",
            "eventName": "event_name",
            "rewardItems": "reward_items",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "condition": False,
            "conditionName": False,
            "eventName": False,
            "rewardItems": False,
        }

    # endregion static methods
