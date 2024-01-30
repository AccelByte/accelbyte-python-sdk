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


class OauthmodelPlatformTokenRefreshResponseV3(Model):
    """Oauthmodel platform token refresh response V3 (oauthmodel.PlatformTokenRefreshResponseV3)

    Properties:
        avatar_url: (avatarUrl) OPTIONAL str

        country: (country) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        platform_token_expires_at: (platformTokenExpiresAt) OPTIONAL int

        platform_user_id: (platformUserId) OPTIONAL str
    """

    # region fields

    avatar_url: str  # OPTIONAL
    country: str  # OPTIONAL
    display_name: str  # OPTIONAL
    platform_token_expires_at: int  # OPTIONAL
    platform_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_avatar_url(self, value: str) -> OauthmodelPlatformTokenRefreshResponseV3:
        self.avatar_url = value
        return self

    def with_country(self, value: str) -> OauthmodelPlatformTokenRefreshResponseV3:
        self.country = value
        return self

    def with_display_name(self, value: str) -> OauthmodelPlatformTokenRefreshResponseV3:
        self.display_name = value
        return self

    def with_platform_token_expires_at(
        self, value: int
    ) -> OauthmodelPlatformTokenRefreshResponseV3:
        self.platform_token_expires_at = value
        return self

    def with_platform_user_id(
        self, value: str
    ) -> OauthmodelPlatformTokenRefreshResponseV3:
        self.platform_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "avatar_url"):
            result["avatarUrl"] = str(self.avatar_url)
        elif include_empty:
            result["avatarUrl"] = ""
        if hasattr(self, "country"):
            result["country"] = str(self.country)
        elif include_empty:
            result["country"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "platform_token_expires_at"):
            result["platformTokenExpiresAt"] = int(self.platform_token_expires_at)
        elif include_empty:
            result["platformTokenExpiresAt"] = 0
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
        avatar_url: Optional[str] = None,
        country: Optional[str] = None,
        display_name: Optional[str] = None,
        platform_token_expires_at: Optional[int] = None,
        platform_user_id: Optional[str] = None,
        **kwargs,
    ) -> OauthmodelPlatformTokenRefreshResponseV3:
        instance = cls()
        if avatar_url is not None:
            instance.avatar_url = avatar_url
        if country is not None:
            instance.country = country
        if display_name is not None:
            instance.display_name = display_name
        if platform_token_expires_at is not None:
            instance.platform_token_expires_at = platform_token_expires_at
        if platform_user_id is not None:
            instance.platform_user_id = platform_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> OauthmodelPlatformTokenRefreshResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if "avatarUrl" in dict_ and dict_["avatarUrl"] is not None:
            instance.avatar_url = str(dict_["avatarUrl"])
        elif include_empty:
            instance.avatar_url = ""
        if "country" in dict_ and dict_["country"] is not None:
            instance.country = str(dict_["country"])
        elif include_empty:
            instance.country = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if (
            "platformTokenExpiresAt" in dict_
            and dict_["platformTokenExpiresAt"] is not None
        ):
            instance.platform_token_expires_at = int(dict_["platformTokenExpiresAt"])
        elif include_empty:
            instance.platform_token_expires_at = 0
        if "platformUserId" in dict_ and dict_["platformUserId"] is not None:
            instance.platform_user_id = str(dict_["platformUserId"])
        elif include_empty:
            instance.platform_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, OauthmodelPlatformTokenRefreshResponseV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[OauthmodelPlatformTokenRefreshResponseV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        OauthmodelPlatformTokenRefreshResponseV3,
        List[OauthmodelPlatformTokenRefreshResponseV3],
        Dict[Any, OauthmodelPlatformTokenRefreshResponseV3],
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
            "country": "country",
            "displayName": "display_name",
            "platformTokenExpiresAt": "platform_token_expires_at",
            "platformUserId": "platform_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "avatarUrl": False,
            "country": False,
            "displayName": False,
            "platformTokenExpiresAt": False,
            "platformUserId": False,
        }

    # endregion static methods
