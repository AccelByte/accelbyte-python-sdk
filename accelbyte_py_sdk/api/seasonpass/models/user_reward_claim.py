# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Seasonpass Service (1.18.0)

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

    pass_code: str  # REQUIRED
    reward_code: str  # REQUIRED
    tier_index: int  # REQUIRED

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
            result["passCode"] = ""
        if hasattr(self, "reward_code"):
            result["rewardCode"] = str(self.reward_code)
        elif include_empty:
            result["rewardCode"] = ""
        if hasattr(self, "tier_index"):
            result["tierIndex"] = int(self.tier_index)
        elif include_empty:
            result["tierIndex"] = 0
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> UserRewardClaim:
        instance = cls()
        if not dict_:
            return instance
        if "passCode" in dict_ and dict_["passCode"] is not None:
            instance.pass_code = str(dict_["passCode"])
        elif include_empty:
            instance.pass_code = ""
        if "rewardCode" in dict_ and dict_["rewardCode"] is not None:
            instance.reward_code = str(dict_["rewardCode"])
        elif include_empty:
            instance.reward_code = ""
        if "tierIndex" in dict_ and dict_["tierIndex"] is not None:
            instance.tier_index = int(dict_["tierIndex"])
        elif include_empty:
            instance.tier_index = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, UserRewardClaim]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[UserRewardClaim]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[UserRewardClaim, List[UserRewardClaim], Dict[Any, UserRewardClaim]]:
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
            "passCode": "pass_code",
            "rewardCode": "reward_code",
            "tierIndex": "tier_index",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "passCode": True,
            "rewardCode": True,
            "tierIndex": True,
        }

    # endregion static methods
