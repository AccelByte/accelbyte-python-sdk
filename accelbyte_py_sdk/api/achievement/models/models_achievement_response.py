# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Achievement Service

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


class ModelsAchievementResponse(Model):
    """Models achievement response (models.AchievementResponse)

    Properties:
        achievement_code: (achievementCode) REQUIRED str

        created_at: (createdAt) REQUIRED str

        default_language: (defaultLanguage) REQUIRED str

        description: (description) REQUIRED Dict[str, str]

        global_: (global) REQUIRED bool

        hidden: (hidden) REQUIRED bool

        incremental: (incremental) REQUIRED bool

        list_order: (listOrder) REQUIRED int

        locked_icons: (lockedIcons) REQUIRED List[ModelsIcon]

        name: (name) REQUIRED Dict[str, str]

        namespace: (namespace) REQUIRED str

        tags: (tags) REQUIRED List[str]

        unlocked_icons: (unlockedIcons) REQUIRED List[ModelsIcon]

        updated_at: (updatedAt) REQUIRED str

        custom_attributes: (customAttributes) OPTIONAL Dict[str, Any]

        goal_value: (goalValue) OPTIONAL float

        stat_code: (statCode) OPTIONAL str

        status: (status) OPTIONAL str
    """

    # region fields

    achievement_code: str  # REQUIRED
    created_at: str  # REQUIRED
    default_language: str  # REQUIRED
    description: Dict[str, str]  # REQUIRED
    global_: bool  # REQUIRED
    hidden: bool  # REQUIRED
    incremental: bool  # REQUIRED
    list_order: int  # REQUIRED
    locked_icons: List[ModelsIcon]  # REQUIRED
    name: Dict[str, str]  # REQUIRED
    namespace: str  # REQUIRED
    tags: List[str]  # REQUIRED
    unlocked_icons: List[ModelsIcon]  # REQUIRED
    updated_at: str  # REQUIRED
    custom_attributes: Dict[str, Any]  # OPTIONAL
    goal_value: float  # OPTIONAL
    stat_code: str  # OPTIONAL
    status: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_achievement_code(self, value: str) -> ModelsAchievementResponse:
        self.achievement_code = value
        return self

    def with_created_at(self, value: str) -> ModelsAchievementResponse:
        self.created_at = value
        return self

    def with_default_language(self, value: str) -> ModelsAchievementResponse:
        self.default_language = value
        return self

    def with_description(self, value: Dict[str, str]) -> ModelsAchievementResponse:
        self.description = value
        return self

    def with_global(self, value: bool) -> ModelsAchievementResponse:
        self.global_ = value
        return self

    def with_hidden(self, value: bool) -> ModelsAchievementResponse:
        self.hidden = value
        return self

    def with_incremental(self, value: bool) -> ModelsAchievementResponse:
        self.incremental = value
        return self

    def with_list_order(self, value: int) -> ModelsAchievementResponse:
        self.list_order = value
        return self

    def with_locked_icons(self, value: List[ModelsIcon]) -> ModelsAchievementResponse:
        self.locked_icons = value
        return self

    def with_name(self, value: Dict[str, str]) -> ModelsAchievementResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsAchievementResponse:
        self.namespace = value
        return self

    def with_tags(self, value: List[str]) -> ModelsAchievementResponse:
        self.tags = value
        return self

    def with_unlocked_icons(self, value: List[ModelsIcon]) -> ModelsAchievementResponse:
        self.unlocked_icons = value
        return self

    def with_updated_at(self, value: str) -> ModelsAchievementResponse:
        self.updated_at = value
        return self

    def with_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ModelsAchievementResponse:
        self.custom_attributes = value
        return self

    def with_goal_value(self, value: float) -> ModelsAchievementResponse:
        self.goal_value = value
        return self

    def with_stat_code(self, value: str) -> ModelsAchievementResponse:
        self.stat_code = value
        return self

    def with_status(self, value: str) -> ModelsAchievementResponse:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "achievement_code"):
            result["achievementCode"] = str(self.achievement_code)
        elif include_empty:
            result["achievementCode"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
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
        if hasattr(self, "global_"):
            result["global"] = bool(self.global_)
        elif include_empty:
            result["global"] = False
        if hasattr(self, "hidden"):
            result["hidden"] = bool(self.hidden)
        elif include_empty:
            result["hidden"] = False
        if hasattr(self, "incremental"):
            result["incremental"] = bool(self.incremental)
        elif include_empty:
            result["incremental"] = False
        if hasattr(self, "list_order"):
            result["listOrder"] = int(self.list_order)
        elif include_empty:
            result["listOrder"] = 0
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
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
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "goal_value"):
            result["goalValue"] = float(self.goal_value)
        elif include_empty:
            result["goalValue"] = 0.0
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
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
        global_: bool,
        hidden: bool,
        incremental: bool,
        list_order: int,
        locked_icons: List[ModelsIcon],
        name: Dict[str, str],
        namespace: str,
        tags: List[str],
        unlocked_icons: List[ModelsIcon],
        updated_at: str,
        custom_attributes: Optional[Dict[str, Any]] = None,
        goal_value: Optional[float] = None,
        stat_code: Optional[str] = None,
        status: Optional[str] = None,
        **kwargs,
    ) -> ModelsAchievementResponse:
        instance = cls()
        instance.achievement_code = achievement_code
        instance.created_at = created_at
        instance.default_language = default_language
        instance.description = description
        instance.global_ = global_
        instance.hidden = hidden
        instance.incremental = incremental
        instance.list_order = list_order
        instance.locked_icons = locked_icons
        instance.name = name
        instance.namespace = namespace
        instance.tags = tags
        instance.unlocked_icons = unlocked_icons
        instance.updated_at = updated_at
        if custom_attributes is not None:
            instance.custom_attributes = custom_attributes
        if goal_value is not None:
            instance.goal_value = goal_value
        if stat_code is not None:
            instance.stat_code = stat_code
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsAchievementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "achievementCode" in dict_ and dict_["achievementCode"] is not None:
            instance.achievement_code = str(dict_["achievementCode"])
        elif include_empty:
            instance.achievement_code = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
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
        if "global" in dict_ and dict_["global"] is not None:
            instance.global_ = bool(dict_["global"])
        elif include_empty:
            instance.global_ = False
        if "hidden" in dict_ and dict_["hidden"] is not None:
            instance.hidden = bool(dict_["hidden"])
        elif include_empty:
            instance.hidden = False
        if "incremental" in dict_ and dict_["incremental"] is not None:
            instance.incremental = bool(dict_["incremental"])
        elif include_empty:
            instance.incremental = False
        if "listOrder" in dict_ and dict_["listOrder"] is not None:
            instance.list_order = int(dict_["listOrder"])
        elif include_empty:
            instance.list_order = 0
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
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
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "goalValue" in dict_ and dict_["goalValue"] is not None:
            instance.goal_value = float(dict_["goalValue"])
        elif include_empty:
            instance.goal_value = 0.0
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsAchievementResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsAchievementResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsAchievementResponse,
        List[ModelsAchievementResponse],
        Dict[Any, ModelsAchievementResponse],
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
            "createdAt": "created_at",
            "defaultLanguage": "default_language",
            "description": "description",
            "global": "global_",
            "hidden": "hidden",
            "incremental": "incremental",
            "listOrder": "list_order",
            "lockedIcons": "locked_icons",
            "name": "name",
            "namespace": "namespace",
            "tags": "tags",
            "unlockedIcons": "unlocked_icons",
            "updatedAt": "updated_at",
            "customAttributes": "custom_attributes",
            "goalValue": "goal_value",
            "statCode": "stat_code",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "achievementCode": True,
            "createdAt": True,
            "defaultLanguage": True,
            "description": True,
            "global": True,
            "hidden": True,
            "incremental": True,
            "listOrder": True,
            "lockedIcons": True,
            "name": True,
            "namespace": True,
            "tags": True,
            "unlockedIcons": True,
            "updatedAt": True,
            "customAttributes": False,
            "goalValue": False,
            "statCode": False,
            "status": False,
        }

    # endregion static methods
