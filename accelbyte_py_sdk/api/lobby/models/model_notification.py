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


class ModelNotification(Model):
    """Model notification (model.Notification)

    Properties:
        type_: (type) REQUIRED str

        from_: (from) OPTIONAL str

        payload: (payload) OPTIONAL str

        sent_at_ms: (sentAtMs) OPTIONAL int

        to: (to) OPTIONAL str

        topic: (topic) OPTIONAL str
    """

    # region fields

    type_: str  # REQUIRED
    from_: str  # OPTIONAL
    payload: str  # OPTIONAL
    sent_at_ms: int  # OPTIONAL
    to: str  # OPTIONAL
    topic: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_type(self, value: str) -> ModelNotification:
        self.type_ = value
        return self

    def with_from(self, value: str) -> ModelNotification:
        self.from_ = value
        return self

    def with_payload(self, value: str) -> ModelNotification:
        self.payload = value
        return self

    def with_sent_at_ms(self, value: int) -> ModelNotification:
        self.sent_at_ms = value
        return self

    def with_to(self, value: str) -> ModelNotification:
        self.to = value
        return self

    def with_topic(self, value: str) -> ModelNotification:
        self.topic = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "from_"):
            result["from"] = str(self.from_)
        elif include_empty:
            result["from"] = ""
        if hasattr(self, "payload"):
            result["payload"] = str(self.payload)
        elif include_empty:
            result["payload"] = ""
        if hasattr(self, "sent_at_ms"):
            result["sentAtMs"] = int(self.sent_at_ms)
        elif include_empty:
            result["sentAtMs"] = 0
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
        type_: str,
        from_: Optional[str] = None,
        payload: Optional[str] = None,
        sent_at_ms: Optional[int] = None,
        to: Optional[str] = None,
        topic: Optional[str] = None,
        **kwargs,
    ) -> ModelNotification:
        instance = cls()
        instance.type_ = type_
        if from_ is not None:
            instance.from_ = from_
        if payload is not None:
            instance.payload = payload
        if sent_at_ms is not None:
            instance.sent_at_ms = sent_at_ms
        if to is not None:
            instance.to = to
        if topic is not None:
            instance.topic = topic
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelNotification:
        instance = cls()
        if not dict_:
            return instance
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if "from" in dict_ and dict_["from"] is not None:
            instance.from_ = str(dict_["from"])
        elif include_empty:
            instance.from_ = ""
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = str(dict_["payload"])
        elif include_empty:
            instance.payload = ""
        if "sentAtMs" in dict_ and dict_["sentAtMs"] is not None:
            instance.sent_at_ms = int(dict_["sentAtMs"])
        elif include_empty:
            instance.sent_at_ms = 0
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
    ) -> Dict[str, ModelNotification]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelNotification]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelNotification, List[ModelNotification], Dict[Any, ModelNotification]
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
            "type": "type_",
            "from": "from_",
            "payload": "payload",
            "sentAtMs": "sent_at_ms",
            "to": "to",
            "topic": "topic",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "type": True,
            "from": False,
            "payload": False,
            "sentAtMs": False,
            "to": False,
            "topic": False,
        }

    # endregion static methods
