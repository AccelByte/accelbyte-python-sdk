# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.20.0)

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

from ..models.accountcommon_permission import AccountcommonPermission
from ..models.accountcommon_role_manager import AccountcommonRoleManager
from ..models.accountcommon_role_member import AccountcommonRoleMember


class AccountcommonRole(Model):
    """Accountcommon role (accountcommon.Role)

    Properties:
        admin_role: (AdminRole) REQUIRED bool

        deletable: (Deletable) REQUIRED bool

        is_wildcard: (IsWildcard) REQUIRED bool

        managers: (Managers) REQUIRED List[AccountcommonRoleManager]

        members: (Members) REQUIRED List[AccountcommonRoleMember]

        permissions: (Permissions) REQUIRED List[AccountcommonPermission]

        role_id: (RoleId) REQUIRED str

        role_name: (RoleName) REQUIRED str
    """

    # region fields

    admin_role: bool  # REQUIRED
    deletable: bool  # REQUIRED
    is_wildcard: bool  # REQUIRED
    managers: List[AccountcommonRoleManager]  # REQUIRED
    members: List[AccountcommonRoleMember]  # REQUIRED
    permissions: List[AccountcommonPermission]  # REQUIRED
    role_id: str  # REQUIRED
    role_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_admin_role(self, value: bool) -> AccountcommonRole:
        self.admin_role = value
        return self

    def with_deletable(self, value: bool) -> AccountcommonRole:
        self.deletable = value
        return self

    def with_is_wildcard(self, value: bool) -> AccountcommonRole:
        self.is_wildcard = value
        return self

    def with_managers(self, value: List[AccountcommonRoleManager]) -> AccountcommonRole:
        self.managers = value
        return self

    def with_members(self, value: List[AccountcommonRoleMember]) -> AccountcommonRole:
        self.members = value
        return self

    def with_permissions(
        self, value: List[AccountcommonPermission]
    ) -> AccountcommonRole:
        self.permissions = value
        return self

    def with_role_id(self, value: str) -> AccountcommonRole:
        self.role_id = value
        return self

    def with_role_name(self, value: str) -> AccountcommonRole:
        self.role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "admin_role"):
            result["AdminRole"] = bool(self.admin_role)
        elif include_empty:
            result["AdminRole"] = False
        if hasattr(self, "deletable"):
            result["Deletable"] = bool(self.deletable)
        elif include_empty:
            result["Deletable"] = False
        if hasattr(self, "is_wildcard"):
            result["IsWildcard"] = bool(self.is_wildcard)
        elif include_empty:
            result["IsWildcard"] = False
        if hasattr(self, "managers"):
            result["Managers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.managers
            ]
        elif include_empty:
            result["Managers"] = []
        if hasattr(self, "members"):
            result["Members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["Members"] = []
        if hasattr(self, "permissions"):
            result["Permissions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.permissions
            ]
        elif include_empty:
            result["Permissions"] = []
        if hasattr(self, "role_id"):
            result["RoleId"] = str(self.role_id)
        elif include_empty:
            result["RoleId"] = ""
        if hasattr(self, "role_name"):
            result["RoleName"] = str(self.role_name)
        elif include_empty:
            result["RoleName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        admin_role: bool,
        deletable: bool,
        is_wildcard: bool,
        managers: List[AccountcommonRoleManager],
        members: List[AccountcommonRoleMember],
        permissions: List[AccountcommonPermission],
        role_id: str,
        role_name: str,
    ) -> AccountcommonRole:
        instance = cls()
        instance.admin_role = admin_role
        instance.deletable = deletable
        instance.is_wildcard = is_wildcard
        instance.managers = managers
        instance.members = members
        instance.permissions = permissions
        instance.role_id = role_id
        instance.role_name = role_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonRole:
        instance = cls()
        if not dict_:
            return instance
        if "AdminRole" in dict_ and dict_["AdminRole"] is not None:
            instance.admin_role = bool(dict_["AdminRole"])
        elif include_empty:
            instance.admin_role = False
        if "Deletable" in dict_ and dict_["Deletable"] is not None:
            instance.deletable = bool(dict_["Deletable"])
        elif include_empty:
            instance.deletable = False
        if "IsWildcard" in dict_ and dict_["IsWildcard"] is not None:
            instance.is_wildcard = bool(dict_["IsWildcard"])
        elif include_empty:
            instance.is_wildcard = False
        if "Managers" in dict_ and dict_["Managers"] is not None:
            instance.managers = [
                AccountcommonRoleManager.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["Managers"]
            ]
        elif include_empty:
            instance.managers = []
        if "Members" in dict_ and dict_["Members"] is not None:
            instance.members = [
                AccountcommonRoleMember.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["Members"]
            ]
        elif include_empty:
            instance.members = []
        if "Permissions" in dict_ and dict_["Permissions"] is not None:
            instance.permissions = [
                AccountcommonPermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["Permissions"]
            ]
        elif include_empty:
            instance.permissions = []
        if "RoleId" in dict_ and dict_["RoleId"] is not None:
            instance.role_id = str(dict_["RoleId"])
        elif include_empty:
            instance.role_id = ""
        if "RoleName" in dict_ and dict_["RoleName"] is not None:
            instance.role_name = str(dict_["RoleName"])
        elif include_empty:
            instance.role_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonRole]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonRole]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonRole, List[AccountcommonRole], Dict[Any, AccountcommonRole]
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
            "AdminRole": "admin_role",
            "Deletable": "deletable",
            "IsWildcard": "is_wildcard",
            "Managers": "managers",
            "Members": "members",
            "Permissions": "permissions",
            "RoleId": "role_id",
            "RoleName": "role_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "AdminRole": True,
            "Deletable": True,
            "IsWildcard": True,
            "Managers": True,
            "Members": True,
            "Permissions": True,
            "RoleId": True,
            "RoleName": True,
        }

    # endregion static methods
