# justice-leaderboard-service (2.11.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class ModelsDeleteBulkLeaderboardFailedResp(Model):
    """Models delete bulk leaderboard failed resp (models.DeleteBulkLeaderboardFailedResp)

    Properties:
        error: (error) REQUIRED str

        leaderboard_code: (leaderboardCode) REQUIRED str
    """

    # region fields

    error: str                                                                                     # REQUIRED
    leaderboard_code: str                                                                          # REQUIRED

    # endregion fields

    # region with_x methods

    def with_error(self, value: str) -> ModelsDeleteBulkLeaderboardFailedResp:
        self.error = value
        return self

    def with_leaderboard_code(self, value: str) -> ModelsDeleteBulkLeaderboardFailedResp:
        self.leaderboard_code = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error"):
            result["error"] = str(self.error)
        elif include_empty:
            result["error"] = str()
        if hasattr(self, "leaderboard_code"):
            result["leaderboardCode"] = str(self.leaderboard_code)
        elif include_empty:
            result["leaderboardCode"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error: str,
        leaderboard_code: str,
    ) -> ModelsDeleteBulkLeaderboardFailedResp:
        instance = cls()
        instance.error = error
        instance.leaderboard_code = leaderboard_code
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDeleteBulkLeaderboardFailedResp:
        instance = cls()
        if not dict_:
            return instance
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = str(dict_["error"])
        elif include_empty:
            instance.error = str()
        if "leaderboardCode" in dict_ and dict_["leaderboardCode"] is not None:
            instance.leaderboard_code = str(dict_["leaderboardCode"])
        elif include_empty:
            instance.leaderboard_code = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "error": "error",
            "leaderboardCode": "leaderboard_code",
        }

    # endregion static methods
