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


class ApimodelsTicketObservabilityHistory(Model):
    """Apimodels ticket observability history (apimodels.TicketObservabilityHistory)

    Properties:
        action: (Action) REQUIRED str

        expired_at: (ExpiredAt) REQUIRED str

        id_: (ID) REQUIRED str

        party_id: (party_id) REQUIRED str

        payload: (Payload) REQUIRED Dict[str, Any]

        pod_name: (PodName) REQUIRED str

        tick_id: (TickID) REQUIRED int

        ticket_id: (ticket_id) REQUIRED str

        timestamp: (Timestamp) REQUIRED str
    """

    # region fields

    action: str  # REQUIRED
    expired_at: str  # REQUIRED
    id_: str  # REQUIRED
    party_id: str  # REQUIRED
    payload: Dict[str, Any]  # REQUIRED
    pod_name: str  # REQUIRED
    tick_id: int  # REQUIRED
    ticket_id: str  # REQUIRED
    timestamp: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ApimodelsTicketObservabilityHistory:
        self.action = value
        return self

    def with_expired_at(self, value: str) -> ApimodelsTicketObservabilityHistory:
        self.expired_at = value
        return self

    def with_id(self, value: str) -> ApimodelsTicketObservabilityHistory:
        self.id_ = value
        return self

    def with_party_id(self, value: str) -> ApimodelsTicketObservabilityHistory:
        self.party_id = value
        return self

    def with_payload(
        self, value: Dict[str, Any]
    ) -> ApimodelsTicketObservabilityHistory:
        self.payload = value
        return self

    def with_pod_name(self, value: str) -> ApimodelsTicketObservabilityHistory:
        self.pod_name = value
        return self

    def with_tick_id(self, value: int) -> ApimodelsTicketObservabilityHistory:
        self.tick_id = value
        return self

    def with_ticket_id(self, value: str) -> ApimodelsTicketObservabilityHistory:
        self.ticket_id = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsTicketObservabilityHistory:
        self.timestamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["Action"] = str(self.action)
        elif include_empty:
            result["Action"] = ""
        if hasattr(self, "expired_at"):
            result["ExpiredAt"] = str(self.expired_at)
        elif include_empty:
            result["ExpiredAt"] = ""
        if hasattr(self, "id_"):
            result["ID"] = str(self.id_)
        elif include_empty:
            result["ID"] = ""
        if hasattr(self, "party_id"):
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = ""
        if hasattr(self, "payload"):
            result["Payload"] = {str(k0): v0 for k0, v0 in self.payload.items()}
        elif include_empty:
            result["Payload"] = {}
        if hasattr(self, "pod_name"):
            result["PodName"] = str(self.pod_name)
        elif include_empty:
            result["PodName"] = ""
        if hasattr(self, "tick_id"):
            result["TickID"] = int(self.tick_id)
        elif include_empty:
            result["TickID"] = 0
        if hasattr(self, "ticket_id"):
            result["ticket_id"] = str(self.ticket_id)
        elif include_empty:
            result["ticket_id"] = ""
        if hasattr(self, "timestamp"):
            result["Timestamp"] = str(self.timestamp)
        elif include_empty:
            result["Timestamp"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: str,
        expired_at: str,
        id_: str,
        party_id: str,
        payload: Dict[str, Any],
        pod_name: str,
        tick_id: int,
        ticket_id: str,
        timestamp: str,
        **kwargs,
    ) -> ApimodelsTicketObservabilityHistory:
        instance = cls()
        instance.action = action
        instance.expired_at = expired_at
        instance.id_ = id_
        instance.party_id = party_id
        instance.payload = payload
        instance.pod_name = pod_name
        instance.tick_id = tick_id
        instance.ticket_id = ticket_id
        instance.timestamp = timestamp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsTicketObservabilityHistory:
        instance = cls()
        if not dict_:
            return instance
        if "Action" in dict_ and dict_["Action"] is not None:
            instance.action = str(dict_["Action"])
        elif include_empty:
            instance.action = ""
        if "ExpiredAt" in dict_ and dict_["ExpiredAt"] is not None:
            instance.expired_at = str(dict_["ExpiredAt"])
        elif include_empty:
            instance.expired_at = ""
        if "ID" in dict_ and dict_["ID"] is not None:
            instance.id_ = str(dict_["ID"])
        elif include_empty:
            instance.id_ = ""
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = ""
        if "Payload" in dict_ and dict_["Payload"] is not None:
            instance.payload = {str(k0): v0 for k0, v0 in dict_["Payload"].items()}
        elif include_empty:
            instance.payload = {}
        if "PodName" in dict_ and dict_["PodName"] is not None:
            instance.pod_name = str(dict_["PodName"])
        elif include_empty:
            instance.pod_name = ""
        if "TickID" in dict_ and dict_["TickID"] is not None:
            instance.tick_id = int(dict_["TickID"])
        elif include_empty:
            instance.tick_id = 0
        if "ticket_id" in dict_ and dict_["ticket_id"] is not None:
            instance.ticket_id = str(dict_["ticket_id"])
        elif include_empty:
            instance.ticket_id = ""
        if "Timestamp" in dict_ and dict_["Timestamp"] is not None:
            instance.timestamp = str(dict_["Timestamp"])
        elif include_empty:
            instance.timestamp = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsTicketObservabilityHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsTicketObservabilityHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsTicketObservabilityHistory,
        List[ApimodelsTicketObservabilityHistory],
        Dict[Any, ApimodelsTicketObservabilityHistory],
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
            "Action": "action",
            "ExpiredAt": "expired_at",
            "ID": "id_",
            "party_id": "party_id",
            "Payload": "payload",
            "PodName": "pod_name",
            "TickID": "tick_id",
            "ticket_id": "ticket_id",
            "Timestamp": "timestamp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Action": True,
            "ExpiredAt": True,
            "ID": True,
            "party_id": True,
            "Payload": True,
            "PodName": True,
            "TickID": True,
            "ticket_id": True,
            "Timestamp": True,
        }

    # endregion static methods
