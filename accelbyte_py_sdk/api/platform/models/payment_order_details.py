# Auto-generated at 2021-10-14T22:17:16.492954+08:00
# from: Justice Platform Service (3.24.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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


class PaymentOrderDetails(Model):
    """Payment order details (PaymentOrderDetails)

    Properties:
        display_name: (displayName) OPTIONAL str

        title: (title) REQUIRED str

        description: (description) OPTIONAL str

        price: (price) REQUIRED str

        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str

        sandbox: (sandbox) REQUIRED bool

        region: (region) OPTIONAL str

        charging: (charging) REQUIRED bool
    """

    # region fields

    display_name: str                                                                              # OPTIONAL
    title: str                                                                                     # REQUIRED
    description: str                                                                               # OPTIONAL
    price: str                                                                                     # REQUIRED
    currency_code: str                                                                             # REQUIRED
    currency_symbol: str                                                                           # REQUIRED
    sandbox: bool                                                                                  # REQUIRED
    region: str                                                                                    # OPTIONAL
    charging: bool                                                                                 # REQUIRED

    # endregion fields

    # region with_x methods

    def with_display_name(self, value: str) -> PaymentOrderDetails:
        self.display_name = value
        return self

    def with_title(self, value: str) -> PaymentOrderDetails:
        self.title = value
        return self

    def with_description(self, value: str) -> PaymentOrderDetails:
        self.description = value
        return self

    def with_price(self, value: str) -> PaymentOrderDetails:
        self.price = value
        return self

    def with_currency_code(self, value: str) -> PaymentOrderDetails:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> PaymentOrderDetails:
        self.currency_symbol = value
        return self

    def with_sandbox(self, value: bool) -> PaymentOrderDetails:
        self.sandbox = value
        return self

    def with_region(self, value: str) -> PaymentOrderDetails:
        self.region = value
        return self

    def with_charging(self, value: bool) -> PaymentOrderDetails:
        self.charging = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "display_name") and self.display_name:
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = str()
        if hasattr(self, "title") and self.title:
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "price") and self.price:
            result["price"] = str(self.price)
        elif include_empty:
            result["price"] = str()
        if hasattr(self, "currency_code") and self.currency_code:
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "currency_symbol") and self.currency_symbol:
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = str()
        if hasattr(self, "sandbox") and self.sandbox:
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "charging") and self.charging:
            result["charging"] = bool(self.charging)
        elif include_empty:
            result["charging"] = bool()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        title: str,
        price: str,
        currency_code: str,
        currency_symbol: str,
        sandbox: bool,
        charging: bool,
        display_name: Optional[str] = None,
        description: Optional[str] = None,
        region: Optional[str] = None,
    ) -> PaymentOrderDetails:
        instance = cls()
        instance.title = title
        instance.price = price
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        instance.sandbox = sandbox
        instance.charging = charging
        if display_name is not None:
            instance.display_name = display_name
        if description is not None:
            instance.description = description
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PaymentOrderDetails:
        instance = cls()
        if not dict_:
            return instance
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = str()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = str(dict_["price"])
        elif include_empty:
            instance.price = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "charging" in dict_ and dict_["charging"] is not None:
            instance.charging = bool(dict_["charging"])
        elif include_empty:
            instance.charging = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "displayName": "display_name",
            "title": "title",
            "description": "description",
            "price": "price",
            "currencyCode": "currency_code",
            "currencySymbol": "currency_symbol",
            "sandbox": "sandbox",
            "region": "region",
            "charging": "charging",
        }

    # endregion static methods
