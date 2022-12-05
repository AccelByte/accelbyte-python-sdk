# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# Analytics Game Telemetry (1.14.1)

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


class TelemetryBody(Model):
    """Telemetry body (TelemetryBody)

    Properties:
        event_name: (EventName) REQUIRED str

        event_namespace: (EventNamespace) REQUIRED str

        payload: (Payload) REQUIRED Dict[str, Any]

        event_id: (EventId) OPTIONAL str

        event_timestamp: (EventTimestamp) OPTIONAL str
    """

    # region fields

    event_name: str  # REQUIRED
    event_namespace: str  # REQUIRED
    payload: Dict[str, Any]  # REQUIRED
    event_id: str  # OPTIONAL
    event_timestamp: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_event_name(self, value: str) -> TelemetryBody:
        self.event_name = value
        return self

    def with_event_namespace(self, value: str) -> TelemetryBody:
        self.event_namespace = value
        return self

    def with_payload(self, value: Dict[str, Any]) -> TelemetryBody:
        self.payload = value
        return self

    def with_event_id(self, value: str) -> TelemetryBody:
        self.event_id = value
        return self

    def with_event_timestamp(self, value: str) -> TelemetryBody:
        self.event_timestamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_name"):
            result["EventName"] = str(self.event_name)
        elif include_empty:
            result["EventName"] = ""
        if hasattr(self, "event_namespace"):
            result["EventNamespace"] = str(self.event_namespace)
        elif include_empty:
            result["EventNamespace"] = ""
        if hasattr(self, "payload"):
            result["Payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["Payload"] = {}
        if hasattr(self, "event_id"):
            result["EventId"] = str(self.event_id)
        elif include_empty:
            result["EventId"] = ""
        if hasattr(self, "event_timestamp"):
            result["EventTimestamp"] = str(self.event_timestamp)
        elif include_empty:
            result["EventTimestamp"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_name: str,
        event_namespace: str,
        payload: Dict[str, Any],
        event_id: Optional[str] = None,
        event_timestamp: Optional[str] = None,
    ) -> TelemetryBody:
        instance = cls()
        instance.event_name = event_name
        instance.event_namespace = event_namespace
        instance.payload = payload
        if event_id is not None:
            instance.event_id = event_id
        if event_timestamp is not None:
            instance.event_timestamp = event_timestamp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TelemetryBody:
        instance = cls()
        if not dict_:
            return instance
        if "EventName" in dict_ and dict_["EventName"] is not None:
            instance.event_name = str(dict_["EventName"])
        elif include_empty:
            instance.event_name = ""
        if "EventNamespace" in dict_ and dict_["EventNamespace"] is not None:
            instance.event_namespace = str(dict_["EventNamespace"])
        elif include_empty:
            instance.event_namespace = ""
        if "Payload" in dict_ and dict_["Payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["Payload"].items()}
        elif include_empty:
            instance.payload = {}
        if "EventId" in dict_ and dict_["EventId"] is not None:
            instance.event_id = str(dict_["EventId"])
        elif include_empty:
            instance.event_id = ""
        if "EventTimestamp" in dict_ and dict_["EventTimestamp"] is not None:
            instance.event_timestamp = str(dict_["EventTimestamp"])
        elif include_empty:
            instance.event_timestamp = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TelemetryBody]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TelemetryBody]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[TelemetryBody, List[TelemetryBody], Dict[Any, TelemetryBody]]:
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
            "EventName": "event_name",
            "EventNamespace": "event_namespace",
            "Payload": "payload",
            "EventId": "event_id",
            "EventTimestamp": "event_timestamp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "EventName": True,
            "EventNamespace": True,
            "Payload": True,
            "EventId": False,
            "EventTimestamp": False,
        }

    # endregion static methods
