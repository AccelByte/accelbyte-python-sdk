# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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


class SteamSyncRequest(Model):
    """Steam sync request (SteamSyncRequest)

    Properties:
        app_id: (appId) REQUIRED str

        steam_id: (steamId) REQUIRED str

        currency_code: (currencyCode) OPTIONAL str

        language: (language) OPTIONAL str

        price: (price) OPTIONAL float

        product_id: (productId) OPTIONAL str

        region: (region) OPTIONAL str
    """

    # region fields

    app_id: str                                                                                    # REQUIRED
    steam_id: str                                                                                  # REQUIRED
    currency_code: str                                                                             # OPTIONAL
    language: str                                                                                  # OPTIONAL
    price: float                                                                                   # OPTIONAL
    product_id: str                                                                                # OPTIONAL
    region: str                                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_app_id(self, value: str) -> SteamSyncRequest:
        self.app_id = value
        return self

    def with_steam_id(self, value: str) -> SteamSyncRequest:
        self.steam_id = value
        return self

    def with_currency_code(self, value: str) -> SteamSyncRequest:
        self.currency_code = value
        return self

    def with_language(self, value: str) -> SteamSyncRequest:
        self.language = value
        return self

    def with_price(self, value: float) -> SteamSyncRequest:
        self.price = value
        return self

    def with_product_id(self, value: str) -> SteamSyncRequest:
        self.product_id = value
        return self

    def with_region(self, value: str) -> SteamSyncRequest:
        self.region = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "app_id") or self.app_id is None:
            return False
        if not hasattr(self, "steam_id") or self.steam_id is None:
            return False
        # enum checks
        # pattern checks
        if hasattr(self, "language") and self.language is not None and not re.match(r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$", self.language):
            return False
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "steam_id"):
            result["steamId"] = str(self.steam_id)
        elif include_empty:
            result["steamId"] = str()
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "price"):
            result["price"] = float(self.price)
        elif include_empty:
            result["price"] = float()
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        app_id: str,
        steam_id: str,
        currency_code: Optional[str] = None,
        language: Optional[str] = None,
        price: Optional[float] = None,
        product_id: Optional[str] = None,
        region: Optional[str] = None,
    ) -> SteamSyncRequest:
        instance = cls()
        instance.app_id = app_id
        instance.steam_id = steam_id
        if currency_code is not None:
            instance.currency_code = currency_code
        if language is not None:
            instance.language = language
        if price is not None:
            instance.price = price
        if product_id is not None:
            instance.product_id = product_id
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> SteamSyncRequest:
        instance = cls()
        if not dict_:
            return instance
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "steamId" in dict_ and dict_["steamId"] is not None:
            instance.steam_id = str(dict_["steamId"])
        elif include_empty:
            instance.steam_id = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = float(dict_["price"])
        elif include_empty:
            instance.price = float()
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, SteamSyncRequest]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[SteamSyncRequest]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[SteamSyncRequest, List[SteamSyncRequest]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "appId": "app_id",
            "steamId": "steam_id",
            "currencyCode": "currency_code",
            "language": "language",
            "price": "price",
            "productId": "product_id",
            "region": "region",
        }

    # endregion static methods
