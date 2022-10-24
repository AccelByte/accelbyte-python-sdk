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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class AppleIAPReceipt(Model):
    """Apple IAP receipt (AppleIAPReceipt)

    Properties:
        product_id: (productId) REQUIRED str

        receipt_data: (receiptData) REQUIRED str

        transaction_id: (transactionId) REQUIRED str

        exclude_old_transactions: (excludeOldTransactions) OPTIONAL bool

        language: (language) OPTIONAL str

        region: (region) OPTIONAL str
    """

    # region fields

    product_id: str  # REQUIRED
    receipt_data: str  # REQUIRED
    transaction_id: str  # REQUIRED
    exclude_old_transactions: bool  # OPTIONAL
    language: str  # OPTIONAL
    region: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_product_id(self, value: str) -> AppleIAPReceipt:
        self.product_id = value
        return self

    def with_receipt_data(self, value: str) -> AppleIAPReceipt:
        self.receipt_data = value
        return self

    def with_transaction_id(self, value: str) -> AppleIAPReceipt:
        self.transaction_id = value
        return self

    def with_exclude_old_transactions(self, value: bool) -> AppleIAPReceipt:
        self.exclude_old_transactions = value
        return self

    def with_language(self, value: str) -> AppleIAPReceipt:
        self.language = value
        return self

    def with_region(self, value: str) -> AppleIAPReceipt:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = ""
        if hasattr(self, "receipt_data"):
            result["receiptData"] = str(self.receipt_data)
        elif include_empty:
            result["receiptData"] = ""
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        if hasattr(self, "exclude_old_transactions"):
            result["excludeOldTransactions"] = bool(self.exclude_old_transactions)
        elif include_empty:
            result["excludeOldTransactions"] = False
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        product_id: str,
        receipt_data: str,
        transaction_id: str,
        exclude_old_transactions: Optional[bool] = None,
        language: Optional[str] = None,
        region: Optional[str] = None,
    ) -> AppleIAPReceipt:
        instance = cls()
        instance.product_id = product_id
        instance.receipt_data = receipt_data
        instance.transaction_id = transaction_id
        if exclude_old_transactions is not None:
            instance.exclude_old_transactions = exclude_old_transactions
        if language is not None:
            instance.language = language
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AppleIAPReceipt:
        instance = cls()
        if not dict_:
            return instance
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = ""
        if "receiptData" in dict_ and dict_["receiptData"] is not None:
            instance.receipt_data = str(dict_["receiptData"])
        elif include_empty:
            instance.receipt_data = ""
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        if (
            "excludeOldTransactions" in dict_
            and dict_["excludeOldTransactions"] is not None
        ):
            instance.exclude_old_transactions = bool(dict_["excludeOldTransactions"])
        elif include_empty:
            instance.exclude_old_transactions = False
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, AppleIAPReceipt]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[AppleIAPReceipt]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[AppleIAPReceipt, List[AppleIAPReceipt], Dict[Any, AppleIAPReceipt]]:
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
            "productId": "product_id",
            "receiptData": "receipt_data",
            "transactionId": "transaction_id",
            "excludeOldTransactions": "exclude_old_transactions",
            "language": "language",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "productId": True,
            "receiptData": True,
            "transactionId": True,
            "excludeOldTransactions": False,
            "language": False,
            "region": False,
        }

    @staticmethod
    def get_pattern_map() -> Dict[str, re.Pattern]:
        return {
            "language": re.compile(
                r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$"
            ),
        }

    # endregion static methods
