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


class GlobalAggregationMethodEnum(StrEnum):
    LAST = "LAST"
    MAX = "MAX"
    MIN = "MIN"
    TOTAL = "TOTAL"


class GlobalStatItemInfo(Model):
    """Global stat item info (GlobalStatItemInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        stat_code: (statCode) REQUIRED str

        stat_name: (statName) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        value: (value) REQUIRED float

        global_aggregation_method: (globalAggregationMethod) OPTIONAL Union[str, GlobalAggregationMethodEnum]

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    created_at: str  # REQUIRED
    namespace: str  # REQUIRED
    stat_code: str  # REQUIRED
    stat_name: str  # REQUIRED
    updated_at: str  # REQUIRED
    value: float  # REQUIRED
    global_aggregation_method: Union[str, GlobalAggregationMethodEnum]  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> GlobalStatItemInfo:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> GlobalStatItemInfo:
        self.namespace = value
        return self

    def with_stat_code(self, value: str) -> GlobalStatItemInfo:
        self.stat_code = value
        return self

    def with_stat_name(self, value: str) -> GlobalStatItemInfo:
        self.stat_name = value
        return self

    def with_updated_at(self, value: str) -> GlobalStatItemInfo:
        self.updated_at = value
        return self

    def with_value(self, value: float) -> GlobalStatItemInfo:
        self.value = value
        return self

    def with_global_aggregation_method(
        self, value: Union[str, GlobalAggregationMethodEnum]
    ) -> GlobalStatItemInfo:
        self.global_aggregation_method = value
        return self

    def with_tags(self, value: List[str]) -> GlobalStatItemInfo:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "stat_code"):
            result["statCode"] = str(self.stat_code)
        elif include_empty:
            result["statCode"] = ""
        if hasattr(self, "stat_name"):
            result["statName"] = str(self.stat_name)
        elif include_empty:
            result["statName"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "value"):
            result["value"] = float(self.value)
        elif include_empty:
            result["value"] = 0.0
        if hasattr(self, "global_aggregation_method"):
            result["globalAggregationMethod"] = str(self.global_aggregation_method)
        elif include_empty:
            result["globalAggregationMethod"] = Union[
                str, GlobalAggregationMethodEnum
            ]()
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
        created_at: str,
        namespace: str,
        stat_code: str,
        stat_name: str,
        updated_at: str,
        value: float,
        global_aggregation_method: Optional[
            Union[str, GlobalAggregationMethodEnum]
        ] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> GlobalStatItemInfo:
        instance = cls()
        instance.created_at = created_at
        instance.namespace = namespace
        instance.stat_code = stat_code
        instance.stat_name = stat_name
        instance.updated_at = updated_at
        instance.value = value
        if global_aggregation_method is not None:
            instance.global_aggregation_method = global_aggregation_method
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GlobalStatItemInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "statCode" in dict_ and dict_["statCode"] is not None:
            instance.stat_code = str(dict_["statCode"])
        elif include_empty:
            instance.stat_code = ""
        if "statName" in dict_ and dict_["statName"] is not None:
            instance.stat_name = str(dict_["statName"])
        elif include_empty:
            instance.stat_name = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = float(dict_["value"])
        elif include_empty:
            instance.value = 0.0
        if (
            "globalAggregationMethod" in dict_
            and dict_["globalAggregationMethod"] is not None
        ):
            instance.global_aggregation_method = str(dict_["globalAggregationMethod"])
        elif include_empty:
            instance.global_aggregation_method = Union[
                str, GlobalAggregationMethodEnum
            ]()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GlobalStatItemInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GlobalStatItemInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GlobalStatItemInfo, List[GlobalStatItemInfo], Dict[Any, GlobalStatItemInfo]
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
            "createdAt": "created_at",
            "namespace": "namespace",
            "statCode": "stat_code",
            "statName": "stat_name",
            "updatedAt": "updated_at",
            "value": "value",
            "globalAggregationMethod": "global_aggregation_method",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "namespace": True,
            "statCode": True,
            "statName": True,
            "updatedAt": True,
            "value": True,
            "globalAggregationMethod": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "globalAggregationMethod": ["LAST", "MAX", "MIN", "TOTAL"],
        }

    # endregion static methods
