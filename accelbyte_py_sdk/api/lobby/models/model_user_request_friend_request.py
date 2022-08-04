# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Lobby Server (staging)

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


class ModelUserRequestFriendRequest(Model):
    """Model user request friend request (model.UserRequestFriendRequest)

    Properties:
        friend_id: (friendId) REQUIRED str

        friend_public_id: (friendPublicId) REQUIRED str
    """

    # region fields

    friend_id: str  # REQUIRED
    friend_public_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_friend_id(self, value: str) -> ModelUserRequestFriendRequest:
        self.friend_id = value
        return self

    def with_friend_public_id(self, value: str) -> ModelUserRequestFriendRequest:
        self.friend_public_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "friend_id"):
            result["friendId"] = str(self.friend_id)
        elif include_empty:
            result["friendId"] = ""
        if hasattr(self, "friend_public_id"):
            result["friendPublicId"] = str(self.friend_public_id)
        elif include_empty:
            result["friendPublicId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        friend_id: str,
        friend_public_id: str,
    ) -> ModelUserRequestFriendRequest:
        instance = cls()
        instance.friend_id = friend_id
        instance.friend_public_id = friend_public_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserRequestFriendRequest:
        instance = cls()
        if not dict_:
            return instance
        if "friendId" in dict_ and dict_["friendId"] is not None:
            instance.friend_id = str(dict_["friendId"])
        elif include_empty:
            instance.friend_id = ""
        if "friendPublicId" in dict_ and dict_["friendPublicId"] is not None:
            instance.friend_public_id = str(dict_["friendPublicId"])
        elif include_empty:
            instance.friend_public_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserRequestFriendRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserRequestFriendRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserRequestFriendRequest,
        List[ModelUserRequestFriendRequest],
        Dict[Any, ModelUserRequestFriendRequest],
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
            "friendId": "friend_id",
            "friendPublicId": "friend_public_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "friendId": True,
            "friendPublicId": True,
        }

    # endregion static methods
