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

from ..models.api_fleet_list_item_response import ApiFleetListItemResponse
from ..models.pagination_pagination_info import PaginationPaginationInfo


class ApiFleetListResponse(Model):
    """Api fleet list response (api.FleetListResponse)

    Properties:
        fleets: (fleets) REQUIRED List[ApiFleetListItemResponse]

        paging: (paging) REQUIRED PaginationPaginationInfo
    """

    # region fields

    fleets: List[ApiFleetListItemResponse]  # REQUIRED
    paging: PaginationPaginationInfo  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_fleets(
        self, value: List[ApiFleetListItemResponse]
    ) -> ApiFleetListResponse:
        self.fleets = value
        return self

    def with_paging(self, value: PaginationPaginationInfo) -> ApiFleetListResponse:
        self.paging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "fleets"):
            result["fleets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.fleets
            ]
        elif include_empty:
            result["fleets"] = []
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = PaginationPaginationInfo()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        fleets: List[ApiFleetListItemResponse],
        paging: PaginationPaginationInfo,
        **kwargs,
    ) -> ApiFleetListResponse:
        instance = cls()
        instance.fleets = fleets
        instance.paging = paging
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiFleetListResponse:
        instance = cls()
        if not dict_:
            return instance
        if "fleets" in dict_ and dict_["fleets"] is not None:
            instance.fleets = [
                ApiFleetListItemResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["fleets"]
            ]
        elif include_empty:
            instance.fleets = []
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = PaginationPaginationInfo.create_from_dict(
                dict_["paging"], include_empty=include_empty
            )
        elif include_empty:
            instance.paging = PaginationPaginationInfo()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiFleetListResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiFleetListResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiFleetListResponse,
        List[ApiFleetListResponse],
        Dict[Any, ApiFleetListResponse],
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
            "fleets": "fleets",
            "paging": "paging",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "fleets": True,
            "paging": True,
        }

    # endregion static methods
