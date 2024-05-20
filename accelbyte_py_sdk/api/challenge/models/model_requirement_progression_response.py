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


class ModelRequirementProgressionResponse(Model):
    """Model requirement progression response (model.RequirementProgressionResponse)

    Properties:
        current_value: (currentValue) REQUIRED float

        id_: (id) REQUIRED str

        matcher: (matcher) REQUIRED str

        parameter_name: (parameterName) REQUIRED str

        parameter_type: (parameterType) REQUIRED str

        target_value: (targetValue) REQUIRED float

        completed_at: (completedAt) OPTIONAL str

        stat_cycle_id: (statCycleId) OPTIONAL str
    """

    # region fields

    current_value: float  # REQUIRED
    id_: str  # REQUIRED
    matcher: str  # REQUIRED
    parameter_name: str  # REQUIRED
    parameter_type: str  # REQUIRED
    target_value: float  # REQUIRED
    completed_at: str  # OPTIONAL
    stat_cycle_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_current_value(self, value: float) -> ModelRequirementProgressionResponse:
        self.current_value = value
        return self

    def with_id(self, value: str) -> ModelRequirementProgressionResponse:
        self.id_ = value
        return self

    def with_matcher(self, value: str) -> ModelRequirementProgressionResponse:
        self.matcher = value
        return self

    def with_parameter_name(self, value: str) -> ModelRequirementProgressionResponse:
        self.parameter_name = value
        return self

    def with_parameter_type(self, value: str) -> ModelRequirementProgressionResponse:
        self.parameter_type = value
        return self

    def with_target_value(self, value: float) -> ModelRequirementProgressionResponse:
        self.target_value = value
        return self

    def with_completed_at(self, value: str) -> ModelRequirementProgressionResponse:
        self.completed_at = value
        return self

    def with_stat_cycle_id(self, value: str) -> ModelRequirementProgressionResponse:
        self.stat_cycle_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "current_value"):
            result["currentValue"] = float(self.current_value)
        elif include_empty:
            result["currentValue"] = 0.0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "matcher"):
            result["matcher"] = str(self.matcher)
        elif include_empty:
            result["matcher"] = ""
        if hasattr(self, "parameter_name"):
            result["parameterName"] = str(self.parameter_name)
        elif include_empty:
            result["parameterName"] = ""
        if hasattr(self, "parameter_type"):
            result["parameterType"] = str(self.parameter_type)
        elif include_empty:
            result["parameterType"] = ""
        if hasattr(self, "target_value"):
            result["targetValue"] = float(self.target_value)
        elif include_empty:
            result["targetValue"] = 0.0
        if hasattr(self, "completed_at"):
            result["completedAt"] = str(self.completed_at)
        elif include_empty:
            result["completedAt"] = ""
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
        current_value: float,
        id_: str,
        matcher: str,
        parameter_name: str,
        parameter_type: str,
        target_value: float,
        completed_at: Optional[str] = None,
        stat_cycle_id: Optional[str] = None,
        **kwargs,
    ) -> ModelRequirementProgressionResponse:
        instance = cls()
        instance.current_value = current_value
        instance.id_ = id_
        instance.matcher = matcher
        instance.parameter_name = parameter_name
        instance.parameter_type = parameter_type
        instance.target_value = target_value
        if completed_at is not None:
            instance.completed_at = completed_at
        if stat_cycle_id is not None:
            instance.stat_cycle_id = stat_cycle_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRequirementProgressionResponse:
        instance = cls()
        if not dict_:
            return instance
        if "currentValue" in dict_ and dict_["currentValue"] is not None:
            instance.current_value = float(dict_["currentValue"])
        elif include_empty:
            instance.current_value = 0.0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "matcher" in dict_ and dict_["matcher"] is not None:
            instance.matcher = str(dict_["matcher"])
        elif include_empty:
            instance.matcher = ""
        if "parameterName" in dict_ and dict_["parameterName"] is not None:
            instance.parameter_name = str(dict_["parameterName"])
        elif include_empty:
            instance.parameter_name = ""
        if "parameterType" in dict_ and dict_["parameterType"] is not None:
            instance.parameter_type = str(dict_["parameterType"])
        elif include_empty:
            instance.parameter_type = ""
        if "targetValue" in dict_ and dict_["targetValue"] is not None:
            instance.target_value = float(dict_["targetValue"])
        elif include_empty:
            instance.target_value = 0.0
        if "completedAt" in dict_ and dict_["completedAt"] is not None:
            instance.completed_at = str(dict_["completedAt"])
        elif include_empty:
            instance.completed_at = ""
        if "statCycleId" in dict_ and dict_["statCycleId"] is not None:
            instance.stat_cycle_id = str(dict_["statCycleId"])
        elif include_empty:
            instance.stat_cycle_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelRequirementProgressionResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRequirementProgressionResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRequirementProgressionResponse,
        List[ModelRequirementProgressionResponse],
        Dict[Any, ModelRequirementProgressionResponse],
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
            "currentValue": "current_value",
            "id": "id_",
            "matcher": "matcher",
            "parameterName": "parameter_name",
            "parameterType": "parameter_type",
            "targetValue": "target_value",
            "completedAt": "completed_at",
            "statCycleId": "stat_cycle_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "currentValue": True,
            "id": True,
            "matcher": True,
            "parameterName": True,
            "parameterType": True,
            "targetValue": True,
            "completedAt": False,
            "statCycleId": False,
        }

    # endregion static methods
