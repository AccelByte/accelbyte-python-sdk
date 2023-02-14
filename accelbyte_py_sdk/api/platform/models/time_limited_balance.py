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


class TimeLimitedBalance(Model):
    """Time limited balance (Time-limited balance)

    Properties:
        balance: (balance) OPTIONAL int

        balance_source: (balanceSource) OPTIONAL str

        expire_at: (expireAt) OPTIONAL str
    """

    # region fields

    balance: int  # OPTIONAL
    balance_source: str  # OPTIONAL
    expire_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_balance(self, value: int) -> TimeLimitedBalance:
        self.balance = value
        return self

    def with_balance_source(self, value: str) -> TimeLimitedBalance:
        self.balance_source = value
        return self

    def with_expire_at(self, value: str) -> TimeLimitedBalance:
        self.expire_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "balance"):
            result["balance"] = int(self.balance)
        elif include_empty:
            result["balance"] = 0
        if hasattr(self, "balance_source"):
            result["balanceSource"] = str(self.balance_source)
        elif include_empty:
            result["balanceSource"] = ""
        if hasattr(self, "expire_at"):
            result["expireAt"] = str(self.expire_at)
        elif include_empty:
            result["expireAt"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        balance: Optional[int] = None,
        balance_source: Optional[str] = None,
        expire_at: Optional[str] = None,
    ) -> TimeLimitedBalance:
        instance = cls()
        if balance is not None:
            instance.balance = balance
        if balance_source is not None:
            instance.balance_source = balance_source
        if expire_at is not None:
            instance.expire_at = expire_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> TimeLimitedBalance:
        instance = cls()
        if not dict_:
            return instance
        if "balance" in dict_ and dict_["balance"] is not None:
            instance.balance = int(dict_["balance"])
        elif include_empty:
            instance.balance = 0
        if "balanceSource" in dict_ and dict_["balanceSource"] is not None:
            instance.balance_source = str(dict_["balanceSource"])
        elif include_empty:
            instance.balance_source = ""
        if "expireAt" in dict_ and dict_["expireAt"] is not None:
            instance.expire_at = str(dict_["expireAt"])
        elif include_empty:
            instance.expire_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, TimeLimitedBalance]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[TimeLimitedBalance]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        TimeLimitedBalance, List[TimeLimitedBalance], Dict[Any, TimeLimitedBalance]
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
            "balanceSource": "balance_source",
            "expireAt": "expire_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "balance": False,
            "balanceSource": False,
            "expireAt": False,
        }

    # endregion static methods
