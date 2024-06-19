# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Challenge Service

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


class MatcherEnum(StrEnum):
    EQUAL = "EQUAL"
    GREATER_THAN = "GREATER_THAN"
    GREATER_THAN_EQUAL = "GREATER_THAN_EQUAL"
    LESS_THAN = "LESS_THAN"
    LESS_THAN_EQUAL = "LESS_THAN_EQUAL"


class ParameterTypeEnum(StrEnum):
    ACHIEVEMENT = "ACHIEVEMENT"
    ENTITLEMENT = "ENTITLEMENT"
    STATISTIC = "STATISTIC"
    STATISTIC_CYCLE = "STATISTIC_CYCLE"
    USERACCOUNT = "USERACCOUNT"


class ModelPredicate(Model):
    """Model predicate (model.Predicate)

    Properties:
        matcher: (matcher) REQUIRED Union[str, MatcherEnum]

        parameter_name: (parameterName) REQUIRED str

        parameter_type: (parameterType) REQUIRED Union[str, ParameterTypeEnum]

        target_value: (targetValue) REQUIRED float

        stat_cycle_id: (statCycleId) OPTIONAL str
    """

    # region fields

    matcher: Union[str, MatcherEnum]  # REQUIRED
    parameter_name: str  # REQUIRED
    parameter_type: Union[str, ParameterTypeEnum]  # REQUIRED
    target_value: float  # REQUIRED
    stat_cycle_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_matcher(self, value: Union[str, MatcherEnum]) -> ModelPredicate:
        self.matcher = value
        return self

    def with_parameter_name(self, value: str) -> ModelPredicate:
        self.parameter_name = value
        return self

    def with_parameter_type(
        self, value: Union[str, ParameterTypeEnum]
    ) -> ModelPredicate:
        self.parameter_type = value
        return self

    def with_target_value(self, value: float) -> ModelPredicate:
        self.target_value = value
        return self

    def with_stat_cycle_id(self, value: str) -> ModelPredicate:
        self.stat_cycle_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "matcher"):
            result["matcher"] = str(self.matcher)
        elif include_empty:
            result["matcher"] = Union[str, MatcherEnum]()
        if hasattr(self, "parameter_name"):
            result["parameterName"] = str(self.parameter_name)
        elif include_empty:
            result["parameterName"] = ""
        if hasattr(self, "parameter_type"):
            result["parameterType"] = str(self.parameter_type)
        elif include_empty:
            result["parameterType"] = Union[str, ParameterTypeEnum]()
        if hasattr(self, "target_value"):
            result["targetValue"] = float(self.target_value)
        elif include_empty:
            result["targetValue"] = 0.0
        if hasattr(self, "stat_cycle_id"):
            result["statCycleId"] = str(self.stat_cycle_id)
        elif include_empty:
            result["statCycleId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        matcher: Union[str, MatcherEnum],
        parameter_name: str,
        parameter_type: Union[str, ParameterTypeEnum],
        target_value: float,
        stat_cycle_id: Optional[str] = None,
        **kwargs,
    ) -> ModelPredicate:
        instance = cls()
        instance.matcher = matcher
        instance.parameter_name = parameter_name
        instance.parameter_type = parameter_type
        instance.target_value = target_value
        if stat_cycle_id is not None:
            instance.stat_cycle_id = stat_cycle_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelPredicate:
        instance = cls()
        if not dict_:
            return instance
        if "matcher" in dict_ and dict_["matcher"] is not None:
            instance.matcher = str(dict_["matcher"])
        elif include_empty:
            instance.matcher = Union[str, MatcherEnum]()
        if "parameterName" in dict_ and dict_["parameterName"] is not None:
            instance.parameter_name = str(dict_["parameterName"])
        elif include_empty:
            instance.parameter_name = ""
        if "parameterType" in dict_ and dict_["parameterType"] is not None:
            instance.parameter_type = str(dict_["parameterType"])
        elif include_empty:
            instance.parameter_type = Union[str, ParameterTypeEnum]()
        if "targetValue" in dict_ and dict_["targetValue"] is not None:
            instance.target_value = float(dict_["targetValue"])
        elif include_empty:
            instance.target_value = 0.0
        if "statCycleId" in dict_ and dict_["statCycleId"] is not None:
            instance.stat_cycle_id = str(dict_["statCycleId"])
        elif include_empty:
            instance.stat_cycle_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelPredicate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelPredicate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelPredicate, List[ModelPredicate], Dict[Any, ModelPredicate]]:
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
            "matcher": "matcher",
            "parameterName": "parameter_name",
            "parameterType": "parameter_type",
            "targetValue": "target_value",
            "statCycleId": "stat_cycle_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matcher": True,
            "parameterName": True,
            "parameterType": True,
            "targetValue": True,
            "statCycleId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "matcher": [
                "EQUAL",
                "GREATER_THAN",
                "GREATER_THAN_EQUAL",
                "LESS_THAN",
                "LESS_THAN_EQUAL",
            ],
            "parameterType": [
                "ACHIEVEMENT",
                "ENTITLEMENT",
                "STATISTIC",
                "STATISTIC_CYCLE",
                "USERACCOUNT",
            ],
        }

    # endregion static methods
