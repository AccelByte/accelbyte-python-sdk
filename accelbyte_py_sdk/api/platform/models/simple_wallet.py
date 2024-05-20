# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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

from ..models.time_limited_balance import TimeLimitedBalance


class SimpleWallet(Model):
    """Simple wallet (SimpleWallet)

    Properties:
        balance: (balance) OPTIONAL int

        balance_origin: (balanceOrigin) OPTIONAL str

        currency_code: (currencyCode) OPTIONAL str

        time_limited_balances: (timeLimitedBalances) OPTIONAL List[TimeLimitedBalance]

        wallet_id: (walletId) OPTIONAL str
    """

    # region fields

    balance: int  # OPTIONAL
    balance_origin: str  # OPTIONAL
    currency_code: str  # OPTIONAL
    time_limited_balances: List[TimeLimitedBalance]  # OPTIONAL
    wallet_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_balance(self, value: int) -> SimpleWallet:
        self.balance = value
        return self

    def with_balance_origin(self, value: str) -> SimpleWallet:
        self.balance_origin = value
        return self

    def with_currency_code(self, value: str) -> SimpleWallet:
        self.currency_code = value
        return self

    def with_time_limited_balances(
        self, value: List[TimeLimitedBalance]
    ) -> SimpleWallet:
        self.time_limited_balances = value
        return self

    def with_wallet_id(self, value: str) -> SimpleWallet:
        self.wallet_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "balance"):
            result["balance"] = int(self.balance)
        elif include_empty:
            result["balance"] = 0
        if hasattr(self, "balance_origin"):
            result["balanceOrigin"] = str(self.balance_origin)
        elif include_empty:
            result["balanceOrigin"] = ""
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "time_limited_balances"):
            result["timeLimitedBalances"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.time_limited_balances
            ]
        elif include_empty:
            result["timeLimitedBalances"] = []
        if hasattr(self, "wallet_id"):
            result["walletId"] = str(self.wallet_id)
        elif include_empty:
            result["walletId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        balance: Optional[int] = None,
        balance_origin: Optional[str] = None,
        currency_code: Optional[str] = None,
        time_limited_balances: Optional[List[TimeLimitedBalance]] = None,
        wallet_id: Optional[str] = None,
        **kwargs,
    ) -> SimpleWallet:
        instance = cls()
        if balance is not None:
            instance.balance = balance
        if balance_origin is not None:
            instance.balance_origin = balance_origin
        if currency_code is not None:
            instance.currency_code = currency_code
        if time_limited_balances is not None:
            instance.time_limited_balances = time_limited_balances
        if wallet_id is not None:
            instance.wallet_id = wallet_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SimpleWallet:
        instance = cls()
        if not dict_:
            return instance
        if "balance" in dict_ and dict_["balance"] is not None:
            instance.balance = int(dict_["balance"])
        elif include_empty:
            instance.balance = 0
        if "balanceOrigin" in dict_ and dict_["balanceOrigin"] is not None:
            instance.balance_origin = str(dict_["balanceOrigin"])
        elif include_empty:
            instance.balance_origin = ""
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "timeLimitedBalances" in dict_ and dict_["timeLimitedBalances"] is not None:
            instance.time_limited_balances = [
                TimeLimitedBalance.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["timeLimitedBalances"]
            ]
        elif include_empty:
            instance.time_limited_balances = []
        if "walletId" in dict_ and dict_["walletId"] is not None:
            instance.wallet_id = str(dict_["walletId"])
        elif include_empty:
            instance.wallet_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, SimpleWallet]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[SimpleWallet]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[SimpleWallet, List[SimpleWallet], Dict[Any, SimpleWallet]]:
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
            "balanceOrigin": "balance_origin",
            "currencyCode": "currency_code",
            "timeLimitedBalances": "time_limited_balances",
            "walletId": "wallet_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "balance": False,
            "balanceOrigin": False,
            "currencyCode": False,
            "timeLimitedBalances": False,
            "walletId": False,
        }

    # endregion static methods
