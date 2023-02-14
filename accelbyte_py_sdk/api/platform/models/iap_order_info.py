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

from ..models.credit_summary import CreditSummary
from ..models.entitlement_summary import EntitlementSummary


class StatusEnum(StrEnum):
    FAILED = "FAILED"
    FULFILLED = "FULFILLED"
    VERIFIED = "VERIFIED"


class TypeEnum(StrEnum):
    APPLE = "APPLE"
    EPICGAMES = "EPICGAMES"
    GOOGLE = "GOOGLE"
    PLAYSTATION = "PLAYSTATION"
    STADIA = "STADIA"
    STEAM = "STEAM"
    TWITCH = "TWITCH"
    XBOX = "XBOX"


class IAPOrderInfo(Model):
    """IAP order info (IAPOrderInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        iap_order_no: (iapOrderNo) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        type_: (type) REQUIRED Union[str, TypeEnum]

        updated_at: (updatedAt) REQUIRED str

        user_id: (userId) REQUIRED str

        credits: (credits) OPTIONAL List[CreditSummary]

        currency_code: (currencyCode) OPTIONAL str

        entitlements: (entitlements) OPTIONAL List[EntitlementSummary]

        fulfilled_time: (fulfilledTime) OPTIONAL str

        language: (language) OPTIONAL str

        price: (price) OPTIONAL float

        product_id: (productId) OPTIONAL str

        quantity: (quantity) OPTIONAL int

        receipt_data: (receiptData) OPTIONAL str

        region: (region) OPTIONAL str

        retry_count: (retryCount) OPTIONAL int

        sandbox: (sandbox) OPTIONAL bool

        status_reason: (statusReason) OPTIONAL str

        transaction_id: (transactionId) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    iap_order_no: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    user_id: str  # REQUIRED
    credits: List[CreditSummary]  # OPTIONAL
    currency_code: str  # OPTIONAL
    entitlements: List[EntitlementSummary]  # OPTIONAL
    fulfilled_time: str  # OPTIONAL
    language: str  # OPTIONAL
    price: float  # OPTIONAL
    product_id: str  # OPTIONAL
    quantity: int  # OPTIONAL
    receipt_data: str  # OPTIONAL
    region: str  # OPTIONAL
    retry_count: int  # OPTIONAL
    sandbox: bool  # OPTIONAL
    status_reason: str  # OPTIONAL
    transaction_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> IAPOrderInfo:
        self.created_at = value
        return self

    def with_iap_order_no(self, value: str) -> IAPOrderInfo:
        self.iap_order_no = value
        return self

    def with_namespace(self, value: str) -> IAPOrderInfo:
        self.namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> IAPOrderInfo:
        self.status = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> IAPOrderInfo:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> IAPOrderInfo:
        self.updated_at = value
        return self

    def with_user_id(self, value: str) -> IAPOrderInfo:
        self.user_id = value
        return self

    def with_credits(self, value: List[CreditSummary]) -> IAPOrderInfo:
        self.credits = value
        return self

    def with_currency_code(self, value: str) -> IAPOrderInfo:
        self.currency_code = value
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

    def with_price(self, value: float) -> IAPOrderInfo:
        self.price = value
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

    def with_retry_count(self, value: int) -> IAPOrderInfo:
        self.retry_count = value
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
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "iap_order_no"):
            result["iapOrderNo"] = str(self.iap_order_no)
        elif include_empty:
            result["iapOrderNo"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "credits"):
            result["credits"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.credits
            ]
        elif include_empty:
            result["credits"] = []
        if hasattr(self, "currency_code"):
            result["currencyCode"] = str(self.currency_code)
        elif include_empty:
            result["currencyCode"] = ""
        if hasattr(self, "entitlements"):
            result["entitlements"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.entitlements
            ]
        elif include_empty:
            result["entitlements"] = []
        if hasattr(self, "fulfilled_time"):
            result["fulfilledTime"] = str(self.fulfilled_time)
        elif include_empty:
            result["fulfilledTime"] = ""
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "price"):
            result["price"] = float(self.price)
        elif include_empty:
            result["price"] = 0.0
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "receipt_data"):
            result["receiptData"] = str(self.receipt_data)
        elif include_empty:
            result["receiptData"] = ""
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "retry_count"):
            result["retryCount"] = int(self.retry_count)
        elif include_empty:
            result["retryCount"] = 0
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        if hasattr(self, "transaction_id"):
            result["transactionId"] = str(self.transaction_id)
        elif include_empty:
            result["transactionId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        iap_order_no: str,
        namespace: str,
        status: Union[str, StatusEnum],
        type_: Union[str, TypeEnum],
        updated_at: str,
        user_id: str,
        credits: Optional[List[CreditSummary]] = None,
        currency_code: Optional[str] = None,
        entitlements: Optional[List[EntitlementSummary]] = None,
        fulfilled_time: Optional[str] = None,
        language: Optional[str] = None,
        price: Optional[float] = None,
        product_id: Optional[str] = None,
        quantity: Optional[int] = None,
        receipt_data: Optional[str] = None,
        region: Optional[str] = None,
        retry_count: Optional[int] = None,
        sandbox: Optional[bool] = None,
        status_reason: Optional[str] = None,
        transaction_id: Optional[str] = None,
    ) -> IAPOrderInfo:
        instance = cls()
        instance.created_at = created_at
        instance.iap_order_no = iap_order_no
        instance.namespace = namespace
        instance.status = status
        instance.type_ = type_
        instance.updated_at = updated_at
        instance.user_id = user_id
        if credits is not None:
            instance.credits = credits
        if currency_code is not None:
            instance.currency_code = currency_code
        if entitlements is not None:
            instance.entitlements = entitlements
        if fulfilled_time is not None:
            instance.fulfilled_time = fulfilled_time
        if language is not None:
            instance.language = language
        if price is not None:
            instance.price = price
        if product_id is not None:
            instance.product_id = product_id
        if quantity is not None:
            instance.quantity = quantity
        if receipt_data is not None:
            instance.receipt_data = receipt_data
        if region is not None:
            instance.region = region
        if retry_count is not None:
            instance.retry_count = retry_count
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
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "iapOrderNo" in dict_ and dict_["iapOrderNo"] is not None:
            instance.iap_order_no = str(dict_["iapOrderNo"])
        elif include_empty:
            instance.iap_order_no = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "credits" in dict_ and dict_["credits"] is not None:
            instance.credits = [
                CreditSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["credits"]
            ]
        elif include_empty:
            instance.credits = []
        if "currencyCode" in dict_ and dict_["currencyCode"] is not None:
            instance.currency_code = str(dict_["currencyCode"])
        elif include_empty:
            instance.currency_code = ""
        if "entitlements" in dict_ and dict_["entitlements"] is not None:
            instance.entitlements = [
                EntitlementSummary.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["entitlements"]
            ]
        elif include_empty:
            instance.entitlements = []
        if "fulfilledTime" in dict_ and dict_["fulfilledTime"] is not None:
            instance.fulfilled_time = str(dict_["fulfilledTime"])
        elif include_empty:
            instance.fulfilled_time = ""
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "price" in dict_ and dict_["price"] is not None:
            instance.price = float(dict_["price"])
        elif include_empty:
            instance.price = 0.0
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "receiptData" in dict_ and dict_["receiptData"] is not None:
            instance.receipt_data = str(dict_["receiptData"])
        elif include_empty:
            instance.receipt_data = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "retryCount" in dict_ and dict_["retryCount"] is not None:
            instance.retry_count = int(dict_["retryCount"])
        elif include_empty:
            instance.retry_count = 0
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        if "transactionId" in dict_ and dict_["transactionId"] is not None:
            instance.transaction_id = str(dict_["transactionId"])
        elif include_empty:
            instance.transaction_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, IAPOrderInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[IAPOrderInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[IAPOrderInfo, List[IAPOrderInfo], Dict[Any, IAPOrderInfo]]:
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
            "createdAt": "created_at",
            "iapOrderNo": "iap_order_no",
            "namespace": "namespace",
            "status": "status",
            "type": "type_",
            "updatedAt": "updated_at",
            "userId": "user_id",
            "credits": "credits",
            "currencyCode": "currency_code",
            "entitlements": "entitlements",
            "fulfilledTime": "fulfilled_time",
            "language": "language",
            "price": "price",
            "productId": "product_id",
            "quantity": "quantity",
            "receiptData": "receipt_data",
            "region": "region",
            "retryCount": "retry_count",
            "sandbox": "sandbox",
            "statusReason": "status_reason",
            "transactionId": "transaction_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "iapOrderNo": True,
            "namespace": True,
            "status": True,
            "type": True,
            "updatedAt": True,
            "userId": True,
            "credits": False,
            "currencyCode": False,
            "entitlements": False,
            "fulfilledTime": False,
            "language": False,
            "price": False,
            "productId": False,
            "quantity": False,
            "receiptData": False,
            "region": False,
            "retryCount": False,
            "sandbox": False,
            "statusReason": False,
            "transactionId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAILED", "FULFILLED", "VERIFIED"],
            "type": [
                "APPLE",
                "EPICGAMES",
                "GOOGLE",
                "PLAYSTATION",
                "STADIA",
                "STEAM",
                "TWITCH",
                "XBOX",
            ],
        }

    # endregion static methods
