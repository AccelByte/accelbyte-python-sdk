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
from ..models.models_matchmaking_result import ModelsMatchmakingResult


class ModelsTicketData(Model):
    """Models ticket data (models.TicketData)

    Properties:
        action: (action) REQUIRED str

        game_mode: (gameMode) REQUIRED str

        is_backfill_match: (isBackfillMatch) REQUIRED bool

        is_pivot: (isPivot) REQUIRED bool

        is_rule_set_flexed: (isRuleSetFlexed) REQUIRED bool

        matched_region: (matchedRegion) REQUIRED str

        member_attributes: (memberAttributes) REQUIRED Dict[str, Any]

        namespace: (namespace) REQUIRED str

        party_id: (partyID) REQUIRED str

        pod_name: (podName) REQUIRED str

        session_tick_id: (sessionTickID) REQUIRED str

        tick_id: (tickID) REQUIRED int

        timestamp: (timestamp) REQUIRED str

        total_players: (totalPlayers) REQUIRED int

        active_alliance_rule: (activeAllianceRule) OPTIONAL ModelsAllianceRule

        active_matching_rule: (activeMatchingRule) OPTIONAL List[ModelsMatchingRule]

        elapsed_time: (elapsedTime) OPTIONAL float

        function: (function) OPTIONAL str

        iteration: (iteration) OPTIONAL int

        match_id: (matchID) OPTIONAL str

        remaining_players_per_ticket: (remainingPlayersPerTicket) OPTIONAL List[int]

        remaining_tickets: (remainingTickets) OPTIONAL int

        session: (session) OPTIONAL ModelsMatchmakingResult

        time_to_match_sec: (timeToMatchSec) OPTIONAL float

        unbackfill_reason: (unbackfillReason) OPTIONAL str

        unmatch_reason: (unmatchReason) OPTIONAL str
    """

    # region fields

    action: str  # REQUIRED
    game_mode: str  # REQUIRED
    is_backfill_match: bool  # REQUIRED
    is_pivot: bool  # REQUIRED
    is_rule_set_flexed: bool  # REQUIRED
    matched_region: str  # REQUIRED
    member_attributes: Dict[str, Any]  # REQUIRED
    namespace: str  # REQUIRED
    party_id: str  # REQUIRED
    pod_name: str  # REQUIRED
    session_tick_id: str  # REQUIRED
    tick_id: int  # REQUIRED
    timestamp: str  # REQUIRED
    total_players: int  # REQUIRED
    active_alliance_rule: ModelsAllianceRule  # OPTIONAL
    active_matching_rule: List[ModelsMatchingRule]  # OPTIONAL
    elapsed_time: float  # OPTIONAL
    function: str  # OPTIONAL
    iteration: int  # OPTIONAL
    match_id: str  # OPTIONAL
    remaining_players_per_ticket: List[int]  # OPTIONAL
    remaining_tickets: int  # OPTIONAL
    session: ModelsMatchmakingResult  # OPTIONAL
    time_to_match_sec: float  # OPTIONAL
    unbackfill_reason: str  # OPTIONAL
    unmatch_reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: str) -> ModelsTicketData:
        self.action = value
        return self

    def with_game_mode(self, value: str) -> ModelsTicketData:
        self.game_mode = value
        return self

    def with_is_backfill_match(self, value: bool) -> ModelsTicketData:
        self.is_backfill_match = value
        return self

    def with_is_pivot(self, value: bool) -> ModelsTicketData:
        self.is_pivot = value
        return self

    def with_is_rule_set_flexed(self, value: bool) -> ModelsTicketData:
        self.is_rule_set_flexed = value
        return self

    def with_matched_region(self, value: str) -> ModelsTicketData:
        self.matched_region = value
        return self

    def with_member_attributes(self, value: Dict[str, Any]) -> ModelsTicketData:
        self.member_attributes = value
        return self

    def with_namespace(self, value: str) -> ModelsTicketData:
        self.namespace = value
        return self

    def with_party_id(self, value: str) -> ModelsTicketData:
        self.party_id = value
        return self

    def with_pod_name(self, value: str) -> ModelsTicketData:
        self.pod_name = value
        return self

    def with_session_tick_id(self, value: str) -> ModelsTicketData:
        self.session_tick_id = value
        return self

    def with_tick_id(self, value: int) -> ModelsTicketData:
        self.tick_id = value
        return self

    def with_timestamp(self, value: str) -> ModelsTicketData:
        self.timestamp = value
        return self

    def with_total_players(self, value: int) -> ModelsTicketData:
        self.total_players = value
        return self

    def with_active_alliance_rule(self, value: ModelsAllianceRule) -> ModelsTicketData:
        self.active_alliance_rule = value
        return self

    def with_active_matching_rule(
        self, value: List[ModelsMatchingRule]
    ) -> ModelsTicketData:
        self.active_matching_rule = value
        return self

    def with_elapsed_time(self, value: float) -> ModelsTicketData:
        self.elapsed_time = value
        return self

    def with_function(self, value: str) -> ModelsTicketData:
        self.function = value
        return self

    def with_iteration(self, value: int) -> ModelsTicketData:
        self.iteration = value
        return self

    def with_match_id(self, value: str) -> ModelsTicketData:
        self.match_id = value
        return self

    def with_remaining_players_per_ticket(self, value: List[int]) -> ModelsTicketData:
        self.remaining_players_per_ticket = value
        return self

    def with_remaining_tickets(self, value: int) -> ModelsTicketData:
        self.remaining_tickets = value
        return self

    def with_session(self, value: ModelsMatchmakingResult) -> ModelsTicketData:
        self.session = value
        return self

    def with_time_to_match_sec(self, value: float) -> ModelsTicketData:
        self.time_to_match_sec = value
        return self

    def with_unbackfill_reason(self, value: str) -> ModelsTicketData:
        self.unbackfill_reason = value
        return self

    def with_unmatch_reason(self, value: str) -> ModelsTicketData:
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
        if hasattr(self, "is_pivot"):
            result["isPivot"] = bool(self.is_pivot)
        elif include_empty:
            result["isPivot"] = False
        if hasattr(self, "is_rule_set_flexed"):
            result["isRuleSetFlexed"] = bool(self.is_rule_set_flexed)
        elif include_empty:
            result["isRuleSetFlexed"] = False
        if hasattr(self, "matched_region"):
            result["matchedRegion"] = str(self.matched_region)
        elif include_empty:
            result["matchedRegion"] = ""
        if hasattr(self, "member_attributes"):
            result["memberAttributes"] = {
                str(k0): v0 for k0, v0 in self.member_attributes.items()
            }
        elif include_empty:
            result["memberAttributes"] = {}
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "party_id"):
            result["partyID"] = str(self.party_id)
        elif include_empty:
            result["partyID"] = ""
        if hasattr(self, "pod_name"):
            result["podName"] = str(self.pod_name)
        elif include_empty:
            result["podName"] = ""
        if hasattr(self, "session_tick_id"):
            result["sessionTickID"] = str(self.session_tick_id)
        elif include_empty:
            result["sessionTickID"] = ""
        if hasattr(self, "tick_id"):
            result["tickID"] = int(self.tick_id)
        elif include_empty:
            result["tickID"] = 0
        if hasattr(self, "timestamp"):
            result["timestamp"] = str(self.timestamp)
        elif include_empty:
            result["timestamp"] = ""
        if hasattr(self, "total_players"):
            result["totalPlayers"] = int(self.total_players)
        elif include_empty:
            result["totalPlayers"] = 0
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
        if hasattr(self, "elapsed_time"):
            result["elapsedTime"] = float(self.elapsed_time)
        elif include_empty:
            result["elapsedTime"] = 0.0
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
        if hasattr(self, "session"):
            result["session"] = self.session.to_dict(include_empty=include_empty)
        elif include_empty:
            result["session"] = ModelsMatchmakingResult()
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
        is_pivot: bool,
        is_rule_set_flexed: bool,
        matched_region: str,
        member_attributes: Dict[str, Any],
        namespace: str,
        party_id: str,
        pod_name: str,
        session_tick_id: str,
        tick_id: int,
        timestamp: str,
        total_players: int,
        active_alliance_rule: Optional[ModelsAllianceRule] = None,
        active_matching_rule: Optional[List[ModelsMatchingRule]] = None,
        elapsed_time: Optional[float] = None,
        function: Optional[str] = None,
        iteration: Optional[int] = None,
        match_id: Optional[str] = None,
        remaining_players_per_ticket: Optional[List[int]] = None,
        remaining_tickets: Optional[int] = None,
        session: Optional[ModelsMatchmakingResult] = None,
        time_to_match_sec: Optional[float] = None,
        unbackfill_reason: Optional[str] = None,
        unmatch_reason: Optional[str] = None,
        **kwargs,
    ) -> ModelsTicketData:
        instance = cls()
        instance.action = action
        instance.game_mode = game_mode
        instance.is_backfill_match = is_backfill_match
        instance.is_pivot = is_pivot
        instance.is_rule_set_flexed = is_rule_set_flexed
        instance.matched_region = matched_region
        instance.member_attributes = member_attributes
        instance.namespace = namespace
        instance.party_id = party_id
        instance.pod_name = pod_name
        instance.session_tick_id = session_tick_id
        instance.tick_id = tick_id
        instance.timestamp = timestamp
        instance.total_players = total_players
        if active_alliance_rule is not None:
            instance.active_alliance_rule = active_alliance_rule
        if active_matching_rule is not None:
            instance.active_matching_rule = active_matching_rule
        if elapsed_time is not None:
            instance.elapsed_time = elapsed_time
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
        if session is not None:
            instance.session = session
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
    ) -> ModelsTicketData:
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
        if "isPivot" in dict_ and dict_["isPivot"] is not None:
            instance.is_pivot = bool(dict_["isPivot"])
        elif include_empty:
            instance.is_pivot = False
        if "isRuleSetFlexed" in dict_ and dict_["isRuleSetFlexed"] is not None:
            instance.is_rule_set_flexed = bool(dict_["isRuleSetFlexed"])
        elif include_empty:
            instance.is_rule_set_flexed = False
        if "matchedRegion" in dict_ and dict_["matchedRegion"] is not None:
            instance.matched_region = str(dict_["matchedRegion"])
        elif include_empty:
            instance.matched_region = ""
        if "memberAttributes" in dict_ and dict_["memberAttributes"] is not None:
            instance.member_attributes = {
                str(k0): v0 for k0, v0 in dict_["memberAttributes"].items()
            }
        elif include_empty:
            instance.member_attributes = {}
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "partyID" in dict_ and dict_["partyID"] is not None:
            instance.party_id = str(dict_["partyID"])
        elif include_empty:
            instance.party_id = ""
        if "podName" in dict_ and dict_["podName"] is not None:
            instance.pod_name = str(dict_["podName"])
        elif include_empty:
            instance.pod_name = ""
        if "sessionTickID" in dict_ and dict_["sessionTickID"] is not None:
            instance.session_tick_id = str(dict_["sessionTickID"])
        elif include_empty:
            instance.session_tick_id = ""
        if "tickID" in dict_ and dict_["tickID"] is not None:
            instance.tick_id = int(dict_["tickID"])
        elif include_empty:
            instance.tick_id = 0
        if "timestamp" in dict_ and dict_["timestamp"] is not None:
            instance.timestamp = str(dict_["timestamp"])
        elif include_empty:
            instance.timestamp = ""
        if "totalPlayers" in dict_ and dict_["totalPlayers"] is not None:
            instance.total_players = int(dict_["totalPlayers"])
        elif include_empty:
            instance.total_players = 0
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
        if "elapsedTime" in dict_ and dict_["elapsedTime"] is not None:
            instance.elapsed_time = float(dict_["elapsedTime"])
        elif include_empty:
            instance.elapsed_time = 0.0
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
        if "session" in dict_ and dict_["session"] is not None:
            instance.session = ModelsMatchmakingResult.create_from_dict(
                dict_["session"], include_empty=include_empty
            )
        elif include_empty:
            instance.session = ModelsMatchmakingResult()
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
    ) -> Dict[str, ModelsTicketData]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsTicketData]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsTicketData, List[ModelsTicketData], Dict[Any, ModelsTicketData]]:
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
            "isPivot": "is_pivot",
            "isRuleSetFlexed": "is_rule_set_flexed",
            "matchedRegion": "matched_region",
            "memberAttributes": "member_attributes",
            "namespace": "namespace",
            "partyID": "party_id",
            "podName": "pod_name",
            "sessionTickID": "session_tick_id",
            "tickID": "tick_id",
            "timestamp": "timestamp",
            "totalPlayers": "total_players",
            "activeAllianceRule": "active_alliance_rule",
            "activeMatchingRule": "active_matching_rule",
            "elapsedTime": "elapsed_time",
            "function": "function",
            "iteration": "iteration",
            "matchID": "match_id",
            "remainingPlayersPerTicket": "remaining_players_per_ticket",
            "remainingTickets": "remaining_tickets",
            "session": "session",
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
            "isPivot": True,
            "isRuleSetFlexed": True,
            "matchedRegion": True,
            "memberAttributes": True,
            "namespace": True,
            "partyID": True,
            "podName": True,
            "sessionTickID": True,
            "tickID": True,
            "timestamp": True,
            "totalPlayers": True,
            "activeAllianceRule": False,
            "activeMatchingRule": False,
            "elapsedTime": False,
            "function": False,
            "iteration": False,
            "matchID": False,
            "remainingPlayersPerTicket": False,
            "remainingTickets": False,
            "session": False,
            "timeToMatchSec": False,
            "unbackfillReason": False,
            "unmatchReason": False,
        }

    # endregion static methods
