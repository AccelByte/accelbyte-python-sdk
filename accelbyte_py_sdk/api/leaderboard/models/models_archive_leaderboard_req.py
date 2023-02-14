# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Leaderboard Service (2.19.0)

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


class ModelsArchiveLeaderboardReq(Model):
    """Models archive leaderboard req (models.ArchiveLeaderboardReq)

    Properties:
        leaderboard_codes: (leaderboardCodes) REQUIRED List[str]

        limit: (limit) REQUIRED int

        slug: (slug) REQUIRED str
    """

    # region fields

    leaderboard_codes: List[str]  # REQUIRED
    limit: int  # REQUIRED
    slug: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_leaderboard_codes(self, value: List[str]) -> ModelsArchiveLeaderboardReq:
        self.leaderboard_codes = value
        return self

    def with_limit(self, value: int) -> ModelsArchiveLeaderboardReq:
        self.limit = value
        return self

    def with_slug(self, value: str) -> ModelsArchiveLeaderboardReq:
        self.slug = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "leaderboard_codes"):
            result["leaderboardCodes"] = [str(i0) for i0 in self.leaderboard_codes]
        elif include_empty:
            result["leaderboardCodes"] = []
        if hasattr(self, "limit"):
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "slug"):
            result["slug"] = str(self.slug)
        elif include_empty:
            result["slug"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        leaderboard_codes: List[str],
        limit: int,
        slug: str,
    ) -> ModelsArchiveLeaderboardReq:
        instance = cls()
        instance.leaderboard_codes = leaderboard_codes
        instance.limit = limit
        instance.slug = slug
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsArchiveLeaderboardReq:
        instance = cls()
        if not dict_:
            return instance
        if "leaderboardCodes" in dict_ and dict_["leaderboardCodes"] is not None:
            instance.leaderboard_codes = [str(i0) for i0 in dict_["leaderboardCodes"]]
        elif include_empty:
            instance.leaderboard_codes = []
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "slug" in dict_ and dict_["slug"] is not None:
            instance.slug = str(dict_["slug"])
        elif include_empty:
            instance.slug = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsArchiveLeaderboardReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsArchiveLeaderboardReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsArchiveLeaderboardReq,
        List[ModelsArchiveLeaderboardReq],
        Dict[Any, ModelsArchiveLeaderboardReq],
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
            "leaderboardCodes": "leaderboard_codes",
            "limit": "limit",
            "slug": "slug",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "leaderboardCodes": True,
            "limit": True,
            "slug": True,
        }

    # endregion static methods
