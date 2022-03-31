# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-group-service (2.11.1)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class ModelsRuleInformation(Model):
    """Models rule information (models.RuleInformation)

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
        result: dict = {}
        if hasattr(self, "rule_attribute"):
            result["ruleAttribute"] = str(self.rule_attribute)
        elif include_empty:
            result["ruleAttribute"] = str()
        if hasattr(self, "rule_criteria"):
            result["ruleCriteria"] = str(self.rule_criteria)
        elif include_empty:
            result["ruleCriteria"] = str()
        if hasattr(self, "rule_value"):
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

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelsRuleInformation]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelsRuleInformation]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelsRuleInformation, List[ModelsRuleInformation]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ruleAttribute": "rule_attribute",
            "ruleCriteria": "rule_criteria",
            "ruleValue": "rule_value",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "ruleAttribute": True,
            "ruleCriteria": True,
            "ruleValue": True,
        }

    # endregion static methods
