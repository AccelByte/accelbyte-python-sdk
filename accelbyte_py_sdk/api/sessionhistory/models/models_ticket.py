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

from ..models.models_player_data import ModelsPlayerData
from ..models.models_proposed_proposal import ModelsProposedProposal


class ModelsTicket(Model):
    """Models ticket (models.Ticket)

    Properties:
        created_at: (CreatedAt) OPTIONAL str

        latencies: (Latencies) OPTIONAL Dict[str, int]

        match_pool: (MatchPool) OPTIONAL str

        matched_at: (MatchedAt) OPTIONAL str

        namespace: (Namespace) OPTIONAL str

        party_session_id: (PartySessionID) OPTIONAL str

        players: (Players) OPTIONAL List[ModelsPlayerData]

        proposed_proposal: (ProposedProposal) OPTIONAL ModelsProposedProposal

        ticket_attributes: (TicketAttributes) OPTIONAL Dict[str, Any]

        ticket_id: (TicketID) OPTIONAL str
    """

    # region fields

    created_at: str  # OPTIONAL
    latencies: Dict[str, int]  # OPTIONAL
    match_pool: str  # OPTIONAL
    matched_at: str  # OPTIONAL
    namespace: str  # OPTIONAL
    party_session_id: str  # OPTIONAL
    players: List[ModelsPlayerData]  # OPTIONAL
    proposed_proposal: ModelsProposedProposal  # OPTIONAL
    ticket_attributes: Dict[str, Any]  # OPTIONAL
    ticket_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsTicket:
        self.created_at = value
        return self

    def with_latencies(self, value: Dict[str, int]) -> ModelsTicket:
        self.latencies = value
        return self

    def with_match_pool(self, value: str) -> ModelsTicket:
        self.match_pool = value
        return self

    def with_matched_at(self, value: str) -> ModelsTicket:
        self.matched_at = value
        return self

    def with_namespace(self, value: str) -> ModelsTicket:
        self.namespace = value
        return self

    def with_party_session_id(self, value: str) -> ModelsTicket:
        self.party_session_id = value
        return self

    def with_players(self, value: List[ModelsPlayerData]) -> ModelsTicket:
        self.players = value
        return self

    def with_proposed_proposal(self, value: ModelsProposedProposal) -> ModelsTicket:
        self.proposed_proposal = value
        return self

    def with_ticket_attributes(self, value: Dict[str, Any]) -> ModelsTicket:
        self.ticket_attributes = value
        return self

    def with_ticket_id(self, value: str) -> ModelsTicket:
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
        if hasattr(self, "matched_at"):
            result["MatchedAt"] = str(self.matched_at)
        elif include_empty:
            result["MatchedAt"] = ""
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
            result["ProposedProposal"] = ModelsProposedProposal()
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
        created_at: Optional[str] = None,
        latencies: Optional[Dict[str, int]] = None,
        match_pool: Optional[str] = None,
        matched_at: Optional[str] = None,
        namespace: Optional[str] = None,
        party_session_id: Optional[str] = None,
        players: Optional[List[ModelsPlayerData]] = None,
        proposed_proposal: Optional[ModelsProposedProposal] = None,
        ticket_attributes: Optional[Dict[str, Any]] = None,
        ticket_id: Optional[str] = None,
        **kwargs,
    ) -> ModelsTicket:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if latencies is not None:
            instance.latencies = latencies
        if match_pool is not None:
            instance.match_pool = match_pool
        if matched_at is not None:
            instance.matched_at = matched_at
        if namespace is not None:
            instance.namespace = namespace
        if party_session_id is not None:
            instance.party_session_id = party_session_id
        if players is not None:
            instance.players = players
        if proposed_proposal is not None:
            instance.proposed_proposal = proposed_proposal
        if ticket_attributes is not None:
            instance.ticket_attributes = ticket_attributes
        if ticket_id is not None:
            instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsTicket:
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
        if "MatchedAt" in dict_ and dict_["MatchedAt"] is not None:
            instance.matched_at = str(dict_["MatchedAt"])
        elif include_empty:
            instance.matched_at = ""
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
                ModelsPlayerData.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["Players"]
            ]
        elif include_empty:
            instance.players = []
        if "ProposedProposal" in dict_ and dict_["ProposedProposal"] is not None:
            instance.proposed_proposal = ModelsProposedProposal.create_from_dict(
                dict_["ProposedProposal"], include_empty=include_empty
            )
        elif include_empty:
            instance.proposed_proposal = ModelsProposedProposal()
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
    ) -> Dict[str, ModelsTicket]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTicket]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsTicket, List[ModelsTicket], Dict[Any, ModelsTicket]]:
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
            "MatchedAt": "matched_at",
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
            "CreatedAt": False,
            "Latencies": False,
            "MatchPool": False,
            "MatchedAt": False,
            "Namespace": False,
            "PartySessionID": False,
            "Players": False,
            "ProposedProposal": False,
            "TicketAttributes": False,
            "TicketID": False,
        }

    # endregion static methods
