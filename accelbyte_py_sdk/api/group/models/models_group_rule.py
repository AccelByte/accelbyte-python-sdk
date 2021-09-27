# Auto-generated at 2021-09-27T17:12:37.818761+08:00
# from: Justice Group Service (2.4.0)

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

from ..models.models_group_rule_group_custom_rule import ModelsGroupRuleGroupCustomRule
from ..models.models_rule import ModelsRule


class ModelsGroupRule(Model):
    """Models group rule

    Properties:
        group_custom_rule: (groupCustomRule) REQUIRED ModelsGroupRuleGroupCustomRule

        group_predefined_rules: (groupPredefinedRules) REQUIRED List[ModelsRule]
    """

    # region fields

    group_custom_rule: ModelsGroupRuleGroupCustomRule                                              # REQUIRED
    group_predefined_rules: List[ModelsRule]                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group_custom_rule(self, value: ModelsGroupRuleGroupCustomRule) -> ModelsGroupRule:
        self.group_custom_rule = value
        return self

    def with_group_predefined_rules(self, value: List[ModelsRule]) -> ModelsGroupRule:
        self.group_predefined_rules = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "group_custom_rule") and self.group_custom_rule:
            result["groupCustomRule"] = self.group_custom_rule.to_dict(include_empty=include_empty)
        elif include_empty:
            result["groupCustomRule"] = ModelsGroupRuleGroupCustomRule()
        if hasattr(self, "group_predefined_rules") and self.group_predefined_rules:
            result["groupPredefinedRules"] = [i0.to_dict(include_empty=include_empty) for i0 in self.group_predefined_rules]
        elif include_empty:
            result["groupPredefinedRules"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        group_custom_rule: ModelsGroupRuleGroupCustomRule,
        group_predefined_rules: List[ModelsRule],
    ) -> ModelsGroupRule:
        instance = cls()
        instance.group_custom_rule = group_custom_rule
        instance.group_predefined_rules = group_predefined_rules
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsGroupRule:
        instance = cls()
        if not dict_:
            return instance
        if "groupCustomRule" in dict_ and dict_["groupCustomRule"] is not None:
            instance.group_custom_rule = ModelsGroupRuleGroupCustomRule.create_from_dict(dict_["groupCustomRule"], include_empty=include_empty)
        elif include_empty:
            instance.group_custom_rule = ModelsGroupRuleGroupCustomRule()
        if "groupPredefinedRules" in dict_ and dict_["groupPredefinedRules"] is not None:
            instance.group_predefined_rules = [ModelsRule.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["groupPredefinedRules"]]
        elif include_empty:
            instance.group_predefined_rules = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "groupCustomRule": "group_custom_rule",
            "groupPredefinedRules": "group_predefined_rules",
        }

    # endregion static methods
