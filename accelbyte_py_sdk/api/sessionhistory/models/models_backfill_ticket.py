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

from ..models.models_match import ModelsMatch


class ModelsBackfillTicket(Model):
    """Models backfill ticket (models.BackfillTicket)

    Properties:
        created_at: (CreatedAt) OPTIONAL str

        match_pool: (MatchPool) OPTIONAL str

        match_session_id: (MatchSessionID) OPTIONAL str

        match_session_version: (MatchSessionVersion) OPTIONAL int

        partial_match: (PartialMatch) OPTIONAL ModelsMatch

        ticket_id: (TicketID) OPTIONAL str
    """

    # region fields

    created_at: str  # OPTIONAL
    match_pool: str  # OPTIONAL
    match_session_id: str  # OPTIONAL
    match_session_version: int  # OPTIONAL
    partial_match: ModelsMatch  # OPTIONAL
    ticket_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ModelsBackfillTicket:
        self.created_at = value
        return self

    def with_match_pool(self, value: str) -> ModelsBackfillTicket:
        self.match_pool = value
        return self

    def with_match_session_id(self, value: str) -> ModelsBackfillTicket:
        self.match_session_id = value
        return self

    def with_match_session_version(self, value: int) -> ModelsBackfillTicket:
        self.match_session_version = value
        return self

    def with_partial_match(self, value: ModelsMatch) -> ModelsBackfillTicket:
        self.partial_match = value
        return self

    def with_ticket_id(self, value: str) -> ModelsBackfillTicket:
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
        if hasattr(self, "match_pool"):
            result["MatchPool"] = str(self.match_pool)
        elif include_empty:
            result["MatchPool"] = ""
        if hasattr(self, "match_session_id"):
            result["MatchSessionID"] = str(self.match_session_id)
        elif include_empty:
            result["MatchSessionID"] = ""
        if hasattr(self, "match_session_version"):
            result["MatchSessionVersion"] = int(self.match_session_version)
        elif include_empty:
            result["MatchSessionVersion"] = 0
        if hasattr(self, "partial_match"):
            result["PartialMatch"] = self.partial_match.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["PartialMatch"] = ModelsMatch()
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
        match_pool: Optional[str] = None,
        match_session_id: Optional[str] = None,
        match_session_version: Optional[int] = None,
        partial_match: Optional[ModelsMatch] = None,
        ticket_id: Optional[str] = None,
        **kwargs,
    ) -> ModelsBackfillTicket:
        instance = cls()
        if created_at is not None:
            instance.created_at = created_at
        if match_pool is not None:
            instance.match_pool = match_pool
        if match_session_id is not None:
            instance.match_session_id = match_session_id
        if match_session_version is not None:
            instance.match_session_version = match_session_version
        if partial_match is not None:
            instance.partial_match = partial_match
        if ticket_id is not None:
            instance.ticket_id = ticket_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsBackfillTicket:
        instance = cls()
        if not dict_:
            return instance
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
        if "MatchSessionVersion" in dict_ and dict_["MatchSessionVersion"] is not None:
            instance.match_session_version = int(dict_["MatchSessionVersion"])
        elif include_empty:
            instance.match_session_version = 0
        if "PartialMatch" in dict_ and dict_["PartialMatch"] is not None:
            instance.partial_match = ModelsMatch.create_from_dict(
                dict_["PartialMatch"], include_empty=include_empty
            )
        elif include_empty:
            instance.partial_match = ModelsMatch()
        if "TicketID" in dict_ and dict_["TicketID"] is not None:
            instance.ticket_id = str(dict_["TicketID"])
        elif include_empty:
            instance.ticket_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsBackfillTicket]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsBackfillTicket]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsBackfillTicket,
        List[ModelsBackfillTicket],
        Dict[Any, ModelsBackfillTicket],
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
            "MatchPool": "match_pool",
            "MatchSessionID": "match_session_id",
            "MatchSessionVersion": "match_session_version",
            "PartialMatch": "partial_match",
            "TicketID": "ticket_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "CreatedAt": False,
            "MatchPool": False,
            "MatchSessionID": False,
            "MatchSessionVersion": False,
            "PartialMatch": False,
            "TicketID": False,
        }

    # endregion static methods
