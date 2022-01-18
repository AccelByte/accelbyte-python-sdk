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


class Tier(Model):
    """Tier (Tier)

    Properties:
        id_: (id) OPTIONAL str

        required_exp: (requiredExp) OPTIONAL int

        rewards: (rewards) OPTIONAL Dict[str, List[str]]
    """

    # region fields

    id_: str                                                                                       # OPTIONAL
    required_exp: int                                                                              # OPTIONAL
    rewards: Dict[str, List[str]]                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> Tier:
        self.id_ = value
        return self

    def with_required_exp(self, value: int) -> Tier:
        self.required_exp = value
        return self

    def with_rewards(self, value: Dict[str, List[str]]) -> Tier:
        self.rewards = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "required_exp"):
            result["requiredExp"] = int(self.required_exp)
        elif include_empty:
            result["requiredExp"] = int()
        if hasattr(self, "rewards"):
            result["rewards"] = {str(k0): [str(i1) for i1 in v0] for k0, v0 in self.rewards.items()}
        elif include_empty:
            result["rewards"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: Optional[str] = None,
        required_exp: Optional[int] = None,
        rewards: Optional[Dict[str, List[str]]] = None,
    ) -> Tier:
        instance = cls()
        if id_ is not None:
            instance.id_ = id_
        if required_exp is not None:
            instance.required_exp = required_exp
        if rewards is not None:
            instance.rewards = rewards
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Tier:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "requiredExp" in dict_ and dict_["requiredExp"] is not None:
            instance.required_exp = int(dict_["requiredExp"])
        elif include_empty:
            instance.required_exp = int()
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = {str(k0): [str(i1) for i1 in v0] for k0, v0 in dict_["rewards"].items()}
        elif include_empty:
            instance.rewards = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "requiredExp": "required_exp",
            "rewards": "rewards",
        }

    # endregion static methods
