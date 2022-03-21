# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-achievement-service ()

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model

from ..models.models_icon import ModelsIcon


class ModelsAchievement(Model):
    """Models achievement (models.Achievement)

    Properties:
        achievement_code: (AchievementCode) REQUIRED str

        created_at: (CreatedAt) REQUIRED str

        default_language: (DefaultLanguage) REQUIRED str

        description: (Description) REQUIRED Dict[str, str]

        goal_value: (GoalValue) REQUIRED float

        hidden: (Hidden) REQUIRED bool

        id_: (ID) REQUIRED str

        incremental: (Incremental) REQUIRED bool

        list_order: (ListOrder) REQUIRED int

        locked_icons: (LockedIcons) REQUIRED List[ModelsIcon]

        name: (Name) REQUIRED Dict[str, str]

        namespace: (Namespace) REQUIRED str

        stat_code: (StatCode) REQUIRED str

        tags: (Tags) REQUIRED List[str]

        unlocked_icons: (UnlockedIcons) REQUIRED List[ModelsIcon]

        updated_at: (UpdatedAt) REQUIRED str
    """

    # region fields

    achievement_code: str                                                                          # REQUIRED
    created_at: str                                                                                # REQUIRED
    default_language: str                                                                          # REQUIRED
    description: Dict[str, str]                                                                    # REQUIRED
    goal_value: float                                                                              # REQUIRED
    hidden: bool                                                                                   # REQUIRED
    id_: str                                                                                       # REQUIRED
    incremental: bool                                                                              # REQUIRED
    list_order: int                                                                                # REQUIRED
    locked_icons: List[ModelsIcon]                                                                 # REQUIRED
    name: Dict[str, str]                                                                           # REQUIRED
    namespace: str                                                                                 # REQUIRED
    stat_code: str                                                                                 # REQUIRED
    tags: List[str]                                                                                # REQUIRED
    unlocked_icons: List[ModelsIcon]                                                               # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_achievement_code(self, value: str) -> ModelsAchievement:
        self.achievement_code = value
        return self

    def with_created_at(self, value: str) -> ModelsAchievement:
        self.created_at = value
        return self

    def with_default_language(self, value: str) -> ModelsAchievement:
        self.default_language = value
        return self

    def with_description(self, value: Dict[str, str]) -> ModelsAchievement:
        self.description = value
        return self

    def with_goal_value(self, value: float) -> ModelsAchievement:
        self.goal_value = value
        return self

    def with_hidden(self, value: bool) -> ModelsAchievement:
        self.hidden = value
        return self

    def with_id(self, value: str) -> ModelsAchievement:
        self.id_ = value
        return self

    def with_incremental(self, value: bool) -> ModelsAchievement:
        self.incremental = value
        return self

    def with_list_order(self, value: int) -> ModelsAchievement:
        self.list_order = value
        return self

    def with_locked_icons(self, value: List[ModelsIcon]) -> ModelsAchievement:
        self.locked_icons = value
        return self

    def with_name(self, value: Dict[str, str]) -> ModelsAchievement:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsAchievement:
        self.namespace = value
        return self

    def with_stat_code(self, value: str) -> ModelsAchievement:
        self.stat_code = value
        return self

    def with_tags(self, value: List[str]) -> ModelsAchievement:
        self.tags = value
        return self

    def with_unlocked_icons(self, value: List[ModelsIcon]) -> ModelsAchievement:
        self.unlocked_icons = value
        return self

    def with_updated_at(self, value: str) -> ModelsAchievement:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "achievement_code") or self.achievement_code is None:
            return False
        if not hasattr(self, "created_at") or self.created_at is None:
            return False
        if not hasattr(self, "default_language") or self.default_language is None:
            return False
        if not hasattr(self, "description") or self.description is None:
            return False
        if not hasattr(self, "goal_value") or self.goal_value is None:
            return False
        if not hasattr(self, "hidden") or self.hidden is None:
            return False
        if not hasattr(self, "id_") or self.id_ is None:
            return False
        if not hasattr(self, "incremental") or self.incremental is None:
            return False
        if not hasattr(self, "list_order") or self.list_order is None:
            return False
        if not hasattr(self, "locked_icons") or self.locked_icons is None:
            return False
        if not hasattr(self, "name") or self.name is None:
            return False
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "stat_code") or self.stat_code is None:
            return False
        if not hasattr(self, "tags") or self.tags is None:
            return False
        if not hasattr(self, "unlocked_icons") or self.unlocked_icons is None:
            return False
        if not hasattr(self, "updated_at") or self.updated_at is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["AchievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["AchievementCode"] = str()
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = str()
        if hasattr(self, "default_language"):
            result["DefaultLanguage"] = str(self.default_language)
        elif include_empty:
            result["DefaultLanguage"] = str()
        if hasattr(self, "description"):
            result["Description"] = {str(k0): str(v0) for k0, v0 in self.description.items()}
        elif include_empty:
            result["Description"] = {}
        if hasattr(self, "goal_value"):
            result["GoalValue"] = float(self.goal_value)
        elif include_empty:
            result["GoalValue"] = float()
        if hasattr(self, "hidden"):
            result["Hidden"] = bool(self.hidden)
        elif include_empty:
            result["Hidden"] = bool()
        if hasattr(self, "id_"):
            result["ID"] = str(self.id_)
        elif include_empty:
            result["ID"] = str()
        if hasattr(self, "incremental"):
            result["Incremental"] = bool(self.incremental)
        elif include_empty:
            result["Incremental"] = bool()
        if hasattr(self, "list_order"):
            result["ListOrder"] = int(self.list_order)
        elif include_empty:
            result["ListOrder"] = int()
        if hasattr(self, "locked_icons"):
            result["LockedIcons"] = [i0.to_dict(include_empty=include_empty) for i0 in self.locked_icons]
        elif include_empty:
            result["LockedIcons"] = []
        if hasattr(self, "name"):
            result["Name"] = {str(k0): str(v0) for k0, v0 in self.name.items()}
        elif include_empty:
            result["Name"] = {}
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = str()
        if hasattr(self, "stat_code"):
            result["StatCode"] = str(self.stat_code)
        elif include_empty:
            result["StatCode"] = str()
        if hasattr(self, "tags"):
            result["Tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["Tags"] = []
        if hasattr(self, "unlocked_icons"):
            result["UnlockedIcons"] = [i0.to_dict(include_empty=include_empty) for i0 in self.unlocked_icons]
        elif include_empty:
            result["UnlockedIcons"] = []
        if hasattr(self, "updated_at"):
            result["UpdatedAt"] = str(self.updated_at)
        elif include_empty:
            result["UpdatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        achievement_code: str,
        created_at: str,
        default_language: str,
        description: Dict[str, str],
        goal_value: float,
        hidden: bool,
        id_: str,
        incremental: bool,
        list_order: int,
        locked_icons: List[ModelsIcon],
        name: Dict[str, str],
        namespace: str,
        stat_code: str,
        tags: List[str],
        unlocked_icons: List[ModelsIcon],
        updated_at: str,
    ) -> ModelsAchievement:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.created_at = created_at
        instance.default_language = default_language
        instance.description = description
        instance.goal_value = goal_value
        instance.hidden = hidden
        instance.id_ = id_
        instance.incremental = incremental
        instance.list_order = list_order
        instance.locked_icons = locked_icons
        instance.name = name
        instance.namespace = namespace
        instance.stat_code = stat_code
        instance.tags = tags
        instance.unlocked_icons = unlocked_icons
        instance.updated_at = updated_at
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAchievement:
        instance = cls()
        if not dict_:
            return instance
        if "AchievementCode" in dict_ and dict_["AchievementCode"] is not None:
            instance.achievement_code = str(dict_["AchievementCode"])
        elif include_empty:
            instance.achievement_code = str()
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = str()
        if "DefaultLanguage" in dict_ and dict_["DefaultLanguage"] is not None:
            instance.default_language = str(dict_["DefaultLanguage"])
        elif include_empty:
            instance.default_language = str()
        if "Description" in dict_ and dict_["Description"] is not None:
            instance.description = {str(k0): str(v0) for k0, v0 in dict_["Description"].items()}
        elif include_empty:
            instance.description = {}
        if "GoalValue" in dict_ and dict_["GoalValue"] is not None:
            instance.goal_value = float(dict_["GoalValue"])
        elif include_empty:
            instance.goal_value = float()
        if "Hidden" in dict_ and dict_["Hidden"] is not None:
            instance.hidden = bool(dict_["Hidden"])
        elif include_empty:
            instance.hidden = bool()
        if "ID" in dict_ and dict_["ID"] is not None:
            instance.id_ = str(dict_["ID"])
        elif include_empty:
            instance.id_ = str()
        if "Incremental" in dict_ and dict_["Incremental"] is not None:
            instance.incremental = bool(dict_["Incremental"])
        elif include_empty:
            instance.incremental = bool()
        if "ListOrder" in dict_ and dict_["ListOrder"] is not None:
            instance.list_order = int(dict_["ListOrder"])
        elif include_empty:
            instance.list_order = int()
        if "LockedIcons" in dict_ and dict_["LockedIcons"] is not None:
            instance.locked_icons = [ModelsIcon.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["LockedIcons"]]
        elif include_empty:
            instance.locked_icons = []
        if "Name" in dict_ and dict_["Name"] is not None:
            instance.name = {str(k0): str(v0) for k0, v0 in dict_["Name"].items()}
        elif include_empty:
            instance.name = {}
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = str()
        if "StatCode" in dict_ and dict_["StatCode"] is not None:
            instance.stat_code = str(dict_["StatCode"])
        elif include_empty:
            instance.stat_code = str()
        if "Tags" in dict_ and dict_["Tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["Tags"]]
        elif include_empty:
            instance.tags = []
        if "UnlockedIcons" in dict_ and dict_["UnlockedIcons"] is not None:
            instance.unlocked_icons = [ModelsIcon.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["UnlockedIcons"]]
        elif include_empty:
            instance.unlocked_icons = []
        if "UpdatedAt" in dict_ and dict_["UpdatedAt"] is not None:
            instance.updated_at = str(dict_["UpdatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsAchievement]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsAchievement]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsAchievement, List[ModelsAchievement]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "AchievementCode": "achievement_code",
            "CreatedAt": "created_at",
            "DefaultLanguage": "default_language",
            "Description": "description",
            "GoalValue": "goal_value",
            "Hidden": "hidden",
            "ID": "id_",
            "Incremental": "incremental",
            "ListOrder": "list_order",
            "LockedIcons": "locked_icons",
            "Name": "name",
            "Namespace": "namespace",
            "StatCode": "stat_code",
            "Tags": "tags",
            "UnlockedIcons": "unlocked_icons",
            "UpdatedAt": "updated_at",
        }

    # endregion static methods
