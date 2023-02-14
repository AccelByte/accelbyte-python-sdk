# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Achievement Service (2.14.0)

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

from ..models.models_icon import ModelsIcon


class ModelsAchievementRequest(Model):
    """Models achievement request (models.AchievementRequest)

    Properties:
        achievement_code: (achievementCode) REQUIRED str

        default_language: (defaultLanguage) REQUIRED str

        description: (description) REQUIRED Dict[str, str]

        goal_value: (goalValue) REQUIRED float

        hidden: (hidden) REQUIRED bool

        incremental: (incremental) REQUIRED bool

        locked_icons: (lockedIcons) REQUIRED List[ModelsIcon]

        name: (name) REQUIRED Dict[str, str]

        stat_code: (statCode) REQUIRED str

        tags: (tags) REQUIRED List[str]

        unlocked_icons: (unlockedIcons) REQUIRED List[ModelsIcon]

        global_: (global) OPTIONAL bool
    """

    # region fields

    achievement_code: str  # REQUIRED
    default_language: str  # REQUIRED
    description: Dict[str, str]  # REQUIRED
    goal_value: float  # REQUIRED
    hidden: bool  # REQUIRED
    incremental: bool  # REQUIRED
    locked_icons: List[ModelsIcon]  # REQUIRED
    name: Dict[str, str]  # REQUIRED
    stat_code: str  # REQUIRED
    tags: List[str]  # REQUIRED
    unlocked_icons: List[ModelsIcon]  # REQUIRED
    global_: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievement_code(self, value: str) -> ModelsAchievementRequest:
        self.achievement_code = value
        return self

    def with_default_language(self, value: str) -> ModelsAchievementRequest:
        self.default_language = value
        return self

    def with_description(self, value: Dict[str, str]) -> ModelsAchievementRequest:
        self.description = value
        return self

    def with_goal_value(self, value: float) -> ModelsAchievementRequest:
        self.goal_value = value
        return self

    def with_hidden(self, value: bool) -> ModelsAchievementRequest:
        self.hidden = value
        return self

    def with_incremental(self, value: bool) -> ModelsAchievementRequest:
        self.incremental = value
        return self

    def with_locked_icons(self, value: List[ModelsIcon]) -> ModelsAchievementRequest:
        self.locked_icons = value
        return self

    def with_name(self, value: Dict[str, str]) -> ModelsAchievementRequest:
        self.name = value
        return self

    def with_stat_code(self, value: str) -> ModelsAchievementRequest:
        self.stat_code = value
        return self

    def with_tags(self, value: List[str]) -> ModelsAchievementRequest:
        self.tags = value
        return self

    def with_unlocked_icons(self, value: List[ModelsIcon]) -> ModelsAchievementRequest:
        self.unlocked_icons = value
        return self

    def with_global(self, value: bool) -> ModelsAchievementRequest:
        self.global_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "default_language"):
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = ""
        if hasattr(self, "description"):
            result["description"] = {
                str(k0): str(v0) for k0, v0 in self.description.items()
            }
        elif include_empty:
            result["description"] = {}
        if hasattr(self, "goal_value"):
            result["goalValue"] = float(self.goal_value)
        elif include_empty:
            result["goalValue"] = 0.0
        if hasattr(self, "hidden"):
            result["hidden"] = bool(self.hidden)
        elif include_empty:
            result["hidden"] = False
        if hasattr(self, "incremental"):
            result["incremental"] = bool(self.incremental)
        elif include_empty:
            result["incremental"] = False
        if hasattr(self, "locked_icons"):
            result["lockedIcons"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.locked_icons
            ]
        elif include_empty:
            result["lockedIcons"] = []
        if hasattr(self, "name"):
            result["name"] = {str(k0): str(v0) for k0, v0 in self.name.items()}
        elif include_empty:
            result["name"] = {}
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "unlocked_icons"):
            result["unlockedIcons"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.unlocked_icons
            ]
        elif include_empty:
            result["unlockedIcons"] = []
        if hasattr(self, "global_"):
            result["global"] = bool(self.global_)
        elif include_empty:
            result["global"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievement_code: str,
        default_language: str,
        description: Dict[str, str],
        goal_value: float,
        hidden: bool,
        incremental: bool,
        locked_icons: List[ModelsIcon],
        name: Dict[str, str],
        stat_code: str,
        tags: List[str],
        unlocked_icons: List[ModelsIcon],
        global_: Optional[bool] = None,
    ) -> ModelsAchievementRequest:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.default_language = default_language
        instance.description = description
        instance.goal_value = goal_value
        instance.hidden = hidden
        instance.incremental = incremental
        instance.locked_icons = locked_icons
        instance.name = name
        instance.stat_code = stat_code
        instance.tags = tags
        instance.unlocked_icons = unlocked_icons
        if global_ is not None:
            instance.global_ = global_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAchievementRequest:
        instance = cls()
        if not dict_:
            return instance
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = {
                str(k0): str(v0) for k0, v0 in dict_["description"].items()
            }
        elif include_empty:
            instance.description = {}
        if "goalValue" in dict_ and dict_["goalValue"] is not None:
            instance.goal_value = float(dict_["goalValue"])
        elif include_empty:
            instance.goal_value = 0.0
        if "hidden" in dict_ and dict_["hidden"] is not None:
            instance.hidden = bool(dict_["hidden"])
        elif include_empty:
            instance.hidden = False
        if "incremental" in dict_ and dict_["incremental"] is not None:
            instance.incremental = bool(dict_["incremental"])
        elif include_empty:
            instance.incremental = False
        if "lockedIcons" in dict_ and dict_["lockedIcons"] is not None:
            instance.locked_icons = [
                ModelsIcon.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["lockedIcons"]
            ]
        elif include_empty:
            instance.locked_icons = []
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = {str(k0): str(v0) for k0, v0 in dict_["name"].items()}
        elif include_empty:
            instance.name = {}
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "unlockedIcons" in dict_ and dict_["unlockedIcons"] is not None:
            instance.unlocked_icons = [
                ModelsIcon.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["unlockedIcons"]
            ]
        elif include_empty:
            instance.unlocked_icons = []
        if "global" in dict_ and dict_["global"] is not None:
            instance.global_ = bool(dict_["global"])
        elif include_empty:
            instance.global_ = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAchievementRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAchievementRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAchievementRequest,
        List[ModelsAchievementRequest],
        Dict[Any, ModelsAchievementRequest],
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
            "achievementCode": "achievement_code",
            "defaultLanguage": "default_language",
            "description": "description",
            "goalValue": "goal_value",
            "hidden": "hidden",
            "incremental": "incremental",
            "lockedIcons": "locked_icons",
            "name": "name",
            "statCode": "stat_code",
            "tags": "tags",
            "unlockedIcons": "unlocked_icons",
            "global": "global_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievementCode": True,
            "defaultLanguage": True,
            "description": True,
            "goalValue": True,
            "hidden": True,
            "incremental": True,
            "lockedIcons": True,
            "name": True,
            "statCode": True,
            "tags": True,
            "unlockedIcons": True,
            "global": False,
        }

    # endregion static methods
