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

from ..models.api_account_limits import ApiAccountLimits


class ApiAccountCreateResponse(Model):
    """Api account create response (api.AccountCreateResponse)

    Properties:
        id_: (id) REQUIRED str

        limits: (Limits) REQUIRED ApiAccountLimits

        name: (name) REQUIRED str

        namespaces: (namespaces) REQUIRED List[str]
    """

    # region fields

    id_: str  # REQUIRED
    limits: ApiAccountLimits  # REQUIRED
    name: str  # REQUIRED
    namespaces: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> ApiAccountCreateResponse:
        self.id_ = value
        return self

    def with_limits(self, value: ApiAccountLimits) -> ApiAccountCreateResponse:
        self.limits = value
        return self

    def with_name(self, value: str) -> ApiAccountCreateResponse:
        self.name = value
        return self

    def with_namespaces(self, value: List[str]) -> ApiAccountCreateResponse:
        self.namespaces = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "limits"):
            result["Limits"] = self.limits.to_dict(include_empty=include_empty)
        elif include_empty:
            result["Limits"] = ApiAccountLimits()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespaces"):
            result["namespaces"] = [str(i0) for i0 in self.namespaces]
        elif include_empty:
            result["namespaces"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        limits: ApiAccountLimits,
        name: str,
        namespaces: List[str],
        **kwargs,
    ) -> ApiAccountCreateResponse:
        instance = cls()
        instance.id_ = id_
        instance.limits = limits
        instance.name = name
        instance.namespaces = namespaces
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApiAccountCreateResponse:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "Limits" in dict_ and dict_["Limits"] is not None:
            instance.limits = ApiAccountLimits.create_from_dict(
                dict_["Limits"], include_empty=include_empty
            )
        elif include_empty:
            instance.limits = ApiAccountLimits()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespaces" in dict_ and dict_["namespaces"] is not None:
            instance.namespaces = [str(i0) for i0 in dict_["namespaces"]]
        elif include_empty:
            instance.namespaces = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApiAccountCreateResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApiAccountCreateResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApiAccountCreateResponse,
        List[ApiAccountCreateResponse],
        Dict[Any, ApiAccountCreateResponse],
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
            "id": "id_",
            "Limits": "limits",
            "name": "name",
            "namespaces": "namespaces",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "id": True,
            "Limits": True,
            "name": True,
            "namespaces": True,
        }

    # endregion static methods
