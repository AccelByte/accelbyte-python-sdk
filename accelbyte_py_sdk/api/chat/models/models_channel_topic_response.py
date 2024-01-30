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


class ModelsChannelTopicResponse(Model):
    """Models channel topic response (models.ChannelTopicResponse)

    Properties:
        created_at: (createdAt) REQUIRED int

        created_by: (createdBy) REQUIRED str

        description: (description) REQUIRED str

        is_joinable: (isJoinable) REQUIRED bool

        message_per_minutes: (messagePerMinutes) REQUIRED float

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        shard_limit: (shardLimit) REQUIRED int

        shard_number: (shardNumber) REQUIRED int

        topic_id: (topicId) REQUIRED str

        total_member: (totalMember) REQUIRED int
    """

    # region fields

    created_at: int  # REQUIRED
    created_by: str  # REQUIRED
    description: str  # REQUIRED
    is_joinable: bool  # REQUIRED
    message_per_minutes: float  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    shard_limit: int  # REQUIRED
    shard_number: int  # REQUIRED
    topic_id: str  # REQUIRED
    total_member: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: int) -> ModelsChannelTopicResponse:
        self.created_at = value
        return self

    def with_created_by(self, value: str) -> ModelsChannelTopicResponse:
        self.created_by = value
        return self

    def with_description(self, value: str) -> ModelsChannelTopicResponse:
        self.description = value
        return self

    def with_is_joinable(self, value: bool) -> ModelsChannelTopicResponse:
        self.is_joinable = value
        return self

    def with_message_per_minutes(self, value: float) -> ModelsChannelTopicResponse:
        self.message_per_minutes = value
        return self

    def with_name(self, value: str) -> ModelsChannelTopicResponse:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ModelsChannelTopicResponse:
        self.namespace = value
        return self

    def with_shard_limit(self, value: int) -> ModelsChannelTopicResponse:
        self.shard_limit = value
        return self

    def with_shard_number(self, value: int) -> ModelsChannelTopicResponse:
        self.shard_number = value
        return self

    def with_topic_id(self, value: str) -> ModelsChannelTopicResponse:
        self.topic_id = value
        return self

    def with_total_member(self, value: int) -> ModelsChannelTopicResponse:
        self.total_member = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "created_by"):
            result["createdBy"] = str(self.created_by)
        elif include_empty:
            result["createdBy"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "is_joinable"):
            result["isJoinable"] = bool(self.is_joinable)
        elif include_empty:
            result["isJoinable"] = False
        if hasattr(self, "message_per_minutes"):
            result["messagePerMinutes"] = float(self.message_per_minutes)
        elif include_empty:
            result["messagePerMinutes"] = 0.0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "shard_limit"):
            result["shardLimit"] = int(self.shard_limit)
        elif include_empty:
            result["shardLimit"] = 0
        if hasattr(self, "shard_number"):
            result["shardNumber"] = int(self.shard_number)
        elif include_empty:
            result["shardNumber"] = 0
        if hasattr(self, "topic_id"):
            result["topicId"] = str(self.topic_id)
        elif include_empty:
            result["topicId"] = ""
        if hasattr(self, "total_member"):
            result["totalMember"] = int(self.total_member)
        elif include_empty:
            result["totalMember"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: int,
        created_by: str,
        description: str,
        is_joinable: bool,
        message_per_minutes: float,
        name: str,
        namespace: str,
        shard_limit: int,
        shard_number: int,
        topic_id: str,
        total_member: int,
        **kwargs,
    ) -> ModelsChannelTopicResponse:
        instance = cls()
        instance.created_at = created_at
        instance.created_by = created_by
        instance.description = description
        instance.is_joinable = is_joinable
        instance.message_per_minutes = message_per_minutes
        instance.name = name
        instance.namespace = namespace
        instance.shard_limit = shard_limit
        instance.shard_number = shard_number
        instance.topic_id = topic_id
        instance.total_member = total_member
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChannelTopicResponse:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "createdBy" in dict_ and dict_["createdBy"] is not None:
            instance.created_by = str(dict_["createdBy"])
        elif include_empty:
            instance.created_by = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "isJoinable" in dict_ and dict_["isJoinable"] is not None:
            instance.is_joinable = bool(dict_["isJoinable"])
        elif include_empty:
            instance.is_joinable = False
        if "messagePerMinutes" in dict_ and dict_["messagePerMinutes"] is not None:
            instance.message_per_minutes = float(dict_["messagePerMinutes"])
        elif include_empty:
            instance.message_per_minutes = 0.0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "shardLimit" in dict_ and dict_["shardLimit"] is not None:
            instance.shard_limit = int(dict_["shardLimit"])
        elif include_empty:
            instance.shard_limit = 0
        if "shardNumber" in dict_ and dict_["shardNumber"] is not None:
            instance.shard_number = int(dict_["shardNumber"])
        elif include_empty:
            instance.shard_number = 0
        if "topicId" in dict_ and dict_["topicId"] is not None:
            instance.topic_id = str(dict_["topicId"])
        elif include_empty:
            instance.topic_id = ""
        if "totalMember" in dict_ and dict_["totalMember"] is not None:
            instance.total_member = int(dict_["totalMember"])
        elif include_empty:
            instance.total_member = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChannelTopicResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChannelTopicResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsChannelTopicResponse,
        List[ModelsChannelTopicResponse],
        Dict[Any, ModelsChannelTopicResponse],
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
            "createdAt": "created_at",
            "createdBy": "created_by",
            "description": "description",
            "isJoinable": "is_joinable",
            "messagePerMinutes": "message_per_minutes",
            "name": "name",
            "namespace": "namespace",
            "shardLimit": "shard_limit",
            "shardNumber": "shard_number",
            "topicId": "topic_id",
            "totalMember": "total_member",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "createdBy": True,
            "description": True,
            "isJoinable": True,
            "messagePerMinutes": True,
            "name": True,
            "namespace": True,
            "shardLimit": True,
            "shardNumber": True,
            "topicId": True,
            "totalMember": True,
        }

    # endregion static methods
