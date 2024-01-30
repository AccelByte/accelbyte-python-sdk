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


class CreditPayload(Model):
    """Credit payload (CreditPayload)

    Properties:
        count: (count) REQUIRED int

        currency_code: (currencyCode) REQUIRED str

        balance_origin: (balanceOrigin) OPTIONAL Union[str, BalanceOriginEnum]

        expire_at: (expireAt) OPTIONAL str
    """

    # region fields

    count: int  # REQUIRED
    currency_code: str  # REQUIRED
    balance_origin: Union[str, BalanceOriginEnum]  # OPTIONAL
    expire_at: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> CreditPayload:
        self.count = value
        return self

    def with_currency_code(self, value: str) -> CreditPayload:
        self.currency_code = value
        return self

    def with_balance_origin(
        self, value: Union[str, BalanceOriginEnum]
    ) -> CreditPayload:
        self.balance_origin = value
        return self

    def with_expire_at(self, value: str) -> CreditPayload:
        self.expire_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "balance_origin"):
            result["balanceOrigin"] = str(self.balance_origin)
        elif include_empty:
            result["balanceOrigin"] = Union[str, BalanceOriginEnum]()
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
        count: int,
        currency_code: str,
        balance_origin: Optional[Union[str, BalanceOriginEnum]] = None,
        expire_at: Optional[str] = None,
        **kwargs,
    ) -> CreditPayload:
        instance = cls()
        instance.count = count
        instance.currency_code = currency_code
        if balance_origin is not None:
            instance.balance_origin = balance_origin
        if expire_at is not None:
            instance.expire_at = expire_at
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CreditPayload:
        instance = cls()
        if not dict_:
            return instance
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "balanceOrigin" in dict_ and dict_["balanceOrigin"] is not None:
            instance.balance_origin = str(dict_["balanceOrigin"])
        elif include_empty:
            instance.balance_origin = Union[str, BalanceOriginEnum]()
        if "expireAt" in dict_ and dict_["expireAt"] is not None:
            instance.expire_at = str(dict_["expireAt"])
        elif include_empty:
            instance.expire_at = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CreditPayload]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CreditPayload]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CreditPayload, List[CreditPayload], Dict[Any, CreditPayload]]:
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
            "count": "count",
            "currencyCode": "currency_code",
            "balanceOrigin": "balance_origin",
            "expireAt": "expire_at",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "count": True,
            "currencyCode": True,
            "balanceOrigin": False,
            "expireAt": False,
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
        }

    # endregion static methods
