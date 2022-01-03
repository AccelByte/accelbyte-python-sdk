# justice-leaderboard-service (2.11.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelsDeleteBulkLeaderboardsReq(Model):
    """Models delete bulk leaderboards req (models.DeleteBulkLeaderboardsReq)

    Properties:
        leaderboard_codes: (leaderboardCodes) REQUIRED List[str]
    """

    # region fields

    leaderboard_codes: List[str]                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_leaderboard_codes(self, value: List[str]) -> ModelsDeleteBulkLeaderboardsReq:
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDeleteBulkLeaderboardsReq:
        instance = cls()
        if not dict_:
            return instance
        if "leaderboardCodes" in dict_ and dict_["leaderboardCodes"] is not None:
            instance.leaderboard_codes = [str(i0) for i0 in dict_["leaderboardCodes"]]
        elif include_empty:
            instance.leaderboard_codes = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "leaderboardCodes": "leaderboard_codes",
        }

    # endregion static methods
