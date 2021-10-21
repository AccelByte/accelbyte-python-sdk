# Auto-generated at 2021-10-21T08:52:30.888524+08:00
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


class WalletInfo(Model):
    """Wallet info (WalletInfo)

    Properties:
        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str

        balance: (balance) REQUIRED int

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        status: (status) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    currency_code: str                                                                             # REQUIRED
    currency_symbol: str                                                                           # REQUIRED
    balance: int                                                                                   # REQUIRED
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED
    status: str                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> WalletInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> WalletInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> WalletInfo:
        self.user_id = value
        return self

    def with_currency_code(self, value: str) -> WalletInfo:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> WalletInfo:
        self.currency_symbol = value
        return self

    def with_balance(self, value: int) -> WalletInfo:
        self.balance = value
        return self

    def with_created_at(self, value: str) -> WalletInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> WalletInfo:
        self.updated_at = value
        return self

    def with_status(self, value: str) -> WalletInfo:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "currency_code") and self.currency_code:
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "currency_symbol") and self.currency_symbol:
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = str()
        if hasattr(self, "balance") and self.balance:
            result["balance"] = int(self.balance)
        elif include_empty:
            result["balance"] = int()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        namespace: str,
        user_id: str,
        currency_code: str,
        currency_symbol: str,
        balance: int,
        created_at: str,
        updated_at: str,
        status: str,
    ) -> WalletInfo:
        instance = cls()
        instance.id_ = id_
        instance.namespace = namespace
        instance.user_id = user_id
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        instance.balance = balance
        instance.created_at = created_at
        instance.updated_at = updated_at
        instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> WalletInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = str()
        if "balance" in dict_ and dict_["balance"] is not None:
            instance.balance = int(dict_["balance"])
        elif include_empty:
            instance.balance = int()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "namespace": "namespace",
            "userId": "user_id",
            "currencyCode": "currency_code",
            "currencySymbol": "currency_symbol",
            "balance": "balance",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
            "status": "status",
        }

    # endregion static methods
