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


class ApimodelsXRayTicketResult(Model):
    """Apimodels X ray ticket result (apimodels.XRayTicketResult)

    Properties:
        id_: (id) REQUIRED str

        matchpool: (matchpool) REQUIRED str

        pod_name: (podName) REQUIRED str

        tick_id: (tickId) REQUIRED str

        ticket_id: (ticketId) REQUIRED str

        ticket_status: (ticketStatus) REQUIRED str

        timestamp: (timestamp) REQUIRED str
    """

    # region fields

    id_: str  # REQUIRED
    matchpool: str  # REQUIRED
    pod_name: str  # REQUIRED
    tick_id: str  # REQUIRED
    ticket_id: str  # REQUIRED
    ticket_status: str  # REQUIRED
    timestamp: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ApimodelsXRayTicketResult:
        self.id_ = value
        return self

    def with_matchpool(self, value: str) -> ApimodelsXRayTicketResult:
        self.matchpool = value
        return self

    def with_pod_name(self, value: str) -> ApimodelsXRayTicketResult:
        self.pod_name = value
        return self

    def with_tick_id(self, value: str) -> ApimodelsXRayTicketResult:
        self.tick_id = value
        return self

    def with_ticket_id(self, value: str) -> ApimodelsXRayTicketResult:
        self.ticket_id = value
        return self

    def with_ticket_status(self, value: str) -> ApimodelsXRayTicketResult:
        self.ticket_status = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsXRayTicketResult:
        self.timestamp = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "matchpool"):
            result["matchpool"] = str(self.matchpool)
        elif include_empty:
            result["matchpool"] = ""
        if hasattr(self, "pod_name"):
            result["podName"] = str(self.pod_name)
        elif include_empty:
            result["podName"] = ""
        if hasattr(self, "tick_id"):
            result["tickId"] = str(self.tick_id)
        elif include_empty:
            result["tickId"] = ""
        if hasattr(self, "ticket_id"):
            result["ticketId"] = str(self.ticket_id)
        elif include_empty:
            result["ticketId"] = ""
        if hasattr(self, "ticket_status"):
            result["ticketStatus"] = str(self.ticket_status)
        elif include_empty:
            result["ticketStatus"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        matchpool: str,
        pod_name: str,
        tick_id: str,
        ticket_id: str,
        ticket_status: str,
        timestamp: str,
        **kwargs,
    ) -> ApimodelsXRayTicketResult:
        instance = cls()
        instance.id_ = id_
        instance.matchpool = matchpool
        instance.pod_name = pod_name
        instance.tick_id = tick_id
        instance.ticket_id = ticket_id
        instance.ticket_status = ticket_status
        instance.timestamp = timestamp
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsXRayTicketResult:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "matchpool" in dict_ and dict_["matchpool"] is not None:
            instance.matchpool = str(dict_["matchpool"])
        elif include_empty:
            instance.matchpool = ""
        if "podName" in dict_ and dict_["podName"] is not None:
            instance.pod_name = str(dict_["podName"])
        elif include_empty:
            instance.pod_name = ""
        if "tickId" in dict_ and dict_["tickId"] is not None:
            instance.tick_id = str(dict_["tickId"])
        elif include_empty:
            instance.tick_id = ""
        if "ticketId" in dict_ and dict_["ticketId"] is not None:
            instance.ticket_id = str(dict_["ticketId"])
        elif include_empty:
            instance.ticket_id = ""
        if "ticketStatus" in dict_ and dict_["ticketStatus"] is not None:
            instance.ticket_status = str(dict_["ticketStatus"])
        elif include_empty:
            instance.ticket_status = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsXRayTicketResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsXRayTicketResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsXRayTicketResult,
        List[ApimodelsXRayTicketResult],
        Dict[Any, ApimodelsXRayTicketResult],
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
            "id": "id_",
            "matchpool": "matchpool",
            "podName": "pod_name",
            "tickId": "tick_id",
            "ticketId": "ticket_id",
            "ticketStatus": "ticket_status",
            "timestamp": "timestamp",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "matchpool": True,
            "podName": True,
            "tickId": True,
            "ticketId": True,
            "ticketStatus": True,
            "timestamp": True,
        }

    # endregion static methods
