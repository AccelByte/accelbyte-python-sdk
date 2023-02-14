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


class ApiMatchFunctionConfig(Model):
    """Api match function config (api.MatchFunctionConfig)

    Properties:
        match_function: (match_function) REQUIRED str

        url: (url) REQUIRED str
    """

    # region fields

    match_function: str  # REQUIRED
    url: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_match_function(self, value: str) -> ApiMatchFunctionConfig:
        self.match_function = value
        return self

    def with_url(self, value: str) -> ApiMatchFunctionConfig:
        self.url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "match_function"):
            result["match_function"] = str(self.match_function)
        elif include_empty:
            result["match_function"] = ""
        if hasattr(self, "url"):
            result["url"] = str(self.url)
        elif include_empty:
            result["url"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        match_function: str,
        url: str,
    ) -> ApiMatchFunctionConfig:
        instance = cls()
        instance.match_function = match_function
        instance.url = url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiMatchFunctionConfig:
        instance = cls()
        if not dict_:
            return instance
        if "match_function" in dict_ and dict_["match_function"] is not None:
            instance.match_function = str(dict_["match_function"])
        elif include_empty:
            instance.match_function = ""
        if "url" in dict_ and dict_["url"] is not None:
            instance.url = str(dict_["url"])
        elif include_empty:
            instance.url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiMatchFunctionConfig]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiMatchFunctionConfig]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiMatchFunctionConfig,
        List[ApiMatchFunctionConfig],
        Dict[Any, ApiMatchFunctionConfig],
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
            "match_function": "match_function",
            "url": "url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "match_function": True,
            "url": True,
        }

    # endregion static methods
