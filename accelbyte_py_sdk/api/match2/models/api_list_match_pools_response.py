# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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

from ..models.api_match_pool import ApiMatchPool
from ..models.models_pagination import ModelsPagination


class ApiListMatchPoolsResponse(Model):
    """Api list match pools response (api.ListMatchPoolsResponse)

    Properties:
        data: (data) OPTIONAL List[ApiMatchPool]

        pagination: (pagination) OPTIONAL ModelsPagination
    """

    # region fields

    data: List[ApiMatchPool]  # OPTIONAL
    pagination: ModelsPagination  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_data(self, value: List[ApiMatchPool]) -> ApiListMatchPoolsResponse:
        self.data = value
        return self

    def with_pagination(self, value: ModelsPagination) -> ApiListMatchPoolsResponse:
        self.pagination = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.data
            ]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "pagination"):
            result["pagination"] = self.pagination.to_dict(include_empty=include_empty)
        elif include_empty:
            result["pagination"] = ModelsPagination()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: Optional[List[ApiMatchPool]] = None,
        pagination: Optional[ModelsPagination] = None,
        **kwargs,
    ) -> ApiListMatchPoolsResponse:
        instance = cls()
        if data is not None:
            instance.data = data
        if pagination is not None:
            instance.pagination = pagination
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiListMatchPoolsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [
                ApiMatchPool.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["data"]
            ]
        elif include_empty:
            instance.data = []
        if "pagination" in dict_ and dict_["pagination"] is not None:
            instance.pagination = ModelsPagination.create_from_dict(
                dict_["pagination"], include_empty=include_empty
            )
        elif include_empty:
            instance.pagination = ModelsPagination()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiListMatchPoolsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiListMatchPoolsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiListMatchPoolsResponse,
        List[ApiListMatchPoolsResponse],
        Dict[Any, ApiListMatchPoolsResponse],
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
            "data": "data",
            "pagination": "pagination",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": False,
            "pagination": False,
        }

    # endregion static methods
