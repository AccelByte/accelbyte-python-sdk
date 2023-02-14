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

from ..models.models_rule_information import ModelsRuleInformation


class ModelsRule(Model):
    """Models rule (models.Rule)

    Properties:
        allowed_action: (allowedAction) REQUIRED str

        rule_detail: (ruleDetail) REQUIRED List[ModelsRuleInformation]
    """

    # region fields

    allowed_action: str  # REQUIRED
    rule_detail: List[ModelsRuleInformation]  # REQUIRED

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
            result["allowedAction"] = ""
        if hasattr(self, "rule_detail"):
            result["ruleDetail"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.rule_detail
            ]
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
            instance.allowed_action = ""
        if "ruleDetail" in dict_ and dict_["ruleDetail"] is not None:
            instance.rule_detail = [
                ModelsRuleInformation.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["ruleDetail"]
            ]
        elif include_empty:
            instance.rule_detail = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsRule]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsRule]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ModelsRule, List[ModelsRule], Dict[Any, ModelsRule]]:
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
            "allowedAction": "allowed_action",
            "ruleDetail": "rule_detail",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "allowedAction": True,
            "ruleDetail": True,
        }

    # endregion static methods
