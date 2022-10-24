# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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
from ....core import StrEnum


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class PaymentOrderCreate(Model):
    """Payment order create (PaymentOrderCreate)

    Properties:
        description: (description) REQUIRED str

        ext_order_no: (extOrderNo) REQUIRED str

        price: (price) REQUIRED int

        title: (title) REQUIRED str

        currency_code: (currencyCode) OPTIONAL str

        currency_namespace: (currencyNamespace) OPTIONAL str

        custom_parameters: (customParameters) OPTIONAL Dict[str, Any]

        ext_user_id: (extUserId) OPTIONAL str

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum]

        language: (language) OPTIONAL str

        metadata: (metadata) OPTIONAL Dict[str, str]

        notify_url: (notifyUrl) OPTIONAL str

        omit_notification: (omitNotification) OPTIONAL bool

        platform: (platform) OPTIONAL str

        recurring_payment_order_no: (recurringPaymentOrderNo) OPTIONAL str

        region: (region) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        sandbox: (sandbox) OPTIONAL bool

        sku: (sku) OPTIONAL str

        subscription_id: (subscriptionId) OPTIONAL str
    """

    # region fields

    description: str  # REQUIRED
    ext_order_no: str  # REQUIRED
    price: int  # REQUIRED
    title: str  # REQUIRED
    currency_code: str  # OPTIONAL
    currency_namespace: str  # OPTIONAL
    custom_parameters: Dict[str, Any]  # OPTIONAL
    ext_user_id: str  # OPTIONAL
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL
    language: str  # OPTIONAL
    metadata: Dict[str, str]  # OPTIONAL
    notify_url: str  # OPTIONAL
    omit_notification: bool  # OPTIONAL
    platform: str  # OPTIONAL
    recurring_payment_order_no: str  # OPTIONAL
    region: str  # OPTIONAL
    return_url: str  # OPTIONAL
    sandbox: bool  # OPTIONAL
    sku: str  # OPTIONAL
    subscription_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> PaymentOrderCreate:
        self.description = value
        return self

    def with_ext_order_no(self, value: str) -> PaymentOrderCreate:
        self.ext_order_no = value
        return self

    def with_price(self, value: int) -> PaymentOrderCreate:
        self.price = value
        return self

    def with_title(self, value: str) -> PaymentOrderCreate:
        self.title = value
        return self

    def with_currency_code(self, value: str) -> PaymentOrderCreate:
        self.currency_code = value
        return self

    def with_currency_namespace(self, value: str) -> PaymentOrderCreate:
        self.currency_namespace = value
        return self

    def with_custom_parameters(self, value: Dict[str, Any]) -> PaymentOrderCreate:
        self.custom_parameters = value
        return self

    def with_ext_user_id(self, value: str) -> PaymentOrderCreate:
        self.ext_user_id = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> PaymentOrderCreate:
        self.item_type = value
        return self

    def with_language(self, value: str) -> PaymentOrderCreate:
        self.language = value
        return self

    def with_metadata(self, value: Dict[str, str]) -> PaymentOrderCreate:
        self.metadata = value
        return self

    def with_notify_url(self, value: str) -> PaymentOrderCreate:
        self.notify_url = value
        return self

    def with_omit_notification(self, value: bool) -> PaymentOrderCreate:
        self.omit_notification = value
        return self

    def with_platform(self, value: str) -> PaymentOrderCreate:
        self.platform = value
        return self

    def with_recurring_payment_order_no(self, value: str) -> PaymentOrderCreate:
        self.recurring_payment_order_no = value
        return self

    def with_region(self, value: str) -> PaymentOrderCreate:
        self.region = value
        return self

    def with_return_url(self, value: str) -> PaymentOrderCreate:
        self.return_url = value
        return self

    def with_sandbox(self, value: bool) -> PaymentOrderCreate:
        self.sandbox = value
        return self

    def with_sku(self, value: str) -> PaymentOrderCreate:
        self.sku = value
        return self

    def with_subscription_id(self, value: str) -> PaymentOrderCreate:
        self.subscription_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "ext_order_no"):
            result["extOrderNo"] = str(self.ext_order_no)
        elif include_empty:
            result["extOrderNo"] = ""
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = 0
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "currency_namespace"):
            result["currencyNamespace"] = str(self.currency_namespace)
        elif include_empty:
            result["currencyNamespace"] = ""
        if hasattr(self, "custom_parameters"):
            result["customParameters"] = {
                str(k0): v0 for k0, v0 in self.custom_parameters.items()
            }
        elif include_empty:
            result["customParameters"] = {}
        if hasattr(self, "ext_user_id"):
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): str(v0) for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "notify_url"):
            result["notifyUrl"] = str(self.notify_url)
        elif include_empty:
            result["notifyUrl"] = ""
        if hasattr(self, "omit_notification"):
            result["omitNotification"] = bool(self.omit_notification)
        elif include_empty:
            result["omitNotification"] = False
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "recurring_payment_order_no"):
            result["recurringPaymentOrderNo"] = str(self.recurring_payment_order_no)
        elif include_empty:
            result["recurringPaymentOrderNo"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = ""
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        ext_order_no: str,
        price: int,
        title: str,
        currency_code: Optional[str] = None,
        currency_namespace: Optional[str] = None,
        custom_parameters: Optional[Dict[str, Any]] = None,
        ext_user_id: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        language: Optional[str] = None,
        metadata: Optional[Dict[str, str]] = None,
        notify_url: Optional[str] = None,
        omit_notification: Optional[bool] = None,
        platform: Optional[str] = None,
        recurring_payment_order_no: Optional[str] = None,
        region: Optional[str] = None,
        return_url: Optional[str] = None,
        sandbox: Optional[bool] = None,
        sku: Optional[str] = None,
        subscription_id: Optional[str] = None,
    ) -> PaymentOrderCreate:
        instance = cls()
        instance.description = description
        instance.ext_order_no = ext_order_no
        instance.price = price
        instance.title = title
        if currency_code is not None:
            instance.currency_code = currency_code
        if currency_namespace is not None:
            instance.currency_namespace = currency_namespace
        if custom_parameters is not None:
            instance.custom_parameters = custom_parameters
        if ext_user_id is not None:
            instance.ext_user_id = ext_user_id
        if item_type is not None:
            instance.item_type = item_type
        if language is not None:
            instance.language = language
        if metadata is not None:
            instance.metadata = metadata
        if notify_url is not None:
            instance.notify_url = notify_url
        if omit_notification is not None:
            instance.omit_notification = omit_notification
        if platform is not None:
            instance.platform = platform
        if recurring_payment_order_no is not None:
            instance.recurring_payment_order_no = recurring_payment_order_no
        if region is not None:
            instance.region = region
        if return_url is not None:
            instance.return_url = return_url
        if sandbox is not None:
            instance.sandbox = sandbox
        if sku is not None:
            instance.sku = sku
        if subscription_id is not None:
            instance.subscription_id = subscription_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PaymentOrderCreate:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "extOrderNo" in dict_ and dict_["extOrderNo"] is not None:
            instance.ext_order_no = str(dict_["extOrderNo"])
        elif include_empty:
            instance.ext_order_no = ""
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = 0
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "currencyNamespace" in dict_ and dict_["currencyNamespace"] is not None:
            instance.currency_namespace = str(dict_["currencyNamespace"])
        elif include_empty:
            instance.currency_namespace = ""
        if "customParameters" in dict_ and dict_["customParameters"] is not None:
            instance.custom_parameters = {
                str(k0): v0 for k0, v0 in dict_["customParameters"].items()
            }
        elif include_empty:
            instance.custom_parameters = {}
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {
                str(k0): str(v0) for k0, v0 in dict_["metadata"].items()
            }
        elif include_empty:
            instance.metadata = {}
        if "notifyUrl" in dict_ and dict_["notifyUrl"] is not None:
            instance.notify_url = str(dict_["notifyUrl"])
        elif include_empty:
            instance.notify_url = ""
        if "omitNotification" in dict_ and dict_["omitNotification"] is not None:
            instance.omit_notification = bool(dict_["omitNotification"])
        elif include_empty:
            instance.omit_notification = False
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if (
            "recurringPaymentOrderNo" in dict_
            and dict_["recurringPaymentOrderNo"] is not None
        ):
            instance.recurring_payment_order_no = str(dict_["recurringPaymentOrderNo"])
        elif include_empty:
            instance.recurring_payment_order_no = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = ""
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PaymentOrderCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PaymentOrderCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PaymentOrderCreate, List[PaymentOrderCreate], Dict[Any, PaymentOrderCreate]
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
            "description": "description",
            "extOrderNo": "ext_order_no",
            "price": "price",
            "title": "title",
            "currencyCode": "currency_code",
            "currencyNamespace": "currency_namespace",
            "customParameters": "custom_parameters",
            "extUserId": "ext_user_id",
            "itemType": "item_type",
            "language": "language",
            "metadata": "metadata",
            "notifyUrl": "notify_url",
            "omitNotification": "omit_notification",
            "platform": "platform",
            "recurringPaymentOrderNo": "recurring_payment_order_no",
            "region": "region",
            "returnUrl": "return_url",
            "sandbox": "sandbox",
            "sku": "sku",
            "subscriptionId": "subscription_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "description": True,
            "extOrderNo": True,
            "price": True,
            "title": True,
            "currencyCode": False,
            "currencyNamespace": False,
            "customParameters": False,
            "extUserId": False,
            "itemType": False,
            "language": False,
            "metadata": False,
            "notifyUrl": False,
            "omitNotification": False,
            "platform": False,
            "recurringPaymentOrderNo": False,
            "region": False,
            "returnUrl": False,
            "sandbox": False,
            "sku": False,
            "subscriptionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemType": [
                "APP",
                "BUNDLE",
                "CODE",
                "COINS",
                "EXTENSION",
                "INGAMEITEM",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],
        }

    @staticmethod
    def get_pattern_map() -> Dict[str, re.Pattern]:
        return {
            "language": re.compile(
                r"^[A-Za-z]{2,4}([_-][A-Za-z]{4})?([_-]([A-Za-z]{2}|[0-9]{3}))?$"
            ),
        }

    # endregion static methods
