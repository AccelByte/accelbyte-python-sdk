# Auto-generated at 2021-10-21T08:52:30.720313+08:00
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


class CurrencyConfig(Model):
    """currency config (CurrencyConfig)

    Properties:
        currency_symbol: (currencySymbol) REQUIRED str
    """

    # region fields

    currency_symbol: str                                                                           # REQUIRED

    # endregion fields

    # region with_x methods

    def with_currency_symbol(self, value: str) -> CurrencyConfig:
        self.currency_symbol = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        currency_symbol: str,
    ) -> CurrencyConfig:
        instance = cls()
        instance.currency_symbol = currency_symbol
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CurrencyConfig:
        instance = cls()
        if not dict_:
            return instance
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "currencySymbol": "currency_symbol",
        }

    # endregion static methods
