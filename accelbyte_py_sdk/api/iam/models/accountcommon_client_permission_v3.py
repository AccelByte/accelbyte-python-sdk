# Auto-generated at 2021-09-21T14:10:34.705800+08:00
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


class AccountcommonClientPermissionV3(Model):
    """Accountcommon client permission V3

    Properties:
        action: (action) REQUIRED int

        resource: (resource) REQUIRED str
    """

    # region fields

    action: int                                                                                    # REQUIRED
    resource: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_action(self, value: int) -> AccountcommonClientPermissionV3:
        self.action = value
        return self

    def with_resource(self, value: str) -> AccountcommonClientPermissionV3:
        self.resource = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "action") and self.action:
            result["action"] = int(self.action)
        elif include_empty:
            result["action"] = int()
        if hasattr(self, "resource") and self.resource:
            result["resource"] = str(self.resource)
        elif include_empty:
            result["resource"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: int,
        resource: str,
    ) -> AccountcommonClientPermissionV3:
        instance = cls()
        instance.action = action
        instance.resource = resource
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AccountcommonClientPermissionV3:
        instance = cls()
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = int(dict_["action"])
        elif include_empty:
            instance.action = int()
        if "resource" in dict_ and dict_["resource"] is not None:
            instance.resource = str(dict_["resource"])
        elif include_empty:
            instance.resource = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "action": "action",
            "resource": "resource",
        }

    # endregion static methods
