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


class TierInput(Model):
    """A DTO object for tier input. (TierInput)

    Properties:
        required_exp: (requiredExp) OPTIONAL int

        rewards: (rewards) OPTIONAL Dict[str, List[str]]
    """

    # region fields

    required_exp: int  # OPTIONAL
    rewards: Dict[str, List[str]]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_required_exp(self, value: int) -> TierInput:
        self.required_exp = value
        return self

    def with_rewards(self, value: Dict[str, List[str]]) -> TierInput:
        self.rewards = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "required_exp"):
            result["requiredExp"] = int(self.required_exp)
        elif include_empty:
            result["requiredExp"] = 0
        if hasattr(self, "rewards"):
            result["rewards"] = {
                str(k0): [str(i1) for i1 in v0] for k0, v0 in self.rewards.items()
            }
        elif include_empty:
            result["rewards"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        required_exp: Optional[int] = None,
        rewards: Optional[Dict[str, List[str]]] = None,
    ) -> TierInput:
        instance = cls()
        if required_exp is not None:
            instance.required_exp = required_exp
        if rewards is not None:
            instance.rewards = rewards
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> TierInput:
        instance = cls()
        if not dict_:
            return instance
        if "requiredExp" in dict_ and dict_["requiredExp"] is not None:
            instance.required_exp = int(dict_["requiredExp"])
        elif include_empty:
            instance.required_exp = 0
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = {
                str(k0): [str(i1) for i1 in v0] for k0, v0 in dict_["rewards"].items()
            }
        elif include_empty:
            instance.rewards = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TierInput]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TierInput]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TierInput, List[TierInput], Dict[Any, TierInput]]:
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
            "requiredExp": "required_exp",
            "rewards": "rewards",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "requiredExp": False,
            "rewards": False,
        }

    # endregion static methods
