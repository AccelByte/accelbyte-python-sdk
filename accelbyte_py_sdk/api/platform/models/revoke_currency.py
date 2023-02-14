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


class BalanceOriginEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class RevokeCurrency(Model):
    """Revoke currency (RevokeCurrency)

    Properties:
        balance_origin: (balanceOrigin) OPTIONAL Union[str, BalanceOriginEnum]

        currency_code: (currencyCode) OPTIONAL str

        namespace: (namespace) OPTIONAL str
    """

    # region fields

    balance_origin: Union[str, BalanceOriginEnum]  # OPTIONAL
    currency_code: str  # OPTIONAL
    namespace: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_balance_origin(
        self, value: Union[str, BalanceOriginEnum]
    ) -> RevokeCurrency:
        self.balance_origin = value
        return self

    def with_currency_code(self, value: str) -> RevokeCurrency:
        self.currency_code = value
        return self

    def with_namespace(self, value: str) -> RevokeCurrency:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "balance_origin"):
            result["balanceOrigin"] = str(self.balance_origin)
        elif include_empty:
            result["balanceOrigin"] = Union[str, BalanceOriginEnum]()
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        balance_origin: Optional[Union[str, BalanceOriginEnum]] = None,
        currency_code: Optional[str] = None,
        namespace: Optional[str] = None,
    ) -> RevokeCurrency:
        instance = cls()
        if balance_origin is not None:
            instance.balance_origin = balance_origin
        if currency_code is not None:
            instance.currency_code = currency_code
        if namespace is not None:
            instance.namespace = namespace
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> RevokeCurrency:
        instance = cls()
        if not dict_:
            return instance
        if "balanceOrigin" in dict_ and dict_["balanceOrigin"] is not None:
            instance.balance_origin = str(dict_["balanceOrigin"])
        elif include_empty:
            instance.balance_origin = Union[str, BalanceOriginEnum]()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, RevokeCurrency]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[RevokeCurrency]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[RevokeCurrency, List[RevokeCurrency], Dict[Any, RevokeCurrency]]:
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
            "balanceOrigin": "balance_origin",
            "currencyCode": "currency_code",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "balanceOrigin": False,
            "currencyCode": False,
            "namespace": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "balanceOrigin": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Other",
                "Playstation",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
        }

    # endregion static methods
