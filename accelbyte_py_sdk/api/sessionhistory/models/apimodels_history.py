# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Session History Service

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

from ..models.models_game_session import ModelsGameSession


class ApimodelsHistory(Model):
    """Apimodels history (apimodels.History)

    Properties:
        event_name: (eventName) REQUIRED str

        payload: (payload) REQUIRED ModelsGameSession

        timestamp: (timestamp) REQUIRED str

        requester_client_id: (requesterClientID) OPTIONAL str

        requester_user_id: (requesterUserID) OPTIONAL str
    """

    # region fields

    event_name: str  # REQUIRED
    payload: ModelsGameSession  # REQUIRED
    timestamp: str  # REQUIRED
    requester_client_id: str  # OPTIONAL
    requester_user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_event_name(self, value: str) -> ApimodelsHistory:
        self.event_name = value
        return self

    def with_payload(self, value: ModelsGameSession) -> ApimodelsHistory:
        self.payload = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsHistory:
        self.timestamp = value
        return self

    def with_requester_client_id(self, value: str) -> ApimodelsHistory:
        self.requester_client_id = value
        return self

    def with_requester_user_id(self, value: str) -> ApimodelsHistory:
        self.requester_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_name"):
            result["eventName"] = str(self.event_name)
        elif include_empty:
            result["eventName"] = ""
        if hasattr(self, "payload"):
            result["payload"] = self.payload.to_dict(include_empty=include_empty)
        elif include_empty:
            result["payload"] = ModelsGameSession()
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        if hasattr(self, "requester_client_id"):
            result["requesterClientID"] = str(self.requester_client_id)
        elif include_empty:
            result["requesterClientID"] = ""
        if hasattr(self, "requester_user_id"):
            result["requesterUserID"] = str(self.requester_user_id)
        elif include_empty:
            result["requesterUserID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_name: str,
        payload: ModelsGameSession,
        timestamp: str,
        requester_client_id: Optional[str] = None,
        requester_user_id: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsHistory:
        instance = cls()
        instance.event_name = event_name
        instance.payload = payload
        instance.timestamp = timestamp
        if requester_client_id is not None:
            instance.requester_client_id = requester_client_id
        if requester_user_id is not None:
            instance.requester_user_id = requester_user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsHistory:
        instance = cls()
        if not dict_:
            return instance
        if "eventName" in dict_ and dict_["eventName"] is not None:
            instance.event_name = str(dict_["eventName"])
        elif include_empty:
            instance.event_name = ""
        if "payload" in dict_ and dict_["payload"] is not None:
            instance.payload = ModelsGameSession.create_from_dict(
                dict_["payload"], include_empty=include_empty
            )
        elif include_empty:
            instance.payload = ModelsGameSession()
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        if "requesterClientID" in dict_ and dict_["requesterClientID"] is not None:
            instance.requester_client_id = str(dict_["requesterClientID"])
        elif include_empty:
            instance.requester_client_id = ""
        if "requesterUserID" in dict_ and dict_["requesterUserID"] is not None:
            instance.requester_user_id = str(dict_["requesterUserID"])
        elif include_empty:
            instance.requester_user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ApimodelsHistory, List[ApimodelsHistory], Dict[Any, ApimodelsHistory]]:
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
            "eventName": "event_name",
            "payload": "payload",
            "timestamp": "timestamp",
            "requesterClientID": "requester_client_id",
            "requesterUserID": "requester_user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "eventName": True,
            "payload": True,
            "timestamp": True,
            "requesterClientID": False,
            "requesterUserID": False,
        }

    # endregion static methods
