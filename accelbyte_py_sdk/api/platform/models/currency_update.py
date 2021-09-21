# Auto-generated at 2021-09-21T14:10:38.716959+08:00
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


class CurrencyUpdate(Model):
    """A DTO for update currency

    Properties:
        localization_descriptions: (localizationDescriptions) OPTIONAL Dict[str, str]

        max_amount_per_transaction: (maxAmountPerTransaction) OPTIONAL int

        max_transaction_amount_per_day: (maxTransactionAmountPerDay) OPTIONAL int

        max_balance_amount: (maxBalanceAmount) OPTIONAL int
    """

    # region fields

    localization_descriptions: Dict[str, str]                                                      # OPTIONAL
    max_amount_per_transaction: int                                                                # OPTIONAL
    max_transaction_amount_per_day: int                                                            # OPTIONAL
    max_balance_amount: int                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_localization_descriptions(self, value: Dict[str, str]) -> CurrencyUpdate:
        self.localization_descriptions = value
        return self

    def with_max_amount_per_transaction(self, value: int) -> CurrencyUpdate:
        self.max_amount_per_transaction = value
        return self

    def with_max_transaction_amount_per_day(self, value: int) -> CurrencyUpdate:
        self.max_transaction_amount_per_day = value
        return self

    def with_max_balance_amount(self, value: int) -> CurrencyUpdate:
        self.max_balance_amount = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "localization_descriptions") and self.localization_descriptions:
            result["localizationDescriptions"] = {str(k0): str(v0) for k0, v0 in self.localization_descriptions.items()}
        elif include_empty:
            result["localizationDescriptions"] = {}
        if hasattr(self, "max_amount_per_transaction") and self.max_amount_per_transaction:
            result["maxAmountPerTransaction"] = int(self.max_amount_per_transaction)
        elif include_empty:
            result["maxAmountPerTransaction"] = int()
        if hasattr(self, "max_transaction_amount_per_day") and self.max_transaction_amount_per_day:
            result["maxTransactionAmountPerDay"] = int(self.max_transaction_amount_per_day)
        elif include_empty:
            result["maxTransactionAmountPerDay"] = int()
        if hasattr(self, "max_balance_amount") and self.max_balance_amount:
            result["maxBalanceAmount"] = int(self.max_balance_amount)
        elif include_empty:
            result["maxBalanceAmount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        localization_descriptions: Optional[Dict[str, str]] = None,
        max_amount_per_transaction: Optional[int] = None,
        max_transaction_amount_per_day: Optional[int] = None,
        max_balance_amount: Optional[int] = None,
    ) -> CurrencyUpdate:
        instance = cls()
        if localization_descriptions is not None:
            instance.localization_descriptions = localization_descriptions
        if max_amount_per_transaction is not None:
            instance.max_amount_per_transaction = max_amount_per_transaction
        if max_transaction_amount_per_day is not None:
            instance.max_transaction_amount_per_day = max_transaction_amount_per_day
        if max_balance_amount is not None:
            instance.max_balance_amount = max_balance_amount
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CurrencyUpdate:
        instance = cls()
        if "localizationDescriptions" in dict_ and dict_["localizationDescriptions"] is not None:
            instance.localization_descriptions = {str(k0): str(v0) for k0, v0 in dict_["localizationDescriptions"].items()}
        elif include_empty:
            instance.localization_descriptions = {}
        if "maxAmountPerTransaction" in dict_ and dict_["maxAmountPerTransaction"] is not None:
            instance.max_amount_per_transaction = int(dict_["maxAmountPerTransaction"])
        elif include_empty:
            instance.max_amount_per_transaction = int()
        if "maxTransactionAmountPerDay" in dict_ and dict_["maxTransactionAmountPerDay"] is not None:
            instance.max_transaction_amount_per_day = int(dict_["maxTransactionAmountPerDay"])
        elif include_empty:
            instance.max_transaction_amount_per_day = int()
        if "maxBalanceAmount" in dict_ and dict_["maxBalanceAmount"] is not None:
            instance.max_balance_amount = int(dict_["maxBalanceAmount"])
        elif include_empty:
            instance.max_balance_amount = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "localizationDescriptions": "localization_descriptions",
            "maxAmountPerTransaction": "max_amount_per_transaction",
            "maxTransactionAmountPerDay": "max_transaction_amount_per_day",
            "maxBalanceAmount": "max_balance_amount",
        }

    # endregion static methods
