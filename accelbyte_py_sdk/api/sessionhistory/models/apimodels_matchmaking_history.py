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

from ..models.models_backfill_proposal import ModelsBackfillProposal
from ..models.models_backfill_ticket import ModelsBackfillTicket
from ..models.models_ticket import ModelsTicket


class ApimodelsMatchmakingHistory(Model):
    """Apimodels matchmaking history (apimodels.MatchmakingHistory)

    Properties:
        backfill_proposal: (backfillProposal) OPTIONAL ModelsBackfillProposal

        backfill_ticket: (backfillTicket) OPTIONAL ModelsBackfillTicket

        event_name: (eventName) OPTIONAL str

        requested_user_id: (requestedUserID) OPTIONAL str

        ticket: (ticket) OPTIONAL ModelsTicket

        timestamp: (timestamp) OPTIONAL str

        unbackfill_reason: (unbackfillReason) OPTIONAL str
    """

    # region fields

    backfill_proposal: ModelsBackfillProposal  # OPTIONAL
    backfill_ticket: ModelsBackfillTicket  # OPTIONAL
    event_name: str  # OPTIONAL
    requested_user_id: str  # OPTIONAL
    ticket: ModelsTicket  # OPTIONAL
    timestamp: str  # OPTIONAL
    unbackfill_reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_backfill_proposal(
        self, value: ModelsBackfillProposal
    ) -> ApimodelsMatchmakingHistory:
        self.backfill_proposal = value
        return self

    def with_backfill_ticket(
        self, value: ModelsBackfillTicket
    ) -> ApimodelsMatchmakingHistory:
        self.backfill_ticket = value
        return self

    def with_event_name(self, value: str) -> ApimodelsMatchmakingHistory:
        self.event_name = value
        return self

    def with_requested_user_id(self, value: str) -> ApimodelsMatchmakingHistory:
        self.requested_user_id = value
        return self

    def with_ticket(self, value: ModelsTicket) -> ApimodelsMatchmakingHistory:
        self.ticket = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsMatchmakingHistory:
        self.timestamp = value
        return self

    def with_unbackfill_reason(self, value: str) -> ApimodelsMatchmakingHistory:
        self.unbackfill_reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "backfill_proposal"):
            result["backfillProposal"] = self.backfill_proposal.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["backfillProposal"] = ModelsBackfillProposal()
        if hasattr(self, "backfill_ticket"):
            result["backfillTicket"] = self.backfill_ticket.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["backfillTicket"] = ModelsBackfillTicket()
        if hasattr(self, "event_name"):
            result["eventName"] = str(self.event_name)
        elif include_empty:
            result["eventName"] = ""
        if hasattr(self, "requested_user_id"):
            result["requestedUserID"] = str(self.requested_user_id)
        elif include_empty:
            result["requestedUserID"] = ""
        if hasattr(self, "ticket"):
            result["ticket"] = self.ticket.to_dict(include_empty=include_empty)
        elif include_empty:
            result["ticket"] = ModelsTicket()
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        if hasattr(self, "unbackfill_reason"):
            result["unbackfillReason"] = str(self.unbackfill_reason)
        elif include_empty:
            result["unbackfillReason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        backfill_proposal: Optional[ModelsBackfillProposal] = None,
        backfill_ticket: Optional[ModelsBackfillTicket] = None,
        event_name: Optional[str] = None,
        requested_user_id: Optional[str] = None,
        ticket: Optional[ModelsTicket] = None,
        timestamp: Optional[str] = None,
        unbackfill_reason: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsMatchmakingHistory:
        instance = cls()
        if backfill_proposal is not None:
            instance.backfill_proposal = backfill_proposal
        if backfill_ticket is not None:
            instance.backfill_ticket = backfill_ticket
        if event_name is not None:
            instance.event_name = event_name
        if requested_user_id is not None:
            instance.requested_user_id = requested_user_id
        if ticket is not None:
            instance.ticket = ticket
        if timestamp is not None:
            instance.timestamp = timestamp
        if unbackfill_reason is not None:
            instance.unbackfill_reason = unbackfill_reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsMatchmakingHistory:
        instance = cls()
        if not dict_:
            return instance
        if "backfillProposal" in dict_ and dict_["backfillProposal"] is not None:
            instance.backfill_proposal = ModelsBackfillProposal.create_from_dict(
                dict_["backfillProposal"], include_empty=include_empty
            )
        elif include_empty:
            instance.backfill_proposal = ModelsBackfillProposal()
        if "backfillTicket" in dict_ and dict_["backfillTicket"] is not None:
            instance.backfill_ticket = ModelsBackfillTicket.create_from_dict(
                dict_["backfillTicket"], include_empty=include_empty
            )
        elif include_empty:
            instance.backfill_ticket = ModelsBackfillTicket()
        if "eventName" in dict_ and dict_["eventName"] is not None:
            instance.event_name = str(dict_["eventName"])
        elif include_empty:
            instance.event_name = ""
        if "requestedUserID" in dict_ and dict_["requestedUserID"] is not None:
            instance.requested_user_id = str(dict_["requestedUserID"])
        elif include_empty:
            instance.requested_user_id = ""
        if "ticket" in dict_ and dict_["ticket"] is not None:
            instance.ticket = ModelsTicket.create_from_dict(
                dict_["ticket"], include_empty=include_empty
            )
        elif include_empty:
            instance.ticket = ModelsTicket()
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        if "unbackfillReason" in dict_ and dict_["unbackfillReason"] is not None:
            instance.unbackfill_reason = str(dict_["unbackfillReason"])
        elif include_empty:
            instance.unbackfill_reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsMatchmakingHistory]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsMatchmakingHistory]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsMatchmakingHistory,
        List[ApimodelsMatchmakingHistory],
        Dict[Any, ApimodelsMatchmakingHistory],
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
            "backfillProposal": "backfill_proposal",
            "backfillTicket": "backfill_ticket",
            "eventName": "event_name",
            "requestedUserID": "requested_user_id",
            "ticket": "ticket",
            "timestamp": "timestamp",
            "unbackfillReason": "unbackfill_reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "backfillProposal": False,
            "backfillTicket": False,
            "eventName": False,
            "requestedUserID": False,
            "ticket": False,
            "timestamp": False,
            "unbackfillReason": False,
        }

    # endregion static methods
