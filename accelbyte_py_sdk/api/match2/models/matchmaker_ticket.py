# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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

from ..models.matchmaker_proposed_proposal import MatchmakerProposedProposal
from ..models.player_player_data import PlayerPlayerData


class MatchmakerTicket(Model):
    """Matchmaker ticket (matchmaker.Ticket)

    Properties:
        created_at: (CreatedAt) REQUIRED str

        latencies: (Latencies) REQUIRED Dict[str, int]

        match_pool: (MatchPool) REQUIRED str

        namespace: (Namespace) REQUIRED str

        party_session_id: (PartySessionID) REQUIRED str

        players: (Players) REQUIRED List[PlayerPlayerData]

        proposed_proposal: (ProposedProposal) REQUIRED MatchmakerProposedProposal

        ticket_attributes: (TicketAttributes) REQUIRED Dict[str, Any]

        ticket_id: (TicketID) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    latencies: Dict[str, int]  # REQUIRED
    match_pool: str  # REQUIRED
    namespace: str  # REQUIRED
    party_session_id: str  # REQUIRED
    players: List[PlayerPlayerData]  # REQUIRED
    proposed_proposal: MatchmakerProposedProposal  # REQUIRED
    ticket_attributes: Dict[str, Any]  # REQUIRED
    ticket_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> MatchmakerTicket:
        self.created_at = value
        return self

    def with_latencies(self, value: Dict[str, int]) -> MatchmakerTicket:
        self.latencies = value
        return self

    def with_match_pool(self, value: str) -> MatchmakerTicket:
        self.match_pool = value
        return self

    def with_namespace(self, value: str) -> MatchmakerTicket:
        self.namespace = value
        return self

    def with_party_session_id(self, value: str) -> MatchmakerTicket:
        self.party_session_id = value
        return self

    def with_players(self, value: List[PlayerPlayerData]) -> MatchmakerTicket:
        self.players = value
        return self

    def with_proposed_proposal(
        self, value: MatchmakerProposedProposal
    ) -> MatchmakerTicket:
        self.proposed_proposal = value
        return self

    def with_ticket_attributes(self, value: Dict[str, Any]) -> MatchmakerTicket:
        self.ticket_attributes = value
        return self

    def with_ticket_id(self, value: str) -> MatchmakerTicket:
        self.ticket_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "latencies"):
            result["Latencies"] = {
                str(k0): int(v0) for k0, v0 in self.latencies.items()
            }
        elif include_empty:
            result["Latencies"] = {}
        if hasattr(self, "match_pool"):
            result["MatchPool"] = str(self.match_pool)
        elif include_empty:
            result["MatchPool"] = ""
        if hasattr(self, "namespace"):
            result["Namespace"] = str(self.namespace)
        elif include_empty:
            result["Namespace"] = ""
        if hasattr(self, "party_session_id"):
            result["PartySessionID"] = str(self.party_session_id)
        elif include_empty:
            result["PartySessionID"] = ""
        if hasattr(self, "players"):
            result["Players"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.players
            ]
        elif include_empty:
            result["Players"] = []
        if hasattr(self, "proposed_proposal"):
            result["ProposedProposal"] = self.proposed_proposal.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["ProposedProposal"] = MatchmakerProposedProposal()
        if hasattr(self, "ticket_attributes"):
            result["TicketAttributes"] = {
                str(k0): v0 for k0, v0 in self.ticket_attributes.items()
            }
        elif include_empty:
            result["TicketAttributes"] = {}
        if hasattr(self, "ticket_id"):
            result["TicketID"] = str(self.ticket_id)
        elif include_empty:
            result["TicketID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        latencies: Dict[str, int],
        match_pool: str,
        namespace: str,
        party_session_id: str,
        players: List[PlayerPlayerData],
        proposed_proposal: MatchmakerProposedProposal,
        ticket_attributes: Dict[str, Any],
        ticket_id: str,
        **kwargs,
    ) -> MatchmakerTicket:
        instance = cls()
        instance.created_at = created_at
        instance.latencies = latencies
        instance.match_pool = match_pool
        instance.namespace = namespace
        instance.party_session_id = party_session_id
        instance.players = players
        instance.proposed_proposal = proposed_proposal
        instance.ticket_attributes = ticket_attributes
        instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> MatchmakerTicket:
        instance = cls()
        if not dict_:
            return instance
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "Latencies" in dict_ and dict_["Latencies"] is not None:
            instance.latencies = {
                str(k0): int(v0) for k0, v0 in dict_["Latencies"].items()
            }
        elif include_empty:
            instance.latencies = {}
        if "MatchPool" in dict_ and dict_["MatchPool"] is not None:
            instance.match_pool = str(dict_["MatchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "Namespace" in dict_ and dict_["Namespace"] is not None:
            instance.namespace = str(dict_["Namespace"])
        elif include_empty:
            instance.namespace = ""
        if "PartySessionID" in dict_ and dict_["PartySessionID"] is not None:
            instance.party_session_id = str(dict_["PartySessionID"])
        elif include_empty:
            instance.party_session_id = ""
        if "Players" in dict_ and dict_["Players"] is not None:
            instance.players = [
                PlayerPlayerData.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Players"]
            ]
        elif include_empty:
            instance.players = []
        if "ProposedProposal" in dict_ and dict_["ProposedProposal"] is not None:
            instance.proposed_proposal = MatchmakerProposedProposal.create_from_dict(
                dict_["ProposedProposal"], include_empty=include_empty
            )
        elif include_empty:
            instance.proposed_proposal = MatchmakerProposedProposal()
        if "TicketAttributes" in dict_ and dict_["TicketAttributes"] is not None:
            instance.ticket_attributes = {
                str(k0): v0 for k0, v0 in dict_["TicketAttributes"].items()
            }
        elif include_empty:
            instance.ticket_attributes = {}
        if "TicketID" in dict_ and dict_["TicketID"] is not None:
            instance.ticket_id = str(dict_["TicketID"])
        elif include_empty:
            instance.ticket_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, MatchmakerTicket]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[MatchmakerTicket]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[MatchmakerTicket, List[MatchmakerTicket], Dict[Any, MatchmakerTicket]]:
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
            "CreatedAt": "created_at",
            "Latencies": "latencies",
            "MatchPool": "match_pool",
            "Namespace": "namespace",
            "PartySessionID": "party_session_id",
            "Players": "players",
            "ProposedProposal": "proposed_proposal",
            "TicketAttributes": "ticket_attributes",
            "TicketID": "ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "CreatedAt": True,
            "Latencies": True,
            "MatchPool": True,
            "Namespace": True,
            "PartySessionID": True,
            "Players": True,
            "ProposedProposal": True,
            "TicketAttributes": True,
            "TicketID": True,
        }

    # endregion static methods
