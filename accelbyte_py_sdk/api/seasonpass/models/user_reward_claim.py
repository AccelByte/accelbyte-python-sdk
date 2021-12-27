# justice-seasonpass-service (1.5.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class UserRewardClaim(Model):
    """A DTO object for claiming user reward. (UserRewardClaim)

    Properties:
        pass_code: (passCode) REQUIRED str

        reward_code: (rewardCode) REQUIRED str

        tier_index: (tierIndex) REQUIRED int
    """

    # region fields

    pass_code: str                                                                                 # REQUIRED
    reward_code: str                                                                               # REQUIRED
    tier_index: int                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_pass_code(self, value: str) -> UserRewardClaim:
        self.pass_code = value
        return self

    def with_reward_code(self, value: str) -> UserRewardClaim:
        self.reward_code = value
        return self

    def with_tier_index(self, value: int) -> UserRewardClaim:
        self.tier_index = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "pass_code"):
            result["passCode"] = str(self.pass_code)
        elif include_empty:
            result["passCode"] = str()
        if hasattr(self, "reward_code"):
            result["rewardCode"] = str(self.reward_code)
        elif include_empty:
            result["rewardCode"] = str()
        if hasattr(self, "tier_index"):
            result["tierIndex"] = int(self.tier_index)
        elif include_empty:
            result["tierIndex"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        pass_code: str,
        reward_code: str,
        tier_index: int,
    ) -> UserRewardClaim:
        instance = cls()
        instance.pass_code = pass_code
        instance.reward_code = reward_code
        instance.tier_index = tier_index
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserRewardClaim:
        instance = cls()
        if not dict_:
            return instance
        if "passCode" in dict_ and dict_["passCode"] is not None:
            instance.pass_code = str(dict_["passCode"])
        elif include_empty:
            instance.pass_code = str()
        if "rewardCode" in dict_ and dict_["rewardCode"] is not None:
            instance.reward_code = str(dict_["rewardCode"])
        elif include_empty:
            instance.reward_code = str()
        if "tierIndex" in dict_ and dict_["tierIndex"] is not None:
            instance.tier_index = int(dict_["tierIndex"])
        elif include_empty:
            instance.tier_index = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "passCode": "pass_code",
            "rewardCode": "reward_code",
            "tierIndex": "tier_index",
        }

    # endregion static methods
