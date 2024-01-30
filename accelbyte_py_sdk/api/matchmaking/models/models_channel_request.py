# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Matchmaking Service

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
from ....core import StrEnum

from ..models.models_rule_set import ModelsRuleSet


class BlockedPlayerOptionEnum(StrEnum):
    BLOCKEDPLAYERCANMATCH = "blockedPlayerCanMatch"
    BLOCKEDPLAYERCANMATCHONDIFFERENTTEAM = "blockedPlayerCanMatchOnDifferentTeam"
    BLOCKEDPLAYERCANNOTMATCH = "blockedPlayerCannotMatch"


class SubGamemodeSelectionEnum(StrEnum):
    RANDOM = "random"
    TICKETORDER = "ticketOrder"


class ModelsChannelRequest(Model):
    """Models channel request (models.ChannelRequest)

    Properties:
        deployment: (deployment) REQUIRED str

        description: (description) REQUIRED str

        find_match_timeout_seconds: (find_match_timeout_seconds) REQUIRED int

        game_mode: (game_mode) REQUIRED str

        max_delay_ms: (max_delay_ms) REQUIRED int

        rule_set: (rule_set) REQUIRED ModelsRuleSet

        session_queue_timeout_seconds: (session_queue_timeout_seconds) REQUIRED int

        blocked_player_option: (blocked_player_option) OPTIONAL Union[str, BlockedPlayerOptionEnum]

        joinable: (joinable) OPTIONAL bool

        region_expansion_range_ms: (region_expansion_range_ms) OPTIONAL int

        region_expansion_rate_ms: (region_expansion_rate_ms) OPTIONAL int

        region_latency_initial_range_ms: (region_latency_initial_range_ms) OPTIONAL int

        region_latency_max_ms: (region_latency_max_ms) OPTIONAL int

        social_matchmaking: (social_matchmaking) OPTIONAL bool

        sub_gamemode_selection: (sub_gamemode_selection) OPTIONAL Union[str, SubGamemodeSelectionEnum]

        ticket_observability_enable: (ticket_observability_enable) OPTIONAL bool

        use_sub_gamemode: (use_sub_gamemode) OPTIONAL bool
    """

    # region fields

    deployment: str  # REQUIRED
    description: str  # REQUIRED
    find_match_timeout_seconds: int  # REQUIRED
    game_mode: str  # REQUIRED
    max_delay_ms: int  # REQUIRED
    rule_set: ModelsRuleSet  # REQUIRED
    session_queue_timeout_seconds: int  # REQUIRED
    blocked_player_option: Union[str, BlockedPlayerOptionEnum]  # OPTIONAL
    joinable: bool  # OPTIONAL
    region_expansion_range_ms: int  # OPTIONAL
    region_expansion_rate_ms: int  # OPTIONAL
    region_latency_initial_range_ms: int  # OPTIONAL
    region_latency_max_ms: int  # OPTIONAL
    social_matchmaking: bool  # OPTIONAL
    sub_gamemode_selection: Union[str, SubGamemodeSelectionEnum]  # OPTIONAL
    ticket_observability_enable: bool  # OPTIONAL
    use_sub_gamemode: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_deployment(self, value: str) -> ModelsChannelRequest:
        self.deployment = value
        return self

    def with_description(self, value: str) -> ModelsChannelRequest:
        self.description = value
        return self

    def with_find_match_timeout_seconds(self, value: int) -> ModelsChannelRequest:
        self.find_match_timeout_seconds = value
        return self

    def with_game_mode(self, value: str) -> ModelsChannelRequest:
        self.game_mode = value
        return self

    def with_max_delay_ms(self, value: int) -> ModelsChannelRequest:
        self.max_delay_ms = value
        return self

    def with_rule_set(self, value: ModelsRuleSet) -> ModelsChannelRequest:
        self.rule_set = value
        return self

    def with_session_queue_timeout_seconds(self, value: int) -> ModelsChannelRequest:
        self.session_queue_timeout_seconds = value
        return self

    def with_blocked_player_option(
        self, value: Union[str, BlockedPlayerOptionEnum]
    ) -> ModelsChannelRequest:
        self.blocked_player_option = value
        return self

    def with_joinable(self, value: bool) -> ModelsChannelRequest:
        self.joinable = value
        return self

    def with_region_expansion_range_ms(self, value: int) -> ModelsChannelRequest:
        self.region_expansion_range_ms = value
        return self

    def with_region_expansion_rate_ms(self, value: int) -> ModelsChannelRequest:
        self.region_expansion_rate_ms = value
        return self

    def with_region_latency_initial_range_ms(self, value: int) -> ModelsChannelRequest:
        self.region_latency_initial_range_ms = value
        return self

    def with_region_latency_max_ms(self, value: int) -> ModelsChannelRequest:
        self.region_latency_max_ms = value
        return self

    def with_social_matchmaking(self, value: bool) -> ModelsChannelRequest:
        self.social_matchmaking = value
        return self

    def with_sub_gamemode_selection(
        self, value: Union[str, SubGamemodeSelectionEnum]
    ) -> ModelsChannelRequest:
        self.sub_gamemode_selection = value
        return self

    def with_ticket_observability_enable(self, value: bool) -> ModelsChannelRequest:
        self.ticket_observability_enable = value
        return self

    def with_use_sub_gamemode(self, value: bool) -> ModelsChannelRequest:
        self.use_sub_gamemode = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deployment"):
            result["deployment"] = str(self.deployment)
        elif include_empty:
            result["deployment"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "find_match_timeout_seconds"):
            result["find_match_timeout_seconds"] = int(self.find_match_timeout_seconds)
        elif include_empty:
            result["find_match_timeout_seconds"] = 0
        if hasattr(self, "game_mode"):
            result["game_mode"] = str(self.game_mode)
        elif include_empty:
            result["game_mode"] = ""
        if hasattr(self, "max_delay_ms"):
            result["max_delay_ms"] = int(self.max_delay_ms)
        elif include_empty:
            result["max_delay_ms"] = 0
        if hasattr(self, "rule_set"):
            result["rule_set"] = self.rule_set.to_dict(include_empty=include_empty)
        elif include_empty:
            result["rule_set"] = ModelsRuleSet()
        if hasattr(self, "session_queue_timeout_seconds"):
            result["session_queue_timeout_seconds"] = int(
                self.session_queue_timeout_seconds
            )
        elif include_empty:
            result["session_queue_timeout_seconds"] = 0
        if hasattr(self, "blocked_player_option"):
            result["blocked_player_option"] = str(self.blocked_player_option)
        elif include_empty:
            result["blocked_player_option"] = Union[str, BlockedPlayerOptionEnum]()
        if hasattr(self, "joinable"):
            result["joinable"] = bool(self.joinable)
        elif include_empty:
            result["joinable"] = False
        if hasattr(self, "region_expansion_range_ms"):
            result["region_expansion_range_ms"] = int(self.region_expansion_range_ms)
        elif include_empty:
            result["region_expansion_range_ms"] = 0
        if hasattr(self, "region_expansion_rate_ms"):
            result["region_expansion_rate_ms"] = int(self.region_expansion_rate_ms)
        elif include_empty:
            result["region_expansion_rate_ms"] = 0
        if hasattr(self, "region_latency_initial_range_ms"):
            result["region_latency_initial_range_ms"] = int(
                self.region_latency_initial_range_ms
            )
        elif include_empty:
            result["region_latency_initial_range_ms"] = 0
        if hasattr(self, "region_latency_max_ms"):
            result["region_latency_max_ms"] = int(self.region_latency_max_ms)
        elif include_empty:
            result["region_latency_max_ms"] = 0
        if hasattr(self, "social_matchmaking"):
            result["social_matchmaking"] = bool(self.social_matchmaking)
        elif include_empty:
            result["social_matchmaking"] = False
        if hasattr(self, "sub_gamemode_selection"):
            result["sub_gamemode_selection"] = str(self.sub_gamemode_selection)
        elif include_empty:
            result["sub_gamemode_selection"] = Union[str, SubGamemodeSelectionEnum]()
        if hasattr(self, "ticket_observability_enable"):
            result["ticket_observability_enable"] = bool(
                self.ticket_observability_enable
            )
        elif include_empty:
            result["ticket_observability_enable"] = False
        if hasattr(self, "use_sub_gamemode"):
            result["use_sub_gamemode"] = bool(self.use_sub_gamemode)
        elif include_empty:
            result["use_sub_gamemode"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        deployment: str,
        description: str,
        find_match_timeout_seconds: int,
        game_mode: str,
        max_delay_ms: int,
        rule_set: ModelsRuleSet,
        session_queue_timeout_seconds: int,
        blocked_player_option: Optional[Union[str, BlockedPlayerOptionEnum]] = None,
        joinable: Optional[bool] = None,
        region_expansion_range_ms: Optional[int] = None,
        region_expansion_rate_ms: Optional[int] = None,
        region_latency_initial_range_ms: Optional[int] = None,
        region_latency_max_ms: Optional[int] = None,
        social_matchmaking: Optional[bool] = None,
        sub_gamemode_selection: Optional[Union[str, SubGamemodeSelectionEnum]] = None,
        ticket_observability_enable: Optional[bool] = None,
        use_sub_gamemode: Optional[bool] = None,
        **kwargs,
    ) -> ModelsChannelRequest:
        instance = cls()
        instance.deployment = deployment
        instance.description = description
        instance.find_match_timeout_seconds = find_match_timeout_seconds
        instance.game_mode = game_mode
        instance.max_delay_ms = max_delay_ms
        instance.rule_set = rule_set
        instance.session_queue_timeout_seconds = session_queue_timeout_seconds
        if blocked_player_option is not None:
            instance.blocked_player_option = blocked_player_option
        if joinable is not None:
            instance.joinable = joinable
        if region_expansion_range_ms is not None:
            instance.region_expansion_range_ms = region_expansion_range_ms
        if region_expansion_rate_ms is not None:
            instance.region_expansion_rate_ms = region_expansion_rate_ms
        if region_latency_initial_range_ms is not None:
            instance.region_latency_initial_range_ms = region_latency_initial_range_ms
        if region_latency_max_ms is not None:
            instance.region_latency_max_ms = region_latency_max_ms
        if social_matchmaking is not None:
            instance.social_matchmaking = social_matchmaking
        if sub_gamemode_selection is not None:
            instance.sub_gamemode_selection = sub_gamemode_selection
        if ticket_observability_enable is not None:
            instance.ticket_observability_enable = ticket_observability_enable
        if use_sub_gamemode is not None:
            instance.use_sub_gamemode = use_sub_gamemode
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsChannelRequest:
        instance = cls()
        if not dict_:
            return instance
        if "deployment" in dict_ and dict_["deployment"] is not None:
            instance.deployment = str(dict_["deployment"])
        elif include_empty:
            instance.deployment = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if (
            "find_match_timeout_seconds" in dict_
            and dict_["find_match_timeout_seconds"] is not None
        ):
            instance.find_match_timeout_seconds = int(
                dict_["find_match_timeout_seconds"]
            )
        elif include_empty:
            instance.find_match_timeout_seconds = 0
        if "game_mode" in dict_ and dict_["game_mode"] is not None:
            instance.game_mode = str(dict_["game_mode"])
        elif include_empty:
            instance.game_mode = ""
        if "max_delay_ms" in dict_ and dict_["max_delay_ms"] is not None:
            instance.max_delay_ms = int(dict_["max_delay_ms"])
        elif include_empty:
            instance.max_delay_ms = 0
        if "rule_set" in dict_ and dict_["rule_set"] is not None:
            instance.rule_set = ModelsRuleSet.create_from_dict(
                dict_["rule_set"], include_empty=include_empty
            )
        elif include_empty:
            instance.rule_set = ModelsRuleSet()
        if (
            "session_queue_timeout_seconds" in dict_
            and dict_["session_queue_timeout_seconds"] is not None
        ):
            instance.session_queue_timeout_seconds = int(
                dict_["session_queue_timeout_seconds"]
            )
        elif include_empty:
            instance.session_queue_timeout_seconds = 0
        if (
            "blocked_player_option" in dict_
            and dict_["blocked_player_option"] is not None
        ):
            instance.blocked_player_option = str(dict_["blocked_player_option"])
        elif include_empty:
            instance.blocked_player_option = Union[str, BlockedPlayerOptionEnum]()
        if "joinable" in dict_ and dict_["joinable"] is not None:
            instance.joinable = bool(dict_["joinable"])
        elif include_empty:
            instance.joinable = False
        if (
            "region_expansion_range_ms" in dict_
            and dict_["region_expansion_range_ms"] is not None
        ):
            instance.region_expansion_range_ms = int(dict_["region_expansion_range_ms"])
        elif include_empty:
            instance.region_expansion_range_ms = 0
        if (
            "region_expansion_rate_ms" in dict_
            and dict_["region_expansion_rate_ms"] is not None
        ):
            instance.region_expansion_rate_ms = int(dict_["region_expansion_rate_ms"])
        elif include_empty:
            instance.region_expansion_rate_ms = 0
        if (
            "region_latency_initial_range_ms" in dict_
            and dict_["region_latency_initial_range_ms"] is not None
        ):
            instance.region_latency_initial_range_ms = int(
                dict_["region_latency_initial_range_ms"]
            )
        elif include_empty:
            instance.region_latency_initial_range_ms = 0
        if (
            "region_latency_max_ms" in dict_
            and dict_["region_latency_max_ms"] is not None
        ):
            instance.region_latency_max_ms = int(dict_["region_latency_max_ms"])
        elif include_empty:
            instance.region_latency_max_ms = 0
        if "social_matchmaking" in dict_ and dict_["social_matchmaking"] is not None:
            instance.social_matchmaking = bool(dict_["social_matchmaking"])
        elif include_empty:
            instance.social_matchmaking = False
        if (
            "sub_gamemode_selection" in dict_
            and dict_["sub_gamemode_selection"] is not None
        ):
            instance.sub_gamemode_selection = str(dict_["sub_gamemode_selection"])
        elif include_empty:
            instance.sub_gamemode_selection = Union[str, SubGamemodeSelectionEnum]()
        if (
            "ticket_observability_enable" in dict_
            and dict_["ticket_observability_enable"] is not None
        ):
            instance.ticket_observability_enable = bool(
                dict_["ticket_observability_enable"]
            )
        elif include_empty:
            instance.ticket_observability_enable = False
        if "use_sub_gamemode" in dict_ and dict_["use_sub_gamemode"] is not None:
            instance.use_sub_gamemode = bool(dict_["use_sub_gamemode"])
        elif include_empty:
            instance.use_sub_gamemode = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsChannelRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsChannelRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsChannelRequest,
        List[ModelsChannelRequest],
        Dict[Any, ModelsChannelRequest],
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
            "deployment": "deployment",
            "description": "description",
            "find_match_timeout_seconds": "find_match_timeout_seconds",
            "game_mode": "game_mode",
            "max_delay_ms": "max_delay_ms",
            "rule_set": "rule_set",
            "session_queue_timeout_seconds": "session_queue_timeout_seconds",
            "blocked_player_option": "blocked_player_option",
            "joinable": "joinable",
            "region_expansion_range_ms": "region_expansion_range_ms",
            "region_expansion_rate_ms": "region_expansion_rate_ms",
            "region_latency_initial_range_ms": "region_latency_initial_range_ms",
            "region_latency_max_ms": "region_latency_max_ms",
            "social_matchmaking": "social_matchmaking",
            "sub_gamemode_selection": "sub_gamemode_selection",
            "ticket_observability_enable": "ticket_observability_enable",
            "use_sub_gamemode": "use_sub_gamemode",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deployment": True,
            "description": True,
            "find_match_timeout_seconds": True,
            "game_mode": True,
            "max_delay_ms": True,
            "rule_set": True,
            "session_queue_timeout_seconds": True,
            "blocked_player_option": False,
            "joinable": False,
            "region_expansion_range_ms": False,
            "region_expansion_rate_ms": False,
            "region_latency_initial_range_ms": False,
            "region_latency_max_ms": False,
            "social_matchmaking": False,
            "sub_gamemode_selection": False,
            "ticket_observability_enable": False,
            "use_sub_gamemode": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "blocked_player_option": [
                "blockedPlayerCanMatch",
                "blockedPlayerCanMatchOnDifferentTeam",
                "blockedPlayerCannotMatch",
            ],
            "sub_gamemode_selection": ["random", "ticketOrder"],
        }

    # endregion static methods
