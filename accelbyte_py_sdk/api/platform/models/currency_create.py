# Auto-generated at 2021-10-14T22:17:16.356647+08:00
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


class CurrencyCreate(Model):
    """A DTO for creating currency (CurrencyCreate)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        localization_descriptions: (localizationDescriptions) OPTIONAL Dict[str, str]

        currency_symbol: (currencySymbol) OPTIONAL str

        currency_type: (currencyType) OPTIONAL str

        decimals: (decimals) OPTIONAL int

        max_amount_per_transaction: (maxAmountPerTransaction) OPTIONAL int

        max_transaction_amount_per_day: (maxTransactionAmountPerDay) OPTIONAL int

        max_balance_amount: (maxBalanceAmount) OPTIONAL int
    """

    # region fields

    currency_code: str                                                                             # REQUIRED
    localization_descriptions: Dict[str, str]                                                      # OPTIONAL
    currency_symbol: str                                                                           # OPTIONAL
    currency_type: str                                                                             # OPTIONAL
    decimals: int                                                                                  # OPTIONAL
    max_amount_per_transaction: int                                                                # OPTIONAL
    max_transaction_amount_per_day: int                                                            # OPTIONAL
    max_balance_amount: int                                                                        # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> CurrencyCreate:
        self.currency_code = value
        return self

    def with_localization_descriptions(self, value: Dict[str, str]) -> CurrencyCreate:
        self.localization_descriptions = value
        return self

    def with_currency_symbol(self, value: str) -> CurrencyCreate:
        self.currency_symbol = value
        return self

    def with_currency_type(self, value: str) -> CurrencyCreate:
        self.currency_type = value
        return self

    def with_decimals(self, value: int) -> CurrencyCreate:
        self.decimals = value
        return self

    def with_max_amount_per_transaction(self, value: int) -> CurrencyCreate:
        self.max_amount_per_transaction = value
        return self

    def with_max_transaction_amount_per_day(self, value: int) -> CurrencyCreate:
        self.max_transaction_amount_per_day = value
        return self

    def with_max_balance_amount(self, value: int) -> CurrencyCreate:
        self.max_balance_amount = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code") and self.currency_code:
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "localization_descriptions") and self.localization_descriptions:
            result["localizationDescriptions"] = {str(k0): str(v0) for k0, v0 in self.localization_descriptions.items()}
        elif include_empty:
            result["localizationDescriptions"] = {}
        if hasattr(self, "currency_symbol") and self.currency_symbol:
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = str()
        if hasattr(self, "currency_type") and self.currency_type:
            result["currencyType"] = str(self.currency_type)
        elif include_empty:
            result["currencyType"] = str()
        if hasattr(self, "decimals") and self.decimals:
            result["decimals"] = int(self.decimals)
        elif include_empty:
            result["decimals"] = int()
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
        currency_code: str,
        localization_descriptions: Optional[Dict[str, str]] = None,
        currency_symbol: Optional[str] = None,
        currency_type: Optional[str] = None,
        decimals: Optional[int] = None,
        max_amount_per_transaction: Optional[int] = None,
        max_transaction_amount_per_day: Optional[int] = None,
        max_balance_amount: Optional[int] = None,
    ) -> CurrencyCreate:
        instance = cls()
        instance.currency_code = currency_code
        if localization_descriptions is not None:
            instance.localization_descriptions = localization_descriptions
        if currency_symbol is not None:
            instance.currency_symbol = currency_symbol
        if currency_type is not None:
            instance.currency_type = currency_type
        if decimals is not None:
            instance.decimals = decimals
        if max_amount_per_transaction is not None:
            instance.max_amount_per_transaction = max_amount_per_transaction
        if max_transaction_amount_per_day is not None:
            instance.max_transaction_amount_per_day = max_transaction_amount_per_day
        if max_balance_amount is not None:
            instance.max_balance_amount = max_balance_amount
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CurrencyCreate:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "localizationDescriptions" in dict_ and dict_["localizationDescriptions"] is not None:
            instance.localization_descriptions = {str(k0): str(v0) for k0, v0 in dict_["localizationDescriptions"].items()}
        elif include_empty:
            instance.localization_descriptions = {}
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = str()
        if "currencyType" in dict_ and dict_["currencyType"] is not None:
            instance.currency_type = str(dict_["currencyType"])
        elif include_empty:
            instance.currency_type = str()
        if "decimals" in dict_ and dict_["decimals"] is not None:
            instance.decimals = int(dict_["decimals"])
        elif include_empty:
            instance.decimals = int()
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
            "currencyCode": "currency_code",
            "localizationDescriptions": "localization_descriptions",
            "currencySymbol": "currency_symbol",
            "currencyType": "currency_type",
            "decimals": "decimals",
            "maxAmountPerTransaction": "max_amount_per_transaction",
            "maxTransactionAmountPerDay": "max_transaction_amount_per_day",
            "maxBalanceAmount": "max_balance_amount",
        }

    # endregion static methods
