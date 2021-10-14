# Auto-generated at 2021-10-14T22:17:13.238542+08:00
# from: Justice Lobby Service (1.33.0)

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

from ..models.models_profanity_filter import ModelsProfanityFilter


class ModelsAdminGetProfanityListFiltersV1Response(Model):
    """Models admin get profanity list filters V1 response (models.AdminGetProfanityListFiltersV1Response)

    Properties:
        filters: (filters) REQUIRED List[ModelsProfanityFilter]
    """

    # region fields

    filters: List[ModelsProfanityFilter]                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_filters(self, value: List[ModelsProfanityFilter]) -> ModelsAdminGetProfanityListFiltersV1Response:
        self.filters = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "filters") and self.filters:
            result["filters"] = [i0.to_dict(include_empty=include_empty) for i0 in self.filters]
        elif include_empty:
            result["filters"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        filters: List[ModelsProfanityFilter],
    ) -> ModelsAdminGetProfanityListFiltersV1Response:
        instance = cls()
        instance.filters = filters
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsAdminGetProfanityListFiltersV1Response:
        instance = cls()
        if not dict_:
            return instance
        if "filters" in dict_ and dict_["filters"] is not None:
            instance.filters = [ModelsProfanityFilter.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["filters"]]
        elif include_empty:
            instance.filters = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "filters": "filters",
        }

    # endregion static methods
