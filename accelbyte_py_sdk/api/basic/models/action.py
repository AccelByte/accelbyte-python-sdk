# justice-basic-service (1.28.0)

# template file: justice_py_sdk_codegen/__main__.py

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

    color: str                                                                                     # OPTIONAL
    description: str                                                                               # OPTIONAL
    duration: int                                                                                  # OPTIONAL
    icon: str                                                                                      # OPTIONAL
    id_: int                                                                                       # OPTIONAL
    name: str                                                                                      # OPTIONAL
    priority: int                                                                                  # OPTIONAL

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
            result["color"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = int()
        if hasattr(self, "icon"):
            result["icon"] = str(self.icon)
        elif include_empty:
            result["icon"] = str()
        if hasattr(self, "id_"):
            result["id"] = int(self.id_)
        elif include_empty:
            result["id"] = int()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "priority"):
            result["priority"] = int(self.priority)
        elif include_empty:
            result["priority"] = int()
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
            instance.color = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = int()
        if "icon" in dict_ and dict_["icon"] is not None:
            instance.icon = str(dict_["icon"])
        elif include_empty:
            instance.icon = str()
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = int(dict_["id"])
        elif include_empty:
            instance.id_ = int()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "priority" in dict_ and dict_["priority"] is not None:
            instance.priority = int(dict_["priority"])
        elif include_empty:
            instance.priority = int()
        return instance

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

    # endregion static methods
