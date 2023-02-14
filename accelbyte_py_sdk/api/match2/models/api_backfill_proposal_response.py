# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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

from ..models.api_team import ApiTeam
from ..models.api_ticket import ApiTicket


class ApiBackfillProposalResponse(Model):
    """Api backfill proposal response (api.BackfillProposalResponse)

    Properties:
        backfill_ticket_id: (backfillTicketID) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        match_pool: (matchPool) OPTIONAL str

        match_session_id: (matchSessionID) OPTIONAL str

        proposal_id: (proposalID) OPTIONAL str

        proposed_teams: (proposedTeams) OPTIONAL List[ApiTeam]

        tickets: (tickets) OPTIONAL List[ApiTicket]
    """

    # region fields

    backfill_ticket_id: str  # OPTIONAL
    created_at: str  # OPTIONAL
    match_pool: str  # OPTIONAL
    match_session_id: str  # OPTIONAL
    proposal_id: str  # OPTIONAL
    proposed_teams: List[ApiTeam]  # OPTIONAL
    tickets: List[ApiTicket]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_backfill_ticket_id(self, value: str) -> ApiBackfillProposalResponse:
        self.backfill_ticket_id = value
        return self

    def with_created_at(self, value: str) -> ApiBackfillProposalResponse:
        self.created_at = value
        return self

    def with_match_pool(self, value: str) -> ApiBackfillProposalResponse:
        self.match_pool = value
        return self

    def with_match_session_id(self, value: str) -> ApiBackfillProposalResponse:
        self.match_session_id = value
        return self

    def with_proposal_id(self, value: str) -> ApiBackfillProposalResponse:
        self.proposal_id = value
        return self

    def with_proposed_teams(self, value: List[ApiTeam]) -> ApiBackfillProposalResponse:
        self.proposed_teams = value
        return self

    def with_tickets(self, value: List[ApiTicket]) -> ApiBackfillProposalResponse:
        self.tickets = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill_ticket_id"):
            result["backfillTicketID"] = str(self.backfill_ticket_id)
        elif include_empty:
            result["backfillTicketID"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "match_pool"):
            result["matchPool"] = str(self.match_pool)
        elif include_empty:
            result["matchPool"] = ""
        if hasattr(self, "match_session_id"):
            result["matchSessionID"] = str(self.match_session_id)
        elif include_empty:
            result["matchSessionID"] = ""
        if hasattr(self, "proposal_id"):
            result["proposalID"] = str(self.proposal_id)
        elif include_empty:
            result["proposalID"] = ""
        if hasattr(self, "proposed_teams"):
            result["proposedTeams"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.proposed_teams
            ]
        elif include_empty:
            result["proposedTeams"] = []
        if hasattr(self, "tickets"):
            result["tickets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.tickets
            ]
        elif include_empty:
            result["tickets"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill_ticket_id: Optional[str] = None,
        created_at: Optional[str] = None,
        match_pool: Optional[str] = None,
        match_session_id: Optional[str] = None,
        proposal_id: Optional[str] = None,
        proposed_teams: Optional[List[ApiTeam]] = None,
        tickets: Optional[List[ApiTicket]] = None,
    ) -> ApiBackfillProposalResponse:
        instance = cls()
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
        if tickets is not None:
            instance.tickets = tickets
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiBackfillProposalResponse:
        instance = cls()
        if not dict_:
            return instance
        if "backfillTicketID" in dict_ and dict_["backfillTicketID"] is not None:
            instance.backfill_ticket_id = str(dict_["backfillTicketID"])
        elif include_empty:
            instance.backfill_ticket_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "matchPool" in dict_ and dict_["matchPool"] is not None:
            instance.match_pool = str(dict_["matchPool"])
        elif include_empty:
            instance.match_pool = ""
        if "matchSessionID" in dict_ and dict_["matchSessionID"] is not None:
            instance.match_session_id = str(dict_["matchSessionID"])
        elif include_empty:
            instance.match_session_id = ""
        if "proposalID" in dict_ and dict_["proposalID"] is not None:
            instance.proposal_id = str(dict_["proposalID"])
        elif include_empty:
            instance.proposal_id = ""
        if "proposedTeams" in dict_ and dict_["proposedTeams"] is not None:
            instance.proposed_teams = [
                ApiTeam.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["proposedTeams"]
            ]
        elif include_empty:
            instance.proposed_teams = []
        if "tickets" in dict_ and dict_["tickets"] is not None:
            instance.tickets = [
                ApiTicket.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["tickets"]
            ]
        elif include_empty:
            instance.tickets = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiBackfillProposalResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiBackfillProposalResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiBackfillProposalResponse,
        List[ApiBackfillProposalResponse],
        Dict[Any, ApiBackfillProposalResponse],
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
            "backfillTicketID": "backfill_ticket_id",
            "createdAt": "created_at",
            "matchPool": "match_pool",
            "matchSessionID": "match_session_id",
            "proposalID": "proposal_id",
            "proposedTeams": "proposed_teams",
            "tickets": "tickets",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "backfillTicketID": False,
            "createdAt": False,
            "matchPool": False,
            "matchSessionID": False,
            "proposalID": False,
            "proposedTeams": False,
            "tickets": False,
        }

    # endregion static methods
