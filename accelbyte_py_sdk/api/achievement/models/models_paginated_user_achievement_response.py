# justice-achievement-service ()

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

from ..models.models_additional_info import ModelsAdditionalInfo
from ..models.models_pagination import ModelsPagination
from ..models.models_user_achievement_response import ModelsUserAchievementResponse


class ModelsPaginatedUserAchievementResponse(Model):
    """Models paginated user achievement response (models.PaginatedUserAchievementResponse)

    Properties:
        count_info: (countInfo) REQUIRED ModelsAdditionalInfo

        data: (data) REQUIRED List[ModelsUserAchievementResponse]

        paging: (paging) REQUIRED ModelsPagination
    """

    # region fields

    count_info: ModelsAdditionalInfo                                                               # REQUIRED
    data: List[ModelsUserAchievementResponse]                                                      # REQUIRED
    paging: ModelsPagination                                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_count_info(self, value: ModelsAdditionalInfo) -> ModelsPaginatedUserAchievementResponse:
        self.count_info = value
        return self

    def with_data(self, value: List[ModelsUserAchievementResponse]) -> ModelsPaginatedUserAchievementResponse:
        self.data = value
        return self

    def with_paging(self, value: ModelsPagination) -> ModelsPaginatedUserAchievementResponse:
        self.paging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count_info"):
            result["countInfo"] = self.count_info.to_dict(include_empty=include_empty)
        elif include_empty:
            result["countInfo"] = ModelsAdditionalInfo()
        if hasattr(self, "data"):
            result["data"] = [i0.to_dict(include_empty=include_empty) for i0 in self.data]
        elif include_empty:
            result["data"] = []
        if hasattr(self, "paging"):
            result["paging"] = self.paging.to_dict(include_empty=include_empty)
        elif include_empty:
            result["paging"] = ModelsPagination()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        count_info: ModelsAdditionalInfo,
        data: List[ModelsUserAchievementResponse],
        paging: ModelsPagination,
    ) -> ModelsPaginatedUserAchievementResponse:
        instance = cls()
        instance.count_info = count_info
        instance.data = data
        instance.paging = paging
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsPaginatedUserAchievementResponse:
        instance = cls()
        if not dict_:
            return instance
        if "countInfo" in dict_ and dict_["countInfo"] is not None:
            instance.count_info = ModelsAdditionalInfo.create_from_dict(dict_["countInfo"], include_empty=include_empty)
        elif include_empty:
            instance.count_info = ModelsAdditionalInfo()
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = [ModelsUserAchievementResponse.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["data"]]
        elif include_empty:
            instance.data = []
        if "paging" in dict_ and dict_["paging"] is not None:
            instance.paging = ModelsPagination.create_from_dict(dict_["paging"], include_empty=include_empty)
        elif include_empty:
            instance.paging = ModelsPagination()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "countInfo": "count_info",
            "data": "data",
            "paging": "paging",
        }

    # endregion static methods
