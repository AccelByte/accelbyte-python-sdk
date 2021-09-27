# Auto-generated at 2021-09-27T17:12:36.330733+08:00
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


class PaymentOrderChargeStatus(Model):
    """Payment order charge status

    Properties:
        status: (status) OPTIONAL str

        charging: (charging) OPTIONAL bool
    """

    # region fields

    status: str                                                                                    # OPTIONAL
    charging: bool                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_status(self, value: str) -> PaymentOrderChargeStatus:
        self.status = value
        return self

    def with_charging(self, value: bool) -> PaymentOrderChargeStatus:
        self.charging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "charging") and self.charging:
            result["charging"] = bool(self.charging)
        elif include_empty:
            result["charging"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        status: Optional[str] = None,
        charging: Optional[bool] = None,
    ) -> PaymentOrderChargeStatus:
        instance = cls()
        if status is not None:
            instance.status = status
        if charging is not None:
            instance.charging = charging
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderChargeStatus:
        instance = cls()
        if not dict_:
            return instance
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "charging" in dict_ and dict_["charging"] is not None:
            instance.charging = bool(dict_["charging"])
        elif include_empty:
            instance.charging = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "status": "status",
            "charging": "charging",
        }

    # endregion static methods
