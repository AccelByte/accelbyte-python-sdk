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


class PaymentOrderDetails(Model):
    """Payment order details (PaymentOrderDetails)

    Properties:
        charging: (charging) REQUIRED bool

        currency_code: (currencyCode) REQUIRED str

        currency_symbol: (currencySymbol) REQUIRED str

        price: (price) REQUIRED str

        sandbox: (sandbox) REQUIRED bool

        title: (title) REQUIRED str

        description: (description) OPTIONAL str

        display_name: (displayName) OPTIONAL str

        region: (region) OPTIONAL str
    """

    # region fields

    charging: bool  # REQUIRED
    currency_code: str  # REQUIRED
    currency_symbol: str  # REQUIRED
    price: str  # REQUIRED
    sandbox: bool  # REQUIRED
    title: str  # REQUIRED
    description: str  # OPTIONAL
    display_name: str  # OPTIONAL
    region: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_charging(self, value: bool) -> PaymentOrderDetails:
        self.charging = value
        return self

    def with_currency_code(self, value: str) -> PaymentOrderDetails:
        self.currency_code = value
        return self

    def with_currency_symbol(self, value: str) -> PaymentOrderDetails:
        self.currency_symbol = value
        return self

    def with_price(self, value: str) -> PaymentOrderDetails:
        self.price = value
        return self

    def with_sandbox(self, value: bool) -> PaymentOrderDetails:
        self.sandbox = value
        return self

    def with_title(self, value: str) -> PaymentOrderDetails:
        self.title = value
        return self

    def with_description(self, value: str) -> PaymentOrderDetails:
        self.description = value
        return self

    def with_display_name(self, value: str) -> PaymentOrderDetails:
        self.display_name = value
        return self

    def with_region(self, value: str) -> PaymentOrderDetails:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "charging"):
            result["charging"] = bool(self.charging)
        elif include_empty:
            result["charging"] = False
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "currency_symbol"):
            result["currencySymbol"] = str(self.currency_symbol)
        elif include_empty:
            result["currencySymbol"] = ""
        if hasattr(self, "price"):
            result["price"] = str(self.price)
        elif include_empty:
            result["price"] = ""
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "display_name"):
            result["displayName"] = str(self.display_name)
        elif include_empty:
            result["displayName"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        charging: bool,
        currency_code: str,
        currency_symbol: str,
        price: str,
        sandbox: bool,
        title: str,
        description: Optional[str] = None,
        display_name: Optional[str] = None,
        region: Optional[str] = None,
    ) -> PaymentOrderDetails:
        instance = cls()
        instance.charging = charging
        instance.currency_code = currency_code
        instance.currency_symbol = currency_symbol
        instance.price = price
        instance.sandbox = sandbox
        instance.title = title
        if description is not None:
            instance.description = description
        if display_name is not None:
            instance.display_name = display_name
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentOrderDetails:
        instance = cls()
        if not dict_:
            return instance
        if "charging" in dict_ and dict_["charging"] is not None:
            instance.charging = bool(dict_["charging"])
        elif include_empty:
            instance.charging = False
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "currencySymbol" in dict_ and dict_["currencySymbol"] is not None:
            instance.currency_symbol = str(dict_["currencySymbol"])
        elif include_empty:
            instance.currency_symbol = ""
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = str(dict_["price"])
        elif include_empty:
            instance.price = ""
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "displayName" in dict_ and dict_["displayName"] is not None:
            instance.display_name = str(dict_["displayName"])
        elif include_empty:
            instance.display_name = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentOrderDetails]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentOrderDetails]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PaymentOrderDetails, List[PaymentOrderDetails], Dict[Any, PaymentOrderDetails]
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
            "charging": "charging",
            "currencyCode": "currency_code",
            "currencySymbol": "currency_symbol",
            "price": "price",
            "sandbox": "sandbox",
            "title": "title",
            "description": "description",
            "displayName": "display_name",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "charging": True,
            "currencyCode": True,
            "currencySymbol": True,
            "price": True,
            "sandbox": True,
            "title": True,
            "description": False,
            "displayName": False,
            "region": False,
        }

    # endregion static methods
