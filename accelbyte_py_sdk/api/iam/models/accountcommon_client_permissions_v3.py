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

from ..models.accountcommon_client_permission_v3 import AccountcommonClientPermissionV3


class AccountcommonClientPermissionsV3(Model):
    """Accountcommon client permissions V3 (accountcommon.ClientPermissionsV3)

    Properties:
        permissions: (permissions) REQUIRED List[AccountcommonClientPermissionV3]
    """

    # region fields

    permissions: List[AccountcommonClientPermissionV3]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_permissions(
        self, value: List[AccountcommonClientPermissionV3]
    ) -> AccountcommonClientPermissionsV3:
        self.permissions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        permissions: List[AccountcommonClientPermissionV3],
    ) -> AccountcommonClientPermissionsV3:
        instance = cls()
        instance.permissions = permissions
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AccountcommonClientPermissionsV3:
        instance = cls()
        if not dict_:
            return instance
        if "permissions" in dict_ and dict_["permissions"] is not None:
            instance.permissions = [
                AccountcommonClientPermissionV3.create_from_dict(
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
    ) -> Dict[str, AccountcommonClientPermissionsV3]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AccountcommonClientPermissionsV3]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        AccountcommonClientPermissionsV3,
        List[AccountcommonClientPermissionsV3],
        Dict[Any, AccountcommonClientPermissionsV3],
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
            "permissions": "permissions",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "permissions": True,
        }

    # endregion static methods
