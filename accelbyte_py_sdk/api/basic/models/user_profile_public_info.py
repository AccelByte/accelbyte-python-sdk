# Auto-generated at 2021-09-27T17:12:38.719910+08:00
# from: Justice Basic Service (1.17.0)

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


class UserProfilePublicInfo(Model):
    """User profile public info

    Properties:
        user_id: (userId) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        time_zone: (timeZone) OPTIONAL str

        avatar_small_url: (avatarSmallUrl) OPTIONAL str

        avatar_url: (avatarUrl) OPTIONAL str

        avatar_large_url: (avatarLargeUrl) OPTIONAL str
    """

    # region fields

    user_id: str                                                                                   # OPTIONAL
    namespace: str                                                                                 # OPTIONAL
    time_zone: str                                                                                 # OPTIONAL
    avatar_small_url: str                                                                          # OPTIONAL
    avatar_url: str                                                                                # OPTIONAL
    avatar_large_url: str                                                                          # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_user_id(self, value: str) -> UserProfilePublicInfo:
        self.user_id = value
        return self

    def with_namespace(self, value: str) -> UserProfilePublicInfo:
        self.namespace = value
        return self

    def with_time_zone(self, value: str) -> UserProfilePublicInfo:
        self.time_zone = value
        return self

    def with_avatar_small_url(self, value: str) -> UserProfilePublicInfo:
        self.avatar_small_url = value
        return self

    def with_avatar_url(self, value: str) -> UserProfilePublicInfo:
        self.avatar_url = value
        return self

    def with_avatar_large_url(self, value: str) -> UserProfilePublicInfo:
        self.avatar_large_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "time_zone") and self.time_zone:
            result["timeZone"] = str(self.time_zone)
        elif include_empty:
            result["timeZone"] = str()
        if hasattr(self, "avatar_small_url") and self.avatar_small_url:
            result["avatarSmallUrl"] = str(self.avatar_small_url)
        elif include_empty:
            result["avatarSmallUrl"] = str()
        if hasattr(self, "avatar_url") and self.avatar_url:
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = str()
        if hasattr(self, "avatar_large_url") and self.avatar_large_url:
            result["avatarLargeUrl"] = str(self.avatar_large_url)
        elif include_empty:
            result["avatarLargeUrl"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        user_id: Optional[str] = None,
        namespace: Optional[str] = None,
        time_zone: Optional[str] = None,
        avatar_small_url: Optional[str] = None,
        avatar_url: Optional[str] = None,
        avatar_large_url: Optional[str] = None,
    ) -> UserProfilePublicInfo:
        instance = cls()
        if user_id is not None:
            instance.user_id = user_id
        if namespace is not None:
            instance.namespace = namespace
        if time_zone is not None:
            instance.time_zone = time_zone
        if avatar_small_url is not None:
            instance.avatar_small_url = avatar_small_url
        if avatar_url is not None:
            instance.avatar_url = avatar_url
        if avatar_large_url is not None:
            instance.avatar_large_url = avatar_large_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> UserProfilePublicInfo:
        instance = cls()
        if not dict_:
            return instance
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "timeZone" in dict_ and dict_["timeZone"] is not None:
            instance.time_zone = str(dict_["timeZone"])
        elif include_empty:
            instance.time_zone = str()
        if "avatarSmallUrl" in dict_ and dict_["avatarSmallUrl"] is not None:
            instance.avatar_small_url = str(dict_["avatarSmallUrl"])
        elif include_empty:
            instance.avatar_small_url = str()
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = str()
        if "avatarLargeUrl" in dict_ and dict_["avatarLargeUrl"] is not None:
            instance.avatar_large_url = str(dict_["avatarLargeUrl"])
        elif include_empty:
            instance.avatar_large_url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "userId": "user_id",
            "namespace": "namespace",
            "timeZone": "time_zone",
            "avatarSmallUrl": "avatar_small_url",
            "avatarUrl": "avatar_url",
            "avatarLargeUrl": "avatar_large_url",
        }

    # endregion static methods
