# justice-lobby-server (1.33.0)

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


class ModelsBlockedPlayerData(Model):
    """Models blocked player data (models.BlockedPlayerData)

    Properties:
        blocked_at: (blockedAt) REQUIRED str

        blocked_user_id: (blockedUserId) REQUIRED str
    """

    # region fields

    blocked_at: str                                                                                # REQUIRED
    blocked_user_id: str                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_blocked_at(self, value: str) -> ModelsBlockedPlayerData:
        self.blocked_at = value
        return self

    def with_blocked_user_id(self, value: str) -> ModelsBlockedPlayerData:
        self.blocked_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "blocked_at"):
            result["blockedAt"] = str(self.blocked_at)
        elif include_empty:
            result["blockedAt"] = str()
        if hasattr(self, "blocked_user_id"):
            result["blockedUserId"] = str(self.blocked_user_id)
        elif include_empty:
            result["blockedUserId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        blocked_at: str,
        blocked_user_id: str,
    ) -> ModelsBlockedPlayerData:
        instance = cls()
        instance.blocked_at = blocked_at
        instance.blocked_user_id = blocked_user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsBlockedPlayerData:
        instance = cls()
        if not dict_:
            return instance
        if "blockedAt" in dict_ and dict_["blockedAt"] is not None:
            instance.blocked_at = str(dict_["blockedAt"])
        elif include_empty:
            instance.blocked_at = str()
        if "blockedUserId" in dict_ and dict_["blockedUserId"] is not None:
            instance.blocked_user_id = str(dict_["blockedUserId"])
        elif include_empty:
            instance.blocked_user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "blockedAt": "blocked_at",
            "blockedUserId": "blocked_user_id",
        }

    # endregion static methods
