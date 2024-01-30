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


class ModelUserPlatformInfo(Model):
    """Model user platform info (model.UserPlatformInfo)

    Properties:
        platform_id: (platformId) REQUIRED str

        platform_avatar_url: (platformAvatarUrl) OPTIONAL str

        platform_display_name: (platformDisplayName) OPTIONAL str

        platform_group: (platformGroup) OPTIONAL str

        platform_user_id: (platformUserId) OPTIONAL str
    """

    # region fields

    platform_id: str  # REQUIRED
    platform_avatar_url: str  # OPTIONAL
    platform_display_name: str  # OPTIONAL
    platform_group: str  # OPTIONAL
    platform_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_platform_id(self, value: str) -> ModelUserPlatformInfo:
        self.platform_id = value
        return self

    def with_platform_avatar_url(self, value: str) -> ModelUserPlatformInfo:
        self.platform_avatar_url = value
        return self

    def with_platform_display_name(self, value: str) -> ModelUserPlatformInfo:
        self.platform_display_name = value
        return self

    def with_platform_group(self, value: str) -> ModelUserPlatformInfo:
        self.platform_group = value
        return self

    def with_platform_user_id(self, value: str) -> ModelUserPlatformInfo:
        self.platform_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "platform_id"):
            result["platformId"] = str(self.platform_id)
        elif include_empty:
            result["platformId"] = ""
        if hasattr(self, "platform_avatar_url"):
            result["platformAvatarUrl"] = str(self.platform_avatar_url)
        elif include_empty:
            result["platformAvatarUrl"] = ""
        if hasattr(self, "platform_display_name"):
            result["platformDisplayName"] = str(self.platform_display_name)
        elif include_empty:
            result["platformDisplayName"] = ""
        if hasattr(self, "platform_group"):
            result["platformGroup"] = str(self.platform_group)
        elif include_empty:
            result["platformGroup"] = ""
        if hasattr(self, "platform_user_id"):
            result["platformUserId"] = str(self.platform_user_id)
        elif include_empty:
            result["platformUserId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        platform_id: str,
        platform_avatar_url: Optional[str] = None,
        platform_display_name: Optional[str] = None,
        platform_group: Optional[str] = None,
        platform_user_id: Optional[str] = None,
        **kwargs,
    ) -> ModelUserPlatformInfo:
        instance = cls()
        instance.platform_id = platform_id
        if platform_avatar_url is not None:
            instance.platform_avatar_url = platform_avatar_url
        if platform_display_name is not None:
            instance.platform_display_name = platform_display_name
        if platform_group is not None:
            instance.platform_group = platform_group
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserPlatformInfo:
        instance = cls()
        if not dict_:
            return instance
        if "platformId" in dict_ and dict_["platformId"] is not None:
            instance.platform_id = str(dict_["platformId"])
        elif include_empty:
            instance.platform_id = ""
        if "platformAvatarUrl" in dict_ and dict_["platformAvatarUrl"] is not None:
            instance.platform_avatar_url = str(dict_["platformAvatarUrl"])
        elif include_empty:
            instance.platform_avatar_url = ""
        if "platformDisplayName" in dict_ and dict_["platformDisplayName"] is not None:
            instance.platform_display_name = str(dict_["platformDisplayName"])
        elif include_empty:
            instance.platform_display_name = ""
        if "platformGroup" in dict_ and dict_["platformGroup"] is not None:
            instance.platform_group = str(dict_["platformGroup"])
        elif include_empty:
            instance.platform_group = ""
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserPlatformInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserPlatformInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserPlatformInfo,
        List[ModelUserPlatformInfo],
        Dict[Any, ModelUserPlatformInfo],
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
            "platformId": "platform_id",
            "platformAvatarUrl": "platform_avatar_url",
            "platformDisplayName": "platform_display_name",
            "platformGroup": "platform_group",
            "platformUserId": "platform_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "platformId": True,
            "platformAvatarUrl": False,
            "platformDisplayName": False,
            "platformGroup": False,
            "platformUserId": False,
        }

    # endregion static methods
