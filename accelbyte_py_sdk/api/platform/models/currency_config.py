# Auto-generated at 2021-09-27T17:12:36.266705+08:00
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


class CurrencyConfig(Model):
    """currency config

    Properties:
        max_amount_per_transaction: (maxAmountPerTransaction) REQUIRED int

        max_transaction_amount_per_day: (maxTransactionAmountPerDay) REQUIRED int

        max_balance_amount: (maxBalanceAmount) REQUIRED int

        currency_symbol: (currencySymbol) REQUIRED str
    """

    # region fields

    max_amount_per_transaction: int                                                                # REQUIRED
    max_transaction_amount_per_day: int                                                            # REQUIRED
    max_balance_amount: int                                                                        # REQUIRED
    currency_symbol: str                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_max_amount_per_transaction(self, value: int) -> CurrencyConfig:
        self.max_amount_per_transaction = value
        return self

    def with_max_transaction_amount_per_day(self, value: int) -> CurrencyConfig:
        self.max_transaction_amount_per_day = value
        return self

    def with_max_balance_amount(self, value: int) -> CurrencyConfig:
        self.max_balance_amount = value
        return self

    def with_currency_symbol(self, value: str) -> CurrencyConfig:
        self.currency_symbol = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
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
        if hasattr(self, "currency_symbol") and self.currency_symbol:
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        max_amount_per_transaction: int,
        max_transaction_amount_per_day: int,
        max_balance_amount: int,
        currency_symbol: str,
    ) -> CurrencyConfig:
        instance = cls()
        instance.max_amount_per_transaction = max_amount_per_transaction
        instance.max_transaction_amount_per_day = max_transaction_amount_per_day
        instance.max_balance_amount = max_balance_amount
        instance.currency_symbol = currency_symbol
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CurrencyConfig:
        instance = cls()
        if not dict_:
            return instance
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
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "maxAmountPerTransaction": "max_amount_per_transaction",
            "maxTransactionAmountPerDay": "max_transaction_amount_per_day",
            "maxBalanceAmount": "max_balance_amount",
            "currencySymbol": "currency_symbol",
        }

    # endregion static methods
