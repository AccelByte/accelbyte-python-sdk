# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Basic Service (2.2.1)

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


class Action(Model):
    """A DTO object for equ8 action. (Action)

    Properties:
        color: (color) OPTIONAL str

        description: (description) OPTIONAL str

        duration: (duration) OPTIONAL int

        icon: (icon) OPTIONAL str

        id_: (id) OPTIONAL int

        name: (name) OPTIONAL str

        priority: (priority) OPTIONAL int
    """

    # region fields

    color: str  # OPTIONAL
    description: str  # OPTIONAL
    duration: int  # OPTIONAL
    icon: str  # OPTIONAL
    id_: int  # OPTIONAL
    name: str  # OPTIONAL
    priority: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_color(self, value: str) -> Action:
        self.color = value
        return self

    def with_description(self, value: str) -> Action:
        self.description = value
        return self

    def with_duration(self, value: int) -> Action:
        self.duration = value
        return self

    def with_icon(self, value: str) -> Action:
        self.icon = value
        return self

    def with_id(self, value: int) -> Action:
        self.id_ = value
        return self

    def with_name(self, value: str) -> Action:
        self.name = value
        return self

    def with_priority(self, value: int) -> Action:
        self.priority = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "color"):
            result["color"] = str(self.color)
        elif include_empty:
            result["color"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = 0
        if hasattr(self, "icon"):
            result["icon"] = str(self.icon)
        elif include_empty:
            result["icon"] = ""
        if hasattr(self, "id_"):
            result["id"] = int(self.id_)
        elif include_empty:
            result["id"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "priority"):
            result["priority"] = int(self.priority)
        elif include_empty:
            result["priority"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        color: Optional[str] = None,
        description: Optional[str] = None,
        duration: Optional[int] = None,
        icon: Optional[str] = None,
        id_: Optional[int] = None,
        name: Optional[str] = None,
        priority: Optional[int] = None,
    ) -> Action:
        instance = cls()
        if color is not None:
            instance.color = color
        if description is not None:
            instance.description = description
        if duration is not None:
            instance.duration = duration
        if icon is not None:
            instance.icon = icon
        if id_ is not None:
            instance.id_ = id_
        if name is not None:
            instance.name = name
        if priority is not None:
            instance.priority = priority
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> Action:
        instance = cls()
        if not dict_:
            return instance
        if "color" in dict_ and dict_["color"] is not None:
            instance.color = str(dict_["color"])
        elif include_empty:
            instance.color = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = 0
        if "icon" in dict_ and dict_["icon"] is not None:
            instance.icon = str(dict_["icon"])
        elif include_empty:
            instance.icon = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = int(dict_["id"])
        elif include_empty:
            instance.id_ = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "priority" in dict_ and dict_["priority"] is not None:
            instance.priority = int(dict_["priority"])
        elif include_empty:
            instance.priority = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, Action]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[Action]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[Action, List[Action], Dict[Any, Action]]:
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
            "color": "color",
            "description": "description",
            "duration": "duration",
            "icon": "icon",
            "id": "id_",
            "name": "name",
            "priority": "priority",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "color": False,
            "description": False,
            "duration": False,
            "icon": False,
            "id": False,
            "name": False,
            "priority": False,
        }

    # endregion static methods
