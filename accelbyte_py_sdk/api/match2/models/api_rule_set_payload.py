# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Match Service V2 (2.1.1)

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


class ApiRuleSetPayload(Model):
    """Api rule set payload (api.RuleSetPayload)

    Properties:
        data: (data) REQUIRED Dict[str, Any]

        enable_custom_match_function: (enable_custom_match_function) REQUIRED bool

        name: (name) REQUIRED str
    """

    # region fields

    data: Dict[str, Any]  # REQUIRED
    enable_custom_match_function: bool  # REQUIRED
    name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_data(self, value: Dict[str, Any]) -> ApiRuleSetPayload:
        self.data = value
        return self

    def with_enable_custom_match_function(self, value: bool) -> ApiRuleSetPayload:
        self.enable_custom_match_function = value
        return self

    def with_name(self, value: str) -> ApiRuleSetPayload:
        self.name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "data"):
            result["data"] = {str(k0): v0 for k0, v0 in self.data.items()}
        elif include_empty:
            result["data"] = {}
        if hasattr(self, "enable_custom_match_function"):
            result["enable_custom_match_function"] = bool(
                self.enable_custom_match_function
            )
        elif include_empty:
            result["enable_custom_match_function"] = False
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        data: Dict[str, Any],
        enable_custom_match_function: bool,
        name: str,
    ) -> ApiRuleSetPayload:
        instance = cls()
        instance.data = data
        instance.enable_custom_match_function = enable_custom_match_function
        instance.name = name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiRuleSetPayload:
        instance = cls()
        if not dict_:
            return instance
        if "data" in dict_ and dict_["data"] is not None:
            instance.data = {str(k0): v0 for k0, v0 in dict_["data"].items()}
        elif include_empty:
            instance.data = {}
        if (
            "enable_custom_match_function" in dict_
            and dict_["enable_custom_match_function"] is not None
        ):
            instance.enable_custom_match_function = bool(
                dict_["enable_custom_match_function"]
            )
        elif include_empty:
            instance.enable_custom_match_function = False
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiRuleSetPayload]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiRuleSetPayload]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiRuleSetPayload, List[ApiRuleSetPayload], Dict[Any, ApiRuleSetPayload]
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
            "data": "data",
            "enable_custom_match_function": "enable_custom_match_function",
            "name": "name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "data": True,
            "enable_custom_match_function": True,
            "name": True,
        }

    # endregion static methods
