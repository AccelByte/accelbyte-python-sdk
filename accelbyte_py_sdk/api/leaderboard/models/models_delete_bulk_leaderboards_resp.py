# justice-leaderboard-service (2.11.0)

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

from ..models.models_delete_bulk_leaderboard_failed_resp import ModelsDeleteBulkLeaderboardFailedResp


class ModelsDeleteBulkLeaderboardsResp(Model):
    """Models delete bulk leaderboards resp (models.DeleteBulkLeaderboardsResp)

    Properties:
        failed: (failed) REQUIRED List[ModelsDeleteBulkLeaderboardFailedResp]
    """

    # region fields

    failed: List[ModelsDeleteBulkLeaderboardFailedResp]                                            # REQUIRED

    # endregion fields

    # region with_x methods

    def with_failed(self, value: List[ModelsDeleteBulkLeaderboardFailedResp]) -> ModelsDeleteBulkLeaderboardsResp:
        self.failed = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "failed"):
            result["failed"] = [i0.to_dict(include_empty=include_empty) for i0 in self.failed]
        elif include_empty:
            result["failed"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        failed: List[ModelsDeleteBulkLeaderboardFailedResp],
    ) -> ModelsDeleteBulkLeaderboardsResp:
        instance = cls()
        instance.failed = failed
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsDeleteBulkLeaderboardsResp:
        instance = cls()
        if not dict_:
            return instance
        if "failed" in dict_ and dict_["failed"] is not None:
            instance.failed = [ModelsDeleteBulkLeaderboardFailedResp.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["failed"]]
        elif include_empty:
            instance.failed = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "failed": "failed",
        }

    # endregion static methods
