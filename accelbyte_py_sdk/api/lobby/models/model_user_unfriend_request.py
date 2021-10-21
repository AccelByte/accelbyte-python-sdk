# Auto-generated at 2021-10-21T08:52:27.619298+08:00
# from: Justice lobby Service (1.33.0)

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


class ModelUserUnfriendRequest(Model):
    """Model user unfriend request (model.UserUnfriendRequest)

    Properties:
        friend_id: (friendId) REQUIRED str
    """

    # region fields

    friend_id: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_friend_id(self, value: str) -> ModelUserUnfriendRequest:
        self.friend_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "friend_id") and self.friend_id:
            result["friendId"] = str(self.friend_id)
        elif include_empty:
            result["friendId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        friend_id: str,
    ) -> ModelUserUnfriendRequest:
        instance = cls()
        instance.friend_id = friend_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserUnfriendRequest:
        instance = cls()
        if not dict_:
            return instance
        if "friendId" in dict_ and dict_["friendId"] is not None:
            instance.friend_id = str(dict_["friendId"])
        elif include_empty:
            instance.friend_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "friendId": "friend_id",
        }

    # endregion static methods
