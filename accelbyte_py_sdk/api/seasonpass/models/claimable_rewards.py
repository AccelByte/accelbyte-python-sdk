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


class ClaimableRewards(Model):
    """A DTO object for claimable rewards. (ClaimableRewards)

    Properties:
        claiming_rewards: (claimingRewards) REQUIRED Dict[str, Any]

        to_claim_rewards: (toClaimRewards) REQUIRED Dict[str, Any]
    """

    # region fields

    claiming_rewards: Dict[str, Any]  # REQUIRED
    to_claim_rewards: Dict[str, Any]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_claiming_rewards(self, value: Dict[str, Any]) -> ClaimableRewards:
        self.claiming_rewards = value
        return self

    def with_to_claim_rewards(self, value: Dict[str, Any]) -> ClaimableRewards:
        self.to_claim_rewards = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "claiming_rewards"):
            result["claimingRewards"] = {
                str(k0): v0 for k0, v0 in self.claiming_rewards.items()
            }
        elif include_empty:
            result["claimingRewards"] = {}
        if hasattr(self, "to_claim_rewards"):
            result["toClaimRewards"] = {
                str(k0): v0 for k0, v0 in self.to_claim_rewards.items()
            }
        elif include_empty:
            result["toClaimRewards"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        claiming_rewards: Dict[str, Any],
        to_claim_rewards: Dict[str, Any],
    ) -> ClaimableRewards:
        instance = cls()
        instance.claiming_rewards = claiming_rewards
        instance.to_claim_rewards = to_claim_rewards
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClaimableRewards:
        instance = cls()
        if not dict_:
            return instance
        if "claimingRewards" in dict_ and dict_["claimingRewards"] is not None:
            instance.claiming_rewards = {
                str(k0): v0 for k0, v0 in dict_["claimingRewards"].items()
            }
        elif include_empty:
            instance.claiming_rewards = {}
        if "toClaimRewards" in dict_ and dict_["toClaimRewards"] is not None:
            instance.to_claim_rewards = {
                str(k0): v0 for k0, v0 in dict_["toClaimRewards"].items()
            }
        elif include_empty:
            instance.to_claim_rewards = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClaimableRewards]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClaimableRewards]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ClaimableRewards, List[ClaimableRewards], Dict[Any, ClaimableRewards]]:
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
            "claimingRewards": "claiming_rewards",
            "toClaimRewards": "to_claim_rewards",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claimingRewards": True,
            "toClaimRewards": True,
        }

    # endregion static methods
