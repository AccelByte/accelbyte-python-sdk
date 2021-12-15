# justice-platform-service (3.39.0)

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
    """External payment order create (ExternalPaymentOrderCreate)

    Properties:
        description: (description) REQUIRED str

        ext_order_no: (extOrderNo) REQUIRED str

        price: (price) REQUIRED int

        target_namespace: (targetNamespace) REQUIRED str

        target_user_id: (targetUserId) REQUIRED str

        title: (title) REQUIRED str

        currency_code: (currencyCode) OPTIONAL str

        currency_namespace: (currencyNamespace) OPTIONAL str

        custom_parameters: (customParameters) OPTIONAL Dict[str, Any]

        ext_user_id: (extUserId) OPTIONAL str

        item_type: (itemType) OPTIONAL str

        language: (language) OPTIONAL str

        metadata: (metadata) OPTIONAL Dict[str, str]

        notify_url: (notifyUrl) OPTIONAL str

        omit_notification: (omitNotification) OPTIONAL bool

        recurring_payment_order_no: (recurringPaymentOrderNo) OPTIONAL str

        region: (region) OPTIONAL str

        return_url: (returnUrl) OPTIONAL str

        sandbox: (sandbox) OPTIONAL bool

        sku: (sku) OPTIONAL str

        subscription_id: (subscriptionId) OPTIONAL str
    """

    # region fields

    description: str                                                                               # REQUIRED
    ext_order_no: str                                                                              # REQUIRED
    price: int                                                                                     # REQUIRED
    target_namespace: str                                                                          # REQUIRED
    target_user_id: str                                                                            # REQUIRED
    title: str                                                                                     # REQUIRED
    currency_code: str                                                                             # OPTIONAL
    currency_namespace: str                                                                        # OPTIONAL
    custom_parameters: Dict[str, Any]                                                              # OPTIONAL
    ext_user_id: str                                                                               # OPTIONAL
    item_type: str                                                                                 # OPTIONAL
    language: str                                                                                  # OPTIONAL
    metadata: Dict[str, str]                                                                       # OPTIONAL
    notify_url: str                                                                                # OPTIONAL
    omit_notification: bool                                                                        # OPTIONAL
    recurring_payment_order_no: str                                                                # OPTIONAL
    region: str                                                                                    # OPTIONAL
    return_url: str                                                                                # OPTIONAL
    sandbox: bool                                                                                  # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    subscription_id: str                                                                           # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_description(self, value: str) -> ExternalPaymentOrderCreate:
        self.description = value
        return self

    def with_ext_order_no(self, value: str) -> ExternalPaymentOrderCreate:
        self.ext_order_no = value
        return self

    def with_price(self, value: int) -> ExternalPaymentOrderCreate:
        self.price = value
        return self

    def with_target_namespace(self, value: str) -> ExternalPaymentOrderCreate:
        self.target_namespace = value
        return self

    def with_target_user_id(self, value: str) -> ExternalPaymentOrderCreate:
        self.target_user_id = value
        return self

    def with_title(self, value: str) -> ExternalPaymentOrderCreate:
        self.title = value
        return self

    def with_currency_code(self, value: str) -> ExternalPaymentOrderCreate:
        self.currency_code = value
        return self

    def with_currency_namespace(self, value: str) -> ExternalPaymentOrderCreate:
        self.currency_namespace = value
        return self

    def with_custom_parameters(self, value: Dict[str, Any]) -> ExternalPaymentOrderCreate:
        self.custom_parameters = value
        return self

    def with_ext_user_id(self, value: str) -> ExternalPaymentOrderCreate:
        self.ext_user_id = value
        return self

    def with_item_type(self, value: str) -> ExternalPaymentOrderCreate:
        self.item_type = value
        return self

    def with_language(self, value: str) -> ExternalPaymentOrderCreate:
        self.language = value
        return self

    def with_metadata(self, value: Dict[str, str]) -> ExternalPaymentOrderCreate:
        self.metadata = value
        return self

    def with_notify_url(self, value: str) -> ExternalPaymentOrderCreate:
        self.notify_url = value
        return self

    def with_omit_notification(self, value: bool) -> ExternalPaymentOrderCreate:
        self.omit_notification = value
        return self

    def with_recurring_payment_order_no(self, value: str) -> ExternalPaymentOrderCreate:
        self.recurring_payment_order_no = value
        return self

    def with_region(self, value: str) -> ExternalPaymentOrderCreate:
        self.region = value
        return self

    def with_return_url(self, value: str) -> ExternalPaymentOrderCreate:
        self.return_url = value
        return self

    def with_sandbox(self, value: bool) -> ExternalPaymentOrderCreate:
        self.sandbox = value
        return self

    def with_sku(self, value: str) -> ExternalPaymentOrderCreate:
        self.sku = value
        return self

    def with_subscription_id(self, value: str) -> ExternalPaymentOrderCreate:
        self.subscription_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "ext_order_no"):
            result["extOrderNo"] = str(self.ext_order_no)
        elif include_empty:
            result["extOrderNo"] = str()
        if hasattr(self, "price"):
            result["price"] = int(self.price)
        elif include_empty:
            result["price"] = int()
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "target_user_id"):
            result["targetUserId"] = str(self.target_user_id)
        elif include_empty:
            result["targetUserId"] = str()
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = str()
        if hasattr(self, "currency_namespace"):
            result["currencyNamespace"] = str(self.currency_namespace)
        elif include_empty:
            result["currencyNamespace"] = str()
        if hasattr(self, "custom_parameters"):
            result["customParameters"] = {str(k0): v0 for k0, v0 in self.custom_parameters.items()}
        elif include_empty:
            result["customParameters"] = {}
        if hasattr(self, "ext_user_id"):
            result["extUserId"] = str(self.ext_user_id)
        elif include_empty:
            result["extUserId"] = str()
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "metadata"):
            result["metadata"] = {str(k0): str(v0) for k0, v0 in self.metadata.items()}
        elif include_empty:
            result["metadata"] = {}
        if hasattr(self, "notify_url"):
            result["notifyUrl"] = str(self.notify_url)
        elif include_empty:
            result["notifyUrl"] = str()
        if hasattr(self, "omit_notification"):
            result["omitNotification"] = bool(self.omit_notification)
        elif include_empty:
            result["omitNotification"] = bool()
        if hasattr(self, "recurring_payment_order_no"):
            result["recurringPaymentOrderNo"] = str(self.recurring_payment_order_no)
        elif include_empty:
            result["recurringPaymentOrderNo"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "return_url"):
            result["returnUrl"] = str(self.return_url)
        elif include_empty:
            result["returnUrl"] = str()
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "subscription_id"):
            result["subscriptionId"] = str(self.subscription_id)
        elif include_empty:
            result["subscriptionId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        description: str,
        ext_order_no: str,
        price: int,
        target_namespace: str,
        target_user_id: str,
        title: str,
        currency_code: Optional[str] = None,
        currency_namespace: Optional[str] = None,
        custom_parameters: Optional[Dict[str, Any]] = None,
        ext_user_id: Optional[str] = None,
        item_type: Optional[str] = None,
        language: Optional[str] = None,
        metadata: Optional[Dict[str, str]] = None,
        notify_url: Optional[str] = None,
        omit_notification: Optional[bool] = None,
        recurring_payment_order_no: Optional[str] = None,
        region: Optional[str] = None,
        return_url: Optional[str] = None,
        sandbox: Optional[bool] = None,
        sku: Optional[str] = None,
        subscription_id: Optional[str] = None,
    ) -> ExternalPaymentOrderCreate:
        instance = cls()
        instance.description = description
        instance.ext_order_no = ext_order_no
        instance.price = price
        instance.target_namespace = target_namespace
        instance.target_user_id = target_user_id
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
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ExternalPaymentOrderCreate:
        instance = cls()
        if not dict_:
            return instance
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "extOrderNo" in dict_ and dict_["extOrderNo"] is not None:
            instance.ext_order_no = str(dict_["extOrderNo"])
        elif include_empty:
            instance.ext_order_no = str()
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = int(dict_["price"])
        elif include_empty:
            instance.price = int()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "targetUserId" in dict_ and dict_["targetUserId"] is not None:
            instance.target_user_id = str(dict_["targetUserId"])
        elif include_empty:
            instance.target_user_id = str()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = str()
        if "currencyNamespace" in dict_ and dict_["currencyNamespace"] is not None:
            instance.currency_namespace = str(dict_["currencyNamespace"])
        elif include_empty:
            instance.currency_namespace = str()
        if "customParameters" in dict_ and dict_["customParameters"] is not None:
            instance.custom_parameters = {str(k0): v0 for k0, v0 in dict_["customParameters"].items()}
        elif include_empty:
            instance.custom_parameters = {}
        if "extUserId" in dict_ and dict_["extUserId"] is not None:
            instance.ext_user_id = str(dict_["extUserId"])
        elif include_empty:
            instance.ext_user_id = str()
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "metadata" in dict_ and dict_["metadata"] is not None:
            instance.metadata = {str(k0): str(v0) for k0, v0 in dict_["metadata"].items()}
        elif include_empty:
            instance.metadata = {}
        if "notifyUrl" in dict_ and dict_["notifyUrl"] is not None:
            instance.notify_url = str(dict_["notifyUrl"])
        elif include_empty:
            instance.notify_url = str()
        if "omitNotification" in dict_ and dict_["omitNotification"] is not None:
            instance.omit_notification = bool(dict_["omitNotification"])
        elif include_empty:
            instance.omit_notification = bool()
        if "recurringPaymentOrderNo" in dict_ and dict_["recurringPaymentOrderNo"] is not None:
            instance.recurring_payment_order_no = str(dict_["recurringPaymentOrderNo"])
        elif include_empty:
            instance.recurring_payment_order_no = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "returnUrl" in dict_ and dict_["returnUrl"] is not None:
            instance.return_url = str(dict_["returnUrl"])
        elif include_empty:
            instance.return_url = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "subscriptionId" in dict_ and dict_["subscriptionId"] is not None:
            instance.subscription_id = str(dict_["subscriptionId"])
        elif include_empty:
            instance.subscription_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "description": "description",
            "extOrderNo": "ext_order_no",
            "price": "price",
            "targetNamespace": "target_namespace",
            "targetUserId": "target_user_id",
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
            "recurringPaymentOrderNo": "recurring_payment_order_no",
            "region": "region",
            "returnUrl": "return_url",
            "sandbox": "sandbox",
            "sku": "sku",
            "subscriptionId": "subscription_id",
        }

    # endregion static methods
