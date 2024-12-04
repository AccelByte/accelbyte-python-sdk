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


class ModelCSMAutoscalingDefaults(Model):
    """Model CSM autoscaling defaults (model.CSMAutoscalingDefaults)

    Properties:
        cpu_utilization_default_percent: (cpuUtilizationDefaultPercent) REQUIRED int

        cpu_utilization_max_percent: (cpuUtilizationMaxPercent) REQUIRED int

        cpu_utilization_min_percent: (cpuUtilizationMinPercent) REQUIRED int
    """

    # region fields

    cpu_utilization_default_percent: int  # REQUIRED
    cpu_utilization_max_percent: int  # REQUIRED
    cpu_utilization_min_percent: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_cpu_utilization_default_percent(
        self, value: int
    ) -> ModelCSMAutoscalingDefaults:
        self.cpu_utilization_default_percent = value
        return self

    def with_cpu_utilization_max_percent(
        self, value: int
    ) -> ModelCSMAutoscalingDefaults:
        self.cpu_utilization_max_percent = value
        return self

    def with_cpu_utilization_min_percent(
        self, value: int
    ) -> ModelCSMAutoscalingDefaults:
        self.cpu_utilization_min_percent = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cpu_utilization_default_percent"):
            result["cpuUtilizationDefaultPercent"] = int(
                self.cpu_utilization_default_percent
            )
        elif include_empty:
            result["cpuUtilizationDefaultPercent"] = 0
        if hasattr(self, "cpu_utilization_max_percent"):
            result["cpuUtilizationMaxPercent"] = int(self.cpu_utilization_max_percent)
        elif include_empty:
            result["cpuUtilizationMaxPercent"] = 0
        if hasattr(self, "cpu_utilization_min_percent"):
            result["cpuUtilizationMinPercent"] = int(self.cpu_utilization_min_percent)
        elif include_empty:
            result["cpuUtilizationMinPercent"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        cpu_utilization_default_percent: int,
        cpu_utilization_max_percent: int,
        cpu_utilization_min_percent: int,
        **kwargs,
    ) -> ModelCSMAutoscalingDefaults:
        instance = cls()
        instance.cpu_utilization_default_percent = cpu_utilization_default_percent
        instance.cpu_utilization_max_percent = cpu_utilization_max_percent
        instance.cpu_utilization_min_percent = cpu_utilization_min_percent
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelCSMAutoscalingDefaults:
        instance = cls()
        if not dict_:
            return instance
        if (
            "cpuUtilizationDefaultPercent" in dict_
            and dict_["cpuUtilizationDefaultPercent"] is not None
        ):
            instance.cpu_utilization_default_percent = int(
                dict_["cpuUtilizationDefaultPercent"]
            )
        elif include_empty:
            instance.cpu_utilization_default_percent = 0
        if (
            "cpuUtilizationMaxPercent" in dict_
            and dict_["cpuUtilizationMaxPercent"] is not None
        ):
            instance.cpu_utilization_max_percent = int(
                dict_["cpuUtilizationMaxPercent"]
            )
        elif include_empty:
            instance.cpu_utilization_max_percent = 0
        if (
            "cpuUtilizationMinPercent" in dict_
            and dict_["cpuUtilizationMinPercent"] is not None
        ):
            instance.cpu_utilization_min_percent = int(
                dict_["cpuUtilizationMinPercent"]
            )
        elif include_empty:
            instance.cpu_utilization_min_percent = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelCSMAutoscalingDefaults]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelCSMAutoscalingDefaults]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelCSMAutoscalingDefaults,
        List[ModelCSMAutoscalingDefaults],
        Dict[Any, ModelCSMAutoscalingDefaults],
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
            "cpuUtilizationDefaultPercent": "cpu_utilization_default_percent",
            "cpuUtilizationMaxPercent": "cpu_utilization_max_percent",
            "cpuUtilizationMinPercent": "cpu_utilization_min_percent",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "cpuUtilizationDefaultPercent": True,
            "cpuUtilizationMaxPercent": True,
            "cpuUtilizationMinPercent": True,
        }

    # endregion static methods
