# Auto-generated at 2021-09-21T14:10:39.871830+08:00
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

from ..models.models_rule_information import ModelsRuleInformation


class ModelsUpdateGroupConfigurationGlobalRulesRequestV1(Model):
    """Models update group configuration global rules request V1

    Properties:
        rule_detail: (ruleDetail) REQUIRED List[ModelsRuleInformation]
    """

    # region fields

    rule_detail: List[ModelsRuleInformation]                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_rule_detail(self, value: List[ModelsRuleInformation]) -> ModelsUpdateGroupConfigurationGlobalRulesRequestV1:
        self.rule_detail = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "rule_detail") and self.rule_detail:
            result["ruleDetail"] = [i0.to_dict(include_empty=include_empty) for i0 in self.rule_detail]
        elif include_empty:
            result["ruleDetail"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        rule_detail: List[ModelsRuleInformation],
    ) -> ModelsUpdateGroupConfigurationGlobalRulesRequestV1:
        instance = cls()
        instance.rule_detail = rule_detail
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsUpdateGroupConfigurationGlobalRulesRequestV1:
        instance = cls()
        if "ruleDetail" in dict_ and dict_["ruleDetail"] is not None:
            instance.rule_detail = [ModelsRuleInformation.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["ruleDetail"]]
        elif include_empty:
            instance.rule_detail = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "ruleDetail": "rule_detail",
        }

    # endregion static methods
