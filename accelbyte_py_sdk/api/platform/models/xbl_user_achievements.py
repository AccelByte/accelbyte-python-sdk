# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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

from ..models.achievement_info import AchievementInfo


class XblUserAchievements(Model):
    """A DTO object for querying xbox user achievements (XblUserAchievements)

    Properties:
        achievements: (achievements) OPTIONAL List[AchievementInfo]
    """

    # region fields

    achievements: List[AchievementInfo]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievements(self, value: List[AchievementInfo]) -> XblUserAchievements:
        self.achievements = value
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
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, achievements: Optional[List[AchievementInfo]] = None, **kwargs
    ) -> XblUserAchievements:
        instance = cls()
        if achievements is not None:
            instance.achievements = achievements
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblUserAchievements:
        instance = cls()
        if not dict_:
            return instance
        if "achievements" in dict_ and dict_["achievements"] is not None:
            instance.achievements = [
                AchievementInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["achievements"]
            ]
        elif include_empty:
            instance.achievements = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblUserAchievements]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblUserAchievements]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XblUserAchievements, List[XblUserAchievements], Dict[Any, XblUserAchievements]
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievements": False,
        }

    # endregion static methods
