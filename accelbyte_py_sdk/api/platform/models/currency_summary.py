# Auto-generated at 2021-10-21T08:52:30.718928+08:00
# from: Justice platform Service (3.34.0)

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


class CurrencySummary(Model):
    """Currency summary (CurrencySummary)

    Properties:
        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str

        currency_type: (currencyType) REQUIRED str

        namespace: (namespace) REQUIRED str

        decimals: (decimals) REQUIRED int
    """

    # region fields

    currency_code: str                                                                             # REQUIRED
    currency_symbol: str                                                                           # REQUIRED
    currency_type: str                                                                             # REQUIRED
    namespace: str                                                                                 # REQUIRED
    decimals: int                                                                                  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_currency_code(self, value: str) -> CurrencySummary:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> CurrencySummary:
        self.currency_symbol = value
        return self

    def with_currency_type(self, value: str) -> CurrencySummary:
        self.currency_type = value
        return self

    def with_namespace(self, value: str) -> CurrencySummary:
        self.namespace = value
        return self

    def with_decimals(self, value: int) -> CurrencySummary:
        self.decimals = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "currency_code") and self.currency_code:
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "currency_symbol") and self.currency_symbol:
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = str()
        if hasattr(self, "currency_type") and self.currency_type:
            result["currencyType"] = str(self.currency_type)
        elif include_empty:
            result["currencyType"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "decimals") and self.decimals:
            result["decimals"] = int(self.decimals)
        elif include_empty:
            result["decimals"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        currency_code: str,
        currency_symbol: str,
        currency_type: str,
        namespace: str,
        decimals: int,
    ) -> CurrencySummary:
        instance = cls()
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        instance.currency_type = currency_type
        instance.namespace = namespace
        instance.decimals = decimals
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CurrencySummary:
        instance = cls()
        if not dict_:
            return instance
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = str()
        if "currencyType" in dict_ and dict_["currencyType"] is not None:
            instance.currency_type = str(dict_["currencyType"])
        elif include_empty:
            instance.currency_type = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "decimals" in dict_ and dict_["decimals"] is not None:
            instance.decimals = int(dict_["decimals"])
        elif include_empty:
            instance.decimals = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "currencyCode": "currency_code",
            "currencySymbol": "currency_symbol",
            "currencyType": "currency_type",
            "namespace": "namespace",
            "decimals": "decimals",
        }

    # endregion static methods
