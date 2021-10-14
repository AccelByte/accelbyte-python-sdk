# Auto-generated at 2021-10-14T22:17:10.811590+08:00
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

from ..models.accountcommon_permission import AccountcommonPermission


class AccountcommonPermissions(Model):
    """Accountcommon permissions (accountcommon.Permissions)

    Properties:
        permissions: (Permissions) REQUIRED List[AccountcommonPermission]
    """

    # region fields

    permissions: List[AccountcommonPermission]                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_permissions(self, value: List[AccountcommonPermission]) -> AccountcommonPermissions:
        self.permissions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "permissions") and self.permissions:
            result["Permissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.permissions]
        elif include_empty:
            result["Permissions"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        permissions: List[AccountcommonPermission],
    ) -> AccountcommonPermissions:
        instance = cls()
        instance.permissions = permissions
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonPermissions:
        instance = cls()
        if not dict_:
            return instance
        if "Permissions" in dict_ and dict_["Permissions"] is not None:
            instance.permissions = [AccountcommonPermission.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["Permissions"]]
        elif include_empty:
            instance.permissions = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Permissions": "permissions",
        }

    # endregion static methods
