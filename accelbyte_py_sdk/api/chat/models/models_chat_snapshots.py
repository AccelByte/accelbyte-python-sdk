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

from ..models.models_chat_snapshot_message import ModelsChatSnapshotMessage


class ModelsChatSnapshots(Model):
    """Models chat snapshots (models.ChatSnapshots)

    Properties:
        chat_id: (chatId) REQUIRED str

        created_at: (createdAt) REQUIRED int

        joined_topics: (joinedTopics) REQUIRED List[str]

        messages: (messages) REQUIRED List[ModelsChatSnapshotMessage]

        namespace: (namespace) REQUIRED str

        sender_id: (senderId) REQUIRED str

        ticket_id: (ticketId) REQUIRED str

        topic_id: (topicId) REQUIRED str
    """

    # region fields

    chat_id: str  # REQUIRED
    created_at: int  # REQUIRED
    joined_topics: List[str]  # REQUIRED
    messages: List[ModelsChatSnapshotMessage]  # REQUIRED
    namespace: str  # REQUIRED
    sender_id: str  # REQUIRED
    ticket_id: str  # REQUIRED
    topic_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_chat_id(self, value: str) -> ModelsChatSnapshots:
        self.chat_id = value
        return self

    def with_created_at(self, value: int) -> ModelsChatSnapshots:
        self.created_at = value
        return self

    def with_joined_topics(self, value: List[str]) -> ModelsChatSnapshots:
        self.joined_topics = value
        return self

    def with_messages(
        self, value: List[ModelsChatSnapshotMessage]
    ) -> ModelsChatSnapshots:
        self.messages = value
        return self

    def with_namespace(self, value: str) -> ModelsChatSnapshots:
        self.namespace = value
        return self

    def with_sender_id(self, value: str) -> ModelsChatSnapshots:
        self.sender_id = value
        return self

    def with_ticket_id(self, value: str) -> ModelsChatSnapshots:
        self.ticket_id = value
        return self

    def with_topic_id(self, value: str) -> ModelsChatSnapshots:
        self.topic_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "chat_id"):
            result["chatId"] = str(self.chat_id)
        elif include_empty:
            result["chatId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "joined_topics"):
            result["joinedTopics"] = [str(i0) for i0 in self.joined_topics]
        elif include_empty:
            result["joinedTopics"] = []
        if hasattr(self, "messages"):
            result["messages"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.messages
            ]
        elif include_empty:
            result["messages"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "sender_id"):
            result["senderId"] = str(self.sender_id)
        elif include_empty:
            result["senderId"] = ""
        if hasattr(self, "ticket_id"):
            result["ticketId"] = str(self.ticket_id)
        elif include_empty:
            result["ticketId"] = ""
        if hasattr(self, "topic_id"):
            result["topicId"] = str(self.topic_id)
        elif include_empty:
            result["topicId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        chat_id: str,
        created_at: int,
        joined_topics: List[str],
        messages: List[ModelsChatSnapshotMessage],
        namespace: str,
        sender_id: str,
        ticket_id: str,
        topic_id: str,
        **kwargs,
    ) -> ModelsChatSnapshots:
        instance = cls()
        instance.chat_id = chat_id
        instance.created_at = created_at
        instance.joined_topics = joined_topics
        instance.messages = messages
        instance.namespace = namespace
        instance.sender_id = sender_id
        instance.ticket_id = ticket_id
        instance.topic_id = topic_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChatSnapshots:
        instance = cls()
        if not dict_:
            return instance
        if "chatId" in dict_ and dict_["chatId"] is not None:
            instance.chat_id = str(dict_["chatId"])
        elif include_empty:
            instance.chat_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "joinedTopics" in dict_ and dict_["joinedTopics"] is not None:
            instance.joined_topics = [str(i0) for i0 in dict_["joinedTopics"]]
        elif include_empty:
            instance.joined_topics = []
        if "messages" in dict_ and dict_["messages"] is not None:
            instance.messages = [
                ModelsChatSnapshotMessage.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["messages"]
            ]
        elif include_empty:
            instance.messages = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "senderId" in dict_ and dict_["senderId"] is not None:
            instance.sender_id = str(dict_["senderId"])
        elif include_empty:
            instance.sender_id = ""
        if "ticketId" in dict_ and dict_["ticketId"] is not None:
            instance.ticket_id = str(dict_["ticketId"])
        elif include_empty:
            instance.ticket_id = ""
        if "topicId" in dict_ and dict_["topicId"] is not None:
            instance.topic_id = str(dict_["topicId"])
        elif include_empty:
            instance.topic_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChatSnapshots]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChatSnapshots]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsChatSnapshots, List[ModelsChatSnapshots], Dict[Any, ModelsChatSnapshots]
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
            "chatId": "chat_id",
            "createdAt": "created_at",
            "joinedTopics": "joined_topics",
            "messages": "messages",
            "namespace": "namespace",
            "senderId": "sender_id",
            "ticketId": "ticket_id",
            "topicId": "topic_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "chatId": True,
            "createdAt": True,
            "joinedTopics": True,
            "messages": True,
            "namespace": True,
            "senderId": True,
            "ticketId": True,
            "topicId": True,
        }

    # endregion static methods
