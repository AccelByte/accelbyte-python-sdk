# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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

from ..models.xbox_achievement_request import XboxAchievementRequest


class ADTOObjectForUpdateXboxAchievementCompletePercentageAPI(Model):
    """A DTO object for update xbox achievement complete percentage API (A DTO object for update xbox achievement complete percentage API)

    Properties:
        achievements: (achievements) OPTIONAL List[XboxAchievementRequest]

        service_config_id: (serviceConfigId) OPTIONAL str

        title_id: (titleId) OPTIONAL str

        xbox_user_id: (xboxUserId) OPTIONAL str
    """

    # region fields

    achievements: List[XboxAchievementRequest]  # OPTIONAL
    service_config_id: str  # OPTIONAL
    title_id: str  # OPTIONAL
    xbox_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievements(
        self, value: List[XboxAchievementRequest]
    ) -> ADTOObjectForUpdateXboxAchievementCompletePercentageAPI:
        self.achievements = value
        return self

    def with_service_config_id(
        self, value: str
    ) -> ADTOObjectForUpdateXboxAchievementCompletePercentageAPI:
        self.service_config_id = value
        return self

    def with_title_id(
        self, value: str
    ) -> ADTOObjectForUpdateXboxAchievementCompletePercentageAPI:
        self.title_id = value
        return self

    def with_xbox_user_id(
        self, value: str
    ) -> ADTOObjectForUpdateXboxAchievementCompletePercentageAPI:
        self.xbox_user_id = value
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
        if hasattr(self, "service_config_id"):
            result["serviceConfigId"] = str(self.service_config_id)
        elif include_empty:
            result["serviceConfigId"] = ""
        if hasattr(self, "title_id"):
            result["titleId"] = str(self.title_id)
        elif include_empty:
            result["titleId"] = ""
        if hasattr(self, "xbox_user_id"):
            result["xboxUserId"] = str(self.xbox_user_id)
        elif include_empty:
            result["xboxUserId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievements: Optional[List[XboxAchievementRequest]] = None,
        service_config_id: Optional[str] = None,
        title_id: Optional[str] = None,
        xbox_user_id: Optional[str] = None,
    ) -> ADTOObjectForUpdateXboxAchievementCompletePercentageAPI:
        instance = cls()
        if achievements is not None:
            instance.achievements = achievements
        if service_config_id is not None:
            instance.service_config_id = service_config_id
        if title_id is not None:
            instance.title_id = title_id
        if xbox_user_id is not None:
            instance.xbox_user_id = xbox_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ADTOObjectForUpdateXboxAchievementCompletePercentageAPI:
        instance = cls()
        if not dict_:
            return instance
        if "achievements" in dict_ and dict_["achievements"] is not None:
            instance.achievements = [
                XboxAchievementRequest.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["achievements"]
            ]
        elif include_empty:
            instance.achievements = []
        if "serviceConfigId" in dict_ and dict_["serviceConfigId"] is not None:
            instance.service_config_id = str(dict_["serviceConfigId"])
        elif include_empty:
            instance.service_config_id = ""
        if "titleId" in dict_ and dict_["titleId"] is not None:
            instance.title_id = str(dict_["titleId"])
        elif include_empty:
            instance.title_id = ""
        if "xboxUserId" in dict_ and dict_["xboxUserId"] is not None:
            instance.xbox_user_id = str(dict_["xboxUserId"])
        elif include_empty:
            instance.xbox_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ADTOObjectForUpdateXboxAchievementCompletePercentageAPI]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ADTOObjectForUpdateXboxAchievementCompletePercentageAPI]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ADTOObjectForUpdateXboxAchievementCompletePercentageAPI,
        List[ADTOObjectForUpdateXboxAchievementCompletePercentageAPI],
        Dict[Any, ADTOObjectForUpdateXboxAchievementCompletePercentageAPI],
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
            "serviceConfigId": "service_config_id",
            "titleId": "title_id",
            "xboxUserId": "xbox_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievements": False,
            "serviceConfigId": False,
            "titleId": False,
            "xboxUserId": False,
        }

    # endregion static methods
