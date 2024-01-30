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


class ModelsChatSnapshotMessage(Model):
    """Models chat snapshot message (models.ChatSnapshotMessage)

    Properties:
        chat_id: (chatId) REQUIRED str

        created_at: (createdAt) REQUIRED int

        message: (message) REQUIRED str

        sender_id: (senderId) REQUIRED str
    """

    # region fields

    chat_id: str  # REQUIRED
    created_at: int  # REQUIRED
    message: str  # REQUIRED
    sender_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_chat_id(self, value: str) -> ModelsChatSnapshotMessage:
        self.chat_id = value
        return self

    def with_created_at(self, value: int) -> ModelsChatSnapshotMessage:
        self.created_at = value
        return self

    def with_message(self, value: str) -> ModelsChatSnapshotMessage:
        self.message = value
        return self

    def with_sender_id(self, value: str) -> ModelsChatSnapshotMessage:
        self.sender_id = value
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
        if hasattr(self, "message"):
            result["message"] = str(self.message)
        elif include_empty:
            result["message"] = ""
        if hasattr(self, "sender_id"):
            result["senderId"] = str(self.sender_id)
        elif include_empty:
            result["senderId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, chat_id: str, created_at: int, message: str, sender_id: str, **kwargs
    ) -> ModelsChatSnapshotMessage:
        instance = cls()
        instance.chat_id = chat_id
        instance.created_at = created_at
        instance.message = message
        instance.sender_id = sender_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChatSnapshotMessage:
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
        if "message" in dict_ and dict_["message"] is not None:
            instance.message = str(dict_["message"])
        elif include_empty:
            instance.message = ""
        if "senderId" in dict_ and dict_["senderId"] is not None:
            instance.sender_id = str(dict_["senderId"])
        elif include_empty:
            instance.sender_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChatSnapshotMessage]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChatSnapshotMessage]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsChatSnapshotMessage,
        List[ModelsChatSnapshotMessage],
        Dict[Any, ModelsChatSnapshotMessage],
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
            "message": "message",
            "senderId": "sender_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "chatId": True,
            "createdAt": True,
            "message": True,
            "senderId": True,
        }

    # endregion static methods
