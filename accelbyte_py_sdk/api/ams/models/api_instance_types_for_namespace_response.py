# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# Fleet Commander

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

from ..models.api_instance_type_for_namespace_response import (
    ApiInstanceTypeForNamespaceResponse,
)


class ApiInstanceTypesForNamespaceResponse(Model):
    """Api instance types for namespace response (api.InstanceTypesForNamespaceResponse)

    Properties:
        available_instance_types: (availableInstanceTypes) REQUIRED List[ApiInstanceTypeForNamespaceResponse]
    """

    # region fields

    available_instance_types: List[ApiInstanceTypeForNamespaceResponse]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_available_instance_types(
        self, value: List[ApiInstanceTypeForNamespaceResponse]
    ) -> ApiInstanceTypesForNamespaceResponse:
        self.available_instance_types = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "available_instance_types"):
            result["availableInstanceTypes"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.available_instance_types
            ]
        elif include_empty:
            result["availableInstanceTypes"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        available_instance_types: List[ApiInstanceTypeForNamespaceResponse],
        **kwargs,
    ) -> ApiInstanceTypesForNamespaceResponse:
        instance = cls()
        instance.available_instance_types = available_instance_types
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiInstanceTypesForNamespaceResponse:
        instance = cls()
        if not dict_:
            return instance
        if (
            "availableInstanceTypes" in dict_
            and dict_["availableInstanceTypes"] is not None
        ):
            instance.available_instance_types = [
                ApiInstanceTypeForNamespaceResponse.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["availableInstanceTypes"]
            ]
        elif include_empty:
            instance.available_instance_types = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiInstanceTypesForNamespaceResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiInstanceTypesForNamespaceResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiInstanceTypesForNamespaceResponse,
        List[ApiInstanceTypesForNamespaceResponse],
        Dict[Any, ApiInstanceTypesForNamespaceResponse],
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
            "availableInstanceTypes": "available_instance_types",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "availableInstanceTypes": True,
        }

    # endregion static methods
