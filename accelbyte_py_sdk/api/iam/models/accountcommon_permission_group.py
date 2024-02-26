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

from ..models.accountcommon_allowed_permission import AccountcommonAllowedPermission


class AccountcommonPermissionGroup(Model):
    """Accountcommon permission group (accountcommon.PermissionGroup)

    Properties:
        group: (group) REQUIRED str

        group_id: (groupId) REQUIRED str

        permissions: (permissions) REQUIRED List[AccountcommonAllowedPermission]
    """

    # region fields

    group: str  # REQUIRED
    group_id: str  # REQUIRED
    permissions: List[AccountcommonAllowedPermission]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_group(self, value: str) -> AccountcommonPermissionGroup:
        self.group = value
        return self

    def with_group_id(self, value: str) -> AccountcommonPermissionGroup:
        self.group_id = value
        return self

    def with_permissions(
        self, value: List[AccountcommonAllowedPermission]
    ) -> AccountcommonPermissionGroup:
        self.permissions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "group"):
            result["group"] = str(self.group)
        elif include_empty:
            result["group"] = ""
        if hasattr(self, "group_id"):
            result["groupId"] = str(self.group_id)
        elif include_empty:
            result["groupId"] = ""
        if hasattr(self, "permissions"):
            result["permissions"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.permissions
            ]
        elif include_empty:
            result["permissions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        group: str,
        group_id: str,
        permissions: List[AccountcommonAllowedPermission],
        **kwargs,
    ) -> AccountcommonPermissionGroup:
        instance = cls()
        instance.group = group
        instance.group_id = group_id
        instance.permissions = permissions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonPermissionGroup:
        instance = cls()
        if not dict_:
            return instance
        if "group" in dict_ and dict_["group"] is not None:
            instance.group = str(dict_["group"])
        elif include_empty:
            instance.group = ""
        if "groupId" in dict_ and dict_["groupId"] is not None:
            instance.group_id = str(dict_["groupId"])
        elif include_empty:
            instance.group_id = ""
        if "permissions" in dict_ and dict_["permissions"] is not None:
            instance.permissions = [
                AccountcommonAllowedPermission.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["permissions"]
            ]
        elif include_empty:
            instance.permissions = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AccountcommonPermissionGroup]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonPermissionGroup]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonPermissionGroup,
        List[AccountcommonPermissionGroup],
        Dict[Any, AccountcommonPermissionGroup],
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
            "group": "group",
            "groupId": "group_id",
            "permissions": "permissions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "group": True,
            "groupId": True,
            "permissions": True,
        }

    # endregion static methods
