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

from ..models.api_proposed_proposal import ApiProposedProposal


class ApiMatchTicketStatus(Model):
    """Api match ticket status (api.MatchTicketStatus)

    Properties:
        match_found: (matchFound) REQUIRED bool

        session_id: (sessionID) REQUIRED str

        proposed_proposal: (proposedProposal) OPTIONAL ApiProposedProposal
    """

    # region fields

    match_found: bool  # REQUIRED
    session_id: str  # REQUIRED
    proposed_proposal: ApiProposedProposal  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_match_found(self, value: bool) -> ApiMatchTicketStatus:
        self.match_found = value
        return self

    def with_session_id(self, value: str) -> ApiMatchTicketStatus:
        self.session_id = value
        return self

    def with_proposed_proposal(
        self, value: ApiProposedProposal
    ) -> ApiMatchTicketStatus:
        self.proposed_proposal = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match_found"):
            result["matchFound"] = bool(self.match_found)
        elif include_empty:
            result["matchFound"] = False
        if hasattr(self, "session_id"):
            result["sessionID"] = str(self.session_id)
        elif include_empty:
            result["sessionID"] = ""
        if hasattr(self, "proposed_proposal"):
            result["proposedProposal"] = self.proposed_proposal.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["proposedProposal"] = ApiProposedProposal()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match_found: bool,
        session_id: str,
        proposed_proposal: Optional[ApiProposedProposal] = None,
    ) -> ApiMatchTicketStatus:
        instance = cls()
        instance.match_found = match_found
        instance.session_id = session_id
        if proposed_proposal is not None:
            instance.proposed_proposal = proposed_proposal
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiMatchTicketStatus:
        instance = cls()
        if not dict_:
            return instance
        if "matchFound" in dict_ and dict_["matchFound"] is not None:
            instance.match_found = bool(dict_["matchFound"])
        elif include_empty:
            instance.match_found = False
        if "sessionID" in dict_ and dict_["sessionID"] is not None:
            instance.session_id = str(dict_["sessionID"])
        elif include_empty:
            instance.session_id = ""
        if "proposedProposal" in dict_ and dict_["proposedProposal"] is not None:
            instance.proposed_proposal = ApiProposedProposal.create_from_dict(
                dict_["proposedProposal"], include_empty=include_empty
            )
        elif include_empty:
            instance.proposed_proposal = ApiProposedProposal()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiMatchTicketStatus]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiMatchTicketStatus]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiMatchTicketStatus,
        List[ApiMatchTicketStatus],
        Dict[Any, ApiMatchTicketStatus],
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
            "matchFound": "match_found",
            "sessionID": "session_id",
            "proposedProposal": "proposed_proposal",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "matchFound": True,
            "sessionID": True,
            "proposedProposal": False,
        }

    # endregion static methods
