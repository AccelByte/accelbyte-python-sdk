# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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
from ....core import StrEnum


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    SUCCESS = "SUCCESS"


class CreditRevocation(Model):
    """Credit revocation (CreditRevocation)

    Properties:
        amount: (amount) OPTIONAL int

        balance_origin: (balanceOrigin) OPTIONAL str

        currency_code: (currencyCode) OPTIONAL str

        reason: (reason) OPTIONAL str

        revocation_strategy: (revocationStrategy) OPTIONAL str

        skipped: (skipped) OPTIONAL bool

        status: (status) OPTIONAL Union[str, StatusEnum]

        wallet_id: (walletId) OPTIONAL str
    """

    # region fields

    amount: int  # OPTIONAL
    balance_origin: str  # OPTIONAL
    currency_code: str  # OPTIONAL
    reason: str  # OPTIONAL
    revocation_strategy: str  # OPTIONAL
    skipped: bool  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    wallet_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> CreditRevocation:
        self.amount = value
        return self

    def with_balance_origin(self, value: str) -> CreditRevocation:
        self.balance_origin = value
        return self

    def with_currency_code(self, value: str) -> CreditRevocation:
        self.currency_code = value
        return self

    def with_reason(self, value: str) -> CreditRevocation:
        self.reason = value
        return self

    def with_revocation_strategy(self, value: str) -> CreditRevocation:
        self.revocation_strategy = value
        return self

    def with_skipped(self, value: bool) -> CreditRevocation:
        self.skipped = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> CreditRevocation:
        self.status = value
        return self

    def with_wallet_id(self, value: str) -> CreditRevocation:
        self.wallet_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = 0
        if hasattr(self, "balance_origin"):
            result["balanceOrigin"] = str(self.balance_origin)
        elif include_empty:
            result["balanceOrigin"] = ""
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "revocation_strategy"):
            result["revocationStrategy"] = str(self.revocation_strategy)
        elif include_empty:
            result["revocationStrategy"] = ""
        if hasattr(self, "skipped"):
            result["skipped"] = bool(self.skipped)
        elif include_empty:
            result["skipped"] = False
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
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
        amount: Optional[int] = None,
        balance_origin: Optional[str] = None,
        currency_code: Optional[str] = None,
        reason: Optional[str] = None,
        revocation_strategy: Optional[str] = None,
        skipped: Optional[bool] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        wallet_id: Optional[str] = None,
    ) -> CreditRevocation:
        instance = cls()
        if amount is not None:
            instance.amount = amount
        if balance_origin is not None:
            instance.balance_origin = balance_origin
        if currency_code is not None:
            instance.currency_code = currency_code
        if reason is not None:
            instance.reason = reason
        if revocation_strategy is not None:
            instance.revocation_strategy = revocation_strategy
        if skipped is not None:
            instance.skipped = skipped
        if status is not None:
            instance.status = status
        if wallet_id is not None:
            instance.wallet_id = wallet_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreditRevocation:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "balanceOrigin" in dict_ and dict_["balanceOrigin"] is not None:
            instance.balance_origin = str(dict_["balanceOrigin"])
        elif include_empty:
            instance.balance_origin = ""
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "revocationStrategy" in dict_ and dict_["revocationStrategy"] is not None:
            instance.revocation_strategy = str(dict_["revocationStrategy"])
        elif include_empty:
            instance.revocation_strategy = ""
        if "skipped" in dict_ and dict_["skipped"] is not None:
            instance.skipped = bool(dict_["skipped"])
        elif include_empty:
            instance.skipped = False
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "walletId" in dict_ and dict_["walletId"] is not None:
            instance.wallet_id = str(dict_["walletId"])
        elif include_empty:
            instance.wallet_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CreditRevocation]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CreditRevocation]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CreditRevocation, List[CreditRevocation], Dict[Any, CreditRevocation]]:
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
            "amount": "amount",
            "balanceOrigin": "balance_origin",
            "currencyCode": "currency_code",
            "reason": "reason",
            "revocationStrategy": "revocation_strategy",
            "skipped": "skipped",
            "status": "status",
            "walletId": "wallet_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amount": False,
            "balanceOrigin": False,
            "currencyCode": False,
            "reason": False,
            "revocationStrategy": False,
            "skipped": False,
            "status": False,
            "walletId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAIL", "SUCCESS"],
        }

    # endregion static methods
