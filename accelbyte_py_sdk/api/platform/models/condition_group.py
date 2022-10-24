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

from ..models.predicate_object import PredicateObject


class OperatorEnum(StrEnum):
    AND = "and"
    OR = "or"


class ConditionGroup(Model):
    """Condition group (ConditionGroup)

    Properties:
        operator: (operator) OPTIONAL Union[str, OperatorEnum]

        predicates: (predicates) OPTIONAL List[PredicateObject]
    """

    # region fields

    operator: Union[str, OperatorEnum]  # OPTIONAL
    predicates: List[PredicateObject]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_operator(self, value: Union[str, OperatorEnum]) -> ConditionGroup:
        self.operator = value
        return self

    def with_predicates(self, value: List[PredicateObject]) -> ConditionGroup:
        self.predicates = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "operator"):
            result["operator"] = str(self.operator)
        elif include_empty:
            result["operator"] = Union[str, OperatorEnum]()
        if hasattr(self, "predicates"):
            result["predicates"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.predicates
            ]
        elif include_empty:
            result["predicates"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        operator: Optional[Union[str, OperatorEnum]] = None,
        predicates: Optional[List[PredicateObject]] = None,
    ) -> ConditionGroup:
        instance = cls()
        if operator is not None:
            instance.operator = operator
        if predicates is not None:
            instance.predicates = predicates
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ConditionGroup:
        instance = cls()
        if not dict_:
            return instance
        if "operator" in dict_ and dict_["operator"] is not None:
            instance.operator = str(dict_["operator"])
        elif include_empty:
            instance.operator = Union[str, OperatorEnum]()
        if "predicates" in dict_ and dict_["predicates"] is not None:
            instance.predicates = [
                PredicateObject.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["predicates"]
            ]
        elif include_empty:
            instance.predicates = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ConditionGroup]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ConditionGroup]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ConditionGroup, List[ConditionGroup], Dict[Any, ConditionGroup]]:
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
            "operator": "operator",
            "predicates": "predicates",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "operator": False,
            "predicates": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "operator": ["and", "or"],
        }

    # endregion static methods
