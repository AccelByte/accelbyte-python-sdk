# Auto-generated at 2021-10-14T22:17:10.798746+08:00
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

from ..models.accountcommon_client_permission_v3 import AccountcommonClientPermissionV3


class AccountcommonClientPermissionsV3(Model):
    """Accountcommon client permissions V3 (accountcommon.ClientPermissionsV3)

    Properties:
        permissions: (permissions) REQUIRED List[AccountcommonClientPermissionV3]
    """

    # region fields

    permissions: List[AccountcommonClientPermissionV3]                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_permissions(self, value: List[AccountcommonClientPermissionV3]) -> AccountcommonClientPermissionsV3:
        self.permissions = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "permissions") and self.permissions:
            result["permissions"] = [i0.to_dict(include_empty=include_empty) for i0 in self.permissions]
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonClientPermissionsV3:
        instance = cls()
        if not dict_:
            return instance
        if "permissions" in dict_ and dict_["permissions"] is not None:
            instance.permissions = [AccountcommonClientPermissionV3.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["permissions"]]
        elif include_empty:
            instance.permissions = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "permissions": "permissions",
        }

    # endregion static methods
