# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.available_comparison_object import AvailableComparisonObject


class PredicateTypeEnum(StrEnum):
    ENTITLEMENTPREDICATE = "EntitlementPredicate"
    SEASONPASSPREDICATE = "SeasonPassPredicate"
    SEASONTIERPREDICATE = "SeasonTierPredicate"


class ValueTypeEnum(StrEnum):
    LIST = "List"
    NUMBER = "Number"
    STRING = "String"


class AvailablePredicateObject(Model):
    """Available predicate object (available predicate object)

    Properties:
        available_comparisons: (availableComparisons) OPTIONAL List[AvailableComparisonObject]

        predicate_type: (predicateType) OPTIONAL Union[str, PredicateTypeEnum]

        show_any_of: (showAnyOf) OPTIONAL bool

        value_type: (valueType) OPTIONAL Union[str, ValueTypeEnum]
    """

    # region fields

    available_comparisons: List[AvailableComparisonObject]  # OPTIONAL
    predicate_type: Union[str, PredicateTypeEnum]  # OPTIONAL
    show_any_of: bool  # OPTIONAL
    value_type: Union[str, ValueTypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_available_comparisons(
        self, value: List[AvailableComparisonObject]
    ) -> AvailablePredicateObject:
        self.available_comparisons = value
        return self

    def with_predicate_type(
        self, value: Union[str, PredicateTypeEnum]
    ) -> AvailablePredicateObject:
        self.predicate_type = value
        return self

    def with_show_any_of(self, value: bool) -> AvailablePredicateObject:
        self.show_any_of = value
        return self

    def with_value_type(
        self, value: Union[str, ValueTypeEnum]
    ) -> AvailablePredicateObject:
        self.value_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "available_comparisons"):
            result["availableComparisons"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.available_comparisons
            ]
        elif include_empty:
            result["availableComparisons"] = []
        if hasattr(self, "predicate_type"):
            result["predicateType"] = str(self.predicate_type)
        elif include_empty:
            result["predicateType"] = Union[str, PredicateTypeEnum]()
        if hasattr(self, "show_any_of"):
            result["showAnyOf"] = bool(self.show_any_of)
        elif include_empty:
            result["showAnyOf"] = False
        if hasattr(self, "value_type"):
            result["valueType"] = str(self.value_type)
        elif include_empty:
            result["valueType"] = Union[str, ValueTypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        available_comparisons: Optional[List[AvailableComparisonObject]] = None,
        predicate_type: Optional[Union[str, PredicateTypeEnum]] = None,
        show_any_of: Optional[bool] = None,
        value_type: Optional[Union[str, ValueTypeEnum]] = None,
    ) -> AvailablePredicateObject:
        instance = cls()
        if available_comparisons is not None:
            instance.available_comparisons = available_comparisons
        if predicate_type is not None:
            instance.predicate_type = predicate_type
        if show_any_of is not None:
            instance.show_any_of = show_any_of
        if value_type is not None:
            instance.value_type = value_type
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AvailablePredicateObject:
        instance = cls()
        if not dict_:
            return instance
        if (
            "availableComparisons" in dict_
            and dict_["availableComparisons"] is not None
        ):
            instance.available_comparisons = [
                AvailableComparisonObject.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["availableComparisons"]
            ]
        elif include_empty:
            instance.available_comparisons = []
        if "predicateType" in dict_ and dict_["predicateType"] is not None:
            instance.predicate_type = str(dict_["predicateType"])
        elif include_empty:
            instance.predicate_type = Union[str, PredicateTypeEnum]()
        if "showAnyOf" in dict_ and dict_["showAnyOf"] is not None:
            instance.show_any_of = bool(dict_["showAnyOf"])
        elif include_empty:
            instance.show_any_of = False
        if "valueType" in dict_ and dict_["valueType"] is not None:
            instance.value_type = str(dict_["valueType"])
        elif include_empty:
            instance.value_type = Union[str, ValueTypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AvailablePredicateObject]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AvailablePredicateObject]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AvailablePredicateObject,
        List[AvailablePredicateObject],
        Dict[Any, AvailablePredicateObject],
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
            "availableComparisons": "available_comparisons",
            "predicateType": "predicate_type",
            "showAnyOf": "show_any_of",
            "valueType": "value_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "availableComparisons": False,
            "predicateType": False,
            "showAnyOf": False,
            "valueType": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "predicateType": [
                "EntitlementPredicate",
                "SeasonPassPredicate",
                "SeasonTierPredicate",
            ],
            "valueType": ["List", "Number", "String"],
        }

    # endregion static methods
