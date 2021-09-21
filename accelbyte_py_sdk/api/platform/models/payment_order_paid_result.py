# Auto-generated at 2021-09-21T14:10:38.821870+08:00
# from: Justice Platform Service (3.24.0)

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
    """Payment order paid result

    Properties:
        success: (success) REQUIRED bool
    """

    # region fields

    success: bool                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_success(self, value: bool) -> PaymentOrderPaidResult:
        self.success = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "success") and self.success:
            result["success"] = bool(self.success)
        elif include_empty:
            result["success"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        success: bool,
    ) -> PaymentOrderPaidResult:
        instance = cls()
        instance.success = success
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderPaidResult:
        instance = cls()
        if "success" in dict_ and dict_["success"] is not None:
            instance.success = bool(dict_["success"])
        elif include_empty:
            instance.success = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "success": "success",
        }

    # endregion static methods
