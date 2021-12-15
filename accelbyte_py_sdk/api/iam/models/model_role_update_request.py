# justice-iam-service (4.9.0)

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


class ModelRoleUpdateRequest(Model):
    """Model role update request (model.RoleUpdateRequest)

    Properties:
        role_name: (RoleName) REQUIRED str
    """

    # region fields

    role_name: str                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_role_name(self, value: str) -> ModelRoleUpdateRequest:
        self.role_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        role_name: str,
    ) -> ModelRoleUpdateRequest:
        instance = cls()
        instance.role_name = role_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelRoleUpdateRequest:
        instance = cls()
        if not dict_:
            return instance
        if "RoleName" in dict_ and dict_["RoleName"] is not None:
            instance.role_name = str(dict_["RoleName"])
        elif include_empty:
            instance.role_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "RoleName": "role_name",
        }

    # endregion static methods
