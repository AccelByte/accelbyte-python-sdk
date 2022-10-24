# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.steam_achievement_request import SteamAchievementRequest


class ADTOObjectForUnlockSteamAchievementAPI(Model):
    """A DTO object for unlock steam achievement API (A DTO object for unlock steam achievement API)

    Properties:
        achievements: (achievements) OPTIONAL List[SteamAchievementRequest]

        steam_user_id: (steamUserId) OPTIONAL str
    """

    # region fields

    achievements: List[SteamAchievementRequest]  # OPTIONAL
    steam_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievements(
        self, value: List[SteamAchievementRequest]
    ) -> ADTOObjectForUnlockSteamAchievementAPI:
        self.achievements = value
        return self

    def with_steam_user_id(self, value: str) -> ADTOObjectForUnlockSteamAchievementAPI:
        self.steam_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievements"):
            result["achievements"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.achievements
            ]
        elif include_empty:
            result["achievements"] = []
        if hasattr(self, "steam_user_id"):
            result["steamUserId"] = str(self.steam_user_id)
        elif include_empty:
            result["steamUserId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievements: Optional[List[SteamAchievementRequest]] = None,
        steam_user_id: Optional[str] = None,
    ) -> ADTOObjectForUnlockSteamAchievementAPI:
        instance = cls()
        if achievements is not None:
            instance.achievements = achievements
        if steam_user_id is not None:
            instance.steam_user_id = steam_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ADTOObjectForUnlockSteamAchievementAPI:
        instance = cls()
        if not dict_:
            return instance
        if "achievements" in dict_ and dict_["achievements"] is not None:
            instance.achievements = [
                SteamAchievementRequest.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["achievements"]
            ]
        elif include_empty:
            instance.achievements = []
        if "steamUserId" in dict_ and dict_["steamUserId"] is not None:
            instance.steam_user_id = str(dict_["steamUserId"])
        elif include_empty:
            instance.steam_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ADTOObjectForUnlockSteamAchievementAPI]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ADTOObjectForUnlockSteamAchievementAPI]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ADTOObjectForUnlockSteamAchievementAPI,
        List[ADTOObjectForUnlockSteamAchievementAPI],
        Dict[Any, ADTOObjectForUnlockSteamAchievementAPI],
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
            "achievements": "achievements",
            "steamUserId": "steam_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievements": False,
            "steamUserId": False,
        }

    # endregion static methods
