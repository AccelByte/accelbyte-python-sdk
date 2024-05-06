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


class ModelNotificationResponse(Model):
    """Model notification response (model.NotificationResponse)

    Properties:
        sequence_id: (sequenceID) REQUIRED int

        sequence_number: (sequenceNumber) REQUIRED int

        type_: (type) REQUIRED str

        from_: (from) OPTIONAL str

        id_: (id) OPTIONAL str

        lobby_session_id: (lobbySessionID) OPTIONAL str

        login_type: (loginType) OPTIONAL str

        payload: (payload) OPTIONAL str

        reconnect_from_code: (reconnectFromCode) OPTIONAL int

        sent_at: (sentAt) OPTIONAL str

        to: (to) OPTIONAL str

        topic: (topic) OPTIONAL str
    """

    # region fields

    sequence_id: int  # REQUIRED
    sequence_number: int  # REQUIRED
    type_: str  # REQUIRED
    from_: str  # OPTIONAL
    id_: str  # OPTIONAL
    lobby_session_id: str  # OPTIONAL
    login_type: str  # OPTIONAL
    payload: str  # OPTIONAL
    reconnect_from_code: int  # OPTIONAL
    sent_at: str  # OPTIONAL
    to: str  # OPTIONAL
    topic: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_sequence_id(self, value: int) -> ModelNotificationResponse:
        self.sequence_id = value
        return self

    def with_sequence_number(self, value: int) -> ModelNotificationResponse:
        self.sequence_number = value
        return self

    def with_type(self, value: str) -> ModelNotificationResponse:
        self.type_ = value
        return self

    def with_from(self, value: str) -> ModelNotificationResponse:
        self.from_ = value
        return self

    def with_id(self, value: str) -> ModelNotificationResponse:
        self.id_ = value
        return self

    def with_lobby_session_id(self, value: str) -> ModelNotificationResponse:
        self.lobby_session_id = value
        return self

    def with_login_type(self, value: str) -> ModelNotificationResponse:
        self.login_type = value
        return self

    def with_payload(self, value: str) -> ModelNotificationResponse:
        self.payload = value
        return self

    def with_reconnect_from_code(self, value: int) -> ModelNotificationResponse:
        self.reconnect_from_code = value
        return self

    def with_sent_at(self, value: str) -> ModelNotificationResponse:
        self.sent_at = value
        return self

    def with_to(self, value: str) -> ModelNotificationResponse:
        self.to = value
        return self

    def with_topic(self, value: str) -> ModelNotificationResponse:
        self.topic = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "sequence_id"):
            result["sequenceID"] = int(self.sequence_id)
        elif include_empty:
            result["sequenceID"] = 0
        if hasattr(self, "sequence_number"):
            result["sequenceNumber"] = int(self.sequence_number)
        elif include_empty:
            result["sequenceNumber"] = 0
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "from_"):
            result["from"] = str(self.from_)
        elif include_empty:
            result["from"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "lobby_session_id"):
            result["lobbySessionID"] = str(self.lobby_session_id)
        elif include_empty:
            result["lobbySessionID"] = ""
        if hasattr(self, "login_type"):
            result["loginType"] = str(self.login_type)
        elif include_empty:
            result["loginType"] = ""
        if hasattr(self, "payload"):
            result["payload"] = str(self.payload)
        elif include_empty:
            result["payload"] = ""
        if hasattr(self, "reconnect_from_code"):
            result["reconnectFromCode"] = int(self.reconnect_from_code)
        elif include_empty:
            result["reconnectFromCode"] = 0
        if hasattr(self, "sent_at"):
            result["sentAt"] = str(self.sent_at)
        elif include_empty:
            result["sentAt"] = ""
        if hasattr(self, "to"):
            result["to"] = str(self.to)
        elif include_empty:
            result["to"] = ""
        if hasattr(self, "topic"):
            result["topic"] = str(self.topic)
        elif include_empty:
            result["topic"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        sequence_id: int,
        sequence_number: int,
        type_: str,
        from_: Optional[str] = None,
        id_: Optional[str] = None,
        lobby_session_id: Optional[str] = None,
        login_type: Optional[str] = None,
        payload: Optional[str] = None,
        reconnect_from_code: Optional[int] = None,
        sent_at: Optional[str] = None,
        to: Optional[str] = None,
        topic: Optional[str] = None,
        **kwargs,
    ) -> ModelNotificationResponse:
        instance = cls()
        instance.sequence_id = sequence_id
        instance.sequence_number = sequence_number
        instance.type_ = type_
        if from_ is not None:
            instance.from_ = from_
        if id_ is not None:
            instance.id_ = id_
        if lobby_session_id is not None:
            instance.lobby_session_id = lobby_session_id
        if login_type is not None:
            instance.login_type = login_type
        if payload is not None:
            instance.payload = payload
        if reconnect_from_code is not None:
            instance.reconnect_from_code = reconnect_from_code
        if sent_at is not None:
            instance.sent_at = sent_at
        if to is not None:
            instance.to = to
        if topic is not None:
            instance.topic = topic
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelNotificationResponse:
        instance = cls()
        if not dict_:
            return instance
        if "sequenceID" in dict_ and dict_["sequenceID"] is not None:
            instance.sequence_id = int(dict_["sequenceID"])
        elif include_empty:
            instance.sequence_id = 0
        if "sequenceNumber" in dict_ and dict_["sequenceNumber"] is not None:
            instance.sequence_number = int(dict_["sequenceNumber"])
        elif include_empty:
            instance.sequence_number = 0
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "from" in dict_ and dict_["from"] is not None:
            instance.from_ = str(dict_["from"])
        elif include_empty:
            instance.from_ = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "lobbySessionID" in dict_ and dict_["lobbySessionID"] is not None:
            instance.lobby_session_id = str(dict_["lobbySessionID"])
        elif include_empty:
            instance.lobby_session_id = ""
        if "loginType" in dict_ and dict_["loginType"] is not None:
            instance.login_type = str(dict_["loginType"])
        elif include_empty:
            instance.login_type = ""
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = str(dict_["payload"])
        elif include_empty:
            instance.payload = ""
        if "reconnectFromCode" in dict_ and dict_["reconnectFromCode"] is not None:
            instance.reconnect_from_code = int(dict_["reconnectFromCode"])
        elif include_empty:
            instance.reconnect_from_code = 0
        if "sentAt" in dict_ and dict_["sentAt"] is not None:
            instance.sent_at = str(dict_["sentAt"])
        elif include_empty:
            instance.sent_at = ""
        if "to" in dict_ and dict_["to"] is not None:
            instance.to = str(dict_["to"])
        elif include_empty:
            instance.to = ""
        if "topic" in dict_ and dict_["topic"] is not None:
            instance.topic = str(dict_["topic"])
        elif include_empty:
            instance.topic = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelNotificationResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelNotificationResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelNotificationResponse,
        List[ModelNotificationResponse],
        Dict[Any, ModelNotificationResponse],
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
            "sequenceID": "sequence_id",
            "sequenceNumber": "sequence_number",
            "type": "type_",
            "from": "from_",
            "id": "id_",
            "lobbySessionID": "lobby_session_id",
            "loginType": "login_type",
            "payload": "payload",
            "reconnectFromCode": "reconnect_from_code",
            "sentAt": "sent_at",
            "to": "to",
            "topic": "topic",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "sequenceID": True,
            "sequenceNumber": True,
            "type": True,
            "from": False,
            "id": False,
            "lobbySessionID": False,
            "loginType": False,
            "payload": False,
            "reconnectFromCode": False,
            "sentAt": False,
            "to": False,
            "topic": False,
        }

    # endregion static methods
