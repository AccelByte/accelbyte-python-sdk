# Auto-generated at 2021-10-14T22:17:16.367452+08:00
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


class PaymentRequest(Model):
    """A DTO for wallet's payment (PaymentRequest)

    Properties:
        amount: (amount) REQUIRED int
    """

    # region fields

    amount: int                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> PaymentRequest:
        self.amount = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount") and self.amount:
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount: int,
    ) -> PaymentRequest:
        instance = cls()
        instance.amount = amount
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "amount": "amount",
        }

    # endregion static methods
