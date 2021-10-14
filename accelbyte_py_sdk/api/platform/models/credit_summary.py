# Auto-generated at 2021-10-14T22:17:16.314808+08:00
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


class CreditSummary(Model):
    """Credit summary (CreditSummary)

    Properties:
        wallet_id: (walletId) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_id: (userId) REQUIRED str

        amount: (amount) REQUIRED int
    """

    # region fields

    wallet_id: str                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    user_id: str                                                                                   # REQUIRED
    amount: int                                                                                    # REQUIRED

    # endregion fields

    # region with_x methods

    def with_wallet_id(self, value: str) -> CreditSummary:
        self.wallet_id = value
        return self

    def with_namespace(self, value: str) -> CreditSummary:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> CreditSummary:
        self.user_id = value
        return self

    def with_amount(self, value: int) -> CreditSummary:
        self.amount = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "wallet_id") and self.wallet_id:
            result["walletId"] = str(self.wallet_id)
        elif include_empty:
            result["walletId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "amount") and self.amount:
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        wallet_id: str,
        namespace: str,
        user_id: str,
        amount: int,
    ) -> CreditSummary:
        instance = cls()
        instance.wallet_id = wallet_id
        instance.namespace = namespace
        instance.user_id = user_id
        instance.amount = amount
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CreditSummary:
        instance = cls()
        if not dict_:
            return instance
        if "walletId" in dict_ and dict_["walletId"] is not None:
            instance.wallet_id = str(dict_["walletId"])
        elif include_empty:
            instance.wallet_id = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "walletId": "wallet_id",
            "namespace": "namespace",
            "userId": "user_id",
            "amount": "amount",
        }

    # endregion static methods
