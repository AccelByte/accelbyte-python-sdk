# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Social Service (1.33.0)

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
from ....core import StrEnum


class SetByEnum(StrEnum):
    CLIENT = "CLIENT"
    SERVER = "SERVER"


class StatCreate(Model):
    """Stat create (StatCreate)

    Properties:
        default_value: (defaultValue) REQUIRED float

        name: (name) REQUIRED str

        set_by: (setBy) REQUIRED Union[str, SetByEnum]

        stat_code: (statCode) REQUIRED str

        description: (description) OPTIONAL str

        increment_only: (incrementOnly) OPTIONAL bool

        maximum: (maximum) OPTIONAL float

        minimum: (minimum) OPTIONAL float

        set_as_global: (setAsGlobal) OPTIONAL bool

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    default_value: float  # REQUIRED
    name: str  # REQUIRED
    set_by: Union[str, SetByEnum]  # REQUIRED
    stat_code: str  # REQUIRED
    description: str  # OPTIONAL
    increment_only: bool  # OPTIONAL
    maximum: float  # OPTIONAL
    minimum: float  # OPTIONAL
    set_as_global: bool  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_default_value(self, value: float) -> StatCreate:
        self.default_value = value
        return self

    def with_name(self, value: str) -> StatCreate:
        self.name = value
        return self

    def with_set_by(self, value: Union[str, SetByEnum]) -> StatCreate:
        self.set_by = value
        return self

    def with_stat_code(self, value: str) -> StatCreate:
        self.stat_code = value
        return self

    def with_description(self, value: str) -> StatCreate:
        self.description = value
        return self

    def with_increment_only(self, value: bool) -> StatCreate:
        self.increment_only = value
        return self

    def with_maximum(self, value: float) -> StatCreate:
        self.maximum = value
        return self

    def with_minimum(self, value: float) -> StatCreate:
        self.minimum = value
        return self

    def with_set_as_global(self, value: bool) -> StatCreate:
        self.set_as_global = value
        return self

    def with_tags(self, value: List[str]) -> StatCreate:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "default_value"):
            result["defaultValue"] = float(self.default_value)
        elif include_empty:
            result["defaultValue"] = 0.0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "set_by"):
            result["setBy"] = str(self.set_by)
        elif include_empty:
            result["setBy"] = Union[str, SetByEnum]()
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "increment_only"):
            result["incrementOnly"] = bool(self.increment_only)
        elif include_empty:
            result["incrementOnly"] = False
        if hasattr(self, "maximum"):
            result["maximum"] = float(self.maximum)
        elif include_empty:
            result["maximum"] = 0.0
        if hasattr(self, "minimum"):
            result["minimum"] = float(self.minimum)
        elif include_empty:
            result["minimum"] = 0.0
        if hasattr(self, "set_as_global"):
            result["setAsGlobal"] = bool(self.set_as_global)
        elif include_empty:
            result["setAsGlobal"] = False
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        default_value: float,
        name: str,
        set_by: Union[str, SetByEnum],
        stat_code: str,
        description: Optional[str] = None,
        increment_only: Optional[bool] = None,
        maximum: Optional[float] = None,
        minimum: Optional[float] = None,
        set_as_global: Optional[bool] = None,
        tags: Optional[List[str]] = None,
    ) -> StatCreate:
        instance = cls()
        instance.default_value = default_value
        instance.name = name
        instance.set_by = set_by
        instance.stat_code = stat_code
        if description is not None:
            instance.description = description
        if increment_only is not None:
            instance.increment_only = increment_only
        if maximum is not None:
            instance.maximum = maximum
        if minimum is not None:
            instance.minimum = minimum
        if set_as_global is not None:
            instance.set_as_global = set_as_global
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatCreate:
        instance = cls()
        if not dict_:
            return instance
        if "defaultValue" in dict_ and dict_["defaultValue"] is not None:
            instance.default_value = float(dict_["defaultValue"])
        elif include_empty:
            instance.default_value = 0.0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "setBy" in dict_ and dict_["setBy"] is not None:
            instance.set_by = str(dict_["setBy"])
        elif include_empty:
            instance.set_by = Union[str, SetByEnum]()
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "incrementOnly" in dict_ and dict_["incrementOnly"] is not None:
            instance.increment_only = bool(dict_["incrementOnly"])
        elif include_empty:
            instance.increment_only = False
        if "maximum" in dict_ and dict_["maximum"] is not None:
            instance.maximum = float(dict_["maximum"])
        elif include_empty:
            instance.maximum = 0.0
        if "minimum" in dict_ and dict_["minimum"] is not None:
            instance.minimum = float(dict_["minimum"])
        elif include_empty:
            instance.minimum = 0.0
        if "setAsGlobal" in dict_ and dict_["setAsGlobal"] is not None:
            instance.set_as_global = bool(dict_["setAsGlobal"])
        elif include_empty:
            instance.set_as_global = False
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StatCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatCreate, List[StatCreate], Dict[Any, StatCreate]]:
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
            "defaultValue": "default_value",
            "name": "name",
            "setBy": "set_by",
            "statCode": "stat_code",
            "description": "description",
            "incrementOnly": "increment_only",
            "maximum": "maximum",
            "minimum": "minimum",
            "setAsGlobal": "set_as_global",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "defaultValue": True,
            "name": True,
            "setBy": True,
            "statCode": True,
            "description": False,
            "incrementOnly": False,
            "maximum": False,
            "minimum": False,
            "setAsGlobal": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "setBy": ["CLIENT", "SERVER"],
        }

    # endregion static methods
