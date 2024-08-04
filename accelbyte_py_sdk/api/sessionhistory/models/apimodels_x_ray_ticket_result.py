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
        elapsed_time: (elapsedTime) REQUIRED float

        id_: (id) REQUIRED str

        matchpool: (matchpool) REQUIRED str

        pod_name: (podName) REQUIRED str

        reason: (reason) REQUIRED str

        region: (region) REQUIRED str

        tick_id: (tickId) REQUIRED str

        ticket_id: (ticketId) REQUIRED str

        ticket_status: (ticketStatus) REQUIRED str

        timestamp: (timestamp) REQUIRED str

        is_backfill: (isBackfill) OPTIONAL bool

        is_pivot: (isPivot) OPTIONAL bool

        member_attributes: (memberAttributes) OPTIONAL Dict[str, Any]

        total_players: (totalPlayers) OPTIONAL int
    """

    # region fields

    elapsed_time: float  # REQUIRED
    id_: str  # REQUIRED
    matchpool: str  # REQUIRED
    pod_name: str  # REQUIRED
    reason: str  # REQUIRED
    region: str  # REQUIRED
    tick_id: str  # REQUIRED
    ticket_id: str  # REQUIRED
    ticket_status: str  # REQUIRED
    timestamp: str  # REQUIRED
    is_backfill: bool  # OPTIONAL
    is_pivot: bool  # OPTIONAL
    member_attributes: Dict[str, Any]  # OPTIONAL
    total_players: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_elapsed_time(self, value: float) -> ApimodelsXRayTicketResult:
        self.elapsed_time = value
        return self

    def with_id(self, value: str) -> ApimodelsXRayTicketResult:
        self.id_ = value
        return self

    def with_matchpool(self, value: str) -> ApimodelsXRayTicketResult:
        self.matchpool = value
        return self

    def with_pod_name(self, value: str) -> ApimodelsXRayTicketResult:
        self.pod_name = value
        return self

    def with_reason(self, value: str) -> ApimodelsXRayTicketResult:
        self.reason = value
        return self

    def with_region(self, value: str) -> ApimodelsXRayTicketResult:
        self.region = value
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

    def with_is_backfill(self, value: bool) -> ApimodelsXRayTicketResult:
        self.is_backfill = value
        return self

    def with_is_pivot(self, value: bool) -> ApimodelsXRayTicketResult:
        self.is_pivot = value
        return self

    def with_member_attributes(
        self, value: Dict[str, Any]
    ) -> ApimodelsXRayTicketResult:
        self.member_attributes = value
        return self

    def with_total_players(self, value: int) -> ApimodelsXRayTicketResult:
        self.total_players = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "elapsed_time"):
            result["elapsedTime"] = float(self.elapsed_time)
        elif include_empty:
            result["elapsedTime"] = 0.0
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
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
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
        if hasattr(self, "is_backfill"):
            result["isBackfill"] = bool(self.is_backfill)
        elif include_empty:
            result["isBackfill"] = False
        if hasattr(self, "is_pivot"):
            result["isPivot"] = bool(self.is_pivot)
        elif include_empty:
            result["isPivot"] = False
        if hasattr(self, "member_attributes"):
            result["memberAttributes"] = {
                str(k0): v0 for k0, v0 in self.member_attributes.items()
            }
        elif include_empty:
            result["memberAttributes"] = {}
        if hasattr(self, "total_players"):
            result["totalPlayers"] = int(self.total_players)
        elif include_empty:
            result["totalPlayers"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        elapsed_time: float,
        id_: str,
        matchpool: str,
        pod_name: str,
        reason: str,
        region: str,
        tick_id: str,
        ticket_id: str,
        ticket_status: str,
        timestamp: str,
        is_backfill: Optional[bool] = None,
        is_pivot: Optional[bool] = None,
        member_attributes: Optional[Dict[str, Any]] = None,
        total_players: Optional[int] = None,
        **kwargs,
    ) -> ApimodelsXRayTicketResult:
        instance = cls()
        instance.elapsed_time = elapsed_time
        instance.id_ = id_
        instance.matchpool = matchpool
        instance.pod_name = pod_name
        instance.reason = reason
        instance.region = region
        instance.tick_id = tick_id
        instance.ticket_id = ticket_id
        instance.ticket_status = ticket_status
        instance.timestamp = timestamp
        if is_backfill is not None:
            instance.is_backfill = is_backfill
        if is_pivot is not None:
            instance.is_pivot = is_pivot
        if member_attributes is not None:
            instance.member_attributes = member_attributes
        if total_players is not None:
            instance.total_players = total_players
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsXRayTicketResult:
        instance = cls()
        if not dict_:
            return instance
        if "elapsedTime" in dict_ and dict_["elapsedTime"] is not None:
            instance.elapsed_time = float(dict_["elapsedTime"])
        elif include_empty:
            instance.elapsed_time = 0.0
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
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
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
        if "isBackfill" in dict_ and dict_["isBackfill"] is not None:
            instance.is_backfill = bool(dict_["isBackfill"])
        elif include_empty:
            instance.is_backfill = False
        if "isPivot" in dict_ and dict_["isPivot"] is not None:
            instance.is_pivot = bool(dict_["isPivot"])
        elif include_empty:
            instance.is_pivot = False
        if "memberAttributes" in dict_ and dict_["memberAttributes"] is not None:
            instance.member_attributes = {
                str(k0): v0 for k0, v0 in dict_["memberAttributes"].items()
            }
        elif include_empty:
            instance.member_attributes = {}
        if "totalPlayers" in dict_ and dict_["totalPlayers"] is not None:
            instance.total_players = int(dict_["totalPlayers"])
        elif include_empty:
            instance.total_players = 0
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
            "elapsedTime": "elapsed_time",
            "id": "id_",
            "matchpool": "matchpool",
            "podName": "pod_name",
            "reason": "reason",
            "region": "region",
            "tickId": "tick_id",
            "ticketId": "ticket_id",
            "ticketStatus": "ticket_status",
            "timestamp": "timestamp",
            "isBackfill": "is_backfill",
            "isPivot": "is_pivot",
            "memberAttributes": "member_attributes",
            "totalPlayers": "total_players",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "elapsedTime": True,
            "id": True,
            "matchpool": True,
            "podName": True,
            "reason": True,
            "region": True,
            "tickId": True,
            "ticketId": True,
            "ticketStatus": True,
            "timestamp": True,
            "isBackfill": False,
            "isPivot": False,
            "memberAttributes": False,
            "totalPlayers": False,
        }

    # endregion static methods
