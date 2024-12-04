# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Custom Service Manager

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


class ApimodelAutoscalingResponse(Model):
    """Apimodel autoscaling response (apimodel.AutoscalingResponse)

    Properties:
        target_cpu_utilization_percent: (targetCPUUtilizationPercent) REQUIRED int
    """

    # region fields

    target_cpu_utilization_percent: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_target_cpu_utilization_percent(
        self, value: int
    ) -> ApimodelAutoscalingResponse:
        self.target_cpu_utilization_percent = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "target_cpu_utilization_percent"):
            result["targetCPUUtilizationPercent"] = int(
                self.target_cpu_utilization_percent
            )
        elif include_empty:
            result["targetCPUUtilizationPercent"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, target_cpu_utilization_percent: int, **kwargs
    ) -> ApimodelAutoscalingResponse:
        instance = cls()
        instance.target_cpu_utilization_percent = target_cpu_utilization_percent
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelAutoscalingResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "targetCPUUtilizationPercent" in dict_
            and dict_["targetCPUUtilizationPercent"] is not None
        ):
            instance.target_cpu_utilization_percent = int(
                dict_["targetCPUUtilizationPercent"]
            )
        elif include_empty:
            instance.target_cpu_utilization_percent = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelAutoscalingResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelAutoscalingResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelAutoscalingResponse,
        List[ApimodelAutoscalingResponse],
        Dict[Any, ApimodelAutoscalingResponse],
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
            "targetCPUUtilizationPercent": "target_cpu_utilization_percent",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "targetCPUUtilizationPercent": True,
        }

    # endregion static methods
