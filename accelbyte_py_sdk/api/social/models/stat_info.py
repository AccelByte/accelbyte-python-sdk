# Auto-generated at 2021-09-27T17:12:34.240176+08:00
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


class StatInfo(Model):
    """Stat info

    Properties:
        stat_code: (statCode) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED str

        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        minimum: (minimum) OPTIONAL float

        maximum: (maximum) OPTIONAL float

        default_value: (defaultValue) REQUIRED float

        increment_only: (incrementOnly) REQUIRED bool

        set_as_global: (setAsGlobal) REQUIRED bool

        set_by: (setBy) REQUIRED str

        tags: (tags) OPTIONAL List[str]

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    stat_code: str                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    status: str                                                                                    # REQUIRED
    name: str                                                                                      # REQUIRED
    description: str                                                                               # OPTIONAL
    minimum: float                                                                                 # OPTIONAL
    maximum: float                                                                                 # OPTIONAL
    default_value: float                                                                           # REQUIRED
    increment_only: bool                                                                           # REQUIRED
    set_as_global: bool                                                                            # REQUIRED
    set_by: str                                                                                    # REQUIRED
    tags: List[str]                                                                                # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_stat_code(self, value: str) -> StatInfo:
        self.stat_code = value
        return self

    def with_namespace(self, value: str) -> StatInfo:
        self.namespace = value
        return self

    def with_status(self, value: str) -> StatInfo:
        self.status = value
        return self

    def with_name(self, value: str) -> StatInfo:
        self.name = value
        return self

    def with_description(self, value: str) -> StatInfo:
        self.description = value
        return self

    def with_minimum(self, value: float) -> StatInfo:
        self.minimum = value
        return self

    def with_maximum(self, value: float) -> StatInfo:
        self.maximum = value
        return self

    def with_default_value(self, value: float) -> StatInfo:
        self.default_value = value
        return self

    def with_increment_only(self, value: bool) -> StatInfo:
        self.increment_only = value
        return self

    def with_set_as_global(self, value: bool) -> StatInfo:
        self.set_as_global = value
        return self

    def with_set_by(self, value: str) -> StatInfo:
        self.set_by = value
        return self

    def with_tags(self, value: List[str]) -> StatInfo:
        self.tags = value
        return self

    def with_created_at(self, value: str) -> StatInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> StatInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "stat_code") and self.stat_code:
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
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
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        stat_code: str,
        namespace: str,
        status: str,
        name: str,
        default_value: float,
        increment_only: bool,
        set_as_global: bool,
        set_by: str,
        created_at: str,
        updated_at: str,
        description: Optional[str] = None,
        minimum: Optional[float] = None,
        maximum: Optional[float] = None,
        tags: Optional[List[str]] = None,
    ) -> StatInfo:
        instance = cls()
        instance.stat_code = stat_code
        instance.namespace = namespace
        instance.status = status
        instance.name = name
        instance.default_value = default_value
        instance.increment_only = increment_only
        instance.set_as_global = set_as_global
        instance.set_by = set_by
        instance.created_at = created_at
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if minimum is not None:
            instance.minimum = minimum
        if maximum is not None:
            instance.maximum = maximum
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatInfo:
        instance = cls()
        if not dict_:
            return instance
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
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
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "statCode": "stat_code",
            "namespace": "namespace",
            "status": "status",
            "name": "name",
            "description": "description",
            "minimum": "minimum",
            "maximum": "maximum",
            "defaultValue": "default_value",
            "incrementOnly": "increment_only",
            "setAsGlobal": "set_as_global",
            "setBy": "set_by",
            "tags": "tags",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
