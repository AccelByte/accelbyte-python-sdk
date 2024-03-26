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

from ..models.models_alliance_flexing_rule import ModelsAllianceFlexingRule
from ..models.models_bucket_mmr_rule import ModelsBucketMMRRule
from ..models.models_flexing_rule import ModelsFlexingRule
from ..models.models_match_option_rule import ModelsMatchOptionRule
from ..models.models_matching_rule import ModelsMatchingRule
from ..models.models_selection_rule import ModelsSelectionRule
from ..models.models_sort_ticket import ModelsSortTicket
from ..models.models_sort_ticket_rule import ModelsSortTicketRule
from ..models.models_update_alliance_rule import ModelsUpdateAllianceRule
from ..models.models_update_ruleset_sub_game_modes import (
    ModelsUpdateRulesetSubGameModes,
)


class ModelsUpdateRuleset(Model):
    """Models update ruleset (models.UpdateRuleset)

    Properties:
        alliance: (alliance) REQUIRED ModelsUpdateAllianceRule

        alliance_flexing_rule: (alliance_flexing_rule) REQUIRED List[ModelsAllianceFlexingRule]

        batch_size: (batch_size) REQUIRED int

        sort_ticket: (sort_ticket) REQUIRED ModelsSortTicket

        sort_tickets: (sort_tickets) REQUIRED List[ModelsSortTicketRule]

        ticket_flexing_selection: (ticket_flexing_selection) REQUIRED str

        ticket_flexing_selections: (ticket_flexing_selections) REQUIRED List[ModelsSelectionRule]

        bucket_mmr_rule: (bucket_mmr_rule) OPTIONAL ModelsBucketMMRRule

        flexing_rules: (flexingRules) OPTIONAL List[ModelsFlexingRule]

        match_options: (match_options) OPTIONAL ModelsMatchOptionRule

        matching_rules: (matchingRules) OPTIONAL List[ModelsMatchingRule]

        sub_game_modes: (sub_game_modes) OPTIONAL ModelsUpdateRulesetSubGameModes

        use_newest_ticket_for_flexing: (use_newest_ticket_for_flexing) OPTIONAL bool
    """

    # region fields

    alliance: ModelsUpdateAllianceRule  # REQUIRED
    alliance_flexing_rule: List[ModelsAllianceFlexingRule]  # REQUIRED
    batch_size: int  # REQUIRED
    sort_ticket: ModelsSortTicket  # REQUIRED
    sort_tickets: List[ModelsSortTicketRule]  # REQUIRED
    ticket_flexing_selection: str  # REQUIRED
    ticket_flexing_selections: List[ModelsSelectionRule]  # REQUIRED
    bucket_mmr_rule: ModelsBucketMMRRule  # OPTIONAL
    flexing_rules: List[ModelsFlexingRule]  # OPTIONAL
    match_options: ModelsMatchOptionRule  # OPTIONAL
    matching_rules: List[ModelsMatchingRule]  # OPTIONAL
    sub_game_modes: ModelsUpdateRulesetSubGameModes  # OPTIONAL
    use_newest_ticket_for_flexing: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_alliance(self, value: ModelsUpdateAllianceRule) -> ModelsUpdateRuleset:
        self.alliance = value
        return self

    def with_alliance_flexing_rule(
        self, value: List[ModelsAllianceFlexingRule]
    ) -> ModelsUpdateRuleset:
        self.alliance_flexing_rule = value
        return self

    def with_batch_size(self, value: int) -> ModelsUpdateRuleset:
        self.batch_size = value
        return self

    def with_sort_ticket(self, value: ModelsSortTicket) -> ModelsUpdateRuleset:
        self.sort_ticket = value
        return self

    def with_sort_tickets(
        self, value: List[ModelsSortTicketRule]
    ) -> ModelsUpdateRuleset:
        self.sort_tickets = value
        return self

    def with_ticket_flexing_selection(self, value: str) -> ModelsUpdateRuleset:
        self.ticket_flexing_selection = value
        return self

    def with_ticket_flexing_selections(
        self, value: List[ModelsSelectionRule]
    ) -> ModelsUpdateRuleset:
        self.ticket_flexing_selections = value
        return self

    def with_bucket_mmr_rule(self, value: ModelsBucketMMRRule) -> ModelsUpdateRuleset:
        self.bucket_mmr_rule = value
        return self

    def with_flexing_rules(self, value: List[ModelsFlexingRule]) -> ModelsUpdateRuleset:
        self.flexing_rules = value
        return self

    def with_match_options(self, value: ModelsMatchOptionRule) -> ModelsUpdateRuleset:
        self.match_options = value
        return self

    def with_matching_rules(
        self, value: List[ModelsMatchingRule]
    ) -> ModelsUpdateRuleset:
        self.matching_rules = value
        return self

    def with_sub_game_modes(
        self, value: ModelsUpdateRulesetSubGameModes
    ) -> ModelsUpdateRuleset:
        self.sub_game_modes = value
        return self

    def with_use_newest_ticket_for_flexing(self, value: bool) -> ModelsUpdateRuleset:
        self.use_newest_ticket_for_flexing = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alliance"):
            result["alliance"] = self.alliance.to_dict(include_empty=include_empty)
        elif include_empty:
            result["alliance"] = ModelsUpdateAllianceRule()
        if hasattr(self, "alliance_flexing_rule"):
            result["alliance_flexing_rule"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.alliance_flexing_rule
            ]
        elif include_empty:
            result["alliance_flexing_rule"] = []
        if hasattr(self, "batch_size"):
            result["batch_size"] = int(self.batch_size)
        elif include_empty:
            result["batch_size"] = 0
        if hasattr(self, "sort_ticket"):
            result["sort_ticket"] = self.sort_ticket.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["sort_ticket"] = ModelsSortTicket()
        if hasattr(self, "sort_tickets"):
            result["sort_tickets"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.sort_tickets
            ]
        elif include_empty:
            result["sort_tickets"] = []
        if hasattr(self, "ticket_flexing_selection"):
            result["ticket_flexing_selection"] = str(self.ticket_flexing_selection)
        elif include_empty:
            result["ticket_flexing_selection"] = ""
        if hasattr(self, "ticket_flexing_selections"):
            result["ticket_flexing_selections"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.ticket_flexing_selections
            ]
        elif include_empty:
            result["ticket_flexing_selections"] = []
        if hasattr(self, "bucket_mmr_rule"):
            result["bucket_mmr_rule"] = self.bucket_mmr_rule.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["bucket_mmr_rule"] = ModelsBucketMMRRule()
        if hasattr(self, "flexing_rules"):
            result["flexingRules"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.flexing_rules
            ]
        elif include_empty:
            result["flexingRules"] = []
        if hasattr(self, "match_options"):
            result["match_options"] = self.match_options.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["match_options"] = ModelsMatchOptionRule()
        if hasattr(self, "matching_rules"):
            result["matchingRules"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.matching_rules
            ]
        elif include_empty:
            result["matchingRules"] = []
        if hasattr(self, "sub_game_modes"):
            result["sub_game_modes"] = self.sub_game_modes.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["sub_game_modes"] = ModelsUpdateRulesetSubGameModes()
        if hasattr(self, "use_newest_ticket_for_flexing"):
            result["use_newest_ticket_for_flexing"] = bool(
                self.use_newest_ticket_for_flexing
            )
        elif include_empty:
            result["use_newest_ticket_for_flexing"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        alliance: ModelsUpdateAllianceRule,
        alliance_flexing_rule: List[ModelsAllianceFlexingRule],
        batch_size: int,
        sort_ticket: ModelsSortTicket,
        sort_tickets: List[ModelsSortTicketRule],
        ticket_flexing_selection: str,
        ticket_flexing_selections: List[ModelsSelectionRule],
        bucket_mmr_rule: Optional[ModelsBucketMMRRule] = None,
        flexing_rules: Optional[List[ModelsFlexingRule]] = None,
        match_options: Optional[ModelsMatchOptionRule] = None,
        matching_rules: Optional[List[ModelsMatchingRule]] = None,
        sub_game_modes: Optional[ModelsUpdateRulesetSubGameModes] = None,
        use_newest_ticket_for_flexing: Optional[bool] = None,
        **kwargs,
    ) -> ModelsUpdateRuleset:
        instance = cls()
        instance.alliance = alliance
        instance.alliance_flexing_rule = alliance_flexing_rule
        instance.batch_size = batch_size
        instance.sort_ticket = sort_ticket
        instance.sort_tickets = sort_tickets
        instance.ticket_flexing_selection = ticket_flexing_selection
        instance.ticket_flexing_selections = ticket_flexing_selections
        if bucket_mmr_rule is not None:
            instance.bucket_mmr_rule = bucket_mmr_rule
        if flexing_rules is not None:
            instance.flexing_rules = flexing_rules
        if match_options is not None:
            instance.match_options = match_options
        if matching_rules is not None:
            instance.matching_rules = matching_rules
        if sub_game_modes is not None:
            instance.sub_game_modes = sub_game_modes
        if use_newest_ticket_for_flexing is not None:
            instance.use_newest_ticket_for_flexing = use_newest_ticket_for_flexing
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateRuleset:
        instance = cls()
        if not dict_:
            return instance
        if "alliance" in dict_ and dict_["alliance"] is not None:
            instance.alliance = ModelsUpdateAllianceRule.create_from_dict(
                dict_["alliance"], include_empty=include_empty
            )
        elif include_empty:
            instance.alliance = ModelsUpdateAllianceRule()
        if (
            "alliance_flexing_rule" in dict_
            and dict_["alliance_flexing_rule"] is not None
        ):
            instance.alliance_flexing_rule = [
                ModelsAllianceFlexingRule.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["alliance_flexing_rule"]
            ]
        elif include_empty:
            instance.alliance_flexing_rule = []
        if "batch_size" in dict_ and dict_["batch_size"] is not None:
            instance.batch_size = int(dict_["batch_size"])
        elif include_empty:
            instance.batch_size = 0
        if "sort_ticket" in dict_ and dict_["sort_ticket"] is not None:
            instance.sort_ticket = ModelsSortTicket.create_from_dict(
                dict_["sort_ticket"], include_empty=include_empty
            )
        elif include_empty:
            instance.sort_ticket = ModelsSortTicket()
        if "sort_tickets" in dict_ and dict_["sort_tickets"] is not None:
            instance.sort_tickets = [
                ModelsSortTicketRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["sort_tickets"]
            ]
        elif include_empty:
            instance.sort_tickets = []
        if (
            "ticket_flexing_selection" in dict_
            and dict_["ticket_flexing_selection"] is not None
        ):
            instance.ticket_flexing_selection = str(dict_["ticket_flexing_selection"])
        elif include_empty:
            instance.ticket_flexing_selection = ""
        if (
            "ticket_flexing_selections" in dict_
            and dict_["ticket_flexing_selections"] is not None
        ):
            instance.ticket_flexing_selections = [
                ModelsSelectionRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["ticket_flexing_selections"]
            ]
        elif include_empty:
            instance.ticket_flexing_selections = []
        if "bucket_mmr_rule" in dict_ and dict_["bucket_mmr_rule"] is not None:
            instance.bucket_mmr_rule = ModelsBucketMMRRule.create_from_dict(
                dict_["bucket_mmr_rule"], include_empty=include_empty
            )
        elif include_empty:
            instance.bucket_mmr_rule = ModelsBucketMMRRule()
        if "flexingRules" in dict_ and dict_["flexingRules"] is not None:
            instance.flexing_rules = [
                ModelsFlexingRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["flexingRules"]
            ]
        elif include_empty:
            instance.flexing_rules = []
        if "match_options" in dict_ and dict_["match_options"] is not None:
            instance.match_options = ModelsMatchOptionRule.create_from_dict(
                dict_["match_options"], include_empty=include_empty
            )
        elif include_empty:
            instance.match_options = ModelsMatchOptionRule()
        if "matchingRules" in dict_ and dict_["matchingRules"] is not None:
            instance.matching_rules = [
                ModelsMatchingRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["matchingRules"]
            ]
        elif include_empty:
            instance.matching_rules = []
        if "sub_game_modes" in dict_ and dict_["sub_game_modes"] is not None:
            instance.sub_game_modes = ModelsUpdateRulesetSubGameModes.create_from_dict(
                dict_["sub_game_modes"], include_empty=include_empty
            )
        elif include_empty:
            instance.sub_game_modes = ModelsUpdateRulesetSubGameModes()
        if (
            "use_newest_ticket_for_flexing" in dict_
            and dict_["use_newest_ticket_for_flexing"] is not None
        ):
            instance.use_newest_ticket_for_flexing = bool(
                dict_["use_newest_ticket_for_flexing"]
            )
        elif include_empty:
            instance.use_newest_ticket_for_flexing = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateRuleset]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateRuleset]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateRuleset, List[ModelsUpdateRuleset], Dict[Any, ModelsUpdateRuleset]
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
            "alliance": "alliance",
            "alliance_flexing_rule": "alliance_flexing_rule",
            "batch_size": "batch_size",
            "sort_ticket": "sort_ticket",
            "sort_tickets": "sort_tickets",
            "ticket_flexing_selection": "ticket_flexing_selection",
            "ticket_flexing_selections": "ticket_flexing_selections",
            "bucket_mmr_rule": "bucket_mmr_rule",
            "flexingRules": "flexing_rules",
            "match_options": "match_options",
            "matchingRules": "matching_rules",
            "sub_game_modes": "sub_game_modes",
            "use_newest_ticket_for_flexing": "use_newest_ticket_for_flexing",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alliance": True,
            "alliance_flexing_rule": True,
            "batch_size": True,
            "sort_ticket": True,
            "sort_tickets": True,
            "ticket_flexing_selection": True,
            "ticket_flexing_selections": True,
            "bucket_mmr_rule": False,
            "flexingRules": False,
            "match_options": False,
            "matchingRules": False,
            "sub_game_modes": False,
            "use_newest_ticket_for_flexing": False,
        }

    # endregion static methods
