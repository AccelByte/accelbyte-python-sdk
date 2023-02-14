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


class TransactionAmountDetails(Model):
    """Transaction amount details (TransactionAmountDetails)

    Properties:
        amount: (amount) OPTIONAL int

        expire_at: (expireAt) OPTIONAL str

        origin: (origin) OPTIONAL str

        wallet_id: (walletId) OPTIONAL str
    """

    # region fields

    amount: int  # OPTIONAL
    expire_at: str  # OPTIONAL
    origin: str  # OPTIONAL
    wallet_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> TransactionAmountDetails:
        self.amount = value
        return self

    def with_expire_at(self, value: str) -> TransactionAmountDetails:
        self.expire_at = value
        return self

    def with_origin(self, value: str) -> TransactionAmountDetails:
        self.origin = value
        return self

    def with_wallet_id(self, value: str) -> TransactionAmountDetails:
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
        if hasattr(self, "expire_at"):
            result["expireAt"] = str(self.expire_at)
        elif include_empty:
            result["expireAt"] = ""
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = ""
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
        expire_at: Optional[str] = None,
        origin: Optional[str] = None,
        wallet_id: Optional[str] = None,
    ) -> TransactionAmountDetails:
        instance = cls()
        if amount is not None:
            instance.amount = amount
        if expire_at is not None:
            instance.expire_at = expire_at
        if origin is not None:
            instance.origin = origin
        if wallet_id is not None:
            instance.wallet_id = wallet_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TransactionAmountDetails:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "expireAt" in dict_ and dict_["expireAt"] is not None:
            instance.expire_at = str(dict_["expireAt"])
        elif include_empty:
            instance.expire_at = ""
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = ""
        if "walletId" in dict_ and dict_["walletId"] is not None:
            instance.wallet_id = str(dict_["walletId"])
        elif include_empty:
            instance.wallet_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TransactionAmountDetails]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TransactionAmountDetails]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TransactionAmountDetails,
        List[TransactionAmountDetails],
        Dict[Any, TransactionAmountDetails],
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
            "amount": "amount",
            "expireAt": "expire_at",
            "origin": "origin",
            "walletId": "wallet_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amount": False,
            "expireAt": False,
            "origin": False,
            "walletId": False,
        }

    # endregion static methods
