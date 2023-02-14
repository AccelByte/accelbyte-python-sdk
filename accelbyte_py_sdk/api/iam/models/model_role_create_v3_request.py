# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Iam Service (5.27.2)

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
from ..models.accountcommon_role_manager_v3 import AccountcommonRoleManagerV3
from ..models.accountcommon_role_member_v3 import AccountcommonRoleMemberV3


class ModelRoleCreateV3Request(Model):
    """Model role create V3 request (model.RoleCreateV3Request)

    Properties:
        admin_role: (adminRole) REQUIRED bool

        is_wildcard: (isWildcard) REQUIRED bool

        managers: (managers) REQUIRED List[AccountcommonRoleManagerV3]

        members: (members) REQUIRED List[AccountcommonRoleMemberV3]

        permissions: (permissions) REQUIRED List[AccountcommonPermissionV3]

        role_name: (roleName) REQUIRED str

        deletable: (deletable) OPTIONAL bool
    """

    # region fields

    admin_role: bool  # REQUIRED
    is_wildcard: bool  # REQUIRED
    managers: List[AccountcommonRoleManagerV3]  # REQUIRED
    members: List[AccountcommonRoleMemberV3]  # REQUIRED
    permissions: List[AccountcommonPermissionV3]  # REQUIRED
    role_name: str  # REQUIRED
    deletable: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_admin_role(self, value: bool) -> ModelRoleCreateV3Request:
        self.admin_role = value
        return self

    def with_is_wildcard(self, value: bool) -> ModelRoleCreateV3Request:
        self.is_wildcard = value
        return self

    def with_managers(
        self, value: List[AccountcommonRoleManagerV3]
    ) -> ModelRoleCreateV3Request:
        self.managers = value
        return self

    def with_members(
        self, value: List[AccountcommonRoleMemberV3]
    ) -> ModelRoleCreateV3Request:
        self.members = value
        return self

    def with_permissions(
        self, value: List[AccountcommonPermissionV3]
    ) -> ModelRoleCreateV3Request:
        self.permissions = value
        return self

    def with_role_name(self, value: str) -> ModelRoleCreateV3Request:
        self.role_name = value
        return self

    def with_deletable(self, value: bool) -> ModelRoleCreateV3Request:
        self.deletable = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "admin_role"):
            result["adminRole"] = bool(self.admin_role)
        elif include_empty:
            result["adminRole"] = False
        if hasattr(self, "is_wildcard"):
            result["isWildcard"] = bool(self.is_wildcard)
        elif include_empty:
            result["isWildcard"] = False
        if hasattr(self, "managers"):
            result["managers"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.managers
            ]
        elif include_empty:
            result["managers"] = []
        if hasattr(self, "members"):
            result["members"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.members
            ]
        elif include_empty:
            result["members"] = []
        if hasattr(self, "permissions"):
            result["permissions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.permissions
            ]
        elif include_empty:
            result["permissions"] = []
        if hasattr(self, "role_name"):
            result["roleName"] = str(self.role_name)
        elif include_empty:
            result["roleName"] = ""
        if hasattr(self, "deletable"):
            result["deletable"] = bool(self.deletable)
        elif include_empty:
            result["deletable"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        admin_role: bool,
        is_wildcard: bool,
        managers: List[AccountcommonRoleManagerV3],
        members: List[AccountcommonRoleMemberV3],
        permissions: List[AccountcommonPermissionV3],
        role_name: str,
        deletable: Optional[bool] = None,
    ) -> ModelRoleCreateV3Request:
        instance = cls()
        instance.admin_role = admin_role
        instance.is_wildcard = is_wildcard
        instance.managers = managers
        instance.members = members
        instance.permissions = permissions
        instance.role_name = role_name
        if deletable is not None:
            instance.deletable = deletable
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRoleCreateV3Request:
        instance = cls()
        if not dict_:
            return instance
        if "adminRole" in dict_ and dict_["adminRole"] is not None:
            instance.admin_role = bool(dict_["adminRole"])
        elif include_empty:
            instance.admin_role = False
        if "isWildcard" in dict_ and dict_["isWildcard"] is not None:
            instance.is_wildcard = bool(dict_["isWildcard"])
        elif include_empty:
            instance.is_wildcard = False
        if "managers" in dict_ and dict_["managers"] is not None:
            instance.managers = [
                AccountcommonRoleManagerV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["managers"]
            ]
        elif include_empty:
            instance.managers = []
        if "members" in dict_ and dict_["members"] is not None:
            instance.members = [
                AccountcommonRoleMemberV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["members"]
            ]
        elif include_empty:
            instance.members = []
        if "permissions" in dict_ and dict_["permissions"] is not None:
            instance.permissions = [
                AccountcommonPermissionV3.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["permissions"]
            ]
        elif include_empty:
            instance.permissions = []
        if "roleName" in dict_ and dict_["roleName"] is not None:
            instance.role_name = str(dict_["roleName"])
        elif include_empty:
            instance.role_name = ""
        if "deletable" in dict_ and dict_["deletable"] is not None:
            instance.deletable = bool(dict_["deletable"])
        elif include_empty:
            instance.deletable = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ModelRoleCreateV3Request]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRoleCreateV3Request]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRoleCreateV3Request,
        List[ModelRoleCreateV3Request],
        Dict[Any, ModelRoleCreateV3Request],
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
            "adminRole": "admin_role",
            "isWildcard": "is_wildcard",
            "managers": "managers",
            "members": "members",
            "permissions": "permissions",
            "roleName": "role_name",
            "deletable": "deletable",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "adminRole": True,
            "isWildcard": True,
            "managers": True,
            "members": True,
            "permissions": True,
            "roleName": True,
            "deletable": False,
        }

    # endregion static methods
