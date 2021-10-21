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

from ..models.accountcommon_role_manager_v3 import AccountcommonRoleManagerV3


class ModelRoleManagersRequestV3(Model):
    """Model role managers request V3 (model.RoleManagersRequestV3)

    Properties:
        managers: (managers) REQUIRED List[AccountcommonRoleManagerV3]
    """

    # region fields

    managers: List[AccountcommonRoleManagerV3]                                                     # REQUIRED

    # endregion fields

    # region with_x methods

    def with_managers(self, value: List[AccountcommonRoleManagerV3]) -> ModelRoleManagersRequestV3:
        self.managers = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "managers") and self.managers:
            result["managers"] = [i0.to_dict(include_empty=include_empty) for i0 in self.managers]
        elif include_empty:
            result["managers"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        managers: List[AccountcommonRoleManagerV3],
    ) -> ModelRoleManagersRequestV3:
        instance = cls()
        instance.managers = managers
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelRoleManagersRequestV3:
        instance = cls()
        if not dict_:
            return instance
        if "managers" in dict_ and dict_["managers"] is not None:
            instance.managers = [AccountcommonRoleManagerV3.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["managers"]]
        elif include_empty:
            instance.managers = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "managers": "managers",
        }

    # endregion static methods
