# justice-social-service (1.18.1)

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


class GameProfilePublicInfo(Model):
    """Game profile public info (GameProfilePublicInfo)

    Properties:
        profile_id: (profileId) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        profile_name: (profileName) OPTIONAL str

        avatar_url: (avatarUrl) OPTIONAL str
    """

    # region fields

    profile_id: str                                                                                # OPTIONAL
    namespace: str                                                                                 # OPTIONAL
    profile_name: str                                                                              # OPTIONAL
    avatar_url: str                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_profile_id(self, value: str) -> GameProfilePublicInfo:
        self.profile_id = value
        return self

    def with_namespace(self, value: str) -> GameProfilePublicInfo:
        self.namespace = value
        return self

    def with_profile_name(self, value: str) -> GameProfilePublicInfo:
        self.profile_name = value
        return self

    def with_avatar_url(self, value: str) -> GameProfilePublicInfo:
        self.avatar_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "profile_id") and self.profile_id:
            result["profileId"] = str(self.profile_id)
        elif include_empty:
            result["profileId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "profile_name") and self.profile_name:
            result["profileName"] = str(self.profile_name)
        elif include_empty:
            result["profileName"] = str()
        if hasattr(self, "avatar_url") and self.avatar_url:
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        profile_id: Optional[str] = None,
        namespace: Optional[str] = None,
        profile_name: Optional[str] = None,
        avatar_url: Optional[str] = None,
    ) -> GameProfilePublicInfo:
        instance = cls()
        if profile_id is not None:
            instance.profile_id = profile_id
        if namespace is not None:
            instance.namespace = namespace
        if profile_name is not None:
            instance.profile_name = profile_name
        if avatar_url is not None:
            instance.avatar_url = avatar_url
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> GameProfilePublicInfo:
        instance = cls()
        if not dict_:
            return instance
        if "profileId" in dict_ and dict_["profileId"] is not None:
            instance.profile_id = str(dict_["profileId"])
        elif include_empty:
            instance.profile_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "profileName" in dict_ and dict_["profileName"] is not None:
            instance.profile_name = str(dict_["profileName"])
        elif include_empty:
            instance.profile_name = str()
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "profileId": "profile_id",
            "namespace": "namespace",
            "profileName": "profile_name",
            "avatarUrl": "avatar_url",
        }

    # endregion static methods
