# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Match Service V2

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

from ..models.api_match_function_config import ApiMatchFunctionConfig
from ..models.models_pagination import ModelsPagination


class ApiListMatchFunctionsResponse(Model):
    """Api list match functions response (api.ListMatchFunctionsResponse)

    Properties:
        functions: (functions) REQUIRED List[str]

        pagination: (pagination) REQUIRED ModelsPagination

        configs: (configs) OPTIONAL List[ApiMatchFunctionConfig]
    """

    # region fields

    functions: List[str]  # REQUIRED
    pagination: ModelsPagination  # REQUIRED
    configs: List[ApiMatchFunctionConfig]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_functions(self, value: List[str]) -> ApiListMatchFunctionsResponse:
        self.functions = value
        return self

    def with_pagination(self, value: ModelsPagination) -> ApiListMatchFunctionsResponse:
        self.pagination = value
        return self

    def with_configs(
        self, value: List[ApiMatchFunctionConfig]
    ) -> ApiListMatchFunctionsResponse:
        self.configs = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "functions"):
            result["functions"] = [str(i0) for i0 in self.functions]
        elif include_empty:
            result["functions"] = []
        if hasattr(self, "pagination"):
            result["pagination"] = self.pagination.to_dict(include_empty=include_empty)
        elif include_empty:
            result["pagination"] = ModelsPagination()
        if hasattr(self, "configs"):
            result["configs"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.configs
            ]
        elif include_empty:
            result["configs"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        functions: List[str],
        pagination: ModelsPagination,
        configs: Optional[List[ApiMatchFunctionConfig]] = None,
        **kwargs,
    ) -> ApiListMatchFunctionsResponse:
        instance = cls()
        instance.functions = functions
        instance.pagination = pagination
        if configs is not None:
            instance.configs = configs
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiListMatchFunctionsResponse:
        instance = cls()
        if not dict_:
            return instance
        if "functions" in dict_ and dict_["functions"] is not None:
            instance.functions = [str(i0) for i0 in dict_["functions"]]
        elif include_empty:
            instance.functions = []
        if "pagination" in dict_ and dict_["pagination"] is not None:
            instance.pagination = ModelsPagination.create_from_dict(
                dict_["pagination"], include_empty=include_empty
            )
        elif include_empty:
            instance.pagination = ModelsPagination()
        if "configs" in dict_ and dict_["configs"] is not None:
            instance.configs = [
                ApiMatchFunctionConfig.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["configs"]
            ]
        elif include_empty:
            instance.configs = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiListMatchFunctionsResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiListMatchFunctionsResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiListMatchFunctionsResponse,
        List[ApiListMatchFunctionsResponse],
        Dict[Any, ApiListMatchFunctionsResponse],
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
            "functions": "functions",
            "pagination": "pagination",
            "configs": "configs",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "functions": True,
            "pagination": True,
            "configs": False,
        }

    # endregion static methods
