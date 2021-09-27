# Auto-generated at 2021-09-27T17:12:31.681854+08:00
# from: Justice Iam Service (4.1.0)

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


class ModelUserRolesV4Response(Model):
    """Model user roles V4 response

    Properties:
        assigned_namespaces: (assignedNamespaces) REQUIRED List[str]

        role_id: (roleId) REQUIRED str

        role_name: (roleName) REQUIRED str
    """

    # region fields

    assigned_namespaces: List[str]                                                                 # REQUIRED
    role_id: str                                                                                   # REQUIRED
    role_name: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_assigned_namespaces(self, value: List[str]) -> ModelUserRolesV4Response:
        self.assigned_namespaces = value
        return self

    def with_role_id(self, value: str) -> ModelUserRolesV4Response:
        self.role_id = value
        return self

    def with_role_name(self, value: str) -> ModelUserRolesV4Response:
        self.role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "assigned_namespaces") and self.assigned_namespaces:
            result["assignedNamespaces"] = [str(i0) for i0 in self.assigned_namespaces]
        elif include_empty:
            result["assignedNamespaces"] = []
        if hasattr(self, "role_id") and self.role_id:
            result["roleId"] = str(self.role_id)
        elif include_empty:
            result["roleId"] = str()
        if hasattr(self, "role_name") and self.role_name:
            result["roleName"] = str(self.role_name)
        elif include_empty:
            result["roleName"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        assigned_namespaces: List[str],
        role_id: str,
        role_name: str,
    ) -> ModelUserRolesV4Response:
        instance = cls()
        instance.assigned_namespaces = assigned_namespaces
        instance.role_id = role_id
        instance.role_name = role_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUserRolesV4Response:
        instance = cls()
        if not dict_:
            return instance
        if "assignedNamespaces" in dict_ and dict_["assignedNamespaces"] is not None:
            instance.assigned_namespaces = [str(i0) for i0 in dict_["assignedNamespaces"]]
        elif include_empty:
            instance.assigned_namespaces = []
        if "roleId" in dict_ and dict_["roleId"] is not None:
            instance.role_id = str(dict_["roleId"])
        elif include_empty:
            instance.role_id = str()
        if "roleName" in dict_ and dict_["roleName"] is not None:
            instance.role_name = str(dict_["roleName"])
        elif include_empty:
            instance.role_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "assignedNamespaces": "assigned_namespaces",
            "roleId": "role_id",
            "roleName": "role_name",
        }

    # endregion static methods
