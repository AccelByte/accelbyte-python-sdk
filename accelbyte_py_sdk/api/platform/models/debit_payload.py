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


class DebitPayload(Model):
    """Debit payload (DebitPayload)

    Properties:
        count: (count) REQUIRED int

        currency_code: (currencyCode) REQUIRED str

        wallet_platform: (walletPlatform) REQUIRED Union[str, WalletPlatformEnum]
    """

    # region fields

    count: int  # REQUIRED
    currency_code: str  # REQUIRED
    wallet_platform: Union[str, WalletPlatformEnum]  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> DebitPayload:
        self.count = value
        return self

    def with_currency_code(self, value: str) -> DebitPayload:
        self.currency_code = value
        return self

    def with_wallet_platform(
        self, value: Union[str, WalletPlatformEnum]
    ) -> DebitPayload:
        self.wallet_platform = value
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
        count: int,
        currency_code: str,
        wallet_platform: Union[str, WalletPlatformEnum],
        **kwargs,
    ) -> DebitPayload:
        instance = cls()
        instance.count = count
        instance.currency_code = currency_code
        instance.wallet_platform = wallet_platform
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> DebitPayload:
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
        if "walletPlatform" in dict_ and dict_["walletPlatform"] is not None:
            instance.wallet_platform = str(dict_["walletPlatform"])
        elif include_empty:
            instance.wallet_platform = Union[str, WalletPlatformEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DebitPayload]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DebitPayload]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[DebitPayload, List[DebitPayload], Dict[Any, DebitPayload]]:
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
            "walletPlatform": "wallet_platform",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "count": True,
            "currencyCode": True,
            "walletPlatform": True,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
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
