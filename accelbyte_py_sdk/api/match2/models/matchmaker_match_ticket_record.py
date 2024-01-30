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
from ..models.matchmaker_ticket import MatchmakerTicket


class MatchmakerMatchTicketRecord(Model):
    """Matchmaker match ticket record (matchmaker.MatchTicketRecord)

    Properties:
        created_at: (CreatedAt) REQUIRED str

        is_active: (IsActive) REQUIRED bool

        party_session_id: (PartySessionID) REQUIRED str

        proposed_proposal: (ProposedProposal) REQUIRED MatchmakerProposedProposal

        session_id: (SessionID) REQUIRED str

        ticket: (Ticket) REQUIRED MatchmakerTicket

        ticket_id: (TicketID) REQUIRED str

        unique_ticket_id: (UniqueTicketID) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    is_active: bool  # REQUIRED
    party_session_id: str  # REQUIRED
    proposed_proposal: MatchmakerProposedProposal  # REQUIRED
    session_id: str  # REQUIRED
    ticket: MatchmakerTicket  # REQUIRED
    ticket_id: str  # REQUIRED
    unique_ticket_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> MatchmakerMatchTicketRecord:
        self.created_at = value
        return self

    def with_is_active(self, value: bool) -> MatchmakerMatchTicketRecord:
        self.is_active = value
        return self

    def with_party_session_id(self, value: str) -> MatchmakerMatchTicketRecord:
        self.party_session_id = value
        return self

    def with_proposed_proposal(
        self, value: MatchmakerProposedProposal
    ) -> MatchmakerMatchTicketRecord:
        self.proposed_proposal = value
        return self

    def with_session_id(self, value: str) -> MatchmakerMatchTicketRecord:
        self.session_id = value
        return self

    def with_ticket(self, value: MatchmakerTicket) -> MatchmakerMatchTicketRecord:
        self.ticket = value
        return self

    def with_ticket_id(self, value: str) -> MatchmakerMatchTicketRecord:
        self.ticket_id = value
        return self

    def with_unique_ticket_id(self, value: str) -> MatchmakerMatchTicketRecord:
        self.unique_ticket_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "is_active"):
            result["IsActive"] = bool(self.is_active)
        elif include_empty:
            result["IsActive"] = False
        if hasattr(self, "party_session_id"):
            result["PartySessionID"] = str(self.party_session_id)
        elif include_empty:
            result["PartySessionID"] = ""
        if hasattr(self, "proposed_proposal"):
            result["ProposedProposal"] = self.proposed_proposal.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["ProposedProposal"] = MatchmakerProposedProposal()
        if hasattr(self, "session_id"):
            result["SessionID"] = str(self.session_id)
        elif include_empty:
            result["SessionID"] = ""
        if hasattr(self, "ticket"):
            result["Ticket"] = self.ticket.to_dict(include_empty=include_empty)
        elif include_empty:
            result["Ticket"] = MatchmakerTicket()
        if hasattr(self, "ticket_id"):
            result["TicketID"] = str(self.ticket_id)
        elif include_empty:
            result["TicketID"] = ""
        if hasattr(self, "unique_ticket_id"):
            result["UniqueTicketID"] = str(self.unique_ticket_id)
        elif include_empty:
            result["UniqueTicketID"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        is_active: bool,
        party_session_id: str,
        proposed_proposal: MatchmakerProposedProposal,
        session_id: str,
        ticket: MatchmakerTicket,
        ticket_id: str,
        unique_ticket_id: str,
        **kwargs,
    ) -> MatchmakerMatchTicketRecord:
        instance = cls()
        instance.created_at = created_at
        instance.is_active = is_active
        instance.party_session_id = party_session_id
        instance.proposed_proposal = proposed_proposal
        instance.session_id = session_id
        instance.ticket = ticket
        instance.ticket_id = ticket_id
        instance.unique_ticket_id = unique_ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> MatchmakerMatchTicketRecord:
        instance = cls()
        if not dict_:
            return instance
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "IsActive" in dict_ and dict_["IsActive"] is not None:
            instance.is_active = bool(dict_["IsActive"])
        elif include_empty:
            instance.is_active = False
        if "PartySessionID" in dict_ and dict_["PartySessionID"] is not None:
            instance.party_session_id = str(dict_["PartySessionID"])
        elif include_empty:
            instance.party_session_id = ""
        if "ProposedProposal" in dict_ and dict_["ProposedProposal"] is not None:
            instance.proposed_proposal = MatchmakerProposedProposal.create_from_dict(
                dict_["ProposedProposal"], include_empty=include_empty
            )
        elif include_empty:
            instance.proposed_proposal = MatchmakerProposedProposal()
        if "SessionID" in dict_ and dict_["SessionID"] is not None:
            instance.session_id = str(dict_["SessionID"])
        elif include_empty:
            instance.session_id = ""
        if "Ticket" in dict_ and dict_["Ticket"] is not None:
            instance.ticket = MatchmakerTicket.create_from_dict(
                dict_["Ticket"], include_empty=include_empty
            )
        elif include_empty:
            instance.ticket = MatchmakerTicket()
        if "TicketID" in dict_ and dict_["TicketID"] is not None:
            instance.ticket_id = str(dict_["TicketID"])
        elif include_empty:
            instance.ticket_id = ""
        if "UniqueTicketID" in dict_ and dict_["UniqueTicketID"] is not None:
            instance.unique_ticket_id = str(dict_["UniqueTicketID"])
        elif include_empty:
            instance.unique_ticket_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, MatchmakerMatchTicketRecord]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[MatchmakerMatchTicketRecord]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        MatchmakerMatchTicketRecord,
        List[MatchmakerMatchTicketRecord],
        Dict[Any, MatchmakerMatchTicketRecord],
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
            "CreatedAt": "created_at",
            "IsActive": "is_active",
            "PartySessionID": "party_session_id",
            "ProposedProposal": "proposed_proposal",
            "SessionID": "session_id",
            "Ticket": "ticket",
            "TicketID": "ticket_id",
            "UniqueTicketID": "unique_ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "CreatedAt": True,
            "IsActive": True,
            "PartySessionID": True,
            "ProposedProposal": True,
            "SessionID": True,
            "Ticket": True,
            "TicketID": True,
            "UniqueTicketID": True,
        }

    # endregion static methods
