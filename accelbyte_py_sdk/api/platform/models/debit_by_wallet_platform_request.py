# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class DebitBalanceSourceEnum(StrEnum):
    DLC_REVOCATION = "DLC_REVOCATION"
    EXPIRATION = "EXPIRATION"
    IAP_REVOCATION = "IAP_REVOCATION"
    ORDER_REVOCATION = "ORDER_REVOCATION"
    OTHER = "OTHER"
    PAYMENT = "PAYMENT"
    TRADE = "TRADE"


class WalletPlatformEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OCULUS = "Oculus"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    XBOX = "Xbox"


class DebitByWalletPlatformRequest(Model):
    """Debit by wallet platform request (DebitByWalletPlatformRequest)

    Properties:
        amount: (amount) REQUIRED int

        debit_balance_source: (debitBalanceSource) OPTIONAL Union[str, DebitBalanceSourceEnum]

        metadata: (metadata) OPTIONAL Dict[str, Any]

        reason: (reason) OPTIONAL str

        wallet_platform: (walletPlatform) OPTIONAL Union[str, WalletPlatformEnum]
    """

    # region fields

    amount: int  # REQUIRED
    debit_balance_source: Union[str, DebitBalanceSourceEnum]  # OPTIONAL
    metadata: Dict[str, Any]  # OPTIONAL
    reason: str  # OPTIONAL
    wallet_platform: Union[str, WalletPlatformEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> DebitByWalletPlatformRequest:
        self.amount = value
        return self

    def with_debit_balance_source(
        self, value: Union[str, DebitBalanceSourceEnum]
    ) -> DebitByWalletPlatformRequest:
        self.debit_balance_source = value
        return self

    def with_metadata(self, value: Dict[str, Any]) -> DebitByWalletPlatformRequest:
        self.metadata = value
        return self

    def with_reason(self, value: str) -> DebitByWalletPlatformRequest:
        self.reason = value
        return self

    def with_wallet_platform(
        self, value: Union[str, WalletPlatformEnum]
    ) -> DebitByWalletPlatformRequest:
        self.wallet_platform = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = 0
        if hasattr(self, "debit_balance_source"):
            result["debitBalanceSource"] = str(self.debit_balance_source)
        elif include_empty:
            result["debitBalanceSource"] = Union[str, DebitBalanceSourceEnum]()
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): v0 for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "reason"):
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "wallet_platform"):
            result["walletPlatform"] = str(self.wallet_platform)
        elif include_empty:
            result["walletPlatform"] = Union[str, WalletPlatformEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount: int,
        debit_balance_source: Optional[Union[str, DebitBalanceSourceEnum]] = None,
        metadata: Optional[Dict[str, Any]] = None,
        reason: Optional[str] = None,
        wallet_platform: Optional[Union[str, WalletPlatformEnum]] = None,
        **kwargs,
    ) -> DebitByWalletPlatformRequest:
        instance = cls()
        instance.amount = amount
        if debit_balance_source is not None:
            instance.debit_balance_source = debit_balance_source
        if metadata is not None:
            instance.metadata = metadata
        if reason is not None:
            instance.reason = reason
        if wallet_platform is not None:
            instance.wallet_platform = wallet_platform
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DebitByWalletPlatformRequest:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "debitBalanceSource" in dict_ and dict_["debitBalanceSource"] is not None:
            instance.debit_balance_source = str(dict_["debitBalanceSource"])
        elif include_empty:
            instance.debit_balance_source = Union[str, DebitBalanceSourceEnum]()
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): v0 for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "walletPlatform" in dict_ and dict_["walletPlatform"] is not None:
            instance.wallet_platform = str(dict_["walletPlatform"])
        elif include_empty:
            instance.wallet_platform = Union[str, WalletPlatformEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DebitByWalletPlatformRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DebitByWalletPlatformRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DebitByWalletPlatformRequest,
        List[DebitByWalletPlatformRequest],
        Dict[Any, DebitByWalletPlatformRequest],
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
            "debitBalanceSource": "debit_balance_source",
            "metadata": "metadata",
            "reason": "reason",
            "walletPlatform": "wallet_platform",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amount": True,
            "debitBalanceSource": False,
            "metadata": False,
            "reason": False,
            "walletPlatform": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "debitBalanceSource": [
                "DLC_REVOCATION",
                "EXPIRATION",
                "IAP_REVOCATION",
                "ORDER_REVOCATION",
                "OTHER",
                "PAYMENT",
                "TRADE",
            ],
            "walletPlatform": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Oculus",
                "Other",
                "Playstation",
                "Steam",
                "Xbox",
            ],
        }

    # endregion static methods
