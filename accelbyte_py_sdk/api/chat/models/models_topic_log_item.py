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
from ....core import StrEnum


class TypeEnum(StrEnum):
    TOPIC_CREATE = "TOPIC_CREATE"
    TOPIC_DELETE = "TOPIC_DELETE"
    TOPIC_JOIN = "TOPIC_JOIN"
    TOPIC_LEAVE = "TOPIC_LEAVE"


class ModelsTopicLogItem(Model):
    """Models topic log item (models.TopicLogItem)

    Properties:
        created_at: (createdAt) REQUIRED int

        id_: (id) REQUIRED str

        message: (message) REQUIRED str

        sender_id: (senderId) REQUIRED str

        topic_id: (topicId) REQUIRED str

        type_: (type) REQUIRED Union[str, TypeEnum]

        user_id: (userId) REQUIRED str
    """

    # region fields

    created_at: int  # REQUIRED
    id_: str  # REQUIRED
    message: str  # REQUIRED
    sender_id: str  # REQUIRED
    topic_id: str  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    user_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: int) -> ModelsTopicLogItem:
        self.created_at = value
        return self

    def with_id(self, value: str) -> ModelsTopicLogItem:
        self.id_ = value
        return self

    def with_message(self, value: str) -> ModelsTopicLogItem:
        self.message = value
        return self

    def with_sender_id(self, value: str) -> ModelsTopicLogItem:
        self.sender_id = value
        return self

    def with_topic_id(self, value: str) -> ModelsTopicLogItem:
        self.topic_id = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> ModelsTopicLogItem:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> ModelsTopicLogItem:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = int(self.created_at)
        elif include_empty:
            result["createdAt"] = 0
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "sender_id"):
            result["senderId"] = str(self.sender_id)
        elif include_empty:
            result["senderId"] = ""
        if hasattr(self, "topic_id"):
            result["topicId"] = str(self.topic_id)
        elif include_empty:
            result["topicId"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: int,
        id_: str,
        message: str,
        sender_id: str,
        topic_id: str,
        type_: Union[str, TypeEnum],
        user_id: str,
        **kwargs,
    ) -> ModelsTopicLogItem:
        instance = cls()
        instance.created_at = created_at
        instance.id_ = id_
        instance.message = message
        instance.sender_id = sender_id
        instance.topic_id = topic_id
        instance.type_ = type_
        instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsTopicLogItem:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = int(dict_["createdAt"])
        elif include_empty:
            instance.created_at = 0
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "senderId" in dict_ and dict_["senderId"] is not None:
            instance.sender_id = str(dict_["senderId"])
        elif include_empty:
            instance.sender_id = ""
        if "topicId" in dict_ and dict_["topicId"] is not None:
            instance.topic_id = str(dict_["topicId"])
        elif include_empty:
            instance.topic_id = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsTopicLogItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTopicLogItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsTopicLogItem, List[ModelsTopicLogItem], Dict[Any, ModelsTopicLogItem]
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
            "id": "id_",
            "message": "message",
            "senderId": "sender_id",
            "topicId": "topic_id",
            "type": "type_",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "id": True,
            "message": True,
            "senderId": True,
            "topicId": True,
            "type": True,
            "userId": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "type": ["TOPIC_CREATE", "TOPIC_DELETE", "TOPIC_JOIN", "TOPIC_LEAVE"],
        }

    # endregion static methods
