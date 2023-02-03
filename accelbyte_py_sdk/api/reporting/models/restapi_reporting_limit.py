# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Reporting Service (0.1.23)

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

from ..models.restapi_category_limit import RestapiCategoryLimit


class RestapiReportingLimit(Model):
    """Restapi reporting limit (restapi.reportingLimit)

    Properties:
        category_limits: (categoryLimits) REQUIRED List[RestapiCategoryLimit]

        time_interval: (timeInterval) REQUIRED int

        user_max_report_per_time_interval: (userMaxReportPerTimeInterval) REQUIRED int
    """

    # region fields

    category_limits: List[RestapiCategoryLimit]  # REQUIRED
    time_interval: int  # REQUIRED
    user_max_report_per_time_interval: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_category_limits(
        self, value: List[RestapiCategoryLimit]
    ) -> RestapiReportingLimit:
        self.category_limits = value
        return self

    def with_time_interval(self, value: int) -> RestapiReportingLimit:
        self.time_interval = value
        return self

    def with_user_max_report_per_time_interval(
        self, value: int
    ) -> RestapiReportingLimit:
        self.user_max_report_per_time_interval = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "category_limits"):
            result["categoryLimits"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.category_limits
            ]
        elif include_empty:
            result["categoryLimits"] = []
        if hasattr(self, "time_interval"):
            result["timeInterval"] = int(self.time_interval)
        elif include_empty:
            result["timeInterval"] = 0
        if hasattr(self, "user_max_report_per_time_interval"):
            result["userMaxReportPerTimeInterval"] = int(
                self.user_max_report_per_time_interval
            )
        elif include_empty:
            result["userMaxReportPerTimeInterval"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        category_limits: List[RestapiCategoryLimit],
        time_interval: int,
        user_max_report_per_time_interval: int,
    ) -> RestapiReportingLimit:
        instance = cls()
        instance.category_limits = category_limits
        instance.time_interval = time_interval
        instance.user_max_report_per_time_interval = user_max_report_per_time_interval
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiReportingLimit:
        instance = cls()
        if not dict_:
            return instance
        if "categoryLimits" in dict_ and dict_["categoryLimits"] is not None:
            instance.category_limits = [
                RestapiCategoryLimit.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["categoryLimits"]
            ]
        elif include_empty:
            instance.category_limits = []
        if "timeInterval" in dict_ and dict_["timeInterval"] is not None:
            instance.time_interval = int(dict_["timeInterval"])
        elif include_empty:
            instance.time_interval = 0
        if (
            "userMaxReportPerTimeInterval" in dict_
            and dict_["userMaxReportPerTimeInterval"] is not None
        ):
            instance.user_max_report_per_time_interval = int(
                dict_["userMaxReportPerTimeInterval"]
            )
        elif include_empty:
            instance.user_max_report_per_time_interval = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiReportingLimit]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiReportingLimit]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiReportingLimit,
        List[RestapiReportingLimit],
        Dict[Any, RestapiReportingLimit],
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
            "categoryLimits": "category_limits",
            "timeInterval": "time_interval",
            "userMaxReportPerTimeInterval": "user_max_report_per_time_interval",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "categoryLimits": True,
            "timeInterval": True,
            "userMaxReportPerTimeInterval": True,
        }

    # endregion static methods
