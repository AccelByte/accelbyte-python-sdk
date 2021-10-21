# justice-iam-service (4.4.1)

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

from ..models.accountcommon_permission_v3 import AccountcommonPermissionV3


class ModelRoleResponseV3(Model):
    """Model role response V3 (model.RoleResponseV3)

    Properties:
        admin_role: (adminRole) REQUIRED bool

        is_wildcard: (isWildcard) REQUIRED bool

        permissions: (permissions) REQUIRED List[AccountcommonPermissionV3]

        role_id: (roleId) REQUIRED str

        role_name: (roleName) REQUIRED str
    """

    # region fields

    admin_role: bool                                                                               # REQUIRED
    is_wildcard: bool                                                                              # REQUIRED
    permissions: List[AccountcommonPermissionV3]                                                   # REQUIRED
    role_id: str                                                                                   # REQUIRED
    role_name: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_admin_role(self, value: bool) -> ModelRoleResponseV3:
        self.admin_role = value
        return self

    def with_is_wildcard(self, value: bool) -> ModelRoleResponseV3:
        self.is_wildcard = value
        return self

    def with_permissions(self, value: List[AccountcommonPermissionV3]) -> ModelRoleResponseV3:
        self.permissions = value
        return self

    def with_role_id(self, value: str) -> ModelRoleResponseV3:
        self.role_id = value
        return self

    def with_role_name(self, value: str) -> ModelRoleResponseV3:
        self.role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "admin_role") and self.admin_role:
            result["adminRole"] = bool(self.admin_role)
        elif include_empty:
            result["adminRole"] = bool()
        if hasattr(self, "is_wildcard") and self.is_wildcard:
            result["isWildcard"] = bool(self.is_wildcard)
        elif include_empty:
            result["isWildcard"] = bool()
        if hasattr(self, "permissions") and self.permissions:
            result["permissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.permissions]
        elif include_empty:
            result["permissions"] = []
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
        admin_role: bool,
        is_wildcard: bool,
        permissions: List[AccountcommonPermissionV3],
        role_id: str,
        role_name: str,
    ) -> ModelRoleResponseV3:
        instance = cls()
        instance.admin_role = admin_role
        instance.is_wildcard = is_wildcard
        instance.permissions = permissions
        instance.role_id = role_id
        instance.role_name = role_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelRoleResponseV3:
        instance = cls()
        if not dict_:
            return instance
        if "adminRole" in dict_ and dict_["adminRole"] is not None:
            instance.admin_role = bool(dict_["adminRole"])
        elif include_empty:
            instance.admin_role = bool()
        if "isWildcard" in dict_ and dict_["isWildcard"] is not None:
            instance.is_wildcard = bool(dict_["isWildcard"])
        elif include_empty:
            instance.is_wildcard = bool()
        if "permissions" in dict_ and dict_["permissions"] is not None:
            instance.permissions = [AccountcommonPermissionV3.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["permissions"]]
        elif include_empty:
            instance.permissions = []
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
            "adminRole": "admin_role",
            "isWildcard": "is_wildcard",
            "permissions": "permissions",
            "roleId": "role_id",
            "roleName": "role_name",
        }

    # endregion static methods
