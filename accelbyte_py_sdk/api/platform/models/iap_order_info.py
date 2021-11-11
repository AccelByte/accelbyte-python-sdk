# justice-platform-service (3.37.1)

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

from ..models.credit_summary import CreditSummary
from ..models.entitlement_summary import EntitlementSummary


class IAPOrderInfo(Model):
    """IAP order info (IAPOrderInfo)

    Properties:
        iap_order_no: (iapOrderNo) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED str

        type_: (type) REQUIRED str

        user_id: (userId) REQUIRED str

        credits: (credits) OPTIONAL List[CreditSummary]

        entitlements: (entitlements) OPTIONAL List[EntitlementSummary]

        fulfilled_time: (fulfilledTime) OPTIONAL str

        language: (language) OPTIONAL str

        product_id: (productId) OPTIONAL str

        quantity: (quantity) OPTIONAL int

        receipt_data: (receiptData) OPTIONAL str

        region: (region) OPTIONAL str

        sandbox: (sandbox) OPTIONAL bool

        status_reason: (statusReason) OPTIONAL str

        transaction_id: (transactionId) OPTIONAL str
    """

    # region fields

    iap_order_no: str                                                                              # REQUIRED
    namespace: str                                                                                 # REQUIRED
    status: str                                                                                    # REQUIRED
    type_: str                                                                                     # REQUIRED
    user_id: str                                                                                   # REQUIRED
    credits: List[CreditSummary]                                                                   # OPTIONAL
    entitlements: List[EntitlementSummary]                                                         # OPTIONAL
    fulfilled_time: str                                                                            # OPTIONAL
    language: str                                                                                  # OPTIONAL
    product_id: str                                                                                # OPTIONAL
    quantity: int                                                                                  # OPTIONAL
    receipt_data: str                                                                              # OPTIONAL
    region: str                                                                                    # OPTIONAL
    sandbox: bool                                                                                  # OPTIONAL
    status_reason: str                                                                             # OPTIONAL
    transaction_id: str                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_iap_order_no(self, value: str) -> IAPOrderInfo:
        self.iap_order_no = value
        return self

    def with_namespace(self, value: str) -> IAPOrderInfo:
        self.namespace = value
        return self

    def with_status(self, value: str) -> IAPOrderInfo:
        self.status = value
        return self

    def with_type(self, value: str) -> IAPOrderInfo:
        self.type_ = value
        return self

    def with_user_id(self, value: str) -> IAPOrderInfo:
        self.user_id = value
        return self

    def with_credits(self, value: List[CreditSummary]) -> IAPOrderInfo:
        self.credits = value
        return self

    def with_entitlements(self, value: List[EntitlementSummary]) -> IAPOrderInfo:
        self.entitlements = value
        return self

    def with_fulfilled_time(self, value: str) -> IAPOrderInfo:
        self.fulfilled_time = value
        return self

    def with_language(self, value: str) -> IAPOrderInfo:
        self.language = value
        return self

    def with_product_id(self, value: str) -> IAPOrderInfo:
        self.product_id = value
        return self

    def with_quantity(self, value: int) -> IAPOrderInfo:
        self.quantity = value
        return self

    def with_receipt_data(self, value: str) -> IAPOrderInfo:
        self.receipt_data = value
        return self

    def with_region(self, value: str) -> IAPOrderInfo:
        self.region = value
        return self

    def with_sandbox(self, value: bool) -> IAPOrderInfo:
        self.sandbox = value
        return self

    def with_status_reason(self, value: str) -> IAPOrderInfo:
        self.status_reason = value
        return self

    def with_transaction_id(self, value: str) -> IAPOrderInfo:
        self.transaction_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "iap_order_no"):
            result["iapOrderNo"] = str(self.iap_order_no)
        elif include_empty:
            result["iapOrderNo"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
        if hasattr(self, "credits"):
            result["credits"] = [i0.to_dict(include_empty=include_empty) for i0 in self.credits]
        elif include_empty:
            result["credits"] = []
        if hasattr(self, "entitlements"):
            result["entitlements"] = [i0.to_dict(include_empty=include_empty) for i0 in self.entitlements]
        elif include_empty:
            result["entitlements"] = []
        if hasattr(self, "fulfilled_time"):
            result["fulfilledTime"] = str(self.fulfilled_time)
        elif include_empty:
            result["fulfilledTime"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = str()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "receipt_data"):
            result["receiptData"] = str(self.receipt_data)
        elif include_empty:
            result["receiptData"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = bool()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = str()
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        iap_order_no: str,
        namespace: str,
        status: str,
        type_: str,
        user_id: str,
        credits: Optional[List[CreditSummary]] = None,
        entitlements: Optional[List[EntitlementSummary]] = None,
        fulfilled_time: Optional[str] = None,
        language: Optional[str] = None,
        product_id: Optional[str] = None,
        quantity: Optional[int] = None,
        receipt_data: Optional[str] = None,
        region: Optional[str] = None,
        sandbox: Optional[bool] = None,
        status_reason: Optional[str] = None,
        transaction_id: Optional[str] = None,
    ) -> IAPOrderInfo:
        instance = cls()
        instance.iap_order_no = iap_order_no
        instance.namespace = namespace
        instance.status = status
        instance.type_ = type_
        instance.user_id = user_id
        if credits is not None:
            instance.credits = credits
        if entitlements is not None:
            instance.entitlements = entitlements
        if fulfilled_time is not None:
            instance.fulfilled_time = fulfilled_time
        if language is not None:
            instance.language = language
        if product_id is not None:
            instance.product_id = product_id
        if quantity is not None:
            instance.quantity = quantity
        if receipt_data is not None:
            instance.receipt_data = receipt_data
        if region is not None:
            instance.region = region
        if sandbox is not None:
            instance.sandbox = sandbox
        if status_reason is not None:
            instance.status_reason = status_reason
        if transaction_id is not None:
            instance.transaction_id = transaction_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> IAPOrderInfo:
        instance = cls()
        if not dict_:
            return instance
        if "iapOrderNo" in dict_ and dict_["iapOrderNo"] is not None:
            instance.iap_order_no = str(dict_["iapOrderNo"])
        elif include_empty:
            instance.iap_order_no = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
        if "credits" in dict_ and dict_["credits"] is not None:
            instance.credits = [CreditSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["credits"]]
        elif include_empty:
            instance.credits = []
        if "entitlements" in dict_ and dict_["entitlements"] is not None:
            instance.entitlements = [EntitlementSummary.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["entitlements"]]
        elif include_empty:
            instance.entitlements = []
        if "fulfilledTime" in dict_ and dict_["fulfilledTime"] is not None:
            instance.fulfilled_time = str(dict_["fulfilledTime"])
        elif include_empty:
            instance.fulfilled_time = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = str()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "receiptData" in dict_ and dict_["receiptData"] is not None:
            instance.receipt_data = str(dict_["receiptData"])
        elif include_empty:
            instance.receipt_data = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = bool()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = str()
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "iapOrderNo": "iap_order_no",
            "namespace": "namespace",
            "status": "status",
            "type": "type_",
            "userId": "user_id",
            "credits": "credits",
            "entitlements": "entitlements",
            "fulfilledTime": "fulfilled_time",
            "language": "language",
            "productId": "product_id",
            "quantity": "quantity",
            "receiptData": "receipt_data",
            "region": "region",
            "sandbox": "sandbox",
            "statusReason": "status_reason",
            "transactionId": "transaction_id",
        }

    # endregion static methods
