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


class TopicTypeEnum(StrEnum):
    GROUP = "GROUP"
    PERSONAL = "PERSONAL"


class ModelsMessageRequest(Model):
    """Models message request (models.MessageRequest)

    Properties:
        message: (message) REQUIRED str

        timestamp: (timestamp) OPTIONAL int

        topic_id: (topicId) OPTIONAL str

        topic_type: (topicType) OPTIONAL Union[str, TopicTypeEnum]

        user_id: (userId) OPTIONAL str
    """

    # region fields

    message: str  # REQUIRED
    timestamp: int  # OPTIONAL
    topic_id: str  # OPTIONAL
    topic_type: Union[str, TopicTypeEnum]  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_message(self, value: str) -> ModelsMessageRequest:
        self.message = value
        return self

    def with_timestamp(self, value: int) -> ModelsMessageRequest:
        self.timestamp = value
        return self

    def with_topic_id(self, value: str) -> ModelsMessageRequest:
        self.topic_id = value
        return self

    def with_topic_type(self, value: Union[str, TopicTypeEnum]) -> ModelsMessageRequest:
        self.topic_type = value
        return self

    def with_user_id(self, value: str) -> ModelsMessageRequest:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = int(self.timestamp)
        elif include_empty:
            result["timestamp"] = 0
        if hasattr(self, "topic_id"):
            result["topicId"] = str(self.topic_id)
        elif include_empty:
            result["topicId"] = ""
        if hasattr(self, "topic_type"):
            result["topicType"] = str(self.topic_type)
        elif include_empty:
            result["topicType"] = Union[str, TopicTypeEnum]()
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
        message: str,
        timestamp: Optional[int] = None,
        topic_id: Optional[str] = None,
        topic_type: Optional[Union[str, TopicTypeEnum]] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> ModelsMessageRequest:
        instance = cls()
        instance.message = message
        if timestamp is not None:
            instance.timestamp = timestamp
        if topic_id is not None:
            instance.topic_id = topic_id
        if topic_type is not None:
            instance.topic_type = topic_type
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsMessageRequest:
        instance = cls()
        if not dict_:
            return instance
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = int(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = 0
        if "topicId" in dict_ and dict_["topicId"] is not None:
            instance.topic_id = str(dict_["topicId"])
        elif include_empty:
            instance.topic_id = ""
        if "topicType" in dict_ and dict_["topicType"] is not None:
            instance.topic_type = str(dict_["topicType"])
        elif include_empty:
            instance.topic_type = Union[str, TopicTypeEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsMessageRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsMessageRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsMessageRequest,
        List[ModelsMessageRequest],
        Dict[Any, ModelsMessageRequest],
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
            "message": "message",
            "timestamp": "timestamp",
            "topicId": "topic_id",
            "topicType": "topic_type",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "message": True,
            "timestamp": False,
            "topicId": False,
            "topicType": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "topicType": ["GROUP", "PERSONAL"],
        }

    # endregion static methods
