# justice-group-service (2.9.0)

# template file: justice_py_sdk_codegen/__main__.py

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

from ..models.models_rule_information import ModelsRuleInformation


class ModelsRule(Model):
    """Models rule (models.Rule)

    Properties:
        allowed_action: (allowedAction) REQUIRED str

        rule_detail: (ruleDetail) REQUIRED List[ModelsRuleInformation]
    """

    # region fields

    allowed_action: str                                                                            # REQUIRED
    rule_detail: List[ModelsRuleInformation]                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_allowed_action(self, value: str) -> ModelsRule:
        self.allowed_action = value
        return self

    def with_rule_detail(self, value: List[ModelsRuleInformation]) -> ModelsRule:
        self.rule_detail = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "allowed_action"):
            result["allowedAction"] = str(self.allowed_action)
        elif include_empty:
            result["allowedAction"] = str()
        if hasattr(self, "rule_detail"):
            result["ruleDetail"] = [i0.to_dict(include_empty=include_empty) for i0 in self.rule_detail]
        elif include_empty:
            result["ruleDetail"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        allowed_action: str,
        rule_detail: List[ModelsRuleInformation],
    ) -> ModelsRule:
        instance = cls()
        instance.allowed_action = allowed_action
        instance.rule_detail = rule_detail
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsRule:
        instance = cls()
        if not dict_:
            return instance
        if "allowedAction" in dict_ and dict_["allowedAction"] is not None:
            instance.allowed_action = str(dict_["allowedAction"])
        elif include_empty:
            instance.allowed_action = str()
        if "ruleDetail" in dict_ and dict_["ruleDetail"] is not None:
            instance.rule_detail = [ModelsRuleInformation.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["ruleDetail"]]
        elif include_empty:
            instance.rule_detail = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "allowedAction": "allowed_action",
            "ruleDetail": "rule_detail",
        }

    # endregion static methods
