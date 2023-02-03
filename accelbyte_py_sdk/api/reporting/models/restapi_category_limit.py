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


class RestapiCategoryLimit(Model):
    """Restapi category limit (restapi.categoryLimit)

    Properties:
        max_report_per_ticket: (maxReportPerTicket) REQUIRED int

        name: (name) REQUIRED str

        extension_category: (extensionCategory) OPTIONAL str
    """

    # region fields

    max_report_per_ticket: int  # REQUIRED
    name: str  # REQUIRED
    extension_category: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_max_report_per_ticket(self, value: int) -> RestapiCategoryLimit:
        self.max_report_per_ticket = value
        return self

    def with_name(self, value: str) -> RestapiCategoryLimit:
        self.name = value
        return self

    def with_extension_category(self, value: str) -> RestapiCategoryLimit:
        self.extension_category = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_report_per_ticket"):
            result["maxReportPerTicket"] = int(self.max_report_per_ticket)
        elif include_empty:
            result["maxReportPerTicket"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "extension_category"):
            result["extensionCategory"] = str(self.extension_category)
        elif include_empty:
            result["extensionCategory"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_report_per_ticket: int,
        name: str,
        extension_category: Optional[str] = None,
    ) -> RestapiCategoryLimit:
        instance = cls()
        instance.max_report_per_ticket = max_report_per_ticket
        instance.name = name
        if extension_category is not None:
            instance.extension_category = extension_category
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RestapiCategoryLimit:
        instance = cls()
        if not dict_:
            return instance
        if "maxReportPerTicket" in dict_ and dict_["maxReportPerTicket"] is not None:
            instance.max_report_per_ticket = int(dict_["maxReportPerTicket"])
        elif include_empty:
            instance.max_report_per_ticket = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "extensionCategory" in dict_ and dict_["extensionCategory"] is not None:
            instance.extension_category = str(dict_["extensionCategory"])
        elif include_empty:
            instance.extension_category = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RestapiCategoryLimit]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RestapiCategoryLimit]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        RestapiCategoryLimit,
        List[RestapiCategoryLimit],
        Dict[Any, RestapiCategoryLimit],
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
            "maxReportPerTicket": "max_report_per_ticket",
            "name": "name",
            "extensionCategory": "extension_category",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxReportPerTicket": True,
            "name": True,
            "extensionCategory": False,
        }

    # endregion static methods
