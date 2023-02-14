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


class TicketSaleIncrementResult(Model):
    """Ticket sale increment result (TicketSaleIncrementResult)

    Properties:
        max_sale_count: (maxSaleCount) REQUIRED int

        success: (success) REQUIRED bool
    """

    # region fields

    max_sale_count: int  # REQUIRED
    success: bool  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_max_sale_count(self, value: int) -> TicketSaleIncrementResult:
        self.max_sale_count = value
        return self

    def with_success(self, value: bool) -> TicketSaleIncrementResult:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "max_sale_count"):
            result["maxSaleCount"] = int(self.max_sale_count)
        elif include_empty:
            result["maxSaleCount"] = 0
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_sale_count: int,
        success: bool,
    ) -> TicketSaleIncrementResult:
        instance = cls()
        instance.max_sale_count = max_sale_count
        instance.success = success
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TicketSaleIncrementResult:
        instance = cls()
        if not dict_:
            return instance
        if "maxSaleCount" in dict_ and dict_["maxSaleCount"] is not None:
            instance.max_sale_count = int(dict_["maxSaleCount"])
        elif include_empty:
            instance.max_sale_count = 0
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TicketSaleIncrementResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TicketSaleIncrementResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TicketSaleIncrementResult,
        List[TicketSaleIncrementResult],
        Dict[Any, TicketSaleIncrementResult],
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
            "maxSaleCount": "max_sale_count",
            "success": "success",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "maxSaleCount": True,
            "success": True,
        }

    # endregion static methods
