# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Statistics Service

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

from ..models.cycle_override import CycleOverride


class SetByEnum(StrEnum):
    CLIENT = "CLIENT"
    SERVER = "SERVER"


class StatusEnum(StrEnum):
    INIT = "INIT"
    TIED = "TIED"


class GlobalAggregationMethodEnum(StrEnum):
    LAST = "LAST"
    MAX = "MAX"
    MIN = "MIN"
    TOTAL = "TOTAL"


class VisibilityEnum(StrEnum):
    SERVERONLY = "SERVERONLY"
    SHOWALL = "SHOWALL"


class StatInfo(Model):
    """Stat info (StatInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        default_value: (defaultValue) REQUIRED float

        ignore_additional_data_on_value_rejected: (ignoreAdditionalDataOnValueRejected) REQUIRED bool

        increment_only: (incrementOnly) REQUIRED bool

        is_public: (isPublic) REQUIRED bool

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        set_as_global: (setAsGlobal) REQUIRED bool

        set_by: (setBy) REQUIRED Union[str, SetByEnum]

        stat_code: (statCode) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        cap_cycle_override: (capCycleOverride) OPTIONAL bool

        cycle_ids: (cycleIds) OPTIONAL List[str]

        cycle_overrides: (cycleOverrides) OPTIONAL List[CycleOverride]

        description: (description) OPTIONAL str

        global_aggregation_method: (globalAggregationMethod) OPTIONAL Union[str, GlobalAggregationMethodEnum]

        maximum: (maximum) OPTIONAL float

        minimum: (minimum) OPTIONAL float

        tags: (tags) OPTIONAL List[str]

        visibility: (visibility) OPTIONAL Union[str, VisibilityEnum]
    """

    # region fields

    created_at: str  # REQUIRED
    default_value: float  # REQUIRED
    ignore_additional_data_on_value_rejected: bool  # REQUIRED
    increment_only: bool  # REQUIRED
    is_public: bool  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    set_as_global: bool  # REQUIRED
    set_by: Union[str, SetByEnum]  # REQUIRED
    stat_code: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    cap_cycle_override: bool  # OPTIONAL
    cycle_ids: List[str]  # OPTIONAL
    cycle_overrides: List[CycleOverride]  # OPTIONAL
    description: str  # OPTIONAL
    global_aggregation_method: Union[str, GlobalAggregationMethodEnum]  # OPTIONAL
    maximum: float  # OPTIONAL
    minimum: float  # OPTIONAL
    tags: List[str]  # OPTIONAL
    visibility: Union[str, VisibilityEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> StatInfo:
        self.created_at = value
        return self

    def with_default_value(self, value: float) -> StatInfo:
        self.default_value = value
        return self

    def with_ignore_additional_data_on_value_rejected(self, value: bool) -> StatInfo:
        self.ignore_additional_data_on_value_rejected = value
        return self

    def with_increment_only(self, value: bool) -> StatInfo:
        self.increment_only = value
        return self

    def with_is_public(self, value: bool) -> StatInfo:
        self.is_public = value
        return self

    def with_name(self, value: str) -> StatInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> StatInfo:
        self.namespace = value
        return self

    def with_set_as_global(self, value: bool) -> StatInfo:
        self.set_as_global = value
        return self

    def with_set_by(self, value: Union[str, SetByEnum]) -> StatInfo:
        self.set_by = value
        return self

    def with_stat_code(self, value: str) -> StatInfo:
        self.stat_code = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> StatInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> StatInfo:
        self.updated_at = value
        return self

    def with_cap_cycle_override(self, value: bool) -> StatInfo:
        self.cap_cycle_override = value
        return self

    def with_cycle_ids(self, value: List[str]) -> StatInfo:
        self.cycle_ids = value
        return self

    def with_cycle_overrides(self, value: List[CycleOverride]) -> StatInfo:
        self.cycle_overrides = value
        return self

    def with_description(self, value: str) -> StatInfo:
        self.description = value
        return self

    def with_global_aggregation_method(
        self, value: Union[str, GlobalAggregationMethodEnum]
    ) -> StatInfo:
        self.global_aggregation_method = value
        return self

    def with_maximum(self, value: float) -> StatInfo:
        self.maximum = value
        return self

    def with_minimum(self, value: float) -> StatInfo:
        self.minimum = value
        return self

    def with_tags(self, value: List[str]) -> StatInfo:
        self.tags = value
        return self

    def with_visibility(self, value: Union[str, VisibilityEnum]) -> StatInfo:
        self.visibility = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "default_value"):
            result["defaultValue"] = float(self.default_value)
        elif include_empty:
            result["defaultValue"] = 0.0
        if hasattr(self, "ignore_additional_data_on_value_rejected"):
            result["ignoreAdditionalDataOnValueRejected"] = bool(
                self.ignore_additional_data_on_value_rejected
            )
        elif include_empty:
            result["ignoreAdditionalDataOnValueRejected"] = False
        if hasattr(self, "increment_only"):
            result["incrementOnly"] = bool(self.increment_only)
        elif include_empty:
            result["incrementOnly"] = False
        if hasattr(self, "is_public"):
            result["isPublic"] = bool(self.is_public)
        elif include_empty:
            result["isPublic"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "set_as_global"):
            result["setAsGlobal"] = bool(self.set_as_global)
        elif include_empty:
            result["setAsGlobal"] = False
        if hasattr(self, "set_by"):
            result["setBy"] = str(self.set_by)
        elif include_empty:
            result["setBy"] = Union[str, SetByEnum]()
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "cap_cycle_override"):
            result["capCycleOverride"] = bool(self.cap_cycle_override)
        elif include_empty:
            result["capCycleOverride"] = False
        if hasattr(self, "cycle_ids"):
            result["cycleIds"] = [str(i0) for i0 in self.cycle_ids]
        elif include_empty:
            result["cycleIds"] = []
        if hasattr(self, "cycle_overrides"):
            result["cycleOverrides"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.cycle_overrides
            ]
        elif include_empty:
            result["cycleOverrides"] = []
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "global_aggregation_method"):
            result["globalAggregationMethod"] = str(self.global_aggregation_method)
        elif include_empty:
            result["globalAggregationMethod"] = Union[
                str, GlobalAggregationMethodEnum
            ]()
        if hasattr(self, "maximum"):
            result["maximum"] = float(self.maximum)
        elif include_empty:
            result["maximum"] = 0.0
        if hasattr(self, "minimum"):
            result["minimum"] = float(self.minimum)
        elif include_empty:
            result["minimum"] = 0.0
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "visibility"):
            result["visibility"] = str(self.visibility)
        elif include_empty:
            result["visibility"] = Union[str, VisibilityEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        default_value: float,
        ignore_additional_data_on_value_rejected: bool,
        increment_only: bool,
        is_public: bool,
        name: str,
        namespace: str,
        set_as_global: bool,
        set_by: Union[str, SetByEnum],
        stat_code: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        cap_cycle_override: Optional[bool] = None,
        cycle_ids: Optional[List[str]] = None,
        cycle_overrides: Optional[List[CycleOverride]] = None,
        description: Optional[str] = None,
        global_aggregation_method: Optional[
            Union[str, GlobalAggregationMethodEnum]
        ] = None,
        maximum: Optional[float] = None,
        minimum: Optional[float] = None,
        tags: Optional[List[str]] = None,
        visibility: Optional[Union[str, VisibilityEnum]] = None,
        **kwargs,
    ) -> StatInfo:
        instance = cls()
        instance.created_at = created_at
        instance.default_value = default_value
        instance.ignore_additional_data_on_value_rejected = (
            ignore_additional_data_on_value_rejected
        )
        instance.increment_only = increment_only
        instance.is_public = is_public
        instance.name = name
        instance.namespace = namespace
        instance.set_as_global = set_as_global
        instance.set_by = set_by
        instance.stat_code = stat_code
        instance.status = status
        instance.updated_at = updated_at
        if cap_cycle_override is not None:
            instance.cap_cycle_override = cap_cycle_override
        if cycle_ids is not None:
            instance.cycle_ids = cycle_ids
        if cycle_overrides is not None:
            instance.cycle_overrides = cycle_overrides
        if description is not None:
            instance.description = description
        if global_aggregation_method is not None:
            instance.global_aggregation_method = global_aggregation_method
        if maximum is not None:
            instance.maximum = maximum
        if minimum is not None:
            instance.minimum = minimum
        if tags is not None:
            instance.tags = tags
        if visibility is not None:
            instance.visibility = visibility
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "defaultValue" in dict_ and dict_["defaultValue"] is not None:
            instance.default_value = float(dict_["defaultValue"])
        elif include_empty:
            instance.default_value = 0.0
        if (
            "ignoreAdditionalDataOnValueRejected" in dict_
            and dict_["ignoreAdditionalDataOnValueRejected"] is not None
        ):
            instance.ignore_additional_data_on_value_rejected = bool(
                dict_["ignoreAdditionalDataOnValueRejected"]
            )
        elif include_empty:
            instance.ignore_additional_data_on_value_rejected = False
        if "incrementOnly" in dict_ and dict_["incrementOnly"] is not None:
            instance.increment_only = bool(dict_["incrementOnly"])
        elif include_empty:
            instance.increment_only = False
        if "isPublic" in dict_ and dict_["isPublic"] is not None:
            instance.is_public = bool(dict_["isPublic"])
        elif include_empty:
            instance.is_public = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "setAsGlobal" in dict_ and dict_["setAsGlobal"] is not None:
            instance.set_as_global = bool(dict_["setAsGlobal"])
        elif include_empty:
            instance.set_as_global = False
        if "setBy" in dict_ and dict_["setBy"] is not None:
            instance.set_by = str(dict_["setBy"])
        elif include_empty:
            instance.set_by = Union[str, SetByEnum]()
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "capCycleOverride" in dict_ and dict_["capCycleOverride"] is not None:
            instance.cap_cycle_override = bool(dict_["capCycleOverride"])
        elif include_empty:
            instance.cap_cycle_override = False
        if "cycleIds" in dict_ and dict_["cycleIds"] is not None:
            instance.cycle_ids = [str(i0) for i0 in dict_["cycleIds"]]
        elif include_empty:
            instance.cycle_ids = []
        if "cycleOverrides" in dict_ and dict_["cycleOverrides"] is not None:
            instance.cycle_overrides = [
                CycleOverride.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["cycleOverrides"]
            ]
        elif include_empty:
            instance.cycle_overrides = []
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if (
            "globalAggregationMethod" in dict_
            and dict_["globalAggregationMethod"] is not None
        ):
            instance.global_aggregation_method = str(dict_["globalAggregationMethod"])
        elif include_empty:
            instance.global_aggregation_method = Union[
                str, GlobalAggregationMethodEnum
            ]()
        if "maximum" in dict_ and dict_["maximum"] is not None:
            instance.maximum = float(dict_["maximum"])
        elif include_empty:
            instance.maximum = 0.0
        if "minimum" in dict_ and dict_["minimum"] is not None:
            instance.minimum = float(dict_["minimum"])
        elif include_empty:
            instance.minimum = 0.0
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "visibility" in dict_ and dict_["visibility"] is not None:
            instance.visibility = str(dict_["visibility"])
        elif include_empty:
            instance.visibility = Union[str, VisibilityEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, StatInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatInfo, List[StatInfo], Dict[Any, StatInfo]]:
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
            "createdAt": "created_at",
            "defaultValue": "default_value",
            "ignoreAdditionalDataOnValueRejected": "ignore_additional_data_on_value_rejected",
            "incrementOnly": "increment_only",
            "isPublic": "is_public",
            "name": "name",
            "namespace": "namespace",
            "setAsGlobal": "set_as_global",
            "setBy": "set_by",
            "statCode": "stat_code",
            "status": "status",
            "updatedAt": "updated_at",
            "capCycleOverride": "cap_cycle_override",
            "cycleIds": "cycle_ids",
            "cycleOverrides": "cycle_overrides",
            "description": "description",
            "globalAggregationMethod": "global_aggregation_method",
            "maximum": "maximum",
            "minimum": "minimum",
            "tags": "tags",
            "visibility": "visibility",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "defaultValue": True,
            "ignoreAdditionalDataOnValueRejected": True,
            "incrementOnly": True,
            "isPublic": True,
            "name": True,
            "namespace": True,
            "setAsGlobal": True,
            "setBy": True,
            "statCode": True,
            "status": True,
            "updatedAt": True,
            "capCycleOverride": False,
            "cycleIds": False,
            "cycleOverrides": False,
            "description": False,
            "globalAggregationMethod": False,
            "maximum": False,
            "minimum": False,
            "tags": False,
            "visibility": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "setBy": ["CLIENT", "SERVER"],
            "status": ["INIT", "TIED"],
            "globalAggregationMethod": ["LAST", "MAX", "MIN", "TOTAL"],
            "visibility": ["SERVERONLY", "SHOWALL"],
        }

    # endregion static methods
