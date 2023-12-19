# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service (4.42.0)

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


class BalanceOriginEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class BalanceSourceEnum(StrEnum):
    DLC_REVOCATION = "DLC_REVOCATION"
    EXPIRATION = "EXPIRATION"
    IAP_REVOCATION = "IAP_REVOCATION"
    ORDER_REVOCATION = "ORDER_REVOCATION"
    OTHER = "OTHER"
    PAYMENT = "PAYMENT"
    TRADE = "TRADE"


class DebitByCurrencyCodeRequest(Model):
    """A DTO for wallet's debit (DebitByCurrencyCodeRequest)

    Properties:
        amount: (amount) REQUIRED int

        allow_overdraft: (allowOverdraft) OPTIONAL bool

        balance_origin: (balanceOrigin) OPTIONAL Union[str, BalanceOriginEnum]

        balance_source: (balanceSource) OPTIONAL Union[str, BalanceSourceEnum]

        metadata: (metadata) OPTIONAL Dict[str, Any]

        reason: (reason) OPTIONAL str
    """

    # region fields

    amount: int  # REQUIRED
    allow_overdraft: bool  # OPTIONAL
    balance_origin: Union[str, BalanceOriginEnum]  # OPTIONAL
    balance_source: Union[str, BalanceSourceEnum]  # OPTIONAL
    metadata: Dict[str, Any]  # OPTIONAL
    reason: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> DebitByCurrencyCodeRequest:
        self.amount = value
        return self

    def with_allow_overdraft(self, value: bool) -> DebitByCurrencyCodeRequest:
        self.allow_overdraft = value
        return self

    def with_balance_origin(
        self, value: Union[str, BalanceOriginEnum]
    ) -> DebitByCurrencyCodeRequest:
        self.balance_origin = value
        return self

    def with_balance_source(
        self, value: Union[str, BalanceSourceEnum]
    ) -> DebitByCurrencyCodeRequest:
        self.balance_source = value
        return self

    def with_metadata(self, value: Dict[str, Any]) -> DebitByCurrencyCodeRequest:
        self.metadata = value
        return self

    def with_reason(self, value: str) -> DebitByCurrencyCodeRequest:
        self.reason = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = 0
        if hasattr(self, "allow_overdraft"):
            result["allowOverdraft"] = bool(self.allow_overdraft)
        elif include_empty:
            result["allowOverdraft"] = False
        if hasattr(self, "balance_origin"):
            result["balanceOrigin"] = str(self.balance_origin)
        elif include_empty:
            result["balanceOrigin"] = Union[str, BalanceOriginEnum]()
        if hasattr(self, "balance_source"):
            result["balanceSource"] = str(self.balance_source)
        elif include_empty:
            result["balanceSource"] = Union[str, BalanceSourceEnum]()
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): v0 for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount: int,
        allow_overdraft: Optional[bool] = None,
        balance_origin: Optional[Union[str, BalanceOriginEnum]] = None,
        balance_source: Optional[Union[str, BalanceSourceEnum]] = None,
        metadata: Optional[Dict[str, Any]] = None,
        reason: Optional[str] = None,
        **kwargs,
    ) -> DebitByCurrencyCodeRequest:
        instance = cls()
        instance.amount = amount
        if allow_overdraft is not None:
            instance.allow_overdraft = allow_overdraft
        if balance_origin is not None:
            instance.balance_origin = balance_origin
        if balance_source is not None:
            instance.balance_source = balance_source
        if metadata is not None:
            instance.metadata = metadata
        if reason is not None:
            instance.reason = reason
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DebitByCurrencyCodeRequest:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "allowOverdraft" in dict_ and dict_["allowOverdraft"] is not None:
            instance.allow_overdraft = bool(dict_["allowOverdraft"])
        elif include_empty:
            instance.allow_overdraft = False
        if "balanceOrigin" in dict_ and dict_["balanceOrigin"] is not None:
            instance.balance_origin = str(dict_["balanceOrigin"])
        elif include_empty:
            instance.balance_origin = Union[str, BalanceOriginEnum]()
        if "balanceSource" in dict_ and dict_["balanceSource"] is not None:
            instance.balance_source = str(dict_["balanceSource"])
        elif include_empty:
            instance.balance_source = Union[str, BalanceSourceEnum]()
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DebitByCurrencyCodeRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DebitByCurrencyCodeRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DebitByCurrencyCodeRequest,
        List[DebitByCurrencyCodeRequest],
        Dict[Any, DebitByCurrencyCodeRequest],
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
            "allowOverdraft": "allow_overdraft",
            "balanceOrigin": "balance_origin",
            "balanceSource": "balance_source",
            "metadata": "metadata",
            "reason": "reason",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amount": True,
            "allowOverdraft": False,
            "balanceOrigin": False,
            "balanceSource": False,
            "metadata": False,
            "reason": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "balanceOrigin": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
            "balanceSource": [
                "DLC_REVOCATION",
                "EXPIRATION",
                "IAP_REVOCATION",
                "ORDER_REVOCATION",
                "OTHER",
                "PAYMENT",
                "TRADE",
            ],
        }

    # endregion static methods
