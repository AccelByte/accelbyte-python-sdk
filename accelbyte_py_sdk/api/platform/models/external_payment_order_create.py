# Auto-generated at 2021-09-21T14:10:38.769831+08:00
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


class ExternalPaymentOrderCreate(Model):
    """External payment order create

    Properties:
        ext_order_no: (extOrderNo) REQUIRED str

        sku: (sku) OPTIONAL str

        ext_user_id: (extUserId) OPTIONAL str

        price: (price) REQUIRED int

        title: (title) REQUIRED str

        description: (description) REQUIRED str

        item_type: (itemType) OPTIONAL str

        currency_code: (currencyCode) OPTIONAL str

        currency_namespace: (currencyNamespace) OPTIONAL str

        region: (region) OPTIONAL str

        language: (language) OPTIONAL str

        sandbox: (sandbox) OPTIONAL bool

        return_url: (returnUrl) OPTIONAL str

        notify_url: (notifyUrl) OPTIONAL str

        custom_parameters: (customParameters) OPTIONAL Dict[str, Any]

        subscription_id: (subscriptionId) OPTIONAL str

        recurring_payment_order_no: (recurringPaymentOrderNo) OPTIONAL str

        omit_notification: (omitNotification) OPTIONAL bool

        metadata: (metadata) OPTIONAL Dict[str, str]

        target_namespace: (targetNamespace) REQUIRED str

        target_user_id: (targetUserId) REQUIRED str
    """

    # region fields

    ext_order_no: str                                                                              # REQUIRED
    sku: str                                                                                       # OPTIONAL
    ext_user_id: str                                                                               # OPTIONAL
    price: int                                                                                     # REQUIRED
    title: str                                                                                     # REQUIRED
    description: str                                                                               # REQUIRED
    item_type: str                                                                                 # OPTIONAL
    currency_code: str                                                                             # OPTIONAL
    currency_namespace: str                                                                        # OPTIONAL
    region: str                                                                                    # OPTIONAL
    language: str                                                                                  # OPTIONAL
    sandbox: bool                                                                                  # OPTIONAL
    return_url: str                                                                                # OPTIONAL
    notify_url: str                                                                                # OPTIONAL
    custom_parameters: Dict[str, Any]                                                              # OPTIONAL
    subscription_id: str                                                                           # OPTIONAL
    recurring_payment_order_no: str                                                                # OPTIONAL
    omit_notification: bool                                                                        # OPTIONAL
    metadata: Dict[str, str]                                                                       # OPTIONAL
    target_namespace: str                                                                          # REQUIRED
    target_user_id: str                                                                            # REQUIRED

    # endregion fields

    # region with_x methods

    def with_ext_order_no(self, value: str) -> ExternalPaymentOrderCreate:
        self.ext_order_no = value
        return self

    def with_sku(self, value: str) -> ExternalPaymentOrderCreate:
        self.sku = value
        return self

    def with_ext_user_id(self, value: str) -> ExternalPaymentOrderCreate:
        self.ext_user_id = value
        return self

    def with_price(self, value: int) -> ExternalPaymentOrderCreate:
        self.price = value
        return self

    def with_title(self, value: str) -> ExternalPaymentOrderCreate:
        self.title = value
        return self

    def with_description(self, value: str) -> ExternalPaymentOrderCreate:
        self.description = value
        return self

    def with_item_type(self, value: str) -> ExternalPaymentOrderCreate:
        self.item_type = value
        return self

    def with_currency_code(self, value: str) -> ExternalPaymentOrderCreate:
        self.currency_code = value
        return self

    def with_currency_namespace(self, value: str) -> ExternalPaymentOrderCreate:
        self.currency_namespace = value
        return self

    def with_region(self, value: str) -> ExternalPaymentOrderCreate:
        self.region = value
        return self

    def with_language(self, value: str) -> ExternalPaymentOrderCreate:
        self.language = value
        return self

    def with_sandbox(self, value: bool) -> ExternalPaymentOrderCreate:
        self.sandbox = value
        return self

    def with_return_url(self, value: str) -> ExternalPaymentOrderCreate:
        self.return_url = value
        return self

    def with_notify_url(self, value: str) -> ExternalPaymentOrderCreate:
        self.notify_url = value
        return self

    def with_custom_parameters(self, value: Dict[str, Any]) -> ExternalPaymentOrderCreate:
        self.custom_parameters = value
        return self

    def with_subscription_id(self, value: str) -> ExternalPaymentOrderCreate:
        self.subscription_id = value
        return self

    def with_recurring_payment_order_no(self, value: str) -> ExternalPaymentOrderCreate:
        self.recurring_payment_order_no = value
        return self

    def with_omit_notification(self, value: bool) -> ExternalPaymentOrderCreate:
        self.omit_notification = value
        return self

    def with_metadata(self, value: Dict[str, str]) -> ExternalPaymentOrderCreate:
        self.metadata = value
        return self

    def with_target_namespace(self, value: str) -> ExternalPaymentOrderCreate:
        self.target_namespace = value
        return self

    def with_target_user_id(self, value: str) -> ExternalPaymentOrderCreate:
        self.target_user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "ext_order_no") and self.ext_order_no:
            result["extOrderNo"] = str(self.ext_order_no)
        elif include_empty:
            result["extOrderNo"] = str()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "ext_user_id") and self.ext_user_id:
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = str()
        if hasattr(self, "price") and self.price:
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = int()
        if hasattr(self, "title") and self.title:
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "currency_code") and self.currency_code:
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "currency_namespace") and self.currency_namespace:
            result["currencyNamespace"] = str(self.currency_namespace)
        elif include_empty:
            result["currencyNamespace"] = str()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "sandbox") and self.sandbox:
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "return_url") and self.return_url:
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        if hasattr(self, "notify_url") and self.notify_url:
            result["notifyUrl"] = str(self.notify_url)
        elif include_empty:
            result["notifyUrl"] = str()
        if hasattr(self, "custom_parameters") and self.custom_parameters:
            result["customParameters"] = {str(k0): v0 for k0, v0 in self.custom_parameters.items()}
        elif include_empty:
            result["customParameters"] = {}
        if hasattr(self, "subscription_id") and self.subscription_id:
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = str()
        if hasattr(self, "recurring_payment_order_no") and self.recurring_payment_order_no:
            result["recurringPaymentOrderNo"] = str(self.recurring_payment_order_no)
        elif include_empty:
            result["recurringPaymentOrderNo"] = str()
        if hasattr(self, "omit_notification") and self.omit_notification:
            result["omitNotification"] = bool(self.omit_notification)
        elif include_empty:
            result["omitNotification"] = bool()
        if hasattr(self, "metadata") and self.metadata:
            result["metadata"] = {str(k0): str(v0) for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "target_user_id") and self.target_user_id:
            result["targetUserId"] = str(self.target_user_id)
        elif include_empty:
            result["targetUserId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        ext_order_no: str,
        price: int,
        title: str,
        description: str,
        target_namespace: str,
        target_user_id: str,
        sku: Optional[str] = None,
        ext_user_id: Optional[str] = None,
        item_type: Optional[str] = None,
        currency_code: Optional[str] = None,
        currency_namespace: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
        sandbox: Optional[bool] = None,
        return_url: Optional[str] = None,
        notify_url: Optional[str] = None,
        custom_parameters: Optional[Dict[str, Any]] = None,
        subscription_id: Optional[str] = None,
        recurring_payment_order_no: Optional[str] = None,
        omit_notification: Optional[bool] = None,
        metadata: Optional[Dict[str, str]] = None,
    ) -> ExternalPaymentOrderCreate:
        instance = cls()
        instance.ext_order_no = ext_order_no
        instance.price = price
        instance.title = title
        instance.description = description
        instance.target_namespace = target_namespace
        instance.target_user_id = target_user_id
        if sku is not None:
            instance.sku = sku
        if ext_user_id is not None:
            instance.ext_user_id = ext_user_id
        if item_type is not None:
            instance.item_type = item_type
        if currency_code is not None:
            instance.currency_code = currency_code
        if currency_namespace is not None:
            instance.currency_namespace = currency_namespace
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        if sandbox is not None:
            instance.sandbox = sandbox
        if return_url is not None:
            instance.return_url = return_url
        if notify_url is not None:
            instance.notify_url = notify_url
        if custom_parameters is not None:
            instance.custom_parameters = custom_parameters
        if subscription_id is not None:
            instance.subscription_id = subscription_id
        if recurring_payment_order_no is not None:
            instance.recurring_payment_order_no = recurring_payment_order_no
        if omit_notification is not None:
            instance.omit_notification = omit_notification
        if metadata is not None:
            instance.metadata = metadata
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ExternalPaymentOrderCreate:
        instance = cls()
        if "extOrderNo" in dict_ and dict_["extOrderNo"] is not None:
            instance.ext_order_no = str(dict_["extOrderNo"])
        elif include_empty:
            instance.ext_order_no = str()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = str()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = int()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "currencyNamespace" in dict_ and dict_["currencyNamespace"] is not None:
            instance.currency_namespace = str(dict_["currencyNamespace"])
        elif include_empty:
            instance.currency_namespace = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        if "notifyUrl" in dict_ and dict_["notifyUrl"] is not None:
            instance.notify_url = str(dict_["notifyUrl"])
        elif include_empty:
            instance.notify_url = str()
        if "customParameters" in dict_ and dict_["customParameters"] is not None:
            instance.custom_parameters = {str(k0): v0 for k0, v0 in dict_["customParameters"].items()}
        elif include_empty:
            instance.custom_parameters = {}
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = str()
        if "recurringPaymentOrderNo" in dict_ and dict_["recurringPaymentOrderNo"] is not None:
            instance.recurring_payment_order_no = str(dict_["recurringPaymentOrderNo"])
        elif include_empty:
            instance.recurring_payment_order_no = str()
        if "omitNotification" in dict_ and dict_["omitNotification"] is not None:
            instance.omit_notification = bool(dict_["omitNotification"])
        elif include_empty:
            instance.omit_notification = bool()
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): str(v0) for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "targetUserId" in dict_ and dict_["targetUserId"] is not None:
            instance.target_user_id = str(dict_["targetUserId"])
        elif include_empty:
            instance.target_user_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "extOrderNo": "ext_order_no",
            "sku": "sku",
            "extUserId": "ext_user_id",
            "price": "price",
            "title": "title",
            "description": "description",
            "itemType": "item_type",
            "currencyCode": "currency_code",
            "currencyNamespace": "currency_namespace",
            "region": "region",
            "language": "language",
            "sandbox": "sandbox",
            "returnUrl": "return_url",
            "notifyUrl": "notify_url",
            "customParameters": "custom_parameters",
            "subscriptionId": "subscription_id",
            "recurringPaymentOrderNo": "recurring_payment_order_no",
            "omitNotification": "omit_notification",
            "metadata": "metadata",
            "targetNamespace": "target_namespace",
            "targetUserId": "target_user_id",
        }

    # endregion static methods
