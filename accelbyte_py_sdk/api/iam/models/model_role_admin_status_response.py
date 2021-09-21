# Auto-generated at 2021-09-21T14:10:34.793459+08:00
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


class ModelRoleAdminStatusResponse(Model):
    """Model role admin status response

    Properties:
        admin_role: (AdminRole) REQUIRED bool
    """

    # region fields

    admin_role: bool                                                                               # REQUIRED

    # endregion fields

    # region with_x methods

    def with_admin_role(self, value: bool) -> ModelRoleAdminStatusResponse:
        self.admin_role = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "admin_role") and self.admin_role:
            result["AdminRole"] = bool(self.admin_role)
        elif include_empty:
            result["AdminRole"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        admin_role: bool,
    ) -> ModelRoleAdminStatusResponse:
        instance = cls()
        instance.admin_role = admin_role
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelRoleAdminStatusResponse:
        instance = cls()
        if "AdminRole" in dict_ and dict_["AdminRole"] is not None:
            instance.admin_role = bool(dict_["AdminRole"])
        elif include_empty:
            instance.admin_role = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "AdminRole": "admin_role",
        }

    # endregion static methods
