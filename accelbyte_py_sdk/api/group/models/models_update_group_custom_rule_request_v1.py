# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Group Service (2.12.0)

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


class ModelsUpdateGroupCustomRuleRequestV1(Model):
    """Models update group custom rule request V1 (models.UpdateGroupCustomRuleRequestV1)

    Properties:
        group_custom_rule: (groupCustomRule) REQUIRED Dict[str, Any]
    """

    # region fields

    group_custom_rule: Dict[str, Any]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group_custom_rule(
        self, value: Dict[str, Any]
    ) -> ModelsUpdateGroupCustomRuleRequestV1:
        self.group_custom_rule = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group_custom_rule"):
            result["groupCustomRule"] = {
                str(k0): v0 for k0, v0 in self.group_custom_rule.items()
            }
        elif include_empty:
            result["groupCustomRule"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        group_custom_rule: Dict[str, Any],
    ) -> ModelsUpdateGroupCustomRuleRequestV1:
        instance = cls()
        instance.group_custom_rule = group_custom_rule
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelsUpdateGroupCustomRuleRequestV1:
        instance = cls()
        if not dict_:
            return instance
        if "groupCustomRule" in dict_ and dict_["groupCustomRule"] is not None:
            instance.group_custom_rule = {
                str(k0): v0 for k0, v0 in dict_["groupCustomRule"].items()
            }
        elif include_empty:
            instance.group_custom_rule = {}
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelsUpdateGroupCustomRuleRequestV1]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelsUpdateGroupCustomRuleRequestV1]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelsUpdateGroupCustomRuleRequestV1,
        List[ModelsUpdateGroupCustomRuleRequestV1],
        Dict[Any, ModelsUpdateGroupCustomRuleRequestV1],
    ]:
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
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "groupCustomRule": True,
        }

    # endregion static methods
