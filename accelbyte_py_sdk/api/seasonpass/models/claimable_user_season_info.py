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

from ..models.season_summary import SeasonSummary


class ClaimableUserSeasonInfo(Model):
    """A DTO object for claimable user season data. (ClaimableUserSeasonInfo)

    Properties:
        claiming_rewards: (claimingRewards) REQUIRED Dict[str, Any]

        cleared: (cleared) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        current_exp: (currentExp) REQUIRED int

        current_tier_index: (currentTierIndex) REQUIRED int

        enrolled_at: (enrolledAt) REQUIRED str

        enrolled_passes: (enrolledPasses) REQUIRED List[str]

        id_: (id) REQUIRED str

        last_tier_index: (lastTierIndex) REQUIRED int

        namespace: (namespace) REQUIRED str

        required_exp: (requiredExp) REQUIRED int

        season_id: (seasonId) REQUIRED str

        to_claim_rewards: (toClaimRewards) REQUIRED Dict[str, Any]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        season: (season) OPTIONAL SeasonSummary

        total_exp: (totalExp) OPTIONAL int

        total_paid_for_exp: (totalPaidForExp) OPTIONAL int

        total_sweat_exp: (totalSweatExp) OPTIONAL int
    """

    # region fields

    claiming_rewards: Dict[str, Any]  # REQUIRED
    cleared: bool  # REQUIRED
    created_at: str  # REQUIRED
    current_exp: int  # REQUIRED
    current_tier_index: int  # REQUIRED
    enrolled_at: str  # REQUIRED
    enrolled_passes: List[str]  # REQUIRED
    id_: str  # REQUIRED
    last_tier_index: int  # REQUIRED
    namespace: str  # REQUIRED
    required_exp: int  # REQUIRED
    season_id: str  # REQUIRED
    to_claim_rewards: Dict[str, Any]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    season: SeasonSummary  # OPTIONAL
    total_exp: int  # OPTIONAL
    total_paid_for_exp: int  # OPTIONAL
    total_sweat_exp: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_claiming_rewards(self, value: Dict[str, Any]) -> ClaimableUserSeasonInfo:
        self.claiming_rewards = value
        return self

    def with_cleared(self, value: bool) -> ClaimableUserSeasonInfo:
        self.cleared = value
        return self

    def with_created_at(self, value: str) -> ClaimableUserSeasonInfo:
        self.created_at = value
        return self

    def with_current_exp(self, value: int) -> ClaimableUserSeasonInfo:
        self.current_exp = value
        return self

    def with_current_tier_index(self, value: int) -> ClaimableUserSeasonInfo:
        self.current_tier_index = value
        return self

    def with_enrolled_at(self, value: str) -> ClaimableUserSeasonInfo:
        self.enrolled_at = value
        return self

    def with_enrolled_passes(self, value: List[str]) -> ClaimableUserSeasonInfo:
        self.enrolled_passes = value
        return self

    def with_id(self, value: str) -> ClaimableUserSeasonInfo:
        self.id_ = value
        return self

    def with_last_tier_index(self, value: int) -> ClaimableUserSeasonInfo:
        self.last_tier_index = value
        return self

    def with_namespace(self, value: str) -> ClaimableUserSeasonInfo:
        self.namespace = value
        return self

    def with_required_exp(self, value: int) -> ClaimableUserSeasonInfo:
        self.required_exp = value
        return self

    def with_season_id(self, value: str) -> ClaimableUserSeasonInfo:
        self.season_id = value
        return self

    def with_to_claim_rewards(self, value: Dict[str, Any]) -> ClaimableUserSeasonInfo:
        self.to_claim_rewards = value
        return self

    def with_updated_at(self, value: str) -> ClaimableUserSeasonInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> ClaimableUserSeasonInfo:
        self.user_id = value
        return self

    def with_season(self, value: SeasonSummary) -> ClaimableUserSeasonInfo:
        self.season = value
        return self

    def with_total_exp(self, value: int) -> ClaimableUserSeasonInfo:
        self.total_exp = value
        return self

    def with_total_paid_for_exp(self, value: int) -> ClaimableUserSeasonInfo:
        self.total_paid_for_exp = value
        return self

    def with_total_sweat_exp(self, value: int) -> ClaimableUserSeasonInfo:
        self.total_sweat_exp = value
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
        if hasattr(self, "cleared"):
            result["cleared"] = bool(self.cleared)
        elif include_empty:
            result["cleared"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "current_exp"):
            result["currentExp"] = int(self.current_exp)
        elif include_empty:
            result["currentExp"] = 0
        if hasattr(self, "current_tier_index"):
            result["currentTierIndex"] = int(self.current_tier_index)
        elif include_empty:
            result["currentTierIndex"] = 0
        if hasattr(self, "enrolled_at"):
            result["enrolledAt"] = str(self.enrolled_at)
        elif include_empty:
            result["enrolledAt"] = ""
        if hasattr(self, "enrolled_passes"):
            result["enrolledPasses"] = [str(i0) for i0 in self.enrolled_passes]
        elif include_empty:
            result["enrolledPasses"] = []
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "last_tier_index"):
            result["lastTierIndex"] = int(self.last_tier_index)
        elif include_empty:
            result["lastTierIndex"] = 0
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "required_exp"):
            result["requiredExp"] = int(self.required_exp)
        elif include_empty:
            result["requiredExp"] = 0
        if hasattr(self, "season_id"):
            result["seasonId"] = str(self.season_id)
        elif include_empty:
            result["seasonId"] = ""
        if hasattr(self, "to_claim_rewards"):
            result["toClaimRewards"] = {
                str(k0): v0 for k0, v0 in self.to_claim_rewards.items()
            }
        elif include_empty:
            result["toClaimRewards"] = {}
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "season"):
            result["season"] = self.season.to_dict(include_empty=include_empty)
        elif include_empty:
            result["season"] = SeasonSummary()
        if hasattr(self, "total_exp"):
            result["totalExp"] = int(self.total_exp)
        elif include_empty:
            result["totalExp"] = 0
        if hasattr(self, "total_paid_for_exp"):
            result["totalPaidForExp"] = int(self.total_paid_for_exp)
        elif include_empty:
            result["totalPaidForExp"] = 0
        if hasattr(self, "total_sweat_exp"):
            result["totalSweatExp"] = int(self.total_sweat_exp)
        elif include_empty:
            result["totalSweatExp"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        claiming_rewards: Dict[str, Any],
        cleared: bool,
        created_at: str,
        current_exp: int,
        current_tier_index: int,
        enrolled_at: str,
        enrolled_passes: List[str],
        id_: str,
        last_tier_index: int,
        namespace: str,
        required_exp: int,
        season_id: str,
        to_claim_rewards: Dict[str, Any],
        updated_at: str,
        user_id: str,
        season: Optional[SeasonSummary] = None,
        total_exp: Optional[int] = None,
        total_paid_for_exp: Optional[int] = None,
        total_sweat_exp: Optional[int] = None,
    ) -> ClaimableUserSeasonInfo:
        instance = cls()
        instance.claiming_rewards = claiming_rewards
        instance.cleared = cleared
        instance.created_at = created_at
        instance.current_exp = current_exp
        instance.current_tier_index = current_tier_index
        instance.enrolled_at = enrolled_at
        instance.enrolled_passes = enrolled_passes
        instance.id_ = id_
        instance.last_tier_index = last_tier_index
        instance.namespace = namespace
        instance.required_exp = required_exp
        instance.season_id = season_id
        instance.to_claim_rewards = to_claim_rewards
        instance.updated_at = updated_at
        instance.user_id = user_id
        if season is not None:
            instance.season = season
        if total_exp is not None:
            instance.total_exp = total_exp
        if total_paid_for_exp is not None:
            instance.total_paid_for_exp = total_paid_for_exp
        if total_sweat_exp is not None:
            instance.total_sweat_exp = total_sweat_exp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ClaimableUserSeasonInfo:
        instance = cls()
        if not dict_:
            return instance
        if "claimingRewards" in dict_ and dict_["claimingRewards"] is not None:
            instance.claiming_rewards = {
                str(k0): v0 for k0, v0 in dict_["claimingRewards"].items()
            }
        elif include_empty:
            instance.claiming_rewards = {}
        if "cleared" in dict_ and dict_["cleared"] is not None:
            instance.cleared = bool(dict_["cleared"])
        elif include_empty:
            instance.cleared = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "currentExp" in dict_ and dict_["currentExp"] is not None:
            instance.current_exp = int(dict_["currentExp"])
        elif include_empty:
            instance.current_exp = 0
        if "currentTierIndex" in dict_ and dict_["currentTierIndex"] is not None:
            instance.current_tier_index = int(dict_["currentTierIndex"])
        elif include_empty:
            instance.current_tier_index = 0
        if "enrolledAt" in dict_ and dict_["enrolledAt"] is not None:
            instance.enrolled_at = str(dict_["enrolledAt"])
        elif include_empty:
            instance.enrolled_at = ""
        if "enrolledPasses" in dict_ and dict_["enrolledPasses"] is not None:
            instance.enrolled_passes = [str(i0) for i0 in dict_["enrolledPasses"]]
        elif include_empty:
            instance.enrolled_passes = []
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "lastTierIndex" in dict_ and dict_["lastTierIndex"] is not None:
            instance.last_tier_index = int(dict_["lastTierIndex"])
        elif include_empty:
            instance.last_tier_index = 0
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "requiredExp" in dict_ and dict_["requiredExp"] is not None:
            instance.required_exp = int(dict_["requiredExp"])
        elif include_empty:
            instance.required_exp = 0
        if "seasonId" in dict_ and dict_["seasonId"] is not None:
            instance.season_id = str(dict_["seasonId"])
        elif include_empty:
            instance.season_id = ""
        if "toClaimRewards" in dict_ and dict_["toClaimRewards"] is not None:
            instance.to_claim_rewards = {
                str(k0): v0 for k0, v0 in dict_["toClaimRewards"].items()
            }
        elif include_empty:
            instance.to_claim_rewards = {}
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "season" in dict_ and dict_["season"] is not None:
            instance.season = SeasonSummary.create_from_dict(
                dict_["season"], include_empty=include_empty
            )
        elif include_empty:
            instance.season = SeasonSummary()
        if "totalExp" in dict_ and dict_["totalExp"] is not None:
            instance.total_exp = int(dict_["totalExp"])
        elif include_empty:
            instance.total_exp = 0
        if "totalPaidForExp" in dict_ and dict_["totalPaidForExp"] is not None:
            instance.total_paid_for_exp = int(dict_["totalPaidForExp"])
        elif include_empty:
            instance.total_paid_for_exp = 0
        if "totalSweatExp" in dict_ and dict_["totalSweatExp"] is not None:
            instance.total_sweat_exp = int(dict_["totalSweatExp"])
        elif include_empty:
            instance.total_sweat_exp = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ClaimableUserSeasonInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ClaimableUserSeasonInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ClaimableUserSeasonInfo,
        List[ClaimableUserSeasonInfo],
        Dict[Any, ClaimableUserSeasonInfo],
    ]:
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
            "cleared": "cleared",
            "createdAt": "created_at",
            "currentExp": "current_exp",
            "currentTierIndex": "current_tier_index",
            "enrolledAt": "enrolled_at",
            "enrolledPasses": "enrolled_passes",
            "id": "id_",
            "lastTierIndex": "last_tier_index",
            "namespace": "namespace",
            "requiredExp": "required_exp",
            "seasonId": "season_id",
            "toClaimRewards": "to_claim_rewards",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "season": "season",
            "totalExp": "total_exp",
            "totalPaidForExp": "total_paid_for_exp",
            "totalSweatExp": "total_sweat_exp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "claimingRewards": True,
            "cleared": True,
            "createdAt": True,
            "currentExp": True,
            "currentTierIndex": True,
            "enrolledAt": True,
            "enrolledPasses": True,
            "id": True,
            "lastTierIndex": True,
            "namespace": True,
            "requiredExp": True,
            "seasonId": True,
            "toClaimRewards": True,
            "updatedAt": True,
            "userId": True,
            "season": False,
            "totalExp": False,
            "totalPaidForExp": False,
            "totalSweatExp": False,
        }

    # endregion static methods
