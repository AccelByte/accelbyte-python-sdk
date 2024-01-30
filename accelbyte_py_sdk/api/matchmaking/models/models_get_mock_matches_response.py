# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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

from ..models.models_mock_match import ModelsMockMatch


class ModelsGetMockMatchesResponse(Model):
    """Models get mock matches response (models.GetMockMatchesResponse)

    Properties:
        count: (count) REQUIRED int

        largest_mmr_distance: (largest_mmr_distance) REQUIRED int

        longest_time_to_match_seconds: (longest_time_to_match_seconds) REQUIRED int

        matches: (matches) REQUIRED List[ModelsMockMatch]
    """

    # region fields

    count: int  # REQUIRED
    largest_mmr_distance: int  # REQUIRED
    longest_time_to_match_seconds: int  # REQUIRED
    matches: List[ModelsMockMatch]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> ModelsGetMockMatchesResponse:
        self.count = value
        return self

    def with_largest_mmr_distance(self, value: int) -> ModelsGetMockMatchesResponse:
        self.largest_mmr_distance = value
        return self

    def with_longest_time_to_match_seconds(
        self, value: int
    ) -> ModelsGetMockMatchesResponse:
        self.longest_time_to_match_seconds = value
        return self

    def with_matches(
        self, value: List[ModelsMockMatch]
    ) -> ModelsGetMockMatchesResponse:
        self.matches = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "largest_mmr_distance"):
            result["largest_mmr_distance"] = int(self.largest_mmr_distance)
        elif include_empty:
            result["largest_mmr_distance"] = 0
        if hasattr(self, "longest_time_to_match_seconds"):
            result["longest_time_to_match_seconds"] = int(
                self.longest_time_to_match_seconds
            )
        elif include_empty:
            result["longest_time_to_match_seconds"] = 0
        if hasattr(self, "matches"):
            result["matches"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.matches
            ]
        elif include_empty:
            result["matches"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        count: int,
        largest_mmr_distance: int,
        longest_time_to_match_seconds: int,
        matches: List[ModelsMockMatch],
        **kwargs,
    ) -> ModelsGetMockMatchesResponse:
        instance = cls()
        instance.count = count
        instance.largest_mmr_distance = largest_mmr_distance
        instance.longest_time_to_match_seconds = longest_time_to_match_seconds
        instance.matches = matches
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGetMockMatchesResponse:
        instance = cls()
        if not dict_:
            return instance
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if (
            "largest_mmr_distance" in dict_
            and dict_["largest_mmr_distance"] is not None
        ):
            instance.largest_mmr_distance = int(dict_["largest_mmr_distance"])
        elif include_empty:
            instance.largest_mmr_distance = 0
        if (
            "longest_time_to_match_seconds" in dict_
            and dict_["longest_time_to_match_seconds"] is not None
        ):
            instance.longest_time_to_match_seconds = int(
                dict_["longest_time_to_match_seconds"]
            )
        elif include_empty:
            instance.longest_time_to_match_seconds = 0
        if "matches" in dict_ and dict_["matches"] is not None:
            instance.matches = [
                ModelsMockMatch.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["matches"]
            ]
        elif include_empty:
            instance.matches = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGetMockMatchesResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGetMockMatchesResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsGetMockMatchesResponse,
        List[ModelsGetMockMatchesResponse],
        Dict[Any, ModelsGetMockMatchesResponse],
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
            "count": "count",
            "largest_mmr_distance": "largest_mmr_distance",
            "longest_time_to_match_seconds": "longest_time_to_match_seconds",
            "matches": "matches",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "count": True,
            "largest_mmr_distance": True,
            "longest_time_to_match_seconds": True,
            "matches": True,
        }

    # endregion static methods
