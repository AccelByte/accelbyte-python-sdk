# Auto-generated at 2021-09-27T17:12:36.140138+08:00
# from: Justice Platform Service (3.24.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class EntitlementUpdate(Model):
    """A DTO object for updating entitlement API call. Leave the field empty if don't want to update.

    Properties:
        null_field_list: (nullFieldList) OPTIONAL List[str]

        status: (status) OPTIONAL str

        use_count: (useCount) OPTIONAL int

        quantity: (quantity) OPTIONAL int

        start_date: (startDate) OPTIONAL str

        end_date: (endDate) OPTIONAL str
    """

    # region fields

    null_field_list: List[str]                                                                     # OPTIONAL
    status: str                                                                                    # OPTIONAL
    use_count: int                                                                                 # OPTIONAL
    quantity: int                                                                                  # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    end_date: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_null_field_list(self, value: List[str]) -> EntitlementUpdate:
        self.null_field_list = value
        return self

    def with_status(self, value: str) -> EntitlementUpdate:
        self.status = value
        return self

    def with_use_count(self, value: int) -> EntitlementUpdate:
        self.use_count = value
        return self

    def with_quantity(self, value: int) -> EntitlementUpdate:
        self.quantity = value
        return self

    def with_start_date(self, value: str) -> EntitlementUpdate:
        self.start_date = value
        return self

    def with_end_date(self, value: str) -> EntitlementUpdate:
        self.end_date = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "null_field_list") and self.null_field_list:
            result["nullFieldList"] = [str(i0) for i0 in self.null_field_list]
        elif include_empty:
            result["nullFieldList"] = []
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "use_count") and self.use_count:
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = int()
        if hasattr(self, "quantity") and self.quantity:
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "start_date") and self.start_date:
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "end_date") and self.end_date:
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        null_field_list: Optional[List[str]] = None,
        status: Optional[str] = None,
        use_count: Optional[int] = None,
        quantity: Optional[int] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
    ) -> EntitlementUpdate:
        instance = cls()
        if null_field_list is not None:
            instance.null_field_list = null_field_list
        if status is not None:
            instance.status = status
        if use_count is not None:
            instance.use_count = use_count
        if quantity is not None:
            instance.quantity = quantity
        if start_date is not None:
            instance.start_date = start_date
        if end_date is not None:
            instance.end_date = end_date
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> EntitlementUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "nullFieldList" in dict_ and dict_["nullFieldList"] is not None:
            instance.null_field_list = [str(i0) for i0 in dict_["nullFieldList"]]
        elif include_empty:
            instance.null_field_list = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = int()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "nullFieldList": "null_field_list",
            "status": "status",
            "useCount": "use_count",
            "quantity": "quantity",
            "startDate": "start_date",
            "endDate": "end_date",
        }

    # endregion static methods
