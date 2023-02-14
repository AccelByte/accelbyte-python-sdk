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
from ....core import StrEnum

from ..models.image import Image
from ..models.localized_pass_info import LocalizedPassInfo
from ..models.reward_info import RewardInfo
from ..models.tier import Tier


class StatusEnum(StrEnum):
    DRAFT = "DRAFT"
    PUBLISHED = "PUBLISHED"
    RETIRED = "RETIRED"


class LocalizedSeasonInfo(Model):
    """A DTO object for public user retrieving season info. (LocalizedSeasonInfo)

    Properties:
        auto_claim: (autoClaim) REQUIRED bool

        created_at: (createdAt) REQUIRED str

        end: (end) REQUIRED str

        id_: (id) REQUIRED str

        language: (language) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        passes: (passes) REQUIRED List[LocalizedPassInfo]

        rewards: (rewards) REQUIRED Dict[str, RewardInfo]

        start: (start) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        tier_item_id: (tierItemId) REQUIRED str

        tiers: (tiers) REQUIRED List[Tier]

        updated_at: (updatedAt) REQUIRED str

        description: (description) OPTIONAL str

        images: (images) OPTIONAL List[Image]

        pass_codes: (passCodes) OPTIONAL List[str]

        published_at: (publishedAt) OPTIONAL str

        title: (title) OPTIONAL str
    """

    # region fields

    auto_claim: bool  # REQUIRED
    created_at: str  # REQUIRED
    end: str  # REQUIRED
    id_: str  # REQUIRED
    language: str  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    passes: List[LocalizedPassInfo]  # REQUIRED
    rewards: Dict[str, RewardInfo]  # REQUIRED
    start: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    tier_item_id: str  # REQUIRED
    tiers: List[Tier]  # REQUIRED
    updated_at: str  # REQUIRED
    description: str  # OPTIONAL
    images: List[Image]  # OPTIONAL
    pass_codes: List[str]  # OPTIONAL
    published_at: str  # OPTIONAL
    title: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_auto_claim(self, value: bool) -> LocalizedSeasonInfo:
        self.auto_claim = value
        return self

    def with_created_at(self, value: str) -> LocalizedSeasonInfo:
        self.created_at = value
        return self

    def with_end(self, value: str) -> LocalizedSeasonInfo:
        self.end = value
        return self

    def with_id(self, value: str) -> LocalizedSeasonInfo:
        self.id_ = value
        return self

    def with_language(self, value: str) -> LocalizedSeasonInfo:
        self.language = value
        return self

    def with_name(self, value: str) -> LocalizedSeasonInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> LocalizedSeasonInfo:
        self.namespace = value
        return self

    def with_passes(self, value: List[LocalizedPassInfo]) -> LocalizedSeasonInfo:
        self.passes = value
        return self

    def with_rewards(self, value: Dict[str, RewardInfo]) -> LocalizedSeasonInfo:
        self.rewards = value
        return self

    def with_start(self, value: str) -> LocalizedSeasonInfo:
        self.start = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> LocalizedSeasonInfo:
        self.status = value
        return self

    def with_tier_item_id(self, value: str) -> LocalizedSeasonInfo:
        self.tier_item_id = value
        return self

    def with_tiers(self, value: List[Tier]) -> LocalizedSeasonInfo:
        self.tiers = value
        return self

    def with_updated_at(self, value: str) -> LocalizedSeasonInfo:
        self.updated_at = value
        return self

    def with_description(self, value: str) -> LocalizedSeasonInfo:
        self.description = value
        return self

    def with_images(self, value: List[Image]) -> LocalizedSeasonInfo:
        self.images = value
        return self

    def with_pass_codes(self, value: List[str]) -> LocalizedSeasonInfo:
        self.pass_codes = value
        return self

    def with_published_at(self, value: str) -> LocalizedSeasonInfo:
        self.published_at = value
        return self

    def with_title(self, value: str) -> LocalizedSeasonInfo:
        self.title = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "auto_claim"):
            result["autoClaim"] = bool(self.auto_claim)
        elif include_empty:
            result["autoClaim"] = False
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "end"):
            result["end"] = str(self.end)
        elif include_empty:
            result["end"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
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
        if hasattr(self, "start"):
            result["start"] = str(self.start)
        elif include_empty:
            result["start"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "tier_item_id"):
            result["tierItemId"] = str(self.tier_item_id)
        elif include_empty:
            result["tierItemId"] = ""
        if hasattr(self, "tiers"):
            result["tiers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.tiers
            ]
        elif include_empty:
            result["tiers"] = []
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "images"):
            result["images"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.images
            ]
        elif include_empty:
            result["images"] = []
        if hasattr(self, "pass_codes"):
            result["passCodes"] = [str(i0) for i0 in self.pass_codes]
        elif include_empty:
            result["passCodes"] = []
        if hasattr(self, "published_at"):
            result["publishedAt"] = str(self.published_at)
        elif include_empty:
            result["publishedAt"] = ""
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        auto_claim: bool,
        created_at: str,
        end: str,
        id_: str,
        language: str,
        name: str,
        namespace: str,
        passes: List[LocalizedPassInfo],
        rewards: Dict[str, RewardInfo],
        start: str,
        status: Union[str, StatusEnum],
        tier_item_id: str,
        tiers: List[Tier],
        updated_at: str,
        description: Optional[str] = None,
        images: Optional[List[Image]] = None,
        pass_codes: Optional[List[str]] = None,
        published_at: Optional[str] = None,
        title: Optional[str] = None,
    ) -> LocalizedSeasonInfo:
        instance = cls()
        instance.auto_claim = auto_claim
        instance.created_at = created_at
        instance.end = end
        instance.id_ = id_
        instance.language = language
        instance.name = name
        instance.namespace = namespace
        instance.passes = passes
        instance.rewards = rewards
        instance.start = start
        instance.status = status
        instance.tier_item_id = tier_item_id
        instance.tiers = tiers
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if images is not None:
            instance.images = images
        if pass_codes is not None:
            instance.pass_codes = pass_codes
        if published_at is not None:
            instance.published_at = published_at
        if title is not None:
            instance.title = title
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> LocalizedSeasonInfo:
        instance = cls()
        if not dict_:
            return instance
        if "autoClaim" in dict_ and dict_["autoClaim"] is not None:
            instance.auto_claim = bool(dict_["autoClaim"])
        elif include_empty:
            instance.auto_claim = False
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "end" in dict_ and dict_["end"] is not None:
            instance.end = str(dict_["end"])
        elif include_empty:
            instance.end = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
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
                LocalizedPassInfo.create_from_dict(i0, include_empty=include_empty)
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
        if "start" in dict_ and dict_["start"] is not None:
            instance.start = str(dict_["start"])
        elif include_empty:
            instance.start = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "tierItemId" in dict_ and dict_["tierItemId"] is not None:
            instance.tier_item_id = str(dict_["tierItemId"])
        elif include_empty:
            instance.tier_item_id = ""
        if "tiers" in dict_ and dict_["tiers"] is not None:
            instance.tiers = [
                Tier.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["tiers"]
            ]
        elif include_empty:
            instance.tiers = []
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [
                Image.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["images"]
            ]
        elif include_empty:
            instance.images = []
        if "passCodes" in dict_ and dict_["passCodes"] is not None:
            instance.pass_codes = [str(i0) for i0 in dict_["passCodes"]]
        elif include_empty:
            instance.pass_codes = []
        if "publishedAt" in dict_ and dict_["publishedAt"] is not None:
            instance.published_at = str(dict_["publishedAt"])
        elif include_empty:
            instance.published_at = ""
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, LocalizedSeasonInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[LocalizedSeasonInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        LocalizedSeasonInfo, List[LocalizedSeasonInfo], Dict[Any, LocalizedSeasonInfo]
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
            "autoClaim": "auto_claim",
            "createdAt": "created_at",
            "end": "end",
            "id": "id_",
            "language": "language",
            "name": "name",
            "namespace": "namespace",
            "passes": "passes",
            "rewards": "rewards",
            "start": "start",
            "status": "status",
            "tierItemId": "tier_item_id",
            "tiers": "tiers",
            "updatedAt": "updated_at",
            "description": "description",
            "images": "images",
            "passCodes": "pass_codes",
            "publishedAt": "published_at",
            "title": "title",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "autoClaim": True,
            "createdAt": True,
            "end": True,
            "id": True,
            "language": True,
            "name": True,
            "namespace": True,
            "passes": True,
            "rewards": True,
            "start": True,
            "status": True,
            "tierItemId": True,
            "tiers": True,
            "updatedAt": True,
            "description": False,
            "images": False,
            "passCodes": False,
            "publishedAt": False,
            "title": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["DRAFT", "PUBLISHED", "RETIRED"],
        }

    # endregion static methods
