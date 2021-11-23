# Justice Matchmaking Service (2.10.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.models_flexing_rule import ModelsFlexingRule
from ..models.models_match_option_rule import ModelsMatchOptionRule
from ..models.models_matching_rule import ModelsMatchingRule
from ..models.models_update_alliance_rule import ModelsUpdateAllianceRule
from ..models.models_update_ruleset_sub_game_modes import ModelsUpdateRulesetSubGameModes


class ModelsUpdateRuleset(Model):
    """Models update ruleset (models.UpdateRuleset)

    Properties:
        alliance: (alliance) REQUIRED ModelsUpdateAllianceRule

        flexing_rules: (flexingRules) OPTIONAL List[ModelsFlexingRule]

        match_options: (match_options) OPTIONAL ModelsMatchOptionRule

        matching_rules: (matchingRules) OPTIONAL List[ModelsMatchingRule]

        sub_game_modes: (sub_game_modes) OPTIONAL ModelsUpdateRulesetSubGameModes
    """

    # region fields

    alliance: ModelsUpdateAllianceRule                                                             # REQUIRED
    flexing_rules: List[ModelsFlexingRule]                                                         # OPTIONAL
    match_options: ModelsMatchOptionRule                                                           # OPTIONAL
    matching_rules: List[ModelsMatchingRule]                                                       # OPTIONAL
    sub_game_modes: ModelsUpdateRulesetSubGameModes                                                # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_alliance(self, value: ModelsUpdateAllianceRule) -> ModelsUpdateRuleset:
        self.alliance = value
        return self

    def with_flexing_rules(self, value: List[ModelsFlexingRule]) -> ModelsUpdateRuleset:
        self.flexing_rules = value
        return self

    def with_match_options(self, value: ModelsMatchOptionRule) -> ModelsUpdateRuleset:
        self.match_options = value
        return self

    def with_matching_rules(self, value: List[ModelsMatchingRule]) -> ModelsUpdateRuleset:
        self.matching_rules = value
        return self

    def with_sub_game_modes(self, value: ModelsUpdateRulesetSubGameModes) -> ModelsUpdateRuleset:
        self.sub_game_modes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alliance"):
            result["alliance"] = self.alliance.to_dict(include_empty=include_empty)
        elif include_empty:
            result["alliance"] = ModelsUpdateAllianceRule()
        if hasattr(self, "flexing_rules"):
            result["flexingRules"] = [i0.to_dict(include_empty=include_empty) for i0 in self.flexing_rules]
        elif include_empty:
            result["flexingRules"] = []
        if hasattr(self, "match_options"):
            result["match_options"] = self.match_options.to_dict(include_empty=include_empty)
        elif include_empty:
            result["match_options"] = ModelsMatchOptionRule()
        if hasattr(self, "matching_rules"):
            result["matchingRules"] = [i0.to_dict(include_empty=include_empty) for i0 in self.matching_rules]
        elif include_empty:
            result["matchingRules"] = []
        if hasattr(self, "sub_game_modes"):
            result["sub_game_modes"] = self.sub_game_modes.to_dict(include_empty=include_empty)
        elif include_empty:
            result["sub_game_modes"] = ModelsUpdateRulesetSubGameModes()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        alliance: ModelsUpdateAllianceRule,
        flexing_rules: Optional[List[ModelsFlexingRule]] = None,
        match_options: Optional[ModelsMatchOptionRule] = None,
        matching_rules: Optional[List[ModelsMatchingRule]] = None,
        sub_game_modes: Optional[ModelsUpdateRulesetSubGameModes] = None,
    ) -> ModelsUpdateRuleset:
        instance = cls()
        instance.alliance = alliance
        if flexing_rules is not None:
            instance.flexing_rules = flexing_rules
        if match_options is not None:
            instance.match_options = match_options
        if matching_rules is not None:
            instance.matching_rules = matching_rules
        if sub_game_modes is not None:
            instance.sub_game_modes = sub_game_modes
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUpdateRuleset:
        instance = cls()
        if not dict_:
            return instance
        if "alliance" in dict_ and dict_["alliance"] is not None:
            instance.alliance = ModelsUpdateAllianceRule.create_from_dict(dict_["alliance"], include_empty=include_empty)
        elif include_empty:
            instance.alliance = ModelsUpdateAllianceRule()
        if "flexingRules" in dict_ and dict_["flexingRules"] is not None:
            instance.flexing_rules = [ModelsFlexingRule.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["flexingRules"]]
        elif include_empty:
            instance.flexing_rules = []
        if "match_options" in dict_ and dict_["match_options"] is not None:
            instance.match_options = ModelsMatchOptionRule.create_from_dict(dict_["match_options"], include_empty=include_empty)
        elif include_empty:
            instance.match_options = ModelsMatchOptionRule()
        if "matchingRules" in dict_ and dict_["matchingRules"] is not None:
            instance.matching_rules = [ModelsMatchingRule.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["matchingRules"]]
        elif include_empty:
            instance.matching_rules = []
        if "sub_game_modes" in dict_ and dict_["sub_game_modes"] is not None:
            instance.sub_game_modes = ModelsUpdateRulesetSubGameModes.create_from_dict(dict_["sub_game_modes"], include_empty=include_empty)
        elif include_empty:
            instance.sub_game_modes = ModelsUpdateRulesetSubGameModes()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "alliance": "alliance",
            "flexingRules": "flexing_rules",
            "match_options": "match_options",
            "matchingRules": "matching_rules",
            "sub_game_modes": "sub_game_modes",
        }

    # endregion static methods