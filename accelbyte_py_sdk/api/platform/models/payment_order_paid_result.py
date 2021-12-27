# justice-platform-service (3.39.0)

# template file: justice_py_sdk_codegen/__main__.py

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


class PaymentOrderPaidResult(Model):
    """Payment order paid result (PaymentOrderPaidResult)

    Properties:
        charging: (charging) REQUIRED bool

        success: (success) REQUIRED bool
    """

    # region fields

    charging: bool                                                                                 # REQUIRED
    success: bool                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_charging(self, value: bool) -> PaymentOrderPaidResult:
        self.charging = value
        return self

    def with_success(self, value: bool) -> PaymentOrderPaidResult:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "charging"):
            result["charging"] = bool(self.charging)
        elif include_empty:
            result["charging"] = bool()
        if hasattr(self, "success"):
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        charging: bool,
        success: bool,
    ) -> PaymentOrderPaidResult:
        instance = cls()
        instance.charging = charging
        instance.success = success
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderPaidResult:
        instance = cls()
        if not dict_:
            return instance
        if "charging" in dict_ and dict_["charging"] is not None:
            instance.charging = bool(dict_["charging"])
        elif include_empty:
            instance.charging = bool()
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "charging": "charging",
            "success": "success",
        }

    # endregion static methods
