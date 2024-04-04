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

from ..models.apimodels_ticket_observability_history import (
    ApimodelsTicketObservabilityHistory,
)
from ..models.models_ticket import ModelsTicket
from ..models.models_ticket_observability import ModelsTicketObservability


class ApimodelsTicketObservabilityDetail(Model):
    """Apimodels ticket observability detail (apimodels.TicketObservabilityDetail)

    Properties:
        action: (action) REQUIRED str

        created_at: (createdAt) REQUIRED str

        expired_at: (expiredAt) REQUIRED str

        game_mode: (game_mode) REQUIRED str

        match_id: (matchId) REQUIRED str

        namespace: (namespace) REQUIRED str

        party_id: (party_id) REQUIRED str

        regions: (regions) REQUIRED str

        remaining_tickets: (remainingTickets) REQUIRED int

        ticket_id: (ticket_id) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        history: (history) OPTIONAL List[ApimodelsTicketObservabilityHistory]

        last_data: (lastData) OPTIONAL ModelsTicketObservability

        remaining_players_per_ticket: (remainingPlayersPerTicket) OPTIONAL List[int]

        requested_region: (requestedRegion) OPTIONAL List[str]

        ticket: (ticket) OPTIONAL ModelsTicket

        time_to_match_sec: (timeToMatchSec) OPTIONAL float

        user_i_ds: (userIDs) OPTIONAL List[str]
    """

    # region fields

    action: str  # REQUIRED
    created_at: str  # REQUIRED
    expired_at: str  # REQUIRED
    game_mode: str  # REQUIRED
    match_id: str  # REQUIRED
    namespace: str  # REQUIRED
    party_id: str  # REQUIRED
    regions: str  # REQUIRED
    remaining_tickets: int  # REQUIRED
    ticket_id: str  # REQUIRED
    updated_at: str  # REQUIRED
    history: List[ApimodelsTicketObservabilityHistory]  # OPTIONAL
    last_data: ModelsTicketObservability  # OPTIONAL
    remaining_players_per_ticket: List[int]  # OPTIONAL
    requested_region: List[str]  # OPTIONAL
    ticket: ModelsTicket  # OPTIONAL
    time_to_match_sec: float  # OPTIONAL
    user_i_ds: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.action = value
        return self

    def with_created_at(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.created_at = value
        return self

    def with_expired_at(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.expired_at = value
        return self

    def with_game_mode(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.game_mode = value
        return self

    def with_match_id(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.match_id = value
        return self

    def with_namespace(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.namespace = value
        return self

    def with_party_id(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.party_id = value
        return self

    def with_regions(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.regions = value
        return self

    def with_remaining_tickets(self, value: int) -> ApimodelsTicketObservabilityDetail:
        self.remaining_tickets = value
        return self

    def with_ticket_id(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.ticket_id = value
        return self

    def with_updated_at(self, value: str) -> ApimodelsTicketObservabilityDetail:
        self.updated_at = value
        return self

    def with_history(
        self, value: List[ApimodelsTicketObservabilityHistory]
    ) -> ApimodelsTicketObservabilityDetail:
        self.history = value
        return self

    def with_last_data(
        self, value: ModelsTicketObservability
    ) -> ApimodelsTicketObservabilityDetail:
        self.last_data = value
        return self

    def with_remaining_players_per_ticket(
        self, value: List[int]
    ) -> ApimodelsTicketObservabilityDetail:
        self.remaining_players_per_ticket = value
        return self

    def with_requested_region(
        self, value: List[str]
    ) -> ApimodelsTicketObservabilityDetail:
        self.requested_region = value
        return self

    def with_ticket(self, value: ModelsTicket) -> ApimodelsTicketObservabilityDetail:
        self.ticket = value
        return self

    def with_time_to_match_sec(
        self, value: float
    ) -> ApimodelsTicketObservabilityDetail:
        self.time_to_match_sec = value
        return self

    def with_user_i_ds(self, value: List[str]) -> ApimodelsTicketObservabilityDetail:
        self.user_i_ds = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "expired_at"):
            result["expiredAt"] = str(self.expired_at)
        elif include_empty:
            result["expiredAt"] = ""
        if hasattr(self, "game_mode"):
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "match_id"):
            result["matchId"] = str(self.match_id)
        elif include_empty:
            result["matchId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "party_id"):
            result["party_id"] = str(self.party_id)
        elif include_empty:
            result["party_id"] = ""
        if hasattr(self, "regions"):
            result["regions"] = str(self.regions)
        elif include_empty:
            result["regions"] = ""
        if hasattr(self, "remaining_tickets"):
            result["remainingTickets"] = int(self.remaining_tickets)
        elif include_empty:
            result["remainingTickets"] = 0
        if hasattr(self, "ticket_id"):
            result["ticket_id"] = str(self.ticket_id)
        elif include_empty:
            result["ticket_id"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "history"):
            result["history"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.history
            ]
        elif include_empty:
            result["history"] = []
        if hasattr(self, "last_data"):
            result["lastData"] = self.last_data.to_dict(include_empty=include_empty)
        elif include_empty:
            result["lastData"] = ModelsTicketObservability()
        if hasattr(self, "remaining_players_per_ticket"):
            result["remainingPlayersPerTicket"] = [
                int(i0) for i0 in self.remaining_players_per_ticket
            ]
        elif include_empty:
            result["remainingPlayersPerTicket"] = []
        if hasattr(self, "requested_region"):
            result["requestedRegion"] = [str(i0) for i0 in self.requested_region]
        elif include_empty:
            result["requestedRegion"] = []
        if hasattr(self, "ticket"):
            result["ticket"] = self.ticket.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ticket"] = ModelsTicket()
        if hasattr(self, "time_to_match_sec"):
            result["timeToMatchSec"] = float(self.time_to_match_sec)
        elif include_empty:
            result["timeToMatchSec"] = 0.0
        if hasattr(self, "user_i_ds"):
            result["userIDs"] = [str(i0) for i0 in self.user_i_ds]
        elif include_empty:
            result["userIDs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: str,
        created_at: str,
        expired_at: str,
        game_mode: str,
        match_id: str,
        namespace: str,
        party_id: str,
        regions: str,
        remaining_tickets: int,
        ticket_id: str,
        updated_at: str,
        history: Optional[List[ApimodelsTicketObservabilityHistory]] = None,
        last_data: Optional[ModelsTicketObservability] = None,
        remaining_players_per_ticket: Optional[List[int]] = None,
        requested_region: Optional[List[str]] = None,
        ticket: Optional[ModelsTicket] = None,
        time_to_match_sec: Optional[float] = None,
        user_i_ds: Optional[List[str]] = None,
        **kwargs,
    ) -> ApimodelsTicketObservabilityDetail:
        instance = cls()
        instance.action = action
        instance.created_at = created_at
        instance.expired_at = expired_at
        instance.game_mode = game_mode
        instance.match_id = match_id
        instance.namespace = namespace
        instance.party_id = party_id
        instance.regions = regions
        instance.remaining_tickets = remaining_tickets
        instance.ticket_id = ticket_id
        instance.updated_at = updated_at
        if history is not None:
            instance.history = history
        if last_data is not None:
            instance.last_data = last_data
        if remaining_players_per_ticket is not None:
            instance.remaining_players_per_ticket = remaining_players_per_ticket
        if requested_region is not None:
            instance.requested_region = requested_region
        if ticket is not None:
            instance.ticket = ticket
        if time_to_match_sec is not None:
            instance.time_to_match_sec = time_to_match_sec
        if user_i_ds is not None:
            instance.user_i_ds = user_i_ds
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsTicketObservabilityDetail:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "expiredAt" in dict_ and dict_["expiredAt"] is not None:
            instance.expired_at = str(dict_["expiredAt"])
        elif include_empty:
            instance.expired_at = ""
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "matchId" in dict_ and dict_["matchId"] is not None:
            instance.match_id = str(dict_["matchId"])
        elif include_empty:
            instance.match_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "party_id" in dict_ and dict_["party_id"] is not None:
            instance.party_id = str(dict_["party_id"])
        elif include_empty:
            instance.party_id = ""
        if "regions" in dict_ and dict_["regions"] is not None:
            instance.regions = str(dict_["regions"])
        elif include_empty:
            instance.regions = ""
        if "remainingTickets" in dict_ and dict_["remainingTickets"] is not None:
            instance.remaining_tickets = int(dict_["remainingTickets"])
        elif include_empty:
            instance.remaining_tickets = 0
        if "ticket_id" in dict_ and dict_["ticket_id"] is not None:
            instance.ticket_id = str(dict_["ticket_id"])
        elif include_empty:
            instance.ticket_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "history" in dict_ and dict_["history"] is not None:
            instance.history = [
                ApimodelsTicketObservabilityHistory.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["history"]
            ]
        elif include_empty:
            instance.history = []
        if "lastData" in dict_ and dict_["lastData"] is not None:
            instance.last_data = ModelsTicketObservability.create_from_dict(
                dict_["lastData"], include_empty=include_empty
            )
        elif include_empty:
            instance.last_data = ModelsTicketObservability()
        if (
            "remainingPlayersPerTicket" in dict_
            and dict_["remainingPlayersPerTicket"] is not None
        ):
            instance.remaining_players_per_ticket = [
                int(i0) for i0 in dict_["remainingPlayersPerTicket"]
            ]
        elif include_empty:
            instance.remaining_players_per_ticket = []
        if "requestedRegion" in dict_ and dict_["requestedRegion"] is not None:
            instance.requested_region = [str(i0) for i0 in dict_["requestedRegion"]]
        elif include_empty:
            instance.requested_region = []
        if "ticket" in dict_ and dict_["ticket"] is not None:
            instance.ticket = ModelsTicket.create_from_dict(
                dict_["ticket"], include_empty=include_empty
            )
        elif include_empty:
            instance.ticket = ModelsTicket()
        if "timeToMatchSec" in dict_ and dict_["timeToMatchSec"] is not None:
            instance.time_to_match_sec = float(dict_["timeToMatchSec"])
        elif include_empty:
            instance.time_to_match_sec = 0.0
        if "userIDs" in dict_ and dict_["userIDs"] is not None:
            instance.user_i_ds = [str(i0) for i0 in dict_["userIDs"]]
        elif include_empty:
            instance.user_i_ds = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsTicketObservabilityDetail]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsTicketObservabilityDetail]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsTicketObservabilityDetail,
        List[ApimodelsTicketObservabilityDetail],
        Dict[Any, ApimodelsTicketObservabilityDetail],
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
            "action": "action",
            "createdAt": "created_at",
            "expiredAt": "expired_at",
            "game_mode": "game_mode",
            "matchId": "match_id",
            "namespace": "namespace",
            "party_id": "party_id",
            "regions": "regions",
            "remainingTickets": "remaining_tickets",
            "ticket_id": "ticket_id",
            "updatedAt": "updated_at",
            "history": "history",
            "lastData": "last_data",
            "remainingPlayersPerTicket": "remaining_players_per_ticket",
            "requestedRegion": "requested_region",
            "ticket": "ticket",
            "timeToMatchSec": "time_to_match_sec",
            "userIDs": "user_i_ds",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "createdAt": True,
            "expiredAt": True,
            "game_mode": True,
            "matchId": True,
            "namespace": True,
            "party_id": True,
            "regions": True,
            "remainingTickets": True,
            "ticket_id": True,
            "updatedAt": True,
            "history": False,
            "lastData": False,
            "remainingPlayersPerTicket": False,
            "requestedRegion": False,
            "ticket": False,
            "timeToMatchSec": False,
            "userIDs": False,
        }

    # endregion static methods
