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


class WalletTransactionInfo(Model):
    """Wallet transaction info (WalletTransactionInfo)

    Properties:
        wallet_id: (walletId) REQUIRED str

        amount: (amount) REQUIRED int

        reason: (reason) OPTIONAL str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        operator: (operator) REQUIRED str

        wallet_action: (walletAction) REQUIRED str

        currency_code: (currencyCode) REQUIRED str

        balance_source: (balanceSource) OPTIONAL str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    wallet_id: str                                                                                 # REQUIRED
    amount: int                                                                                    # REQUIRED
    reason: str                                                                                    # OPTIONAL
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    operator: str                                                                                  # REQUIRED
    wallet_action: str                                                                             # REQUIRED
    currency_code: str                                                                             # REQUIRED
    balance_source: str                                                                            # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_wallet_id(self, value: str) -> WalletTransactionInfo:
        self.wallet_id = value
        return self

    def with_amount(self, value: int) -> WalletTransactionInfo:
        self.amount = value
        return self

    def with_reason(self, value: str) -> WalletTransactionInfo:
        self.reason = value
        return self

    def with_namespace(self, value: str) -> WalletTransactionInfo:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> WalletTransactionInfo:
        self.user_id = value
        return self

    def with_operator(self, value: str) -> WalletTransactionInfo:
        self.operator = value
        return self

    def with_wallet_action(self, value: str) -> WalletTransactionInfo:
        self.wallet_action = value
        return self

    def with_currency_code(self, value: str) -> WalletTransactionInfo:
        self.currency_code = value
        return self

    def with_balance_source(self, value: str) -> WalletTransactionInfo:
        self.balance_source = value
        return self

    def with_created_at(self, value: str) -> WalletTransactionInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> WalletTransactionInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "wallet_id"):
            result["walletId"] = str(self.wallet_id)
        elif include_empty:
            result["walletId"] = str()
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "operator"):
            result["operator"] = str(self.operator)
        elif include_empty:
            result["operator"] = str()
        if hasattr(self, "wallet_action"):
            result["walletAction"] = str(self.wallet_action)
        elif include_empty:
            result["walletAction"] = str()
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "balance_source"):
            result["balanceSource"] = str(self.balance_source)
        elif include_empty:
            result["balanceSource"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        wallet_id: str,
        amount: int,
        namespace: str,
        user_id: str,
        operator: str,
        wallet_action: str,
        currency_code: str,
        created_at: str,
        updated_at: str,
        reason: Optional[str] = None,
        balance_source: Optional[str] = None,
    ) -> WalletTransactionInfo:
        instance = cls()
        instance.wallet_id = wallet_id
        instance.amount = amount
        instance.namespace = namespace
        instance.user_id = user_id
        instance.operator = operator
        instance.wallet_action = wallet_action
        instance.currency_code = currency_code
        instance.created_at = created_at
        instance.updated_at = updated_at
        if reason is not None:
            instance.reason = reason
        if balance_source is not None:
            instance.balance_source = balance_source
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> WalletTransactionInfo:
        instance = cls()
        if not dict_:
            return instance
        if "walletId" in dict_ and dict_["walletId"] is not None:
            instance.wallet_id = str(dict_["walletId"])
        elif include_empty:
            instance.wallet_id = str()
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "operator" in dict_ and dict_["operator"] is not None:
            instance.operator = str(dict_["operator"])
        elif include_empty:
            instance.operator = str()
        if "walletAction" in dict_ and dict_["walletAction"] is not None:
            instance.wallet_action = str(dict_["walletAction"])
        elif include_empty:
            instance.wallet_action = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "balanceSource" in dict_ and dict_["balanceSource"] is not None:
            instance.balance_source = str(dict_["balanceSource"])
        elif include_empty:
            instance.balance_source = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "walletId": "wallet_id",
            "amount": "amount",
            "reason": "reason",
            "namespace": "namespace",
            "userId": "user_id",
            "operator": "operator",
            "walletAction": "wallet_action",
            "currencyCode": "currency_code",
            "balanceSource": "balance_source",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
