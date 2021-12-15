# Justice Matchmaking Service (2.12.0)

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

from ..models.models_channel import ModelsChannel
from ..models.models_pagination import ModelsPagination


class ModelsGetChannelsResponse(Model):
    """Models get channels response (models.GetChannelsResponse)

    Properties:
        data: (data) REQUIRED List[ModelsChannel]

        pagination: (pagination) REQUIRED ModelsPagination
    """

    # region fields

    data: List[ModelsChannel]                                                                      # REQUIRED
    pagination: ModelsPagination                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(self, value: List[ModelsChannel]) -> ModelsGetChannelsResponse:
        self.data = value
        return self

    def with_pagination(self, value: ModelsPagination) -> ModelsGetChannelsResponse:
        self.pagination = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = [i0.to_dict(include_empty=include_empty) for i0 in self.data]
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
        data: List[ModelsChannel],
        pagination: ModelsPagination,
    ) -> ModelsGetChannelsResponse:
        instance = cls()
        instance.data = data
        instance.pagination = pagination
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGetChannelsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [ModelsChannel.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["data"]]
        elif include_empty:
            instance.data = []
        if "pagination" in dict_ and dict_["pagination"] is not None:
            instance.pagination = ModelsPagination.create_from_dict(dict_["pagination"], include_empty=include_empty)
        elif include_empty:
            instance.pagination = ModelsPagination()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "data": "data",
            "pagination": "pagination",
        }

    # endregion static methods
