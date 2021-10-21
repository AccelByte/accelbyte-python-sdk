# justice-iam-service (4.4.1)

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

from ..models.accountcommon_role_manager import AccountcommonRoleManager


class ModelRoleManagersRequest(Model):
    """Model role managers request (model.RoleManagersRequest)

    Properties:
        managers: (Managers) REQUIRED List[AccountcommonRoleManager]
    """

    # region fields

    managers: List[AccountcommonRoleManager]                                                       # REQUIRED

    # endregion fields

    # region with_x methods

    def with_managers(self, value: List[AccountcommonRoleManager]) -> ModelRoleManagersRequest:
        self.managers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "managers") and self.managers:
            result["Managers"] = [i0.to_dict(include_empty=include_empty) for i0 in self.managers]
        elif include_empty:
            result["Managers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        managers: List[AccountcommonRoleManager],
    ) -> ModelRoleManagersRequest:
        instance = cls()
        instance.managers = managers
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelRoleManagersRequest:
        instance = cls()
        if not dict_:
            return instance
        if "Managers" in dict_ and dict_["Managers"] is not None:
            instance.managers = [AccountcommonRoleManager.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["Managers"]]
        elif include_empty:
            instance.managers = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Managers": "managers",
        }

    # endregion static methods
