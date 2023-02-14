# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Group Service (2.15.0)

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
    """Models group rule (models.GroupRule)

    Properties:
        group_custom_rule: (groupCustomRule) REQUIRED ModelsGroupRuleGroupCustomRule

        group_predefined_rules: (groupPredefinedRules) REQUIRED List[ModelsRule]
    """

    # region fields

    group_custom_rule: ModelsGroupRuleGroupCustomRule  # REQUIRED
    group_predefined_rules: List[ModelsRule]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group_custom_rule(
        self, value: ModelsGroupRuleGroupCustomRule
    ) -> ModelsGroupRule:
        self.group_custom_rule = value
        return self

    def with_group_predefined_rules(self, value: List[ModelsRule]) -> ModelsGroupRule:
        self.group_predefined_rules = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_custom_rule"):
            result["groupCustomRule"] = self.group_custom_rule.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["groupCustomRule"] = ModelsGroupRuleGroupCustomRule()
        if hasattr(self, "group_predefined_rules"):
            result["groupPredefinedRules"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.group_predefined_rules
            ]
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsGroupRule:
        instance = cls()
        if not dict_:
            return instance
        if "groupCustomRule" in dict_ and dict_["groupCustomRule"] is not None:
            instance.group_custom_rule = (
                ModelsGroupRuleGroupCustomRule.create_from_dict(
                    dict_["groupCustomRule"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.group_custom_rule = ModelsGroupRuleGroupCustomRule()
        if (
            "groupPredefinedRules" in dict_
            and dict_["groupPredefinedRules"] is not None
        ):
            instance.group_predefined_rules = [
                ModelsRule.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["groupPredefinedRules"]
            ]
        elif include_empty:
            instance.group_predefined_rules = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsGroupRule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsGroupRule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsGroupRule, List[ModelsGroupRule], Dict[Any, ModelsGroupRule]]:
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
            "groupCustomRule": "group_custom_rule",
            "groupPredefinedRules": "group_predefined_rules",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "groupCustomRule": True,
            "groupPredefinedRules": True,
        }

    # endregion static methods
