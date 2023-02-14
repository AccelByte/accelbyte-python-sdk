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
from ..models.models_alliance_rule import ModelsAllianceRule
from ..models.models_flexing_rule import ModelsFlexingRule
from ..models.models_match_option_rule import ModelsMatchOptionRule
from ..models.models_matching_rule import ModelsMatchingRule
from ..models.models_sub_game_mode import ModelsSubGameMode


class ModelsRuleSet(Model):
    """Models rule set (models.RuleSet)

    Properties:
        alliance: (alliance) REQUIRED ModelsAllianceRule

        alliance_flexing_rule: (alliance_flexing_rule) REQUIRED List[ModelsAllianceFlexingRule]

        flexing_rule: (flexing_rule) REQUIRED List[ModelsFlexingRule]

        match_options: (match_options) REQUIRED ModelsMatchOptionRule

        matching_rule: (matching_rule) REQUIRED List[ModelsMatchingRule]

        rebalance_enable: (rebalance_enable) REQUIRED bool

        sub_game_modes: (sub_game_modes) REQUIRED Dict[str, ModelsSubGameMode]
    """

    # region fields

    alliance: ModelsAllianceRule  # REQUIRED
    alliance_flexing_rule: List[ModelsAllianceFlexingRule]  # REQUIRED
    flexing_rule: List[ModelsFlexingRule]  # REQUIRED
    match_options: ModelsMatchOptionRule  # REQUIRED
    matching_rule: List[ModelsMatchingRule]  # REQUIRED
    rebalance_enable: bool  # REQUIRED
    sub_game_modes: Dict[str, ModelsSubGameMode]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_alliance(self, value: ModelsAllianceRule) -> ModelsRuleSet:
        self.alliance = value
        return self

    def with_alliance_flexing_rule(
        self, value: List[ModelsAllianceFlexingRule]
    ) -> ModelsRuleSet:
        self.alliance_flexing_rule = value
        return self

    def with_flexing_rule(self, value: List[ModelsFlexingRule]) -> ModelsRuleSet:
        self.flexing_rule = value
        return self

    def with_match_options(self, value: ModelsMatchOptionRule) -> ModelsRuleSet:
        self.match_options = value
        return self

    def with_matching_rule(self, value: List[ModelsMatchingRule]) -> ModelsRuleSet:
        self.matching_rule = value
        return self

    def with_rebalance_enable(self, value: bool) -> ModelsRuleSet:
        self.rebalance_enable = value
        return self

    def with_sub_game_modes(self, value: Dict[str, ModelsSubGameMode]) -> ModelsRuleSet:
        self.sub_game_modes = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "alliance"):
            result["alliance"] = self.alliance.to_dict(include_empty=include_empty)
        elif include_empty:
            result["alliance"] = ModelsAllianceRule()
        if hasattr(self, "alliance_flexing_rule"):
            result["alliance_flexing_rule"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.alliance_flexing_rule
            ]
        elif include_empty:
            result["alliance_flexing_rule"] = []
        if hasattr(self, "flexing_rule"):
            result["flexing_rule"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.flexing_rule
            ]
        elif include_empty:
            result["flexing_rule"] = []
        if hasattr(self, "match_options"):
            result["match_options"] = self.match_options.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["match_options"] = ModelsMatchOptionRule()
        if hasattr(self, "matching_rule"):
            result["matching_rule"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.matching_rule
            ]
        elif include_empty:
            result["matching_rule"] = []
        if hasattr(self, "rebalance_enable"):
            result["rebalance_enable"] = bool(self.rebalance_enable)
        elif include_empty:
            result["rebalance_enable"] = False
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
        alliance: ModelsAllianceRule,
        alliance_flexing_rule: List[ModelsAllianceFlexingRule],
        flexing_rule: List[ModelsFlexingRule],
        match_options: ModelsMatchOptionRule,
        matching_rule: List[ModelsMatchingRule],
        rebalance_enable: bool,
        sub_game_modes: Dict[str, ModelsSubGameMode],
    ) -> ModelsRuleSet:
        instance = cls()
        instance.alliance = alliance
        instance.alliance_flexing_rule = alliance_flexing_rule
        instance.flexing_rule = flexing_rule
        instance.match_options = match_options
        instance.matching_rule = matching_rule
        instance.rebalance_enable = rebalance_enable
        instance.sub_game_modes = sub_game_modes
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsRuleSet:
        instance = cls()
        if not dict_:
            return instance
        if "alliance" in dict_ and dict_["alliance"] is not None:
            instance.alliance = ModelsAllianceRule.create_from_dict(
                dict_["alliance"], include_empty=include_empty
            )
        elif include_empty:
            instance.alliance = ModelsAllianceRule()
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
        if "flexing_rule" in dict_ and dict_["flexing_rule"] is not None:
            instance.flexing_rule = [
                ModelsFlexingRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["flexing_rule"]
            ]
        elif include_empty:
            instance.flexing_rule = []
        if "match_options" in dict_ and dict_["match_options"] is not None:
            instance.match_options = ModelsMatchOptionRule.create_from_dict(
                dict_["match_options"], include_empty=include_empty
            )
        elif include_empty:
            instance.match_options = ModelsMatchOptionRule()
        if "matching_rule" in dict_ and dict_["matching_rule"] is not None:
            instance.matching_rule = [
                ModelsMatchingRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["matching_rule"]
            ]
        elif include_empty:
            instance.matching_rule = []
        if "rebalance_enable" in dict_ and dict_["rebalance_enable"] is not None:
            instance.rebalance_enable = bool(dict_["rebalance_enable"])
        elif include_empty:
            instance.rebalance_enable = False
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
    ) -> Dict[str, ModelsRuleSet]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsRuleSet]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsRuleSet, List[ModelsRuleSet], Dict[Any, ModelsRuleSet]]:
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
            "flexing_rule": "flexing_rule",
            "match_options": "match_options",
            "matching_rule": "matching_rule",
            "rebalance_enable": "rebalance_enable",
            "sub_game_modes": "sub_game_modes",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "alliance": True,
            "alliance_flexing_rule": True,
            "flexing_rule": True,
            "match_options": True,
            "matching_rule": True,
            "rebalance_enable": True,
            "sub_game_modes": True,
        }

    # endregion static methods
