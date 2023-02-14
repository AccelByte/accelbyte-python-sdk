# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Matchmaking Service (2.20.2)

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
from ..models.models_alliance_rule_v1 import ModelsAllianceRuleV1
from ..models.models_flexing_rule import ModelsFlexingRule
from ..models.models_match_option_rule import ModelsMatchOptionRule
from ..models.models_matching_rule import ModelsMatchingRule
from ..models.models_sub_game_mode import ModelsSubGameMode


class ModelsRuleSetV1(Model):
    """Models rule set V1 (models.RuleSetV1)

    Properties:
        alliance: (alliance) REQUIRED ModelsAllianceRuleV1

        alliance_flexing_rule: (alliance_flexing_rule) REQUIRED List[ModelsAllianceFlexingRule]

        flexing_rules: (flexingRules) REQUIRED List[ModelsFlexingRule]

        match_options: (match_options) REQUIRED ModelsMatchOptionRule

        matching_rules: (matchingRules) REQUIRED List[ModelsMatchingRule]

        sub_game_modes: (sub_game_modes) REQUIRED Dict[str, ModelsSubGameMode]
    """

    # region fields

    alliance: ModelsAllianceRuleV1  # REQUIRED
    alliance_flexing_rule: List[ModelsAllianceFlexingRule]  # REQUIRED
    flexing_rules: List[ModelsFlexingRule]  # REQUIRED
    match_options: ModelsMatchOptionRule  # REQUIRED
    matching_rules: List[ModelsMatchingRule]  # REQUIRED
    sub_game_modes: Dict[str, ModelsSubGameMode]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_alliance(self, value: ModelsAllianceRuleV1) -> ModelsRuleSetV1:
        self.alliance = value
        return self

    def with_alliance_flexing_rule(
        self, value: List[ModelsAllianceFlexingRule]
    ) -> ModelsRuleSetV1:
        self.alliance_flexing_rule = value
        return self

    def with_flexing_rules(self, value: List[ModelsFlexingRule]) -> ModelsRuleSetV1:
        self.flexing_rules = value
        return self

    def with_match_options(self, value: ModelsMatchOptionRule) -> ModelsRuleSetV1:
        self.match_options = value
        return self

    def with_matching_rules(self, value: List[ModelsMatchingRule]) -> ModelsRuleSetV1:
        self.matching_rules = value
        return self

    def with_sub_game_modes(
        self, value: Dict[str, ModelsSubGameMode]
    ) -> ModelsRuleSetV1:
        self.sub_game_modes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alliance"):
            result["alliance"] = self.alliance.to_dict(include_empty=include_empty)
        elif include_empty:
            result["alliance"] = ModelsAllianceRuleV1()
        if hasattr(self, "alliance_flexing_rule"):
            result["alliance_flexing_rule"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.alliance_flexing_rule
            ]
        elif include_empty:
            result["alliance_flexing_rule"] = []
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
            result["sub_game_modes"] = {
                str(k0): v0.to_dict(include_empty=include_empty)
                for k0, v0 in self.sub_game_modes.items()
            }
        elif include_empty:
            result["sub_game_modes"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        alliance: ModelsAllianceRuleV1,
        alliance_flexing_rule: List[ModelsAllianceFlexingRule],
        flexing_rules: List[ModelsFlexingRule],
        match_options: ModelsMatchOptionRule,
        matching_rules: List[ModelsMatchingRule],
        sub_game_modes: Dict[str, ModelsSubGameMode],
    ) -> ModelsRuleSetV1:
        instance = cls()
        instance.alliance = alliance
        instance.alliance_flexing_rule = alliance_flexing_rule
        instance.flexing_rules = flexing_rules
        instance.match_options = match_options
        instance.matching_rules = matching_rules
        instance.sub_game_modes = sub_game_modes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsRuleSetV1:
        instance = cls()
        if not dict_:
            return instance
        if "alliance" in dict_ and dict_["alliance"] is not None:
            instance.alliance = ModelsAllianceRuleV1.create_from_dict(
                dict_["alliance"], include_empty=include_empty
            )
        elif include_empty:
            instance.alliance = ModelsAllianceRuleV1()
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
            instance.sub_game_modes = {
                str(k0): ModelsSubGameMode.create_from_dict(
                    v0, include_empty=include_empty
                )
                for k0, v0 in dict_["sub_game_modes"].items()
            }
        elif include_empty:
            instance.sub_game_modes = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsRuleSetV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsRuleSetV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsRuleSetV1, List[ModelsRuleSetV1], Dict[Any, ModelsRuleSetV1]]:
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
            "flexingRules": "flexing_rules",
            "match_options": "match_options",
            "matchingRules": "matching_rules",
            "sub_game_modes": "sub_game_modes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alliance": True,
            "alliance_flexing_rule": True,
            "flexingRules": True,
            "match_options": True,
            "matchingRules": True,
            "sub_game_modes": True,
        }

    # endregion static methods
