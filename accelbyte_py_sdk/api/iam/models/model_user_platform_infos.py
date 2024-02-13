# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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

from ..models.model_user_platform_info import ModelUserPlatformInfo


class ModelUserPlatformInfos(Model):
    """Model user platform infos (model.UserPlatformInfos)

    Properties:
        platform_infos: (platformInfos) REQUIRED List[ModelUserPlatformInfo]

        user_id: (userId) REQUIRED str

        avatar_url: (avatarUrl) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        unique_display_name: (uniqueDisplayName) OPTIONAL str
    """

    # region fields

    platform_infos: List[ModelUserPlatformInfo]  # REQUIRED
    user_id: str  # REQUIRED
    avatar_url: str  # OPTIONAL
    display_name: str  # OPTIONAL
    unique_display_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform_infos(
        self, value: List[ModelUserPlatformInfo]
    ) -> ModelUserPlatformInfos:
        self.platform_infos = value
        return self

    def with_user_id(self, value: str) -> ModelUserPlatformInfos:
        self.user_id = value
        return self

    def with_avatar_url(self, value: str) -> ModelUserPlatformInfos:
        self.avatar_url = value
        return self

    def with_display_name(self, value: str) -> ModelUserPlatformInfos:
        self.display_name = value
        return self

    def with_unique_display_name(self, value: str) -> ModelUserPlatformInfos:
        self.unique_display_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_infos"):
            result["platformInfos"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.platform_infos
            ]
        elif include_empty:
            result["platformInfos"] = []
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "avatar_url"):
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "unique_display_name"):
            result["uniqueDisplayName"] = str(self.unique_display_name)
        elif include_empty:
            result["uniqueDisplayName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_infos: List[ModelUserPlatformInfo],
        user_id: str,
        avatar_url: Optional[str] = None,
        display_name: Optional[str] = None,
        unique_display_name: Optional[str] = None,
        **kwargs,
    ) -> ModelUserPlatformInfos:
        instance = cls()
        instance.platform_infos = platform_infos
        instance.user_id = user_id
        if avatar_url is not None:
            instance.avatar_url = avatar_url
        if display_name is not None:
            instance.display_name = display_name
        if unique_display_name is not None:
            instance.unique_display_name = unique_display_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserPlatformInfos:
        instance = cls()
        if not dict_:
            return instance
        if "platformInfos" in dict_ and dict_["platformInfos"] is not None:
            instance.platform_infos = [
                ModelUserPlatformInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["platformInfos"]
            ]
        elif include_empty:
            instance.platform_infos = []
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "uniqueDisplayName" in dict_ and dict_["uniqueDisplayName"] is not None:
            instance.unique_display_name = str(dict_["uniqueDisplayName"])
        elif include_empty:
            instance.unique_display_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserPlatformInfos]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserPlatformInfos]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserPlatformInfos,
        List[ModelUserPlatformInfos],
        Dict[Any, ModelUserPlatformInfos],
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
            "platformInfos": "platform_infos",
            "userId": "user_id",
            "avatarUrl": "avatar_url",
            "displayName": "display_name",
            "uniqueDisplayName": "unique_display_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformInfos": True,
            "userId": True,
            "avatarUrl": False,
            "displayName": False,
            "uniqueDisplayName": False,
        }

    # endregion static methods
