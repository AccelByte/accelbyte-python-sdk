# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Achievement Service ()

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


class ModelsAdditionalInfo(Model):
    """Models additional info (models.AdditionalInfo)

    Properties:
        number_of_achievements: (numberOfAchievements) REQUIRED int

        number_of_hidden_achievements: (numberOfHiddenAchievements) REQUIRED int

        number_of_visible_achievements: (numberOfVisibleAchievements) REQUIRED int
    """

    # region fields

    number_of_achievements: int  # REQUIRED
    number_of_hidden_achievements: int  # REQUIRED
    number_of_visible_achievements: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_number_of_achievements(self, value: int) -> ModelsAdditionalInfo:
        self.number_of_achievements = value
        return self

    def with_number_of_hidden_achievements(self, value: int) -> ModelsAdditionalInfo:
        self.number_of_hidden_achievements = value
        return self

    def with_number_of_visible_achievements(self, value: int) -> ModelsAdditionalInfo:
        self.number_of_visible_achievements = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "number_of_achievements"):
            result["numberOfAchievements"] = int(self.number_of_achievements)
        elif include_empty:
            result["numberOfAchievements"] = 0
        if hasattr(self, "number_of_hidden_achievements"):
            result["numberOfHiddenAchievements"] = int(
                self.number_of_hidden_achievements
            )
        elif include_empty:
            result["numberOfHiddenAchievements"] = 0
        if hasattr(self, "number_of_visible_achievements"):
            result["numberOfVisibleAchievements"] = int(
                self.number_of_visible_achievements
            )
        elif include_empty:
            result["numberOfVisibleAchievements"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        number_of_achievements: int,
        number_of_hidden_achievements: int,
        number_of_visible_achievements: int,
    ) -> ModelsAdditionalInfo:
        instance = cls()
        instance.number_of_achievements = number_of_achievements
        instance.number_of_hidden_achievements = number_of_hidden_achievements
        instance.number_of_visible_achievements = number_of_visible_achievements
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAdditionalInfo:
        instance = cls()
        if not dict_:
            return instance
        if (
            "numberOfAchievements" in dict_
            and dict_["numberOfAchievements"] is not None
        ):
            instance.number_of_achievements = int(dict_["numberOfAchievements"])
        elif include_empty:
            instance.number_of_achievements = 0
        if (
            "numberOfHiddenAchievements" in dict_
            and dict_["numberOfHiddenAchievements"] is not None
        ):
            instance.number_of_hidden_achievements = int(
                dict_["numberOfHiddenAchievements"]
            )
        elif include_empty:
            instance.number_of_hidden_achievements = 0
        if (
            "numberOfVisibleAchievements" in dict_
            and dict_["numberOfVisibleAchievements"] is not None
        ):
            instance.number_of_visible_achievements = int(
                dict_["numberOfVisibleAchievements"]
            )
        elif include_empty:
            instance.number_of_visible_achievements = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAdditionalInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAdditionalInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAdditionalInfo,
        List[ModelsAdditionalInfo],
        Dict[Any, ModelsAdditionalInfo],
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
            "numberOfAchievements": "number_of_achievements",
            "numberOfHiddenAchievements": "number_of_hidden_achievements",
            "numberOfVisibleAchievements": "number_of_visible_achievements",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "numberOfAchievements": True,
            "numberOfHiddenAchievements": True,
            "numberOfVisibleAchievements": True,
        }

    # endregion static methods
