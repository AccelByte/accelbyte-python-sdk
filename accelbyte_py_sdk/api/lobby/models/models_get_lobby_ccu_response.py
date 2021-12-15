# justice-lobby-server (staging)

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


class ModelsGetLobbyCcuResponse(Model):
    """Models get lobby ccu response (models.GetLobbyCcuResponse)

    Properties:
        count_current_users: (countCurrentUsers) REQUIRED int
    """

    # region fields

    count_current_users: int                                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_count_current_users(self, value: int) -> ModelsGetLobbyCcuResponse:
        self.count_current_users = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count_current_users"):
            result["countCurrentUsers"] = int(self.count_current_users)
        elif include_empty:
            result["countCurrentUsers"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        count_current_users: int,
    ) -> ModelsGetLobbyCcuResponse:
        instance = cls()
        instance.count_current_users = count_current_users
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGetLobbyCcuResponse:
        instance = cls()
        if not dict_:
            return instance
        if "countCurrentUsers" in dict_ and dict_["countCurrentUsers"] is not None:
            instance.count_current_users = int(dict_["countCurrentUsers"])
        elif include_empty:
            instance.count_current_users = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "countCurrentUsers": "count_current_users",
        }

    # endregion static methods
