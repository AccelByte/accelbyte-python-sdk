# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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


class ModelUserBaseInfo(Model):
    """Model user base info (model.UserBaseInfo)

    Properties:
        avatar_url: (avatarUrl) REQUIRED str

        display_name: (displayName) REQUIRED str

        platform_user_ids: (platformUserIds) REQUIRED Dict[str, str]

        user_id: (userId) REQUIRED str

        username: (username) OPTIONAL str
    """

    # region fields

    avatar_url: str  # REQUIRED
    display_name: str  # REQUIRED
    platform_user_ids: Dict[str, str]  # REQUIRED
    user_id: str  # REQUIRED
    username: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_avatar_url(self, value: str) -> ModelUserBaseInfo:
        self.avatar_url = value
        return self

    def with_display_name(self, value: str) -> ModelUserBaseInfo:
        self.display_name = value
        return self

    def with_platform_user_ids(self, value: Dict[str, str]) -> ModelUserBaseInfo:
        self.platform_user_ids = value
        return self

    def with_user_id(self, value: str) -> ModelUserBaseInfo:
        self.user_id = value
        return self

    def with_username(self, value: str) -> ModelUserBaseInfo:
        self.username = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "avatar_url"):
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "platform_user_ids"):
            result["platformUserIds"] = {
                str(k0): str(v0) for k0, v0 in self.platform_user_ids.items()
            }
        elif include_empty:
            result["platformUserIds"] = {}
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "username"):
            result["username"] = str(self.username)
        elif include_empty:
            result["username"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        avatar_url: str,
        display_name: str,
        platform_user_ids: Dict[str, str],
        user_id: str,
        username: Optional[str] = None,
    ) -> ModelUserBaseInfo:
        instance = cls()
        instance.avatar_url = avatar_url
        instance.display_name = display_name
        instance.platform_user_ids = platform_user_ids
        instance.user_id = user_id
        if username is not None:
            instance.username = username
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserBaseInfo:
        instance = cls()
        if not dict_:
            return instance
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "platformUserIds" in dict_ and dict_["platformUserIds"] is not None:
            instance.platform_user_ids = {
                str(k0): str(v0) for k0, v0 in dict_["platformUserIds"].items()
            }
        elif include_empty:
            instance.platform_user_ids = {}
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "username" in dict_ and dict_["username"] is not None:
            instance.username = str(dict_["username"])
        elif include_empty:
            instance.username = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserBaseInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserBaseInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserBaseInfo, List[ModelUserBaseInfo], Dict[Any, ModelUserBaseInfo]
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
            "avatarUrl": "avatar_url",
            "displayName": "display_name",
            "platformUserIds": "platform_user_ids",
            "userId": "user_id",
            "username": "username",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "avatarUrl": True,
            "displayName": True,
            "platformUserIds": True,
            "userId": True,
            "username": False,
        }

    # endregion static methods
