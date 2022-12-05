# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.22.0)

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


class ModelRemoveUserRoleV4Request(Model):
    """Model remove user role V4 request (model.RemoveUserRoleV4Request)

    Properties:
        assigned_namespaces: (assignedNamespaces) REQUIRED List[str]

        role_id: (roleId) REQUIRED str
    """

    # region fields

    assigned_namespaces: List[str]  # REQUIRED
    role_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_assigned_namespaces(
        self, value: List[str]
    ) -> ModelRemoveUserRoleV4Request:
        self.assigned_namespaces = value
        return self

    def with_role_id(self, value: str) -> ModelRemoveUserRoleV4Request:
        self.role_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "assigned_namespaces"):
            result["assignedNamespaces"] = [str(i0) for i0 in self.assigned_namespaces]
        elif include_empty:
            result["assignedNamespaces"] = []
        if hasattr(self, "role_id"):
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        assigned_namespaces: List[str],
        role_id: str,
    ) -> ModelRemoveUserRoleV4Request:
        instance = cls()
        instance.assigned_namespaces = assigned_namespaces
        instance.role_id = role_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRemoveUserRoleV4Request:
        instance = cls()
        if not dict_:
            return instance
        if "assignedNamespaces" in dict_ and dict_["assignedNamespaces"] is not None:
            instance.assigned_namespaces = [
                str(i0) for i0 in dict_["assignedNamespaces"]
            ]
        elif include_empty:
            instance.assigned_namespaces = []
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelRemoveUserRoleV4Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRemoveUserRoleV4Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRemoveUserRoleV4Request,
        List[ModelRemoveUserRoleV4Request],
        Dict[Any, ModelRemoveUserRoleV4Request],
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
            "assignedNamespaces": "assigned_namespaces",
            "roleId": "role_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "assignedNamespaces": True,
            "roleId": True,
        }

    # endregion static methods
