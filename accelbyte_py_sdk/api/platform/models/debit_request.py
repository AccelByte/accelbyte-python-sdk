# justice-platform-service (3.34.0)

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


class DebitRequest(Model):
    """A DTO for wallet's debit (DebitRequest)

    Properties:
        amount: (amount) REQUIRED int

        reason: (reason) OPTIONAL str
    """

    # region fields

    amount: int                                                                                    # REQUIRED
    reason: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> DebitRequest:
        self.amount = value
        return self

    def with_reason(self, value: str) -> DebitRequest:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
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
        amount: int,
        reason: Optional[str] = None,
    ) -> DebitRequest:
        instance = cls()
        instance.amount = amount
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> DebitRequest:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "amount": "amount",
            "reason": "reason",
        }

    # endregion static methods
