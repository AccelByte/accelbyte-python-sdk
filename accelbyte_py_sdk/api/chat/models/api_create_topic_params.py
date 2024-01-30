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


class ApiCreateTopicParams(Model):
    """Api create topic params (api.CreateTopicParams)

    Properties:
        admins: (admins) REQUIRED List[str]

        description: (description) REQUIRED str

        is_channel: (isChannel) REQUIRED bool

        is_joinable: (isJoinable) REQUIRED bool

        members: (members) REQUIRED List[str]

        name: (name) REQUIRED str

        type_: (type) REQUIRED str

        shard_limit: (shardLimit) OPTIONAL int
    """

    # region fields

    admins: List[str]  # REQUIRED
    description: str  # REQUIRED
    is_channel: bool  # REQUIRED
    is_joinable: bool  # REQUIRED
    members: List[str]  # REQUIRED
    name: str  # REQUIRED
    type_: str  # REQUIRED
    shard_limit: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_admins(self, value: List[str]) -> ApiCreateTopicParams:
        self.admins = value
        return self

    def with_description(self, value: str) -> ApiCreateTopicParams:
        self.description = value
        return self

    def with_is_channel(self, value: bool) -> ApiCreateTopicParams:
        self.is_channel = value
        return self

    def with_is_joinable(self, value: bool) -> ApiCreateTopicParams:
        self.is_joinable = value
        return self

    def with_members(self, value: List[str]) -> ApiCreateTopicParams:
        self.members = value
        return self

    def with_name(self, value: str) -> ApiCreateTopicParams:
        self.name = value
        return self

    def with_type(self, value: str) -> ApiCreateTopicParams:
        self.type_ = value
        return self

    def with_shard_limit(self, value: int) -> ApiCreateTopicParams:
        self.shard_limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "admins"):
            result["admins"] = [str(i0) for i0 in self.admins]
        elif include_empty:
            result["admins"] = []
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "is_channel"):
            result["isChannel"] = bool(self.is_channel)
        elif include_empty:
            result["isChannel"] = False
        if hasattr(self, "is_joinable"):
            result["isJoinable"] = bool(self.is_joinable)
        elif include_empty:
            result["isJoinable"] = False
        if hasattr(self, "members"):
            result["members"] = [str(i0) for i0 in self.members]
        elif include_empty:
            result["members"] = []
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "shard_limit"):
            result["shardLimit"] = int(self.shard_limit)
        elif include_empty:
            result["shardLimit"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        admins: List[str],
        description: str,
        is_channel: bool,
        is_joinable: bool,
        members: List[str],
        name: str,
        type_: str,
        shard_limit: Optional[int] = None,
        **kwargs,
    ) -> ApiCreateTopicParams:
        instance = cls()
        instance.admins = admins
        instance.description = description
        instance.is_channel = is_channel
        instance.is_joinable = is_joinable
        instance.members = members
        instance.name = name
        instance.type_ = type_
        if shard_limit is not None:
            instance.shard_limit = shard_limit
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiCreateTopicParams:
        instance = cls()
        if not dict_:
            return instance
        if "admins" in dict_ and dict_["admins"] is not None:
            instance.admins = [str(i0) for i0 in dict_["admins"]]
        elif include_empty:
            instance.admins = []
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "isChannel" in dict_ and dict_["isChannel"] is not None:
            instance.is_channel = bool(dict_["isChannel"])
        elif include_empty:
            instance.is_channel = False
        if "isJoinable" in dict_ and dict_["isJoinable"] is not None:
            instance.is_joinable = bool(dict_["isJoinable"])
        elif include_empty:
            instance.is_joinable = False
        if "members" in dict_ and dict_["members"] is not None:
            instance.members = [str(i0) for i0 in dict_["members"]]
        elif include_empty:
            instance.members = []
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "shardLimit" in dict_ and dict_["shardLimit"] is not None:
            instance.shard_limit = int(dict_["shardLimit"])
        elif include_empty:
            instance.shard_limit = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiCreateTopicParams]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiCreateTopicParams]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiCreateTopicParams,
        List[ApiCreateTopicParams],
        Dict[Any, ApiCreateTopicParams],
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
            "admins": "admins",
            "description": "description",
            "isChannel": "is_channel",
            "isJoinable": "is_joinable",
            "members": "members",
            "name": "name",
            "type": "type_",
            "shardLimit": "shard_limit",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "admins": True,
            "description": True,
            "isChannel": True,
            "isJoinable": True,
            "members": True,
            "name": True,
            "type": True,
            "shardLimit": False,
        }

    # endregion static methods
