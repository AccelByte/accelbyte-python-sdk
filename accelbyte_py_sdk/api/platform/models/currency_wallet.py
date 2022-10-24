# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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

from ..models.wallet_info import WalletInfo


class CurrencyWallet(Model):
    """Currency wallet (CurrencyWallet)

    Properties:
        balance: (balance) REQUIRED int

        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        total_permanent_balance: (totalPermanentBalance) OPTIONAL int

        total_time_limited_balance: (totalTimeLimitedBalance) OPTIONAL int

        wallet_infos: (walletInfos) OPTIONAL List[WalletInfo]
    """

    # region fields

    balance: int  # REQUIRED
    currency_code: str  # REQUIRED
    currency_symbol: str  # REQUIRED
    namespace: str  # REQUIRED
    user_id: str  # REQUIRED
    total_permanent_balance: int  # OPTIONAL
    total_time_limited_balance: int  # OPTIONAL
    wallet_infos: List[WalletInfo]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_balance(self, value: int) -> CurrencyWallet:
        self.balance = value
        return self

    def with_currency_code(self, value: str) -> CurrencyWallet:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> CurrencyWallet:
        self.currency_symbol = value
        return self

    def with_namespace(self, value: str) -> CurrencyWallet:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> CurrencyWallet:
        self.user_id = value
        return self

    def with_total_permanent_balance(self, value: int) -> CurrencyWallet:
        self.total_permanent_balance = value
        return self

    def with_total_time_limited_balance(self, value: int) -> CurrencyWallet:
        self.total_time_limited_balance = value
        return self

    def with_wallet_infos(self, value: List[WalletInfo]) -> CurrencyWallet:
        self.wallet_infos = value
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "total_permanent_balance"):
            result["totalPermanentBalance"] = int(self.total_permanent_balance)
        elif include_empty:
            result["totalPermanentBalance"] = 0
        if hasattr(self, "total_time_limited_balance"):
            result["totalTimeLimitedBalance"] = int(self.total_time_limited_balance)
        elif include_empty:
            result["totalTimeLimitedBalance"] = 0
        if hasattr(self, "wallet_infos"):
            result["walletInfos"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.wallet_infos
            ]
        elif include_empty:
            result["walletInfos"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        balance: int,
        currency_code: str,
        currency_symbol: str,
        namespace: str,
        user_id: str,
        total_permanent_balance: Optional[int] = None,
        total_time_limited_balance: Optional[int] = None,
        wallet_infos: Optional[List[WalletInfo]] = None,
    ) -> CurrencyWallet:
        instance = cls()
        instance.balance = balance
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        instance.namespace = namespace
        instance.user_id = user_id
        if total_permanent_balance is not None:
            instance.total_permanent_balance = total_permanent_balance
        if total_time_limited_balance is not None:
            instance.total_time_limited_balance = total_time_limited_balance
        if wallet_infos is not None:
            instance.wallet_infos = wallet_infos
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CurrencyWallet:
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if (
            "totalPermanentBalance" in dict_
            and dict_["totalPermanentBalance"] is not None
        ):
            instance.total_permanent_balance = int(dict_["totalPermanentBalance"])
        elif include_empty:
            instance.total_permanent_balance = 0
        if (
            "totalTimeLimitedBalance" in dict_
            and dict_["totalTimeLimitedBalance"] is not None
        ):
            instance.total_time_limited_balance = int(dict_["totalTimeLimitedBalance"])
        elif include_empty:
            instance.total_time_limited_balance = 0
        if "walletInfos" in dict_ and dict_["walletInfos"] is not None:
            instance.wallet_infos = [
                WalletInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["walletInfos"]
            ]
        elif include_empty:
            instance.wallet_infos = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CurrencyWallet]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CurrencyWallet]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CurrencyWallet, List[CurrencyWallet], Dict[Any, CurrencyWallet]]:
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
            "namespace": "namespace",
            "userId": "user_id",
            "totalPermanentBalance": "total_permanent_balance",
            "totalTimeLimitedBalance": "total_time_limited_balance",
            "walletInfos": "wallet_infos",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "balance": True,
            "currencyCode": True,
            "currencySymbol": True,
            "namespace": True,
            "userId": True,
            "totalPermanentBalance": False,
            "totalTimeLimitedBalance": False,
            "walletInfos": False,
        }

    # endregion static methods
