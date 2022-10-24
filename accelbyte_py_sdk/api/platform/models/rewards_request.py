# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.platform_reward import PlatformReward


class OriginEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STADIA = "Stadia"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class SourceEnum(StrEnum):
    ACHIEVEMENT = "ACHIEVEMENT"
    DLC = "DLC"
    GIFT = "GIFT"
    IAP = "IAP"
    OTHER = "OTHER"
    PROMOTION = "PROMOTION"
    PURCHASE = "PURCHASE"
    REDEEM_CODE = "REDEEM_CODE"
    REFERRAL_BONUS = "REFERRAL_BONUS"
    REWARD = "REWARD"


class RewardsRequest(Model):
    """A DTO object for rewards request API call. (RewardsRequest)

    Properties:
        rewards: (rewards) REQUIRED List[PlatformReward]

        origin: (origin) OPTIONAL Union[str, OriginEnum]

        source: (source) OPTIONAL Union[str, SourceEnum]
    """

    # region fields

    rewards: List[PlatformReward]  # REQUIRED
    origin: Union[str, OriginEnum]  # OPTIONAL
    source: Union[str, SourceEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_rewards(self, value: List[PlatformReward]) -> RewardsRequest:
        self.rewards = value
        return self

    def with_origin(self, value: Union[str, OriginEnum]) -> RewardsRequest:
        self.origin = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> RewardsRequest:
        self.source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "rewards"):
            result["rewards"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.rewards
            ]
        elif include_empty:
            result["rewards"] = []
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = Union[str, OriginEnum]()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        rewards: List[PlatformReward],
        origin: Optional[Union[str, OriginEnum]] = None,
        source: Optional[Union[str, SourceEnum]] = None,
    ) -> RewardsRequest:
        instance = cls()
        instance.rewards = rewards
        if origin is not None:
            instance.origin = origin
        if source is not None:
            instance.source = source
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RewardsRequest:
        instance = cls()
        if not dict_:
            return instance
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = [
                PlatformReward.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["rewards"]
            ]
        elif include_empty:
            instance.rewards = []
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = Union[str, OriginEnum]()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RewardsRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RewardsRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RewardsRequest, List[RewardsRequest], Dict[Any, RewardsRequest]]:
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
            "rewards": "rewards",
            "origin": "origin",
            "source": "source",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "rewards": True,
            "origin": False,
            "source": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "origin": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Other",
                "Playstation",
                "Stadia",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
            "source": [
                "ACHIEVEMENT",
                "DLC",
                "GIFT",
                "IAP",
                "OTHER",
                "PROMOTION",
                "PURCHASE",
                "REDEEM_CODE",
                "REFERRAL_BONUS",
                "REWARD",
            ],
        }

    # endregion static methods
