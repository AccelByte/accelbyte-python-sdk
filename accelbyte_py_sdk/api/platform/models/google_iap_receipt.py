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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class GoogleIAPReceipt(Model):
    """Google IAP receipt (GoogleIAPReceipt)

    Properties:
        order_id: (orderId) REQUIRED str

        package_name: (packageName) REQUIRED str

        purchase_token: (purchaseToken) REQUIRED str

        auto_ack: (autoAck) OPTIONAL bool

        auto_consume: (autoConsume) OPTIONAL bool

        language: (language) OPTIONAL str

        product_id: (productId) OPTIONAL str

        purchase_time: (purchaseTime) OPTIONAL int

        region: (region) OPTIONAL str

        subscription_purchase: (subscriptionPurchase) OPTIONAL bool
    """

    # region fields

    order_id: str  # REQUIRED
    package_name: str  # REQUIRED
    purchase_token: str  # REQUIRED
    auto_ack: bool  # OPTIONAL
    auto_consume: bool  # OPTIONAL
    language: str  # OPTIONAL
    product_id: str  # OPTIONAL
    purchase_time: int  # OPTIONAL
    region: str  # OPTIONAL
    subscription_purchase: bool  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_order_id(self, value: str) -> GoogleIAPReceipt:
        self.order_id = value
        return self

    def with_package_name(self, value: str) -> GoogleIAPReceipt:
        self.package_name = value
        return self

    def with_purchase_token(self, value: str) -> GoogleIAPReceipt:
        self.purchase_token = value
        return self

    def with_auto_ack(self, value: bool) -> GoogleIAPReceipt:
        self.auto_ack = value
        return self

    def with_auto_consume(self, value: bool) -> GoogleIAPReceipt:
        self.auto_consume = value
        return self

    def with_language(self, value: str) -> GoogleIAPReceipt:
        self.language = value
        return self

    def with_product_id(self, value: str) -> GoogleIAPReceipt:
        self.product_id = value
        return self

    def with_purchase_time(self, value: int) -> GoogleIAPReceipt:
        self.purchase_time = value
        return self

    def with_region(self, value: str) -> GoogleIAPReceipt:
        self.region = value
        return self

    def with_subscription_purchase(self, value: bool) -> GoogleIAPReceipt:
        self.subscription_purchase = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "order_id"):
            result["orderId"] = str(self.order_id)
        elif include_empty:
            result["orderId"] = ""
        if hasattr(self, "package_name"):
            result["packageName"] = str(self.package_name)
        elif include_empty:
            result["packageName"] = ""
        if hasattr(self, "purchase_token"):
            result["purchaseToken"] = str(self.purchase_token)
        elif include_empty:
            result["purchaseToken"] = ""
        if hasattr(self, "auto_ack"):
            result["autoAck"] = bool(self.auto_ack)
        elif include_empty:
            result["autoAck"] = False
        if hasattr(self, "auto_consume"):
            result["autoConsume"] = bool(self.auto_consume)
        elif include_empty:
            result["autoConsume"] = False
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = ""
        if hasattr(self, "purchase_time"):
            result["purchaseTime"] = int(self.purchase_time)
        elif include_empty:
            result["purchaseTime"] = 0
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "subscription_purchase"):
            result["subscriptionPurchase"] = bool(self.subscription_purchase)
        elif include_empty:
            result["subscriptionPurchase"] = False
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        order_id: str,
        package_name: str,
        purchase_token: str,
        auto_ack: Optional[bool] = None,
        auto_consume: Optional[bool] = None,
        language: Optional[str] = None,
        product_id: Optional[str] = None,
        purchase_time: Optional[int] = None,
        region: Optional[str] = None,
        subscription_purchase: Optional[bool] = None,
        **kwargs,
    ) -> GoogleIAPReceipt:
        instance = cls()
        instance.order_id = order_id
        instance.package_name = package_name
        instance.purchase_token = purchase_token
        if auto_ack is not None:
            instance.auto_ack = auto_ack
        if auto_consume is not None:
            instance.auto_consume = auto_consume
        if language is not None:
            instance.language = language
        if product_id is not None:
            instance.product_id = product_id
        if purchase_time is not None:
            instance.purchase_time = purchase_time
        if region is not None:
            instance.region = region
        if subscription_purchase is not None:
            instance.subscription_purchase = subscription_purchase
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GoogleIAPReceipt:
        instance = cls()
        if not dict_:
            return instance
        if "orderId" in dict_ and dict_["orderId"] is not None:
            instance.order_id = str(dict_["orderId"])
        elif include_empty:
            instance.order_id = ""
        if "packageName" in dict_ and dict_["packageName"] is not None:
            instance.package_name = str(dict_["packageName"])
        elif include_empty:
            instance.package_name = ""
        if "purchaseToken" in dict_ and dict_["purchaseToken"] is not None:
            instance.purchase_token = str(dict_["purchaseToken"])
        elif include_empty:
            instance.purchase_token = ""
        if "autoAck" in dict_ and dict_["autoAck"] is not None:
            instance.auto_ack = bool(dict_["autoAck"])
        elif include_empty:
            instance.auto_ack = False
        if "autoConsume" in dict_ and dict_["autoConsume"] is not None:
            instance.auto_consume = bool(dict_["autoConsume"])
        elif include_empty:
            instance.auto_consume = False
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = ""
        if "purchaseTime" in dict_ and dict_["purchaseTime"] is not None:
            instance.purchase_time = int(dict_["purchaseTime"])
        elif include_empty:
            instance.purchase_time = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if (
            "subscriptionPurchase" in dict_
            and dict_["subscriptionPurchase"] is not None
        ):
            instance.subscription_purchase = bool(dict_["subscriptionPurchase"])
        elif include_empty:
            instance.subscription_purchase = False
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, GoogleIAPReceipt]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[GoogleIAPReceipt]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[GoogleIAPReceipt, List[GoogleIAPReceipt], Dict[Any, GoogleIAPReceipt]]:
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
            "orderId": "order_id",
            "packageName": "package_name",
            "purchaseToken": "purchase_token",
            "autoAck": "auto_ack",
            "autoConsume": "auto_consume",
            "language": "language",
            "productId": "product_id",
            "purchaseTime": "purchase_time",
            "region": "region",
            "subscriptionPurchase": "subscription_purchase",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "orderId": True,
            "packageName": True,
            "purchaseToken": True,
            "autoAck": False,
            "autoConsume": False,
            "language": False,
            "productId": False,
            "purchaseTime": False,
            "region": False,
            "subscriptionPurchase": False,
        }

    @staticmethod
    def get_pattern_map() -> Dict[str, re.Pattern]:
        return {
            "language": re.compile(
                r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$"
            ),
        }

    # endregion static methods
