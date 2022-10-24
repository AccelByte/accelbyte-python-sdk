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

from ..models.image import Image
from ..models.localization import Localization
from ..models.pass_info import PassInfo
from ..models.reward_info import RewardInfo
from ..models.tier import Tier


class FullSeasonInfo(Model):
    """A DTO object for season full content. (FullSeasonInfo)

    Properties:
        id_: (id) REQUIRED str

        localizations: (localizations) REQUIRED Dict[str, Localization]

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        passes: (passes) REQUIRED List[PassInfo]

        rewards: (rewards) REQUIRED Dict[str, RewardInfo]

        tiers: (tiers) REQUIRED List[Tier]

        images: (images) OPTIONAL List[Image]
    """

    # region fields

    id_: str  # REQUIRED
    localizations: Dict[str, Localization]  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    passes: List[PassInfo]  # REQUIRED
    rewards: Dict[str, RewardInfo]  # REQUIRED
    tiers: List[Tier]  # REQUIRED
    images: List[Image]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> FullSeasonInfo:
        self.id_ = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> FullSeasonInfo:
        self.localizations = value
        return self

    def with_name(self, value: str) -> FullSeasonInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> FullSeasonInfo:
        self.namespace = value
        return self

    def with_passes(self, value: List[PassInfo]) -> FullSeasonInfo:
        self.passes = value
        return self

    def with_rewards(self, value: Dict[str, RewardInfo]) -> FullSeasonInfo:
        self.rewards = value
        return self

    def with_tiers(self, value: List[Tier]) -> FullSeasonInfo:
        self.tiers = value
        return self

    def with_images(self, value: List[Image]) -> FullSeasonInfo:
        self.images = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "localizations"):
            result["localizations"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.localizations.items()
            }
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "passes"):
            result["passes"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.passes
            ]
        elif include_empty:
            result["passes"] = []
        if hasattr(self, "rewards"):
            result["rewards"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.rewards.items()
            }
        elif include_empty:
            result["rewards"] = {}
        if hasattr(self, "tiers"):
            result["tiers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.tiers
            ]
        elif include_empty:
            result["tiers"] = []
        if hasattr(self, "images"):
            result["images"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.images
            ]
        elif include_empty:
            result["images"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        localizations: Dict[str, Localization],
        name: str,
        namespace: str,
        passes: List[PassInfo],
        rewards: Dict[str, RewardInfo],
        tiers: List[Tier],
        images: Optional[List[Image]] = None,
    ) -> FullSeasonInfo:
        instance = cls()
        instance.id_ = id_
        instance.localizations = localizations
        instance.name = name
        instance.namespace = namespace
        instance.passes = passes
        instance.rewards = rewards
        instance.tiers = tiers
        if images is not None:
            instance.images = images
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FullSeasonInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {
                str(k0): Localization.create_from_dict(v0, include_empty=include_empty)
                for k0, v0 in dict_["localizations"].items()
            }
        elif include_empty:
            instance.localizations = {}
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "passes" in dict_ and dict_["passes"] is not None:
            instance.passes = [
                PassInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["passes"]
            ]
        elif include_empty:
            instance.passes = []
        if "rewards" in dict_ and dict_["rewards"] is not None:
            instance.rewards = {
                str(k0): RewardInfo.create_from_dict(v0, include_empty=include_empty)
                for k0, v0 in dict_["rewards"].items()
            }
        elif include_empty:
            instance.rewards = {}
        if "tiers" in dict_ and dict_["tiers"] is not None:
            instance.tiers = [
                Tier.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["tiers"]
            ]
        elif include_empty:
            instance.tiers = []
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [
                Image.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["images"]
            ]
        elif include_empty:
            instance.images = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FullSeasonInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FullSeasonInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[FullSeasonInfo, List[FullSeasonInfo], Dict[Any, FullSeasonInfo]]:
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
            "id": "id_",
            "localizations": "localizations",
            "name": "name",
            "namespace": "namespace",
            "passes": "passes",
            "rewards": "rewards",
            "tiers": "tiers",
            "images": "images",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "localizations": True,
            "name": True,
            "namespace": True,
            "passes": True,
            "rewards": True,
            "tiers": True,
            "images": False,
        }

    # endregion static methods
