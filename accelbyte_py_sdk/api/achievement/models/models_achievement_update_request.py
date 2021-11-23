# justice-achievement-service (2.6.0)

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

from ..models.models_icon import ModelsIcon


class ModelsAchievementUpdateRequest(Model):
    """Models achievement update request (models.AchievementUpdateRequest)

    Properties:
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
    """

    # region fields

    default_language: str                                                                          # REQUIRED
    description: Dict[str, str]                                                                    # REQUIRED
    goal_value: float                                                                              # REQUIRED
    hidden: bool                                                                                   # REQUIRED
    incremental: bool                                                                              # REQUIRED
    locked_icons: List[ModelsIcon]                                                                 # REQUIRED
    name: Dict[str, str]                                                                           # REQUIRED
    stat_code: str                                                                                 # REQUIRED
    tags: List[str]                                                                                # REQUIRED
    unlocked_icons: List[ModelsIcon]                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_default_language(self, value: str) -> ModelsAchievementUpdateRequest:
        self.default_language = value
        return self

    def with_description(self, value: Dict[str, str]) -> ModelsAchievementUpdateRequest:
        self.description = value
        return self

    def with_goal_value(self, value: float) -> ModelsAchievementUpdateRequest:
        self.goal_value = value
        return self

    def with_hidden(self, value: bool) -> ModelsAchievementUpdateRequest:
        self.hidden = value
        return self

    def with_incremental(self, value: bool) -> ModelsAchievementUpdateRequest:
        self.incremental = value
        return self

    def with_locked_icons(self, value: List[ModelsIcon]) -> ModelsAchievementUpdateRequest:
        self.locked_icons = value
        return self

    def with_name(self, value: Dict[str, str]) -> ModelsAchievementUpdateRequest:
        self.name = value
        return self

    def with_stat_code(self, value: str) -> ModelsAchievementUpdateRequest:
        self.stat_code = value
        return self

    def with_tags(self, value: List[str]) -> ModelsAchievementUpdateRequest:
        self.tags = value
        return self

    def with_unlocked_icons(self, value: List[ModelsIcon]) -> ModelsAchievementUpdateRequest:
        self.unlocked_icons = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "default_language"):
            result["defaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["defaultLanguage"] = str()
        if hasattr(self, "description"):
            result["description"] = {str(k0): str(v0) for k0, v0 in self.description.items()}
        elif include_empty:
            result["description"] = {}
        if hasattr(self, "goal_value"):
            result["goalValue"] = float(self.goal_value)
        elif include_empty:
            result["goalValue"] = float()
        if hasattr(self, "hidden"):
            result["hidden"] = bool(self.hidden)
        elif include_empty:
            result["hidden"] = bool()
        if hasattr(self, "incremental"):
            result["incremental"] = bool(self.incremental)
        elif include_empty:
            result["incremental"] = bool()
        if hasattr(self, "locked_icons"):
            result["lockedIcons"] = [i0.to_dict(include_empty=include_empty) for i0 in self.locked_icons]
        elif include_empty:
            result["lockedIcons"] = []
        if hasattr(self, "name"):
            result["name"] = {str(k0): str(v0) for k0, v0 in self.name.items()}
        elif include_empty:
            result["name"] = {}
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = str()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "unlocked_icons"):
            result["unlockedIcons"] = [i0.to_dict(include_empty=include_empty) for i0 in self.unlocked_icons]
        elif include_empty:
            result["unlockedIcons"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
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
    ) -> ModelsAchievementUpdateRequest:
        instance = cls()
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
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAchievementUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "defaultLanguage" in dict_ and dict_["defaultLanguage"] is not None:
            instance.default_language = str(dict_["defaultLanguage"])
        elif include_empty:
            instance.default_language = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = {str(k0): str(v0) for k0, v0 in dict_["description"].items()}
        elif include_empty:
            instance.description = {}
        if "goalValue" in dict_ and dict_["goalValue"] is not None:
            instance.goal_value = float(dict_["goalValue"])
        elif include_empty:
            instance.goal_value = float()
        if "hidden" in dict_ and dict_["hidden"] is not None:
            instance.hidden = bool(dict_["hidden"])
        elif include_empty:
            instance.hidden = bool()
        if "incremental" in dict_ and dict_["incremental"] is not None:
            instance.incremental = bool(dict_["incremental"])
        elif include_empty:
            instance.incremental = bool()
        if "lockedIcons" in dict_ and dict_["lockedIcons"] is not None:
            instance.locked_icons = [ModelsIcon.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["lockedIcons"]]
        elif include_empty:
            instance.locked_icons = []
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = {str(k0): str(v0) for k0, v0 in dict_["name"].items()}
        elif include_empty:
            instance.name = {}
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "unlockedIcons" in dict_ and dict_["unlockedIcons"] is not None:
            instance.unlocked_icons = [ModelsIcon.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["unlockedIcons"]]
        elif include_empty:
            instance.unlocked_icons = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
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
        }

    # endregion static methods