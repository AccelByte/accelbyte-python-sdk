# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Lobby Server

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


class ModelOutgoingFriendsWithTimeData(Model):
    """Model outgoing friends with time data (model.OutgoingFriendsWithTimeData)

    Properties:
        friend_id: (friendId) REQUIRED str

        requested_at: (requestedAt) REQUIRED str
    """

    # region fields

    friend_id: str  # REQUIRED
    requested_at: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_friend_id(self, value: str) -> ModelOutgoingFriendsWithTimeData:
        self.friend_id = value
        return self

    def with_requested_at(self, value: str) -> ModelOutgoingFriendsWithTimeData:
        self.requested_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "friend_id"):
            result["friendId"] = str(self.friend_id)
        elif include_empty:
            result["friendId"] = ""
        if hasattr(self, "requested_at"):
            result["requestedAt"] = str(self.requested_at)
        elif include_empty:
            result["requestedAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, friend_id: str, requested_at: str, **kwargs
    ) -> ModelOutgoingFriendsWithTimeData:
        instance = cls()
        instance.friend_id = friend_id
        instance.requested_at = requested_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelOutgoingFriendsWithTimeData:
        instance = cls()
        if not dict_:
            return instance
        if "friendId" in dict_ and dict_["friendId"] is not None:
            instance.friend_id = str(dict_["friendId"])
        elif include_empty:
            instance.friend_id = ""
        if "requestedAt" in dict_ and dict_["requestedAt"] is not None:
            instance.requested_at = str(dict_["requestedAt"])
        elif include_empty:
            instance.requested_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelOutgoingFriendsWithTimeData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelOutgoingFriendsWithTimeData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelOutgoingFriendsWithTimeData,
        List[ModelOutgoingFriendsWithTimeData],
        Dict[Any, ModelOutgoingFriendsWithTimeData],
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
            "requestedAt": "requested_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "friendId": True,
            "requestedAt": True,
        }

    # endregion static methods
