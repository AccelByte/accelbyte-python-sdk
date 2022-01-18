# justice-iam-service (5.0.0)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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


class ModelUpdateUserStatusRequest(Model):
    """Model update user status request (model.UpdateUserStatusRequest)

    Properties:
        enabled: (enabled) REQUIRED bool

        reason: (reason) REQUIRED str
    """

    # region fields

    enabled: bool                                                                                  # REQUIRED
    reason: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_enabled(self, value: bool) -> ModelUpdateUserStatusRequest:
        self.enabled = value
        return self

    def with_reason(self, value: str) -> ModelUpdateUserStatusRequest:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "enabled"):
            result["enabled"] = bool(self.enabled)
        elif include_empty:
            result["enabled"] = bool()
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        enabled: bool,
        reason: str,
    ) -> ModelUpdateUserStatusRequest:
        instance = cls()
        instance.enabled = enabled
        instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ModelUpdateUserStatusRequest:
        instance = cls()
        if not dict_:
            return instance
        if "enabled" in dict_ and dict_["enabled"] is not None:
            instance.enabled = bool(dict_["enabled"])
        elif include_empty:
            instance.enabled = bool()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "enabled": "enabled",
            "reason": "reason",
        }

    # endregion static methods
