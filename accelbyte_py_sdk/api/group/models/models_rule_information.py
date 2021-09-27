# Auto-generated at 2021-09-27T17:12:37.834713+08:00
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


class ModelsRuleInformation(Model):
    """Models rule information

    Properties:
        rule_attribute: (ruleAttribute) REQUIRED str

        rule_criteria: (ruleCriteria) REQUIRED str

        rule_value: (ruleValue) REQUIRED float
    """

    # region fields

    rule_attribute: str                                                                            # REQUIRED
    rule_criteria: str                                                                             # REQUIRED
    rule_value: float                                                                              # REQUIRED

    # endregion fields

    # region with_x methods

    def with_rule_attribute(self, value: str) -> ModelsRuleInformation:
        self.rule_attribute = value
        return self

    def with_rule_criteria(self, value: str) -> ModelsRuleInformation:
        self.rule_criteria = value
        return self

    def with_rule_value(self, value: float) -> ModelsRuleInformation:
        self.rule_value = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "rule_attribute") and self.rule_attribute:
            result["ruleAttribute"] = str(self.rule_attribute)
        elif include_empty:
            result["ruleAttribute"] = str()
        if hasattr(self, "rule_criteria") and self.rule_criteria:
            result["ruleCriteria"] = str(self.rule_criteria)
        elif include_empty:
            result["ruleCriteria"] = str()
        if hasattr(self, "rule_value") and self.rule_value:
            result["ruleValue"] = float(self.rule_value)
        elif include_empty:
            result["ruleValue"] = float()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        rule_attribute: str,
        rule_criteria: str,
        rule_value: float,
    ) -> ModelsRuleInformation:
        instance = cls()
        instance.rule_attribute = rule_attribute
        instance.rule_criteria = rule_criteria
        instance.rule_value = rule_value
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsRuleInformation:
        instance = cls()
        if not dict_:
            return instance
        if "ruleAttribute" in dict_ and dict_["ruleAttribute"] is not None:
            instance.rule_attribute = str(dict_["ruleAttribute"])
        elif include_empty:
            instance.rule_attribute = str()
        if "ruleCriteria" in dict_ and dict_["ruleCriteria"] is not None:
            instance.rule_criteria = str(dict_["ruleCriteria"])
        elif include_empty:
            instance.rule_criteria = str()
        if "ruleValue" in dict_ and dict_["ruleValue"] is not None:
            instance.rule_value = float(dict_["ruleValue"])
        elif include_empty:
            instance.rule_value = float()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ruleAttribute": "rule_attribute",
            "ruleCriteria": "rule_criteria",
            "ruleValue": "rule_value",
        }

    # endregion static methods
