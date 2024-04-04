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

from ..models.models_team import ModelsTeam
from ..models.models_ticket import ModelsTicket


class ModelsBackfillProposal(Model):
    """Models backfill proposal (models.BackfillProposal)

    Properties:
        added_tickets: (AddedTickets) OPTIONAL List[ModelsTicket]

        backfill_ticket_id: (BackfillTicketID) OPTIONAL str

        created_at: (CreatedAt) OPTIONAL str

        match_pool: (MatchPool) OPTIONAL str

        match_session_id: (MatchSessionID) OPTIONAL str

        proposal_id: (ProposalID) OPTIONAL str

        proposed_teams: (ProposedTeams) OPTIONAL List[ModelsTeam]
    """

    # region fields

    added_tickets: List[ModelsTicket]  # OPTIONAL
    backfill_ticket_id: str  # OPTIONAL
    created_at: str  # OPTIONAL
    match_pool: str  # OPTIONAL
    match_session_id: str  # OPTIONAL
    proposal_id: str  # OPTIONAL
    proposed_teams: List[ModelsTeam]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_added_tickets(self, value: List[ModelsTicket]) -> ModelsBackfillProposal:
        self.added_tickets = value
        return self

    def with_backfill_ticket_id(self, value: str) -> ModelsBackfillProposal:
        self.backfill_ticket_id = value
        return self

    def with_created_at(self, value: str) -> ModelsBackfillProposal:
        self.created_at = value
        return self

    def with_match_pool(self, value: str) -> ModelsBackfillProposal:
        self.match_pool = value
        return self

    def with_match_session_id(self, value: str) -> ModelsBackfillProposal:
        self.match_session_id = value
        return self

    def with_proposal_id(self, value: str) -> ModelsBackfillProposal:
        self.proposal_id = value
        return self

    def with_proposed_teams(self, value: List[ModelsTeam]) -> ModelsBackfillProposal:
        self.proposed_teams = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "added_tickets"):
            result["AddedTickets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.added_tickets
            ]
        elif include_empty:
            result["AddedTickets"] = []
        if hasattr(self, "backfill_ticket_id"):
            result["BackfillTicketID"] = str(self.backfill_ticket_id)
        elif include_empty:
            result["BackfillTicketID"] = ""
        if hasattr(self, "created_at"):
            result["CreatedAt"] = str(self.created_at)
        elif include_empty:
            result["CreatedAt"] = ""
        if hasattr(self, "match_pool"):
            result["MatchPool"] = str(self.match_pool)
        elif include_empty:
            result["MatchPool"] = ""
        if hasattr(self, "match_session_id"):
            result["MatchSessionID"] = str(self.match_session_id)
        elif include_empty:
            result["MatchSessionID"] = ""
        if hasattr(self, "proposal_id"):
            result["ProposalID"] = str(self.proposal_id)
        elif include_empty:
            result["ProposalID"] = ""
        if hasattr(self, "proposed_teams"):
            result["ProposedTeams"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.proposed_teams
            ]
        elif include_empty:
            result["ProposedTeams"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        added_tickets: Optional[List[ModelsTicket]] = None,
        backfill_ticket_id: Optional[str] = None,
        created_at: Optional[str] = None,
        match_pool: Optional[str] = None,
        match_session_id: Optional[str] = None,
        proposal_id: Optional[str] = None,
        proposed_teams: Optional[List[ModelsTeam]] = None,
        **kwargs,
    ) -> ModelsBackfillProposal:
        instance = cls()
        if added_tickets is not None:
            instance.added_tickets = added_tickets
        if backfill_ticket_id is not None:
            instance.backfill_ticket_id = backfill_ticket_id
        if created_at is not None:
            instance.created_at = created_at
        if match_pool is not None:
            instance.match_pool = match_pool
        if match_session_id is not None:
            instance.match_session_id = match_session_id
        if proposal_id is not None:
            instance.proposal_id = proposal_id
        if proposed_teams is not None:
            instance.proposed_teams = proposed_teams
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBackfillProposal:
        instance = cls()
        if not dict_:
            return instance
        if "AddedTickets" in dict_ and dict_["AddedTickets"] is not None:
            instance.added_tickets = [
                ModelsTicket.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["AddedTickets"]
            ]
        elif include_empty:
            instance.added_tickets = []
        if "BackfillTicketID" in dict_ and dict_["BackfillTicketID"] is not None:
            instance.backfill_ticket_id = str(dict_["BackfillTicketID"])
        elif include_empty:
            instance.backfill_ticket_id = ""
        if "CreatedAt" in dict_ and dict_["CreatedAt"] is not None:
            instance.created_at = str(dict_["CreatedAt"])
        elif include_empty:
            instance.created_at = ""
        if "MatchPool" in dict_ and dict_["MatchPool"] is not None:
            instance.match_pool = str(dict_["MatchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "MatchSessionID" in dict_ and dict_["MatchSessionID"] is not None:
            instance.match_session_id = str(dict_["MatchSessionID"])
        elif include_empty:
            instance.match_session_id = ""
        if "ProposalID" in dict_ and dict_["ProposalID"] is not None:
            instance.proposal_id = str(dict_["ProposalID"])
        elif include_empty:
            instance.proposal_id = ""
        if "ProposedTeams" in dict_ and dict_["ProposedTeams"] is not None:
            instance.proposed_teams = [
                ModelsTeam.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["ProposedTeams"]
            ]
        elif include_empty:
            instance.proposed_teams = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBackfillProposal]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBackfillProposal]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBackfillProposal,
        List[ModelsBackfillProposal],
        Dict[Any, ModelsBackfillProposal],
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
            "AddedTickets": "added_tickets",
            "BackfillTicketID": "backfill_ticket_id",
            "CreatedAt": "created_at",
            "MatchPool": "match_pool",
            "MatchSessionID": "match_session_id",
            "ProposalID": "proposal_id",
            "ProposedTeams": "proposed_teams",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AddedTickets": False,
            "BackfillTicketID": False,
            "CreatedAt": False,
            "MatchPool": False,
            "MatchSessionID": False,
            "ProposalID": False,
            "ProposedTeams": False,
        }

    # endregion static methods
