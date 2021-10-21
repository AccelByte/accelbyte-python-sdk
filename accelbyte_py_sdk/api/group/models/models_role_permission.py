# Auto-generated at 2021-10-21T08:52:32.191872+08:00
# from: Justice group Service (2.8.0)

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


class ModelsRolePermission(Model):
    """Models role permission (models.RolePermission)

    Properties:
        action: (action) REQUIRED int

        resource_name: (resourceName) REQUIRED str
    """

    # region fields

    action: int                                                                                    # REQUIRED
    resource_name: str                                                                             # REQUIRED

    # endregion fields

    # region with_x methods

    def with_action(self, value: int) -> ModelsRolePermission:
        self.action = value
        return self

    def with_resource_name(self, value: str) -> ModelsRolePermission:
        self.resource_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action") and self.action:
            result["action"] = int(self.action)
        elif include_empty:
            result["action"] = int()
        if hasattr(self, "resource_name") and self.resource_name:
            result["resourceName"] = str(self.resource_name)
        elif include_empty:
            result["resourceName"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: int,
        resource_name: str,
    ) -> ModelsRolePermission:
        instance = cls()
        instance.action = action
        instance.resource_name = resource_name
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelsRolePermission:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = int(dict_["action"])
        elif include_empty:
            instance.action = int()
        if "resourceName" in dict_ and dict_["resourceName"] is not None:
            instance.resource_name = str(dict_["resourceName"])
        elif include_empty:
            instance.resource_name = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "action": "action",
            "resourceName": "resource_name",
        }

    # endregion static methods
