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


class ModelUserUnfriendRequest(Model):
    """Model user unfriend request (model.UserUnfriendRequest)

    Properties:
        friend_id: (friendId) REQUIRED str
    """

    # region fields

    friend_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_friend_id(self, value: str) -> ModelUserUnfriendRequest:
        self.friend_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "friend_id"):
            result["friendId"] = str(self.friend_id)
        elif include_empty:
            result["friendId"] = ""
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelUserUnfriendRequest:
        instance = cls()
        if not dict_:
            return instance
        if "friendId" in dict_ and dict_["friendId"] is not None:
            instance.friend_id = str(dict_["friendId"])
        elif include_empty:
            instance.friend_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelUserUnfriendRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelUserUnfriendRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelUserUnfriendRequest,
        List[ModelUserUnfriendRequest],
        Dict[Any, ModelUserUnfriendRequest],
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "friendId": True,
        }

    # endregion static methods
