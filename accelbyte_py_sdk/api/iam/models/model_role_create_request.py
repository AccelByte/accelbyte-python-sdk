# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-iam-service (5.3.0)

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


class ModelRoleCreateRequest(Model):
    """Model role create request (model.RoleCreateRequest)

    Properties:
        admin_role: (AdminRole) REQUIRED bool

        managers: (Managers) REQUIRED List[AccountcommonRoleManager]

        members: (Members) REQUIRED List[AccountcommonRoleMember]

        permissions: (Permissions) REQUIRED List[AccountcommonPermission]

        role_name: (RoleName) REQUIRED str
    """

    # region fields

    admin_role: bool                                                                               # REQUIRED
    managers: List[AccountcommonRoleManager]                                                       # REQUIRED
    members: List[AccountcommonRoleMember]                                                         # REQUIRED
    permissions: List[AccountcommonPermission]                                                     # REQUIRED
    role_name: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_admin_role(self, value: bool) -> ModelRoleCreateRequest:
        self.admin_role = value
        return self

    def with_managers(self, value: List[AccountcommonRoleManager]) -> ModelRoleCreateRequest:
        self.managers = value
        return self

    def with_members(self, value: List[AccountcommonRoleMember]) -> ModelRoleCreateRequest:
        self.members = value
        return self

    def with_permissions(self, value: List[AccountcommonPermission]) -> ModelRoleCreateRequest:
        self.permissions = value
        return self

    def with_role_name(self, value: str) -> ModelRoleCreateRequest:
        self.role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "admin_role"):
            result["AdminRole"] = bool(self.admin_role)
        elif include_empty:
            result["AdminRole"] = bool()
        if hasattr(self, "managers"):
            result["Managers"] = [i0.to_dict(include_empty=include_empty) for i0 in self.managers]
        elif include_empty:
            result["Managers"] = []
        if hasattr(self, "members"):
            result["Members"] = [i0.to_dict(include_empty=include_empty) for i0 in self.members]
        elif include_empty:
            result["Members"] = []
        if hasattr(self, "permissions"):
            result["Permissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.permissions]
        elif include_empty:
            result["Permissions"] = []
        if hasattr(self, "role_name"):
            result["RoleName"] = str(self.role_name)
        elif include_empty:
            result["RoleName"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        admin_role: bool,
        managers: List[AccountcommonRoleManager],
        members: List[AccountcommonRoleMember],
        permissions: List[AccountcommonPermission],
        role_name: str,
    ) -> ModelRoleCreateRequest:
        instance = cls()
        instance.admin_role = admin_role
        instance.managers = managers
        instance.members = members
        instance.permissions = permissions
        instance.role_name = role_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelRoleCreateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "AdminRole" in dict_ and dict_["AdminRole"] is not None:
            instance.admin_role = bool(dict_["AdminRole"])
        elif include_empty:
            instance.admin_role = bool()
        if "Managers" in dict_ and dict_["Managers"] is not None:
            instance.managers = [AccountcommonRoleManager.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["Managers"]]
        elif include_empty:
            instance.managers = []
        if "Members" in dict_ and dict_["Members"] is not None:
            instance.members = [AccountcommonRoleMember.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["Members"]]
        elif include_empty:
            instance.members = []
        if "Permissions" in dict_ and dict_["Permissions"] is not None:
            instance.permissions = [AccountcommonPermission.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["Permissions"]]
        elif include_empty:
            instance.permissions = []
        if "RoleName" in dict_ and dict_["RoleName"] is not None:
            instance.role_name = str(dict_["RoleName"])
        elif include_empty:
            instance.role_name = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ModelRoleCreateRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ModelRoleCreateRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ModelRoleCreateRequest, List[ModelRoleCreateRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "AdminRole": "admin_role",
            "Managers": "managers",
            "Members": "members",
            "Permissions": "permissions",
            "RoleName": "role_name",
        }

    # endregion static methods
