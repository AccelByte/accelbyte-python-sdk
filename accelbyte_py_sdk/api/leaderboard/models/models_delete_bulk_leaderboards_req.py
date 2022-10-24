# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Leaderboard Service (2.15.9)

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


class ModelsDeleteBulkLeaderboardsReq(Model):
    """Models delete bulk leaderboards req (models.DeleteBulkLeaderboardsReq)

    Properties:
        leaderboard_codes: (leaderboardCodes) REQUIRED List[str]
    """

    # region fields

    leaderboard_codes: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_leaderboard_codes(
        self, value: List[str]
    ) -> ModelsDeleteBulkLeaderboardsReq:
        self.leaderboard_codes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "leaderboard_codes"):
            result["leaderboardCodes"] = [str(i0) for i0 in self.leaderboard_codes]
        elif include_empty:
            result["leaderboardCodes"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        leaderboard_codes: List[str],
    ) -> ModelsDeleteBulkLeaderboardsReq:
        instance = cls()
        instance.leaderboard_codes = leaderboard_codes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsDeleteBulkLeaderboardsReq:
        instance = cls()
        if not dict_:
            return instance
        if "leaderboardCodes" in dict_ and dict_["leaderboardCodes"] is not None:
            instance.leaderboard_codes = [str(i0) for i0 in dict_["leaderboardCodes"]]
        elif include_empty:
            instance.leaderboard_codes = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsDeleteBulkLeaderboardsReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsDeleteBulkLeaderboardsReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsDeleteBulkLeaderboardsReq,
        List[ModelsDeleteBulkLeaderboardsReq],
        Dict[Any, ModelsDeleteBulkLeaderboardsReq],
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "leaderboardCodes": True,
        }

    # endregion static methods
