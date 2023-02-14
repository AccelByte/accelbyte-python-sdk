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

from ..models.accountcommon_permission import AccountcommonPermission


class ModelRoleResponse(Model):
    """Model role response (model.RoleResponse)

    Properties:
        is_wildcard: (IsWildcard) REQUIRED bool

        permissions: (Permissions) REQUIRED List[AccountcommonPermission]

        role_id: (RoleId) REQUIRED str

        role_name: (RoleName) REQUIRED str
    """

    # region fields

    is_wildcard: bool  # REQUIRED
    permissions: List[AccountcommonPermission]  # REQUIRED
    role_id: str  # REQUIRED
    role_name: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_is_wildcard(self, value: bool) -> ModelRoleResponse:
        self.is_wildcard = value
        return self

    def with_permissions(
        self, value: List[AccountcommonPermission]
    ) -> ModelRoleResponse:
        self.permissions = value
        return self

    def with_role_id(self, value: str) -> ModelRoleResponse:
        self.role_id = value
        return self

    def with_role_name(self, value: str) -> ModelRoleResponse:
        self.role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "is_wildcard"):
            result["IsWildcard"] = bool(self.is_wildcard)
        elif include_empty:
            result["IsWildcard"] = False
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
        is_wildcard: bool,
        permissions: List[AccountcommonPermission],
        role_id: str,
        role_name: str,
    ) -> ModelRoleResponse:
        instance = cls()
        instance.is_wildcard = is_wildcard
        instance.permissions = permissions
        instance.role_id = role_id
        instance.role_name = role_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ModelRoleResponse:
        instance = cls()
        if not dict_:
            return instance
        if "IsWildcard" in dict_ and dict_["IsWildcard"] is not None:
            instance.is_wildcard = bool(dict_["IsWildcard"])
        elif include_empty:
            instance.is_wildcard = False
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
    ) -> Dict[str, ModelRoleResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ModelRoleResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ModelRoleResponse, List[ModelRoleResponse], Dict[Any, ModelRoleResponse]
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
            "IsWildcard": "is_wildcard",
            "Permissions": "permissions",
            "RoleId": "role_id",
            "RoleName": "role_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "IsWildcard": True,
            "Permissions": True,
            "RoleId": True,
            "RoleName": True,
        }

    # endregion static methods
