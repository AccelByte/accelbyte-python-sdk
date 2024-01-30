# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Chat Service

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


class ModelsTopicMemberResponse(Model):
    """Models topic member response (models.TopicMemberResponse)

    Properties:
        is_admin: (isAdmin) REQUIRED bool

        is_banned: (isBanned) REQUIRED bool

        shard_id: (shardId) REQUIRED str

        user_id: (userId) REQUIRED str
    """

    # region fields

    is_admin: bool  # REQUIRED
    is_banned: bool  # REQUIRED
    shard_id: str  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_admin(self, value: bool) -> ModelsTopicMemberResponse:
        self.is_admin = value
        return self

    def with_is_banned(self, value: bool) -> ModelsTopicMemberResponse:
        self.is_banned = value
        return self

    def with_shard_id(self, value: str) -> ModelsTopicMemberResponse:
        self.shard_id = value
        return self

    def with_user_id(self, value: str) -> ModelsTopicMemberResponse:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_admin"):
            result["isAdmin"] = bool(self.is_admin)
        elif include_empty:
            result["isAdmin"] = False
        if hasattr(self, "is_banned"):
            result["isBanned"] = bool(self.is_banned)
        elif include_empty:
            result["isBanned"] = False
        if hasattr(self, "shard_id"):
            result["shardId"] = str(self.shard_id)
        elif include_empty:
            result["shardId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, is_admin: bool, is_banned: bool, shard_id: str, user_id: str, **kwargs
    ) -> ModelsTopicMemberResponse:
        instance = cls()
        instance.is_admin = is_admin
        instance.is_banned = is_banned
        instance.shard_id = shard_id
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsTopicMemberResponse:
        instance = cls()
        if not dict_:
            return instance
        if "isAdmin" in dict_ and dict_["isAdmin"] is not None:
            instance.is_admin = bool(dict_["isAdmin"])
        elif include_empty:
            instance.is_admin = False
        if "isBanned" in dict_ and dict_["isBanned"] is not None:
            instance.is_banned = bool(dict_["isBanned"])
        elif include_empty:
            instance.is_banned = False
        if "shardId" in dict_ and dict_["shardId"] is not None:
            instance.shard_id = str(dict_["shardId"])
        elif include_empty:
            instance.shard_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsTopicMemberResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTopicMemberResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsTopicMemberResponse,
        List[ModelsTopicMemberResponse],
        Dict[Any, ModelsTopicMemberResponse],
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
            "isAdmin": "is_admin",
            "isBanned": "is_banned",
            "shardId": "shard_id",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "isAdmin": True,
            "isBanned": True,
            "shardId": True,
            "userId": True,
        }

    # endregion static methods
