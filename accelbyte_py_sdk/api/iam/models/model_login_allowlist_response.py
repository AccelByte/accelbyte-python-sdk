# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class ModelLoginAllowlistResponse(Model):
    """Model login allowlist response (model.LoginAllowlistResponse)

    Properties:
        active: (active) REQUIRED bool

        namespace: (namespace) REQUIRED str

        role_ids: (roleIds) REQUIRED List[str]
    """

    # region fields

    active: bool  # REQUIRED
    namespace: str  # REQUIRED
    role_ids: List[str]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_active(self, value: bool) -> ModelLoginAllowlistResponse:
        self.active = value
        return self

    def with_namespace(self, value: str) -> ModelLoginAllowlistResponse:
        self.namespace = value
        return self

    def with_role_ids(self, value: List[str]) -> ModelLoginAllowlistResponse:
        self.role_ids = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "active"):
            result["active"] = bool(self.active)
        elif include_empty:
            result["active"] = False
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "role_ids"):
            result["roleIds"] = [str(i0) for i0 in self.role_ids]
        elif include_empty:
            result["roleIds"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, active: bool, namespace: str, role_ids: List[str], **kwargs
    ) -> ModelLoginAllowlistResponse:
        instance = cls()
        instance.active = active
        instance.namespace = namespace
        instance.role_ids = role_ids
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelLoginAllowlistResponse:
        instance = cls()
        if not dict_:
            return instance
        if "active" in dict_ and dict_["active"] is not None:
            instance.active = bool(dict_["active"])
        elif include_empty:
            instance.active = False
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "roleIds" in dict_ and dict_["roleIds"] is not None:
            instance.role_ids = [str(i0) for i0 in dict_["roleIds"]]
        elif include_empty:
            instance.role_ids = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelLoginAllowlistResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelLoginAllowlistResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelLoginAllowlistResponse,
        List[ModelLoginAllowlistResponse],
        Dict[Any, ModelLoginAllowlistResponse],
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
            "active": "active",
            "namespace": "namespace",
            "roleIds": "role_ids",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "active": True,
            "namespace": True,
            "roleIds": True,
        }

    # endregion static methods
