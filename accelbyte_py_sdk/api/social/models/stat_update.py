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

from ..models.cycle_override_request import CycleOverrideRequest


class GlobalAggregationMethodEnum(StrEnum):
    LAST = "LAST"
    MAX = "MAX"
    MIN = "MIN"
    TOTAL = "TOTAL"


class VisibilityEnum(StrEnum):
    SERVERONLY = "SERVERONLY"
    SHOWALL = "SHOWALL"


class StatUpdate(Model):
    """Stat update (StatUpdate)

    Properties:
        cap_cycle_override: (capCycleOverride) OPTIONAL bool

        cycle_ids: (cycleIds) OPTIONAL List[str]

        cycle_overrides: (cycleOverrides) OPTIONAL List[CycleOverrideRequest]

        default_value: (defaultValue) OPTIONAL float

        description: (description) OPTIONAL str

        global_aggregation_method: (globalAggregationMethod) OPTIONAL Union[str, GlobalAggregationMethodEnum]

        ignore_additional_data_on_value_rejected: (ignoreAdditionalDataOnValueRejected) OPTIONAL bool

        is_public: (isPublic) OPTIONAL bool

        name: (name) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        visibility: (visibility) OPTIONAL Union[str, VisibilityEnum]
    """

    # region fields

    cap_cycle_override: bool  # OPTIONAL
    cycle_ids: List[str]  # OPTIONAL
    cycle_overrides: List[CycleOverrideRequest]  # OPTIONAL
    default_value: float  # OPTIONAL
    description: str  # OPTIONAL
    global_aggregation_method: Union[str, GlobalAggregationMethodEnum]  # OPTIONAL
    ignore_additional_data_on_value_rejected: bool  # OPTIONAL
    is_public: bool  # OPTIONAL
    name: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    visibility: Union[str, VisibilityEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_cap_cycle_override(self, value: bool) -> StatUpdate:
        self.cap_cycle_override = value
        return self

    def with_cycle_ids(self, value: List[str]) -> StatUpdate:
        self.cycle_ids = value
        return self

    def with_cycle_overrides(self, value: List[CycleOverrideRequest]) -> StatUpdate:
        self.cycle_overrides = value
        return self

    def with_default_value(self, value: float) -> StatUpdate:
        self.default_value = value
        return self

    def with_description(self, value: str) -> StatUpdate:
        self.description = value
        return self

    def with_global_aggregation_method(
        self, value: Union[str, GlobalAggregationMethodEnum]
    ) -> StatUpdate:
        self.global_aggregation_method = value
        return self

    def with_ignore_additional_data_on_value_rejected(self, value: bool) -> StatUpdate:
        self.ignore_additional_data_on_value_rejected = value
        return self

    def with_is_public(self, value: bool) -> StatUpdate:
        self.is_public = value
        return self

    def with_name(self, value: str) -> StatUpdate:
        self.name = value
        return self

    def with_tags(self, value: List[str]) -> StatUpdate:
        self.tags = value
        return self

    def with_visibility(self, value: Union[str, VisibilityEnum]) -> StatUpdate:
        self.visibility = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "default_value"):
            result["defaultValue"] = float(self.default_value)
        elif include_empty:
            result["defaultValue"] = 0.0
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
        if hasattr(self, "ignore_additional_data_on_value_rejected"):
            result["ignoreAdditionalDataOnValueRejected"] = bool(
                self.ignore_additional_data_on_value_rejected
            )
        elif include_empty:
            result["ignoreAdditionalDataOnValueRejected"] = False
        if hasattr(self, "is_public"):
            result["isPublic"] = bool(self.is_public)
        elif include_empty:
            result["isPublic"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
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
        cap_cycle_override: Optional[bool] = None,
        cycle_ids: Optional[List[str]] = None,
        cycle_overrides: Optional[List[CycleOverrideRequest]] = None,
        default_value: Optional[float] = None,
        description: Optional[str] = None,
        global_aggregation_method: Optional[
            Union[str, GlobalAggregationMethodEnum]
        ] = None,
        ignore_additional_data_on_value_rejected: Optional[bool] = None,
        is_public: Optional[bool] = None,
        name: Optional[str] = None,
        tags: Optional[List[str]] = None,
        visibility: Optional[Union[str, VisibilityEnum]] = None,
        **kwargs,
    ) -> StatUpdate:
        instance = cls()
        if cap_cycle_override is not None:
            instance.cap_cycle_override = cap_cycle_override
        if cycle_ids is not None:
            instance.cycle_ids = cycle_ids
        if cycle_overrides is not None:
            instance.cycle_overrides = cycle_overrides
        if default_value is not None:
            instance.default_value = default_value
        if description is not None:
            instance.description = description
        if global_aggregation_method is not None:
            instance.global_aggregation_method = global_aggregation_method
        if ignore_additional_data_on_value_rejected is not None:
            instance.ignore_additional_data_on_value_rejected = (
                ignore_additional_data_on_value_rejected
            )
        if is_public is not None:
            instance.is_public = is_public
        if name is not None:
            instance.name = name
        if tags is not None:
            instance.tags = tags
        if visibility is not None:
            instance.visibility = visibility
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> StatUpdate:
        instance = cls()
        if not dict_:
            return instance
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
                CycleOverrideRequest.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["cycleOverrides"]
            ]
        elif include_empty:
            instance.cycle_overrides = []
        if "defaultValue" in dict_ and dict_["defaultValue"] is not None:
            instance.default_value = float(dict_["defaultValue"])
        elif include_empty:
            instance.default_value = 0.0
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
        if (
            "ignoreAdditionalDataOnValueRejected" in dict_
            and dict_["ignoreAdditionalDataOnValueRejected"] is not None
        ):
            instance.ignore_additional_data_on_value_rejected = bool(
                dict_["ignoreAdditionalDataOnValueRejected"]
            )
        elif include_empty:
            instance.ignore_additional_data_on_value_rejected = False
        if "isPublic" in dict_ and dict_["isPublic"] is not None:
            instance.is_public = bool(dict_["isPublic"])
        elif include_empty:
            instance.is_public = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
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
    ) -> Dict[str, StatUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[StatUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[StatUpdate, List[StatUpdate], Dict[Any, StatUpdate]]:
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
            "capCycleOverride": "cap_cycle_override",
            "cycleIds": "cycle_ids",
            "cycleOverrides": "cycle_overrides",
            "defaultValue": "default_value",
            "description": "description",
            "globalAggregationMethod": "global_aggregation_method",
            "ignoreAdditionalDataOnValueRejected": "ignore_additional_data_on_value_rejected",
            "isPublic": "is_public",
            "name": "name",
            "tags": "tags",
            "visibility": "visibility",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "capCycleOverride": False,
            "cycleIds": False,
            "cycleOverrides": False,
            "defaultValue": False,
            "description": False,
            "globalAggregationMethod": False,
            "ignoreAdditionalDataOnValueRejected": False,
            "isPublic": False,
            "name": False,
            "tags": False,
            "visibility": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "globalAggregationMethod": ["LAST", "MAX", "MIN", "TOTAL"],
            "visibility": ["SERVERONLY", "SHOWALL"],
        }

    # endregion static methods
