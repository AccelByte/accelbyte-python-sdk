# Auto-generated at 2021-09-27T17:12:34.223736+08:00
# from: Justice Social Service (1.17.1)

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


class GameProfileRequest(Model):
    """Game profile request

    Properties:
        profile_name: (profileName) OPTIONAL str

        avatar_url: (avatarUrl) OPTIONAL str

        label: (label) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        statistics: (statistics) OPTIONAL List[str]

        achievements: (achievements) OPTIONAL List[str]

        inventories: (inventories) OPTIONAL List[str]

        attributes: (attributes) OPTIONAL Dict[str, str]
    """

    # region fields

    profile_name: str                                                                              # OPTIONAL
    avatar_url: str                                                                                # OPTIONAL
    label: str                                                                                     # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    statistics: List[str]                                                                          # OPTIONAL
    achievements: List[str]                                                                        # OPTIONAL
    inventories: List[str]                                                                         # OPTIONAL
    attributes: Dict[str, str]                                                                     # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_profile_name(self, value: str) -> GameProfileRequest:
        self.profile_name = value
        return self

    def with_avatar_url(self, value: str) -> GameProfileRequest:
        self.avatar_url = value
        return self

    def with_label(self, value: str) -> GameProfileRequest:
        self.label = value
        return self

    def with_tags(self, value: List[str]) -> GameProfileRequest:
        self.tags = value
        return self

    def with_statistics(self, value: List[str]) -> GameProfileRequest:
        self.statistics = value
        return self

    def with_achievements(self, value: List[str]) -> GameProfileRequest:
        self.achievements = value
        return self

    def with_inventories(self, value: List[str]) -> GameProfileRequest:
        self.inventories = value
        return self

    def with_attributes(self, value: Dict[str, str]) -> GameProfileRequest:
        self.attributes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "profile_name") and self.profile_name:
            result["profileName"] = str(self.profile_name)
        elif include_empty:
            result["profileName"] = str()
        if hasattr(self, "avatar_url") and self.avatar_url:
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = str()
        if hasattr(self, "label") and self.label:
            result["label"] = str(self.label)
        elif include_empty:
            result["label"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "statistics") and self.statistics:
            result["statistics"] = [str(i0) for i0 in self.statistics]
        elif include_empty:
            result["statistics"] = []
        if hasattr(self, "achievements") and self.achievements:
            result["achievements"] = [str(i0) for i0 in self.achievements]
        elif include_empty:
            result["achievements"] = []
        if hasattr(self, "inventories") and self.inventories:
            result["inventories"] = [str(i0) for i0 in self.inventories]
        elif include_empty:
            result["inventories"] = []
        if hasattr(self, "attributes") and self.attributes:
            result["attributes"] = {str(k0): str(v0) for k0, v0 in self.attributes.items()}
        elif include_empty:
            result["attributes"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        profile_name: Optional[str] = None,
        avatar_url: Optional[str] = None,
        label: Optional[str] = None,
        tags: Optional[List[str]] = None,
        statistics: Optional[List[str]] = None,
        achievements: Optional[List[str]] = None,
        inventories: Optional[List[str]] = None,
        attributes: Optional[Dict[str, str]] = None,
    ) -> GameProfileRequest:
        instance = cls()
        if profile_name is not None:
            instance.profile_name = profile_name
        if avatar_url is not None:
            instance.avatar_url = avatar_url
        if label is not None:
            instance.label = label
        if tags is not None:
            instance.tags = tags
        if statistics is not None:
            instance.statistics = statistics
        if achievements is not None:
            instance.achievements = achievements
        if inventories is not None:
            instance.inventories = inventories
        if attributes is not None:
            instance.attributes = attributes
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GameProfileRequest:
        instance = cls()
        if not dict_:
            return instance
        if "profileName" in dict_ and dict_["profileName"] is not None:
            instance.profile_name = str(dict_["profileName"])
        elif include_empty:
            instance.profile_name = str()
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = str()
        if "label" in dict_ and dict_["label"] is not None:
            instance.label = str(dict_["label"])
        elif include_empty:
            instance.label = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "statistics" in dict_ and dict_["statistics"] is not None:
            instance.statistics = [str(i0) for i0 in dict_["statistics"]]
        elif include_empty:
            instance.statistics = []
        if "achievements" in dict_ and dict_["achievements"] is not None:
            instance.achievements = [str(i0) for i0 in dict_["achievements"]]
        elif include_empty:
            instance.achievements = []
        if "inventories" in dict_ and dict_["inventories"] is not None:
            instance.inventories = [str(i0) for i0 in dict_["inventories"]]
        elif include_empty:
            instance.inventories = []
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {str(k0): str(v0) for k0, v0 in dict_["attributes"].items()}
        elif include_empty:
            instance.attributes = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "profileName": "profile_name",
            "avatarUrl": "avatar_url",
            "label": "label",
            "tags": "tags",
            "statistics": "statistics",
            "achievements": "achievements",
            "inventories": "inventories",
            "attributes": "attributes",
        }

    # endregion static methods
