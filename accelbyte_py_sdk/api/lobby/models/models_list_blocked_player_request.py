# Auto-generated at 2021-09-21T14:10:36.234206+08:00
# from: Justice Lobby Service (1.33.0)

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


class ModelsListBlockedPlayerRequest(Model):
    """Models list blocked player request

    Properties:
        list_blocked_user_id: (listBlockedUserId) REQUIRED List[str]
    """

    # region fields

    list_blocked_user_id: List[str]                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_list_blocked_user_id(self, value: List[str]) -> ModelsListBlockedPlayerRequest:
        self.list_blocked_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "list_blocked_user_id") and self.list_blocked_user_id:
            result["listBlockedUserId"] = [str(i0) for i0 in self.list_blocked_user_id]
        elif include_empty:
            result["listBlockedUserId"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        list_blocked_user_id: List[str],
    ) -> ModelsListBlockedPlayerRequest:
        instance = cls()
        instance.list_blocked_user_id = list_blocked_user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsListBlockedPlayerRequest:
        instance = cls()
        if "listBlockedUserId" in dict_ and dict_["listBlockedUserId"] is not None:
            instance.list_blocked_user_id = [str(i0) for i0 in dict_["listBlockedUserId"]]
        elif include_empty:
            instance.list_blocked_user_id = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "listBlockedUserId": "list_blocked_user_id",
        }

    # endregion static methods
