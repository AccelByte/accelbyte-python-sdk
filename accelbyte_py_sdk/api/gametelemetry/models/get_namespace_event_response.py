# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Analytics Game Telemetry

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


class GetNamespaceEventResponse(Model):
    """Get namespace event response (GetNamespaceEventResponse)

    Properties:
        event_id: (EventId) REQUIRED str

        event_name: (EventName) REQUIRED str

        event_namespace: (EventNamespace) REQUIRED str

        event_time_stamp: (EventTimeStamp) REQUIRED str

        flight_id: (FlightId) REQUIRED str

        user_id: (UserId) REQUIRED str

        user_namespace: (UserNamespace) REQUIRED str

        payload: (Payload) OPTIONAL Dict[str, Any]
    """

    # region fields

    event_id: str  # REQUIRED
    event_name: str  # REQUIRED
    event_namespace: str  # REQUIRED
    event_time_stamp: str  # REQUIRED
    flight_id: str  # REQUIRED
    user_id: str  # REQUIRED
    user_namespace: str  # REQUIRED
    payload: Dict[str, Any]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_event_id(self, value: str) -> GetNamespaceEventResponse:
        self.event_id = value
        return self

    def with_event_name(self, value: str) -> GetNamespaceEventResponse:
        self.event_name = value
        return self

    def with_event_namespace(self, value: str) -> GetNamespaceEventResponse:
        self.event_namespace = value
        return self

    def with_event_time_stamp(self, value: str) -> GetNamespaceEventResponse:
        self.event_time_stamp = value
        return self

    def with_flight_id(self, value: str) -> GetNamespaceEventResponse:
        self.flight_id = value
        return self

    def with_user_id(self, value: str) -> GetNamespaceEventResponse:
        self.user_id = value
        return self

    def with_user_namespace(self, value: str) -> GetNamespaceEventResponse:
        self.user_namespace = value
        return self

    def with_payload(self, value: Dict[str, Any]) -> GetNamespaceEventResponse:
        self.payload = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_id"):
            result["EventId"] = str(self.event_id)
        elif include_empty:
            result["EventId"] = ""
        if hasattr(self, "event_name"):
            result["EventName"] = str(self.event_name)
        elif include_empty:
            result["EventName"] = ""
        if hasattr(self, "event_namespace"):
            result["EventNamespace"] = str(self.event_namespace)
        elif include_empty:
            result["EventNamespace"] = ""
        if hasattr(self, "event_time_stamp"):
            result["EventTimeStamp"] = str(self.event_time_stamp)
        elif include_empty:
            result["EventTimeStamp"] = ""
        if hasattr(self, "flight_id"):
            result["FlightId"] = str(self.flight_id)
        elif include_empty:
            result["FlightId"] = ""
        if hasattr(self, "user_id"):
            result["UserId"] = str(self.user_id)
        elif include_empty:
            result["UserId"] = ""
        if hasattr(self, "user_namespace"):
            result["UserNamespace"] = str(self.user_namespace)
        elif include_empty:
            result["UserNamespace"] = ""
        if hasattr(self, "payload"):
            result["Payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["Payload"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_id: str,
        event_name: str,
        event_namespace: str,
        event_time_stamp: str,
        flight_id: str,
        user_id: str,
        user_namespace: str,
        payload: Optional[Dict[str, Any]] = None,
        **kwargs,
    ) -> GetNamespaceEventResponse:
        instance = cls()
        instance.event_id = event_id
        instance.event_name = event_name
        instance.event_namespace = event_namespace
        instance.event_time_stamp = event_time_stamp
        instance.flight_id = flight_id
        instance.user_id = user_id
        instance.user_namespace = user_namespace
        if payload is not None:
            instance.payload = payload
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetNamespaceEventResponse:
        instance = cls()
        if not dict_:
            return instance
        if "EventId" in dict_ and dict_["EventId"] is not None:
            instance.event_id = str(dict_["EventId"])
        elif include_empty:
            instance.event_id = ""
        if "EventName" in dict_ and dict_["EventName"] is not None:
            instance.event_name = str(dict_["EventName"])
        elif include_empty:
            instance.event_name = ""
        if "EventNamespace" in dict_ and dict_["EventNamespace"] is not None:
            instance.event_namespace = str(dict_["EventNamespace"])
        elif include_empty:
            instance.event_namespace = ""
        if "EventTimeStamp" in dict_ and dict_["EventTimeStamp"] is not None:
            instance.event_time_stamp = str(dict_["EventTimeStamp"])
        elif include_empty:
            instance.event_time_stamp = ""
        if "FlightId" in dict_ and dict_["FlightId"] is not None:
            instance.flight_id = str(dict_["FlightId"])
        elif include_empty:
            instance.flight_id = ""
        if "UserId" in dict_ and dict_["UserId"] is not None:
            instance.user_id = str(dict_["UserId"])
        elif include_empty:
            instance.user_id = ""
        if "UserNamespace" in dict_ and dict_["UserNamespace"] is not None:
            instance.user_namespace = str(dict_["UserNamespace"])
        elif include_empty:
            instance.user_namespace = ""
        if "Payload" in dict_ and dict_["Payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["Payload"].items()}
        elif include_empty:
            instance.payload = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GetNamespaceEventResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GetNamespaceEventResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        GetNamespaceEventResponse,
        List[GetNamespaceEventResponse],
        Dict[Any, GetNamespaceEventResponse],
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
            "EventId": "event_id",
            "EventName": "event_name",
            "EventNamespace": "event_namespace",
            "EventTimeStamp": "event_time_stamp",
            "FlightId": "flight_id",
            "UserId": "user_id",
            "UserNamespace": "user_namespace",
            "Payload": "payload",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "EventId": True,
            "EventName": True,
            "EventNamespace": True,
            "EventTimeStamp": True,
            "FlightId": True,
            "UserId": True,
            "UserNamespace": True,
            "Payload": False,
        }

    # endregion static methods
