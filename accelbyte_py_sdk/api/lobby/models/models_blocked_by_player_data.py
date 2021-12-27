# justice-lobby-server (staging)

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


class ModelsBlockedByPlayerData(Model):
    """Models blocked by player data (models.BlockedByPlayerData)

    Properties:
        blocked_at: (blockedAt) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    blocked_at: str                                                                                # REQUIRED
    user_id: str                                                                                   # REQUIRED

    # endregion fields

    # region with_x methods

    def with_blocked_at(self, value: str) -> ModelsBlockedByPlayerData:
        self.blocked_at = value
        return self

    def with_user_id(self, value: str) -> ModelsBlockedByPlayerData:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "blocked_at"):
            result["blockedAt"] = str(self.blocked_at)
        elif include_empty:
            result["blockedAt"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        blocked_at: str,
        user_id: str,
    ) -> ModelsBlockedByPlayerData:
        instance = cls()
        instance.blocked_at = blocked_at
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsBlockedByPlayerData:
        instance = cls()
        if not dict_:
            return instance
        if "blockedAt" in dict_ and dict_["blockedAt"] is not None:
            instance.blocked_at = str(dict_["blockedAt"])
        elif include_empty:
            instance.blocked_at = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "blockedAt": "blocked_at",
            "userId": "user_id",
        }

    # endregion static methods
