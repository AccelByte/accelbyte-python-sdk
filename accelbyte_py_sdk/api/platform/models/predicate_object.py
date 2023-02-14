# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class ComparisonEnum(StrEnum):
    EXCLUDES = "excludes"
    INCLUDES = "includes"
    IS = "is"
    ISGREATERTHAN = "isGreaterThan"
    ISGREATERTHANOREQUAL = "isGreaterThanOrEqual"
    ISLESSTHAN = "isLessThan"
    ISLESSTHANOREQUAL = "isLessThanOrEqual"
    ISNOT = "isNot"


class PredicateTypeEnum(StrEnum):
    ENTITLEMENTPREDICATE = "EntitlementPredicate"
    SEASONPASSPREDICATE = "SeasonPassPredicate"
    SEASONTIERPREDICATE = "SeasonTierPredicate"


class PredicateObject(Model):
    """Predicate object (predicate object)

    Properties:
        any_of: (anyOf) OPTIONAL int

        comparison: (comparison) OPTIONAL Union[str, ComparisonEnum]

        name: (name) OPTIONAL str

        predicate_type: (predicateType) OPTIONAL Union[str, PredicateTypeEnum]

        value: (value) OPTIONAL str

        values: (values) OPTIONAL List[str]
    """

    # region fields

    any_of: int  # OPTIONAL
    comparison: Union[str, ComparisonEnum]  # OPTIONAL
    name: str  # OPTIONAL
    predicate_type: Union[str, PredicateTypeEnum]  # OPTIONAL
    value: str  # OPTIONAL
    values: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_any_of(self, value: int) -> PredicateObject:
        self.any_of = value
        return self

    def with_comparison(self, value: Union[str, ComparisonEnum]) -> PredicateObject:
        self.comparison = value
        return self

    def with_name(self, value: str) -> PredicateObject:
        self.name = value
        return self

    def with_predicate_type(
        self, value: Union[str, PredicateTypeEnum]
    ) -> PredicateObject:
        self.predicate_type = value
        return self

    def with_value(self, value: str) -> PredicateObject:
        self.value = value
        return self

    def with_values(self, value: List[str]) -> PredicateObject:
        self.values = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "any_of"):
            result["anyOf"] = int(self.any_of)
        elif include_empty:
            result["anyOf"] = 0
        if hasattr(self, "comparison"):
            result["comparison"] = str(self.comparison)
        elif include_empty:
            result["comparison"] = Union[str, ComparisonEnum]()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "predicate_type"):
            result["predicateType"] = str(self.predicate_type)
        elif include_empty:
            result["predicateType"] = Union[str, PredicateTypeEnum]()
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        if hasattr(self, "values"):
            result["values"] = [str(i0) for i0 in self.values]
        elif include_empty:
            result["values"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        any_of: Optional[int] = None,
        comparison: Optional[Union[str, ComparisonEnum]] = None,
        name: Optional[str] = None,
        predicate_type: Optional[Union[str, PredicateTypeEnum]] = None,
        value: Optional[str] = None,
        values: Optional[List[str]] = None,
    ) -> PredicateObject:
        instance = cls()
        if any_of is not None:
            instance.any_of = any_of
        if comparison is not None:
            instance.comparison = comparison
        if name is not None:
            instance.name = name
        if predicate_type is not None:
            instance.predicate_type = predicate_type
        if value is not None:
            instance.value = value
        if values is not None:
            instance.values = values
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PredicateObject:
        instance = cls()
        if not dict_:
            return instance
        if "anyOf" in dict_ and dict_["anyOf"] is not None:
            instance.any_of = int(dict_["anyOf"])
        elif include_empty:
            instance.any_of = 0
        if "comparison" in dict_ and dict_["comparison"] is not None:
            instance.comparison = str(dict_["comparison"])
        elif include_empty:
            instance.comparison = Union[str, ComparisonEnum]()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "predicateType" in dict_ and dict_["predicateType"] is not None:
            instance.predicate_type = str(dict_["predicateType"])
        elif include_empty:
            instance.predicate_type = Union[str, PredicateTypeEnum]()
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        if "values" in dict_ and dict_["values"] is not None:
            instance.values = [str(i0) for i0 in dict_["values"]]
        elif include_empty:
            instance.values = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PredicateObject]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PredicateObject]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[PredicateObject, List[PredicateObject], Dict[Any, PredicateObject]]:
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
            "anyOf": "any_of",
            "comparison": "comparison",
            "name": "name",
            "predicateType": "predicate_type",
            "value": "value",
            "values": "values",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "anyOf": False,
            "comparison": False,
            "name": False,
            "predicateType": False,
            "value": False,
            "values": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "comparison": [
                "excludes",
                "includes",
                "is",
                "isGreaterThan",
                "isGreaterThanOrEqual",
                "isLessThan",
                "isLessThanOrEqual",
                "isNot",
            ],
            "predicateType": [
                "EntitlementPredicate",
                "SeasonPassPredicate",
                "SeasonTierPredicate",
            ],
        }

    # endregion static methods
