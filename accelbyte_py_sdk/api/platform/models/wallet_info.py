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
from ....core import StrEnum

from ..models.time_limited_balance import TimeLimitedBalance


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    INACTIVE = "INACTIVE"


class WalletInfo(Model):
    """Wallet info (WalletInfo)

    Properties:
        balance: (balance) REQUIRED int

        balance_origin: (balanceOrigin) REQUIRED str

        created_at: (createdAt) REQUIRED str

        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str

        id_: (id) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        time_limited_balances: (timeLimitedBalances) OPTIONAL List[TimeLimitedBalance]

        total_permanent_balance: (totalPermanentBalance) OPTIONAL int

        total_time_limited_balance: (totalTimeLimitedBalance) OPTIONAL int
    """

    # region fields

    balance: int  # REQUIRED
    balance_origin: str  # REQUIRED
    created_at: str  # REQUIRED
    currency_code: str  # REQUIRED
    currency_symbol: str  # REQUIRED
    id_: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    time_limited_balances: List[TimeLimitedBalance]  # OPTIONAL
    total_permanent_balance: int  # OPTIONAL
    total_time_limited_balance: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_balance(self, value: int) -> WalletInfo:
        self.balance = value
        return self

    def with_balance_origin(self, value: str) -> WalletInfo:
        self.balance_origin = value
        return self

    def with_created_at(self, value: str) -> WalletInfo:
        self.created_at = value
        return self

    def with_currency_code(self, value: str) -> WalletInfo:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> WalletInfo:
        self.currency_symbol = value
        return self

    def with_id(self, value: str) -> WalletInfo:
        self.id_ = value
        return self

    def with_namespace(self, value: str) -> WalletInfo:
        self.namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> WalletInfo:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> WalletInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> WalletInfo:
        self.user_id = value
        return self

    def with_time_limited_balances(self, value: List[TimeLimitedBalance]) -> WalletInfo:
        self.time_limited_balances = value
        return self

    def with_total_permanent_balance(self, value: int) -> WalletInfo:
        self.total_permanent_balance = value
        return self

    def with_total_time_limited_balance(self, value: int) -> WalletInfo:
        self.total_time_limited_balance = value
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
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "currency_symbol"):
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "time_limited_balances"):
            result["timeLimitedBalances"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.time_limited_balances
            ]
        elif include_empty:
            result["timeLimitedBalances"] = []
        if hasattr(self, "total_permanent_balance"):
            result["totalPermanentBalance"] = int(self.total_permanent_balance)
        elif include_empty:
            result["totalPermanentBalance"] = 0
        if hasattr(self, "total_time_limited_balance"):
            result["totalTimeLimitedBalance"] = int(self.total_time_limited_balance)
        elif include_empty:
            result["totalTimeLimitedBalance"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        balance: int,
        balance_origin: str,
        created_at: str,
        currency_code: str,
        currency_symbol: str,
        id_: str,
        namespace: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        user_id: str,
        time_limited_balances: Optional[List[TimeLimitedBalance]] = None,
        total_permanent_balance: Optional[int] = None,
        total_time_limited_balance: Optional[int] = None,
    ) -> WalletInfo:
        instance = cls()
        instance.balance = balance
        instance.balance_origin = balance_origin
        instance.created_at = created_at
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        instance.id_ = id_
        instance.namespace = namespace
        instance.status = status
        instance.updated_at = updated_at
        instance.user_id = user_id
        if time_limited_balances is not None:
            instance.time_limited_balances = time_limited_balances
        if total_permanent_balance is not None:
            instance.total_permanent_balance = total_permanent_balance
        if total_time_limited_balance is not None:
            instance.total_time_limited_balance = total_time_limited_balance
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> WalletInfo:
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
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "timeLimitedBalances" in dict_ and dict_["timeLimitedBalances"] is not None:
            instance.time_limited_balances = [
                TimeLimitedBalance.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["timeLimitedBalances"]
            ]
        elif include_empty:
            instance.time_limited_balances = []
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
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, WalletInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[WalletInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[WalletInfo, List[WalletInfo], Dict[Any, WalletInfo]]:
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
            "createdAt": "created_at",
            "currencyCode": "currency_code",
            "currencySymbol": "currency_symbol",
            "id": "id_",
            "namespace": "namespace",
            "status": "status",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "timeLimitedBalances": "time_limited_balances",
            "totalPermanentBalance": "total_permanent_balance",
            "totalTimeLimitedBalance": "total_time_limited_balance",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "balance": True,
            "balanceOrigin": True,
            "createdAt": True,
            "currencyCode": True,
            "currencySymbol": True,
            "id": True,
            "namespace": True,
            "status": True,
            "updatedAt": True,
            "userId": True,
            "timeLimitedBalances": False,
            "totalPermanentBalance": False,
            "totalTimeLimitedBalance": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["ACTIVE", "INACTIVE"],
        }

    # endregion static methods
