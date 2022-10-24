# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Ugc Service (2.5.5)

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

from ..models.models_creator_follow_state import ModelsCreatorFollowState


class ModelsCreatorResponse(Model):
    """Models creator response (models.CreatorResponse)

    Properties:
        creator_follow_state: (creatorFollowState) REQUIRED ModelsCreatorFollowState

        follow_count: (followCount) REQUIRED int

        following_count: (followingCount) REQUIRED int

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        total_liked_content: (totalLikedContent) REQUIRED int
    """

    # region fields

    creator_follow_state: ModelsCreatorFollowState  # REQUIRED
    follow_count: int  # REQUIRED
    following_count: int  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    total_liked_content: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_creator_follow_state(
        self, value: ModelsCreatorFollowState
    ) -> ModelsCreatorResponse:
        self.creator_follow_state = value
        return self

    def with_follow_count(self, value: int) -> ModelsCreatorResponse:
        self.follow_count = value
        return self

    def with_following_count(self, value: int) -> ModelsCreatorResponse:
        self.following_count = value
        return self

    def with_id(self, value: str) -> ModelsCreatorResponse:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> ModelsCreatorResponse:
        self.namespace = value
        return self

    def with_total_liked_content(self, value: int) -> ModelsCreatorResponse:
        self.total_liked_content = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "creator_follow_state"):
            result["creatorFollowState"] = self.creator_follow_state.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["creatorFollowState"] = ModelsCreatorFollowState()
        if hasattr(self, "follow_count"):
            result["followCount"] = int(self.follow_count)
        elif include_empty:
            result["followCount"] = 0
        if hasattr(self, "following_count"):
            result["followingCount"] = int(self.following_count)
        elif include_empty:
            result["followingCount"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "total_liked_content"):
            result["totalLikedContent"] = int(self.total_liked_content)
        elif include_empty:
            result["totalLikedContent"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        creator_follow_state: ModelsCreatorFollowState,
        follow_count: int,
        following_count: int,
        id_: str,
        namespace: str,
        total_liked_content: int,
    ) -> ModelsCreatorResponse:
        instance = cls()
        instance.creator_follow_state = creator_follow_state
        instance.follow_count = follow_count
        instance.following_count = following_count
        instance.id_ = id_
        instance.namespace = namespace
        instance.total_liked_content = total_liked_content
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsCreatorResponse:
        instance = cls()
        if not dict_:
            return instance
        if "creatorFollowState" in dict_ and dict_["creatorFollowState"] is not None:
            instance.creator_follow_state = ModelsCreatorFollowState.create_from_dict(
                dict_["creatorFollowState"], include_empty=include_empty
            )
        elif include_empty:
            instance.creator_follow_state = ModelsCreatorFollowState()
        if "followCount" in dict_ and dict_["followCount"] is not None:
            instance.follow_count = int(dict_["followCount"])
        elif include_empty:
            instance.follow_count = 0
        if "followingCount" in dict_ and dict_["followingCount"] is not None:
            instance.following_count = int(dict_["followingCount"])
        elif include_empty:
            instance.following_count = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "totalLikedContent" in dict_ and dict_["totalLikedContent"] is not None:
            instance.total_liked_content = int(dict_["totalLikedContent"])
        elif include_empty:
            instance.total_liked_content = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsCreatorResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsCreatorResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsCreatorResponse,
        List[ModelsCreatorResponse],
        Dict[Any, ModelsCreatorResponse],
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
            "creatorFollowState": "creator_follow_state",
            "followCount": "follow_count",
            "followingCount": "following_count",
            "id": "id_",
            "namespace": "namespace",
            "totalLikedContent": "total_liked_content",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "creatorFollowState": True,
            "followCount": True,
            "followingCount": True,
            "id": True,
            "namespace": True,
            "totalLikedContent": True,
        }

    # endregion static methods
