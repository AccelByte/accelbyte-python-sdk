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


class ClaimableRewards(Model):
    """A DTO object for claimable rewards. (ClaimableRewards)

    Properties:
        claiming_rewards: (claimingRewards) REQUIRED Dict[str, Any]

        to_claim_rewards: (toClaimRewards) REQUIRED Dict[str, Any]
    """

    # region fields

    claiming_rewards: Dict[str, Any]                                                               # REQUIRED
    to_claim_rewards: Dict[str, Any]                                                               # REQUIRED

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
            result["claimingRewards"] = {str(k0): v0 for k0, v0 in self.claiming_rewards.items()}
        elif include_empty:
            result["claimingRewards"] = {}
        if hasattr(self, "to_claim_rewards"):
            result["toClaimRewards"] = {str(k0): v0 for k0, v0 in self.to_claim_rewards.items()}
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ClaimableRewards:
        instance = cls()
        if not dict_:
            return instance
        if "claimingRewards" in dict_ and dict_["claimingRewards"] is not None:
            instance.claiming_rewards = {str(k0): v0 for k0, v0 in dict_["claimingRewards"].items()}
        elif include_empty:
            instance.claiming_rewards = {}
        if "toClaimRewards" in dict_ and dict_["toClaimRewards"] is not None:
            instance.to_claim_rewards = {str(k0): v0 for k0, v0 in dict_["toClaimRewards"].items()}
        elif include_empty:
            instance.to_claim_rewards = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "claimingRewards": "claiming_rewards",
            "toClaimRewards": "to_claim_rewards",
        }

    # endregion static methods
