# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Iam Service

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


class PlatformWalletAggResponse(Model):
    """Platform wallet agg response (platform.WalletAggResponse)

    Properties:
        balance: (balance) REQUIRED int

        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str
    """

    # region fields

    balance: int  # REQUIRED
    currency_code: str  # REQUIRED
    currency_symbol: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_balance(self, value: int) -> PlatformWalletAggResponse:
        self.balance = value
        return self

    def with_currency_code(self, value: str) -> PlatformWalletAggResponse:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> PlatformWalletAggResponse:
        self.currency_symbol = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "balance"):
            result["balance"] = int(self.balance)
        elif include_empty:
            result["balance"] = 0
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "currency_symbol"):
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, balance: int, currency_code: str, currency_symbol: str, **kwargs
    ) -> PlatformWalletAggResponse:
        instance = cls()
        instance.balance = balance
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PlatformWalletAggResponse:
        instance = cls()
        if not dict_:
            return instance
        if "balance" in dict_ and dict_["balance"] is not None:
            instance.balance = int(dict_["balance"])
        elif include_empty:
            instance.balance = 0
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PlatformWalletAggResponse]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PlatformWalletAggResponse]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PlatformWalletAggResponse,
        List[PlatformWalletAggResponse],
        Dict[Any, PlatformWalletAggResponse],
    ]:
        if many:
            if isinstance(any_, dict):
                return cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                return cls.create_many_from_list(any_, include_empty=include_empty)
            else:
                raise ValueError()
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "balance": "balance",
            "currencyCode": "currency_code",
            "currencySymbol": "currency_symbol",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "balance": True,
            "currencyCode": True,
            "currencySymbol": True,
        }

    # endregion static methods
