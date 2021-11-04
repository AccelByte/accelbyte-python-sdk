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


class CreditRequest(Model):
    """A DTO for wallet's credit (CreditRequest)

    Properties:
        amount: (amount) REQUIRED int

        source: (source) OPTIONAL str

        reason: (reason) OPTIONAL str
    """

    # region fields

    amount: int                                                                                    # REQUIRED
    source: str                                                                                    # OPTIONAL
    reason: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> CreditRequest:
        self.amount = value
        return self

    def with_source(self, value: str) -> CreditRequest:
        self.source = value
        return self

    def with_reason(self, value: str) -> CreditRequest:
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
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
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
        source: Optional[str] = None,
        reason: Optional[str] = None,
    ) -> CreditRequest:
        instance = cls()
        instance.amount = amount
        if source is not None:
            instance.source = source
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreditRequest:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "amount": "amount",
            "source": "source",
            "reason": "reason",
        }

    # endregion static methods
