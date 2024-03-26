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


class ModelsChatMessageResponse(Model):
    """Models chat message response (models.ChatMessageResponse)

    Properties:
        from_: (from) REQUIRED str

        id_: (id) REQUIRED str

        message: (message) REQUIRED str

        topic_id: (topicId) REQUIRED str

        read_at: (readAt) OPTIONAL int

        received_at: (receivedAt) OPTIONAL int
    """

    # region fields

    from_: str  # REQUIRED
    id_: str  # REQUIRED
    message: str  # REQUIRED
    topic_id: str  # REQUIRED
    read_at: int  # OPTIONAL
    received_at: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_from(self, value: str) -> ModelsChatMessageResponse:
        self.from_ = value
        return self

    def with_id(self, value: str) -> ModelsChatMessageResponse:
        self.id_ = value
        return self

    def with_message(self, value: str) -> ModelsChatMessageResponse:
        self.message = value
        return self

    def with_topic_id(self, value: str) -> ModelsChatMessageResponse:
        self.topic_id = value
        return self

    def with_read_at(self, value: int) -> ModelsChatMessageResponse:
        self.read_at = value
        return self

    def with_received_at(self, value: int) -> ModelsChatMessageResponse:
        self.received_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "from_"):
            result["from"] = str(self.from_)
        elif include_empty:
            result["from"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "topic_id"):
            result["topicId"] = str(self.topic_id)
        elif include_empty:
            result["topicId"] = ""
        if hasattr(self, "read_at"):
            result["readAt"] = int(self.read_at)
        elif include_empty:
            result["readAt"] = 0
        if hasattr(self, "received_at"):
            result["receivedAt"] = int(self.received_at)
        elif include_empty:
            result["receivedAt"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        from_: str,
        id_: str,
        message: str,
        topic_id: str,
        read_at: Optional[int] = None,
        received_at: Optional[int] = None,
        **kwargs,
    ) -> ModelsChatMessageResponse:
        instance = cls()
        instance.from_ = from_
        instance.id_ = id_
        instance.message = message
        instance.topic_id = topic_id
        if read_at is not None:
            instance.read_at = read_at
        if received_at is not None:
            instance.received_at = received_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChatMessageResponse:
        instance = cls()
        if not dict_:
            return instance
        if "from" in dict_ and dict_["from"] is not None:
            instance.from_ = str(dict_["from"])
        elif include_empty:
            instance.from_ = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "topicId" in dict_ and dict_["topicId"] is not None:
            instance.topic_id = str(dict_["topicId"])
        elif include_empty:
            instance.topic_id = ""
        if "readAt" in dict_ and dict_["readAt"] is not None:
            instance.read_at = int(dict_["readAt"])
        elif include_empty:
            instance.read_at = 0
        if "receivedAt" in dict_ and dict_["receivedAt"] is not None:
            instance.received_at = int(dict_["receivedAt"])
        elif include_empty:
            instance.received_at = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChatMessageResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChatMessageResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsChatMessageResponse,
        List[ModelsChatMessageResponse],
        Dict[Any, ModelsChatMessageResponse],
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
            "from": "from_",
            "id": "id_",
            "message": "message",
            "topicId": "topic_id",
            "readAt": "read_at",
            "receivedAt": "received_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "from": True,
            "id": True,
            "message": True,
            "topicId": True,
            "readAt": False,
            "receivedAt": False,
        }

    # endregion static methods
