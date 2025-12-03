# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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

from ..models.api_fleet_bulk_action_error_item_response import (
    ApiFleetBulkActionErrorItemResponse,
)


class ApiFleetBulkDeleteResponse(Model):
    """Api fleet bulk delete response (api.FleetBulkDeleteResponse)

    Properties:
        errors: (errors) REQUIRED List[ApiFleetBulkActionErrorItemResponse]

        success_count: (successCount) REQUIRED int

        total_count: (totalCount) REQUIRED int
    """

    # region fields

    errors: List[ApiFleetBulkActionErrorItemResponse]  # REQUIRED
    success_count: int  # REQUIRED
    total_count: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_errors(
        self, value: List[ApiFleetBulkActionErrorItemResponse]
    ) -> ApiFleetBulkDeleteResponse:
        self.errors = value
        return self

    def with_success_count(self, value: int) -> ApiFleetBulkDeleteResponse:
        self.success_count = value
        return self

    def with_total_count(self, value: int) -> ApiFleetBulkDeleteResponse:
        self.total_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "errors"):
            result["errors"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.errors
            ]
        elif include_empty:
            result["errors"] = []
        if hasattr(self, "success_count"):
            result["successCount"] = int(self.success_count)
        elif include_empty:
            result["successCount"] = 0
        if hasattr(self, "total_count"):
            result["totalCount"] = int(self.total_count)
        elif include_empty:
            result["totalCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        errors: List[ApiFleetBulkActionErrorItemResponse],
        success_count: int,
        total_count: int,
        **kwargs,
    ) -> ApiFleetBulkDeleteResponse:
        instance = cls()
        instance.errors = errors
        instance.success_count = success_count
        instance.total_count = total_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetBulkDeleteResponse:
        instance = cls()
        if not dict_:
            return instance
        if "errors" in dict_ and dict_["errors"] is not None:
            instance.errors = [
                ApiFleetBulkActionErrorItemResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["errors"]
            ]
        elif include_empty:
            instance.errors = []
        if "successCount" in dict_ and dict_["successCount"] is not None:
            instance.success_count = int(dict_["successCount"])
        elif include_empty:
            instance.success_count = 0
        if "totalCount" in dict_ and dict_["totalCount"] is not None:
            instance.total_count = int(dict_["totalCount"])
        elif include_empty:
            instance.total_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetBulkDeleteResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetBulkDeleteResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetBulkDeleteResponse,
        List[ApiFleetBulkDeleteResponse],
        Dict[Any, ApiFleetBulkDeleteResponse],
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
            "errors": "errors",
            "successCount": "success_count",
            "totalCount": "total_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "errors": True,
            "successCount": True,
            "totalCount": True,
        }

    # endregion static methods
