# Auto-generated at 2021-10-14T22:17:10.882993+08:00
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


class ModelPermissionDeleteRequest(Model):
    """Model permission delete request (model.PermissionDeleteRequest)

    Properties:
        action: (Action) REQUIRED int

        resource: (Resource) REQUIRED str
    """

    # region fields

    action: int                                                                                    # REQUIRED
    resource: str                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_action(self, value: int) -> ModelPermissionDeleteRequest:
        self.action = value
        return self

    def with_resource(self, value: str) -> ModelPermissionDeleteRequest:
        self.resource = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action") and self.action:
            result["Action"] = int(self.action)
        elif include_empty:
            result["Action"] = int()
        if hasattr(self, "resource") and self.resource:
            result["Resource"] = str(self.resource)
        elif include_empty:
            result["Resource"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: int,
        resource: str,
    ) -> ModelPermissionDeleteRequest:
        instance = cls()
        instance.action = action
        instance.resource = resource
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelPermissionDeleteRequest:
        instance = cls()
        if not dict_:
            return instance
        if "Action" in dict_ and dict_["Action"] is not None:
            instance.action = int(dict_["Action"])
        elif include_empty:
            instance.action = int()
        if "Resource" in dict_ and dict_["Resource"] is not None:
            instance.resource = str(dict_["Resource"])
        elif include_empty:
            instance.resource = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Action": "action",
            "Resource": "resource",
        }

    # endregion static methods
