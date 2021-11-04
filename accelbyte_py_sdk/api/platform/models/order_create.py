# justice-platform-service (3.34.0)

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


class OrderCreate(Model):
    """Order create (OrderCreate)

    Properties:
        item_id: (itemId) REQUIRED str

        quantity: (quantity) REQUIRED int

        price: (price) REQUIRED int

        discounted_price: (discountedPrice) REQUIRED int

        currency_code: (currencyCode) REQUIRED str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        ext: (ext) OPTIONAL Dict[str, Any]
    """

    # region fields

    item_id: str                                                                                   # REQUIRED
    quantity: int                                                                                  # REQUIRED
    price: int                                                                                     # REQUIRED
    discounted_price: int                                                                          # REQUIRED
    currency_code: str                                                                             # REQUIRED
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL
    return_url: str                                                                                # OPTIONAL
    ext: Dict[str, Any]                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> OrderCreate:
        self.item_id = value
        return self

    def with_quantity(self, value: int) -> OrderCreate:
        self.quantity = value
        return self

    def with_price(self, value: int) -> OrderCreate:
        self.price = value
        return self

    def with_discounted_price(self, value: int) -> OrderCreate:
        self.discounted_price = value
        return self

    def with_currency_code(self, value: str) -> OrderCreate:
        self.currency_code = value
        return self

    def with_region(self, value: str) -> OrderCreate:
        self.region = value
        return self

    def with_language(self, value: str) -> OrderCreate:
        self.language = value
        return self

    def with_return_url(self, value: str) -> OrderCreate:
        self.return_url = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> OrderCreate:
        self.ext = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = int()
        if hasattr(self, "discounted_price"):
            result["discountedPrice"] = int(self.discounted_price)
        elif include_empty:
            result["discountedPrice"] = int()
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        quantity: int,
        price: int,
        discounted_price: int,
        currency_code: str,
        region: Optional[str] = None,
        language: Optional[str] = None,
        return_url: Optional[str] = None,
        ext: Optional[Dict[str, Any]] = None,
    ) -> OrderCreate:
        instance = cls()
        instance.item_id = item_id
        instance.quantity = quantity
        instance.price = price
        instance.discounted_price = discounted_price
        instance.currency_code = currency_code
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        if return_url is not None:
            instance.return_url = return_url
        if ext is not None:
            instance.ext = ext
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> OrderCreate:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = int()
        if "discountedPrice" in dict_ and dict_["discountedPrice"] is not None:
            instance.discounted_price = int(dict_["discountedPrice"])
        elif include_empty:
            instance.discounted_price = int()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemId": "item_id",
            "quantity": "quantity",
            "price": "price",
            "discountedPrice": "discounted_price",
            "currencyCode": "currency_code",
            "region": "region",
            "language": "language",
            "returnUrl": "return_url",
            "ext": "ext",
        }

    # endregion static methods
