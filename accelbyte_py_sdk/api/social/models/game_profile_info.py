# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

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


class GameProfileInfo(Model):
    """Game profile info (GameProfileInfo)

    Properties:
        achievements: (achievements) OPTIONAL List[str]

        attributes: (attributes) OPTIONAL Dict[str, str]

        avatar_url: (avatarUrl) OPTIONAL str

        inventories: (inventories) OPTIONAL List[str]

        label: (label) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        profile_id: (profileId) OPTIONAL str

        profile_name: (profileName) OPTIONAL str

        statistics: (statistics) OPTIONAL List[str]

        tags: (tags) OPTIONAL List[str]

        user_id: (userId) OPTIONAL str
    """

    # region fields

    achievements: List[str]  # OPTIONAL
    attributes: Dict[str, str]  # OPTIONAL
    avatar_url: str  # OPTIONAL
    inventories: List[str]  # OPTIONAL
    label: str  # OPTIONAL
    namespace: str  # OPTIONAL
    profile_id: str  # OPTIONAL
    profile_name: str  # OPTIONAL
    statistics: List[str]  # OPTIONAL
    tags: List[str]  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievements(self, value: List[str]) -> GameProfileInfo:
        self.achievements = value
        return self

    def with_attributes(self, value: Dict[str, str]) -> GameProfileInfo:
        self.attributes = value
        return self

    def with_avatar_url(self, value: str) -> GameProfileInfo:
        self.avatar_url = value
        return self

    def with_inventories(self, value: List[str]) -> GameProfileInfo:
        self.inventories = value
        return self

    def with_label(self, value: str) -> GameProfileInfo:
        self.label = value
        return self

    def with_namespace(self, value: str) -> GameProfileInfo:
        self.namespace = value
        return self

    def with_profile_id(self, value: str) -> GameProfileInfo:
        self.profile_id = value
        return self

    def with_profile_name(self, value: str) -> GameProfileInfo:
        self.profile_name = value
        return self

    def with_statistics(self, value: List[str]) -> GameProfileInfo:
        self.statistics = value
        return self

    def with_tags(self, value: List[str]) -> GameProfileInfo:
        self.tags = value
        return self

    def with_user_id(self, value: str) -> GameProfileInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievements"):
            result["achievements"] = [str(i0) for i0 in self.achievements]
        elif include_empty:
            result["achievements"] = []
        if hasattr(self, "attributes"):
            result["attributes"] = {
                str(k0): str(v0) for k0, v0 in self.attributes.items()
            }
        elif include_empty:
            result["attributes"] = {}
        if hasattr(self, "avatar_url"):
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = ""
        if hasattr(self, "inventories"):
            result["inventories"] = [str(i0) for i0 in self.inventories]
        elif include_empty:
            result["inventories"] = []
        if hasattr(self, "label"):
            result["label"] = str(self.label)
        elif include_empty:
            result["label"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "profile_id"):
            result["profileId"] = str(self.profile_id)
        elif include_empty:
            result["profileId"] = ""
        if hasattr(self, "profile_name"):
            result["profileName"] = str(self.profile_name)
        elif include_empty:
            result["profileName"] = ""
        if hasattr(self, "statistics"):
            result["statistics"] = [str(i0) for i0 in self.statistics]
        elif include_empty:
            result["statistics"] = []
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievements: Optional[List[str]] = None,
        attributes: Optional[Dict[str, str]] = None,
        avatar_url: Optional[str] = None,
        inventories: Optional[List[str]] = None,
        label: Optional[str] = None,
        namespace: Optional[str] = None,
        profile_id: Optional[str] = None,
        profile_name: Optional[str] = None,
        statistics: Optional[List[str]] = None,
        tags: Optional[List[str]] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> GameProfileInfo:
        instance = cls()
        if achievements is not None:
            instance.achievements = achievements
        if attributes is not None:
            instance.attributes = attributes
        if avatar_url is not None:
            instance.avatar_url = avatar_url
        if inventories is not None:
            instance.inventories = inventories
        if label is not None:
            instance.label = label
        if namespace is not None:
            instance.namespace = namespace
        if profile_id is not None:
            instance.profile_id = profile_id
        if profile_name is not None:
            instance.profile_name = profile_name
        if statistics is not None:
            instance.statistics = statistics
        if tags is not None:
            instance.tags = tags
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GameProfileInfo:
        instance = cls()
        if not dict_:
            return instance
        if "achievements" in dict_ and dict_["achievements"] is not None:
            instance.achievements = [str(i0) for i0 in dict_["achievements"]]
        elif include_empty:
            instance.achievements = []
        if "attributes" in dict_ and dict_["attributes"] is not None:
            instance.attributes = {
                str(k0): str(v0) for k0, v0 in dict_["attributes"].items()
            }
        elif include_empty:
            instance.attributes = {}
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = ""
        if "inventories" in dict_ and dict_["inventories"] is not None:
            instance.inventories = [str(i0) for i0 in dict_["inventories"]]
        elif include_empty:
            instance.inventories = []
        if "label" in dict_ and dict_["label"] is not None:
            instance.label = str(dict_["label"])
        elif include_empty:
            instance.label = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "profileId" in dict_ and dict_["profileId"] is not None:
            instance.profile_id = str(dict_["profileId"])
        elif include_empty:
            instance.profile_id = ""
        if "profileName" in dict_ and dict_["profileName"] is not None:
            instance.profile_name = str(dict_["profileName"])
        elif include_empty:
            instance.profile_name = ""
        if "statistics" in dict_ and dict_["statistics"] is not None:
            instance.statistics = [str(i0) for i0 in dict_["statistics"]]
        elif include_empty:
            instance.statistics = []
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GameProfileInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GameProfileInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[GameProfileInfo, List[GameProfileInfo], Dict[Any, GameProfileInfo]]:
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
            "achievements": "achievements",
            "attributes": "attributes",
            "avatarUrl": "avatar_url",
            "inventories": "inventories",
            "label": "label",
            "namespace": "namespace",
            "profileId": "profile_id",
            "profileName": "profile_name",
            "statistics": "statistics",
            "tags": "tags",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievements": False,
            "attributes": False,
            "avatarUrl": False,
            "inventories": False,
            "label": False,
            "namespace": False,
            "profileId": False,
            "profileName": False,
            "statistics": False,
            "tags": False,
            "userId": False,
        }

    # endregion static methods
