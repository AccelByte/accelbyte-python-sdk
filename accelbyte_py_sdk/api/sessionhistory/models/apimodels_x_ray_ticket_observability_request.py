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

from ..models.models_alliance_rule import ModelsAllianceRule
from ..models.models_matching_rule import ModelsMatchingRule


class ApimodelsXRayTicketObservabilityRequest(Model):
    """Apimodels X ray ticket observability request (apimodels.XRayTicketObservabilityRequest)

    Properties:
        action: (action) REQUIRED str

        game_mode: (gameMode) REQUIRED str

        is_backfill_match: (isBackfillMatch) REQUIRED bool

        is_rule_set_flexed: (isRuleSetFlexed) REQUIRED bool

        namespace: (namespace) REQUIRED str

        session_tick_id: (sessionTickID) REQUIRED str

        tick_id: (tickID) REQUIRED int

        ticket_id: (ticketID) REQUIRED str

        timestamp: (timestamp) REQUIRED str

        active_alliance_rule: (activeAllianceRule) OPTIONAL ModelsAllianceRule

        active_matching_rule: (activeMatchingRule) OPTIONAL List[ModelsMatchingRule]

        function: (function) OPTIONAL str

        iteration: (iteration) OPTIONAL int

        match_id: (matchID) OPTIONAL str

        remaining_players_per_ticket: (remainingPlayersPerTicket) OPTIONAL List[int]

        remaining_tickets: (remainingTickets) OPTIONAL int

        time_to_match_sec: (timeToMatchSec) OPTIONAL float

        unbackfill_reason: (unbackfillReason) OPTIONAL str

        unmatch_reason: (unmatchReason) OPTIONAL str
    """

    # region fields

    action: str  # REQUIRED
    game_mode: str  # REQUIRED
    is_backfill_match: bool  # REQUIRED
    is_rule_set_flexed: bool  # REQUIRED
    namespace: str  # REQUIRED
    session_tick_id: str  # REQUIRED
    tick_id: int  # REQUIRED
    ticket_id: str  # REQUIRED
    timestamp: str  # REQUIRED
    active_alliance_rule: ModelsAllianceRule  # OPTIONAL
    active_matching_rule: List[ModelsMatchingRule]  # OPTIONAL
    function: str  # OPTIONAL
    iteration: int  # OPTIONAL
    match_id: str  # OPTIONAL
    remaining_players_per_ticket: List[int]  # OPTIONAL
    remaining_tickets: int  # OPTIONAL
    time_to_match_sec: float  # OPTIONAL
    unbackfill_reason: str  # OPTIONAL
    unmatch_reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ApimodelsXRayTicketObservabilityRequest:
        self.action = value
        return self

    def with_game_mode(self, value: str) -> ApimodelsXRayTicketObservabilityRequest:
        self.game_mode = value
        return self

    def with_is_backfill_match(
        self, value: bool
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.is_backfill_match = value
        return self

    def with_is_rule_set_flexed(
        self, value: bool
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.is_rule_set_flexed = value
        return self

    def with_namespace(self, value: str) -> ApimodelsXRayTicketObservabilityRequest:
        self.namespace = value
        return self

    def with_session_tick_id(
        self, value: str
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.session_tick_id = value
        return self

    def with_tick_id(self, value: int) -> ApimodelsXRayTicketObservabilityRequest:
        self.tick_id = value
        return self

    def with_ticket_id(self, value: str) -> ApimodelsXRayTicketObservabilityRequest:
        self.ticket_id = value
        return self

    def with_timestamp(self, value: str) -> ApimodelsXRayTicketObservabilityRequest:
        self.timestamp = value
        return self

    def with_active_alliance_rule(
        self, value: ModelsAllianceRule
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.active_alliance_rule = value
        return self

    def with_active_matching_rule(
        self, value: List[ModelsMatchingRule]
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.active_matching_rule = value
        return self

    def with_function(self, value: str) -> ApimodelsXRayTicketObservabilityRequest:
        self.function = value
        return self

    def with_iteration(self, value: int) -> ApimodelsXRayTicketObservabilityRequest:
        self.iteration = value
        return self

    def with_match_id(self, value: str) -> ApimodelsXRayTicketObservabilityRequest:
        self.match_id = value
        return self

    def with_remaining_players_per_ticket(
        self, value: List[int]
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.remaining_players_per_ticket = value
        return self

    def with_remaining_tickets(
        self, value: int
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.remaining_tickets = value
        return self

    def with_time_to_match_sec(
        self, value: float
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.time_to_match_sec = value
        return self

    def with_unbackfill_reason(
        self, value: str
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.unbackfill_reason = value
        return self

    def with_unmatch_reason(
        self, value: str
    ) -> ApimodelsXRayTicketObservabilityRequest:
        self.unmatch_reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = ""
        if hasattr(self, "game_mode"):
            result["gameMode"] = str(self.game_mode)
        elif include_empty:
            result["gameMode"] = ""
        if hasattr(self, "is_backfill_match"):
            result["isBackfillMatch"] = bool(self.is_backfill_match)
        elif include_empty:
            result["isBackfillMatch"] = False
        if hasattr(self, "is_rule_set_flexed"):
            result["isRuleSetFlexed"] = bool(self.is_rule_set_flexed)
        elif include_empty:
            result["isRuleSetFlexed"] = False
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "session_tick_id"):
            result["sessionTickID"] = str(self.session_tick_id)
        elif include_empty:
            result["sessionTickID"] = ""
        if hasattr(self, "tick_id"):
            result["tickID"] = int(self.tick_id)
        elif include_empty:
            result["tickID"] = 0
        if hasattr(self, "ticket_id"):
            result["ticketID"] = str(self.ticket_id)
        elif include_empty:
            result["ticketID"] = ""
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        if hasattr(self, "active_alliance_rule"):
            result["activeAllianceRule"] = self.active_alliance_rule.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["activeAllianceRule"] = ModelsAllianceRule()
        if hasattr(self, "active_matching_rule"):
            result["activeMatchingRule"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.active_matching_rule
            ]
        elif include_empty:
            result["activeMatchingRule"] = []
        if hasattr(self, "function"):
            result["function"] = str(self.function)
        elif include_empty:
            result["function"] = ""
        if hasattr(self, "iteration"):
            result["iteration"] = int(self.iteration)
        elif include_empty:
            result["iteration"] = 0
        if hasattr(self, "match_id"):
            result["matchID"] = str(self.match_id)
        elif include_empty:
            result["matchID"] = ""
        if hasattr(self, "remaining_players_per_ticket"):
            result["remainingPlayersPerTicket"] = [
                int(i0) for i0 in self.remaining_players_per_ticket
            ]
        elif include_empty:
            result["remainingPlayersPerTicket"] = []
        if hasattr(self, "remaining_tickets"):
            result["remainingTickets"] = int(self.remaining_tickets)
        elif include_empty:
            result["remainingTickets"] = 0
        if hasattr(self, "time_to_match_sec"):
            result["timeToMatchSec"] = float(self.time_to_match_sec)
        elif include_empty:
            result["timeToMatchSec"] = 0.0
        if hasattr(self, "unbackfill_reason"):
            result["unbackfillReason"] = str(self.unbackfill_reason)
        elif include_empty:
            result["unbackfillReason"] = ""
        if hasattr(self, "unmatch_reason"):
            result["unmatchReason"] = str(self.unmatch_reason)
        elif include_empty:
            result["unmatchReason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: str,
        game_mode: str,
        is_backfill_match: bool,
        is_rule_set_flexed: bool,
        namespace: str,
        session_tick_id: str,
        tick_id: int,
        ticket_id: str,
        timestamp: str,
        active_alliance_rule: Optional[ModelsAllianceRule] = None,
        active_matching_rule: Optional[List[ModelsMatchingRule]] = None,
        function: Optional[str] = None,
        iteration: Optional[int] = None,
        match_id: Optional[str] = None,
        remaining_players_per_ticket: Optional[List[int]] = None,
        remaining_tickets: Optional[int] = None,
        time_to_match_sec: Optional[float] = None,
        unbackfill_reason: Optional[str] = None,
        unmatch_reason: Optional[str] = None,
        **kwargs,
    ) -> ApimodelsXRayTicketObservabilityRequest:
        instance = cls()
        instance.action = action
        instance.game_mode = game_mode
        instance.is_backfill_match = is_backfill_match
        instance.is_rule_set_flexed = is_rule_set_flexed
        instance.namespace = namespace
        instance.session_tick_id = session_tick_id
        instance.tick_id = tick_id
        instance.ticket_id = ticket_id
        instance.timestamp = timestamp
        if active_alliance_rule is not None:
            instance.active_alliance_rule = active_alliance_rule
        if active_matching_rule is not None:
            instance.active_matching_rule = active_matching_rule
        if function is not None:
            instance.function = function
        if iteration is not None:
            instance.iteration = iteration
        if match_id is not None:
            instance.match_id = match_id
        if remaining_players_per_ticket is not None:
            instance.remaining_players_per_ticket = remaining_players_per_ticket
        if remaining_tickets is not None:
            instance.remaining_tickets = remaining_tickets
        if time_to_match_sec is not None:
            instance.time_to_match_sec = time_to_match_sec
        if unbackfill_reason is not None:
            instance.unbackfill_reason = unbackfill_reason
        if unmatch_reason is not None:
            instance.unmatch_reason = unmatch_reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsXRayTicketObservabilityRequest:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = ""
        if "gameMode" in dict_ and dict_["gameMode"] is not None:
            instance.game_mode = str(dict_["gameMode"])
        elif include_empty:
            instance.game_mode = ""
        if "isBackfillMatch" in dict_ and dict_["isBackfillMatch"] is not None:
            instance.is_backfill_match = bool(dict_["isBackfillMatch"])
        elif include_empty:
            instance.is_backfill_match = False
        if "isRuleSetFlexed" in dict_ and dict_["isRuleSetFlexed"] is not None:
            instance.is_rule_set_flexed = bool(dict_["isRuleSetFlexed"])
        elif include_empty:
            instance.is_rule_set_flexed = False
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "sessionTickID" in dict_ and dict_["sessionTickID"] is not None:
            instance.session_tick_id = str(dict_["sessionTickID"])
        elif include_empty:
            instance.session_tick_id = ""
        if "tickID" in dict_ and dict_["tickID"] is not None:
            instance.tick_id = int(dict_["tickID"])
        elif include_empty:
            instance.tick_id = 0
        if "ticketID" in dict_ and dict_["ticketID"] is not None:
            instance.ticket_id = str(dict_["ticketID"])
        elif include_empty:
            instance.ticket_id = ""
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        if "activeAllianceRule" in dict_ and dict_["activeAllianceRule"] is not None:
            instance.active_alliance_rule = ModelsAllianceRule.create_from_dict(
                dict_["activeAllianceRule"], include_empty=include_empty
            )
        elif include_empty:
            instance.active_alliance_rule = ModelsAllianceRule()
        if "activeMatchingRule" in dict_ and dict_["activeMatchingRule"] is not None:
            instance.active_matching_rule = [
                ModelsMatchingRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["activeMatchingRule"]
            ]
        elif include_empty:
            instance.active_matching_rule = []
        if "function" in dict_ and dict_["function"] is not None:
            instance.function = str(dict_["function"])
        elif include_empty:
            instance.function = ""
        if "iteration" in dict_ and dict_["iteration"] is not None:
            instance.iteration = int(dict_["iteration"])
        elif include_empty:
            instance.iteration = 0
        if "matchID" in dict_ and dict_["matchID"] is not None:
            instance.match_id = str(dict_["matchID"])
        elif include_empty:
            instance.match_id = ""
        if (
            "remainingPlayersPerTicket" in dict_
            and dict_["remainingPlayersPerTicket"] is not None
        ):
            instance.remaining_players_per_ticket = [
                int(i0) for i0 in dict_["remainingPlayersPerTicket"]
            ]
        elif include_empty:
            instance.remaining_players_per_ticket = []
        if "remainingTickets" in dict_ and dict_["remainingTickets"] is not None:
            instance.remaining_tickets = int(dict_["remainingTickets"])
        elif include_empty:
            instance.remaining_tickets = 0
        if "timeToMatchSec" in dict_ and dict_["timeToMatchSec"] is not None:
            instance.time_to_match_sec = float(dict_["timeToMatchSec"])
        elif include_empty:
            instance.time_to_match_sec = 0.0
        if "unbackfillReason" in dict_ and dict_["unbackfillReason"] is not None:
            instance.unbackfill_reason = str(dict_["unbackfillReason"])
        elif include_empty:
            instance.unbackfill_reason = ""
        if "unmatchReason" in dict_ and dict_["unmatchReason"] is not None:
            instance.unmatch_reason = str(dict_["unmatchReason"])
        elif include_empty:
            instance.unmatch_reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsXRayTicketObservabilityRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsXRayTicketObservabilityRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsXRayTicketObservabilityRequest,
        List[ApimodelsXRayTicketObservabilityRequest],
        Dict[Any, ApimodelsXRayTicketObservabilityRequest],
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
            "gameMode": "game_mode",
            "isBackfillMatch": "is_backfill_match",
            "isRuleSetFlexed": "is_rule_set_flexed",
            "namespace": "namespace",
            "sessionTickID": "session_tick_id",
            "tickID": "tick_id",
            "ticketID": "ticket_id",
            "timestamp": "timestamp",
            "activeAllianceRule": "active_alliance_rule",
            "activeMatchingRule": "active_matching_rule",
            "function": "function",
            "iteration": "iteration",
            "matchID": "match_id",
            "remainingPlayersPerTicket": "remaining_players_per_ticket",
            "remainingTickets": "remaining_tickets",
            "timeToMatchSec": "time_to_match_sec",
            "unbackfillReason": "unbackfill_reason",
            "unmatchReason": "unmatch_reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "gameMode": True,
            "isBackfillMatch": True,
            "isRuleSetFlexed": True,
            "namespace": True,
            "sessionTickID": True,
            "tickID": True,
            "ticketID": True,
            "timestamp": True,
            "activeAllianceRule": False,
            "activeMatchingRule": False,
            "function": False,
            "iteration": False,
            "matchID": False,
            "remainingPlayersPerTicket": False,
            "remainingTickets": False,
            "timeToMatchSec": False,
            "unbackfillReason": False,
            "unmatchReason": False,
        }

    # endregion static methods
