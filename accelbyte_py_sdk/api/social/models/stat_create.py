# Auto-generated at 2021-09-21T14:10:36.846273+08:00
# from: Justice Social Service (1.17.1)

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


class StatCreate(Model):
    """Stat create

    Properties:
        stat_code: (statCode) REQUIRED str

        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        minimum: (minimum) OPTIONAL float

        maximum: (maximum) OPTIONAL float

        default_value: (defaultValue) REQUIRED float

        increment_only: (incrementOnly) OPTIONAL bool

        set_as_global: (setAsGlobal) OPTIONAL bool

        set_by: (setBy) REQUIRED str

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    stat_code: str                                                                                 # REQUIRED
    name: str                                                                                      # REQUIRED
    description: str                                                                               # OPTIONAL
    minimum: float                                                                                 # OPTIONAL
    maximum: float                                                                                 # OPTIONAL
    default_value: float                                                                           # REQUIRED
    increment_only: bool                                                                           # OPTIONAL
    set_as_global: bool                                                                            # OPTIONAL
    set_by: str                                                                                    # REQUIRED
    tags: List[str]                                                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_stat_code(self, value: str) -> StatCreate:
        self.stat_code = value
        return self

    def with_name(self, value: str) -> StatCreate:
        self.name = value
        return self

    def with_description(self, value: str) -> StatCreate:
        self.description = value
        return self

    def with_minimum(self, value: float) -> StatCreate:
        self.minimum = value
        return self

    def with_maximum(self, value: float) -> StatCreate:
        self.maximum = value
        return self

    def with_default_value(self, value: float) -> StatCreate:
        self.default_value = value
        return self

    def with_increment_only(self, value: bool) -> StatCreate:
        self.increment_only = value
        return self

    def with_set_as_global(self, value: bool) -> StatCreate:
        self.set_as_global = value
        return self

    def with_set_by(self, value: str) -> StatCreate:
        self.set_by = value
        return self

    def with_tags(self, value: List[str]) -> StatCreate:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "stat_code") and self.stat_code:
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "minimum") and self.minimum:
            result["minimum"] = float(self.minimum)
        elif include_empty:
            result["minimum"] = float()
        if hasattr(self, "maximum") and self.maximum:
            result["maximum"] = float(self.maximum)
        elif include_empty:
            result["maximum"] = float()
        if hasattr(self, "default_value") and self.default_value:
            result["defaultValue"] = float(self.default_value)
        elif include_empty:
            result["defaultValue"] = float()
        if hasattr(self, "increment_only") and self.increment_only:
            result["incrementOnly"] = bool(self.increment_only)
        elif include_empty:
            result["incrementOnly"] = bool()
        if hasattr(self, "set_as_global") and self.set_as_global:
            result["setAsGlobal"] = bool(self.set_as_global)
        elif include_empty:
            result["setAsGlobal"] = bool()
        if hasattr(self, "set_by") and self.set_by:
            result["setBy"] = str(self.set_by)
        elif include_empty:
            result["setBy"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        stat_code: str,
        name: str,
        default_value: float,
        set_by: str,
        description: Optional[str] = None,
        minimum: Optional[float] = None,
        maximum: Optional[float] = None,
        increment_only: Optional[bool] = None,
        set_as_global: Optional[bool] = None,
        tags: Optional[List[str]] = None,
    ) -> StatCreate:
        instance = cls()
        instance.stat_code = stat_code
        instance.name = name
        instance.default_value = default_value
        instance.set_by = set_by
        if description is not None:
            instance.description = description
        if minimum is not None:
            instance.minimum = minimum
        if maximum is not None:
            instance.maximum = maximum
        if increment_only is not None:
            instance.increment_only = increment_only
        if set_as_global is not None:
            instance.set_as_global = set_as_global
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatCreate:
        instance = cls()
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "minimum" in dict_ and dict_["minimum"] is not None:
            instance.minimum = float(dict_["minimum"])
        elif include_empty:
            instance.minimum = float()
        if "maximum" in dict_ and dict_["maximum"] is not None:
            instance.maximum = float(dict_["maximum"])
        elif include_empty:
            instance.maximum = float()
        if "defaultValue" in dict_ and dict_["defaultValue"] is not None:
            instance.default_value = float(dict_["defaultValue"])
        elif include_empty:
            instance.default_value = float()
        if "incrementOnly" in dict_ and dict_["incrementOnly"] is not None:
            instance.increment_only = bool(dict_["incrementOnly"])
        elif include_empty:
            instance.increment_only = bool()
        if "setAsGlobal" in dict_ and dict_["setAsGlobal"] is not None:
            instance.set_as_global = bool(dict_["setAsGlobal"])
        elif include_empty:
            instance.set_as_global = bool()
        if "setBy" in dict_ and dict_["setBy"] is not None:
            instance.set_by = str(dict_["setBy"])
        elif include_empty:
            instance.set_by = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "statCode": "stat_code",
            "name": "name",
            "description": "description",
            "minimum": "minimum",
            "maximum": "maximum",
            "defaultValue": "default_value",
            "incrementOnly": "increment_only",
            "setAsGlobal": "set_as_global",
            "setBy": "set_by",
            "tags": "tags",
        }

    # endregion static methods
