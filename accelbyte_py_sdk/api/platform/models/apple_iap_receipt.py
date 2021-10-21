# Auto-generated at 2021-10-21T08:52:30.769715+08:00
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


class AppleIAPReceipt(Model):
    """Apple IAP receipt (AppleIAPReceipt)

    Properties:
        product_id: (productId) REQUIRED str

        transaction_id: (transactionId) REQUIRED str

        receipt_data: (receiptData) REQUIRED str

        exclude_old_transactions: (excludeOldTransactions) OPTIONAL bool

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str
    """

    # region fields

    product_id: str                                                                                # REQUIRED
    transaction_id: str                                                                            # REQUIRED
    receipt_data: str                                                                              # REQUIRED
    exclude_old_transactions: bool                                                                 # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_product_id(self, value: str) -> AppleIAPReceipt:
        self.product_id = value
        return self

    def with_transaction_id(self, value: str) -> AppleIAPReceipt:
        self.transaction_id = value
        return self

    def with_receipt_data(self, value: str) -> AppleIAPReceipt:
        self.receipt_data = value
        return self

    def with_exclude_old_transactions(self, value: bool) -> AppleIAPReceipt:
        self.exclude_old_transactions = value
        return self

    def with_region(self, value: str) -> AppleIAPReceipt:
        self.region = value
        return self

    def with_language(self, value: str) -> AppleIAPReceipt:
        self.language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "product_id") and self.product_id:
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = str()
        if hasattr(self, "transaction_id") and self.transaction_id:
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = str()
        if hasattr(self, "receipt_data") and self.receipt_data:
            result["receiptData"] = str(self.receipt_data)
        elif include_empty:
            result["receiptData"] = str()
        if hasattr(self, "exclude_old_transactions") and self.exclude_old_transactions:
            result["excludeOldTransactions"] = bool(self.exclude_old_transactions)
        elif include_empty:
            result["excludeOldTransactions"] = bool()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        product_id: str,
        transaction_id: str,
        receipt_data: str,
        exclude_old_transactions: Optional[bool] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
    ) -> AppleIAPReceipt:
        instance = cls()
        instance.product_id = product_id
        instance.transaction_id = transaction_id
        instance.receipt_data = receipt_data
        if exclude_old_transactions is not None:
            instance.exclude_old_transactions = exclude_old_transactions
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AppleIAPReceipt:
        instance = cls()
        if not dict_:
            return instance
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = str()
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = str()
        if "receiptData" in dict_ and dict_["receiptData"] is not None:
            instance.receipt_data = str(dict_["receiptData"])
        elif include_empty:
            instance.receipt_data = str()
        if "excludeOldTransactions" in dict_ and dict_["excludeOldTransactions"] is not None:
            instance.exclude_old_transactions = bool(dict_["excludeOldTransactions"])
        elif include_empty:
            instance.exclude_old_transactions = bool()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "productId": "product_id",
            "transactionId": "transaction_id",
            "receiptData": "receipt_data",
            "excludeOldTransactions": "exclude_old_transactions",
            "region": "region",
            "language": "language",
        }

    # endregion static methods
