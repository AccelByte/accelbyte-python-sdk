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
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model
from ....core import StrEnum

from ..models.fulfillment_v2_result import FulfillmentV2Result
from ..models.revoke_fulfillment_v2_result import RevokeFulfillmentV2Result


class ItemIdentityTypeEnum(StrEnum):
    ITEM_ID = "ITEM_ID"
    ITEM_SKU = "ITEM_SKU"


class PlatformEnum(StrEnum):
    STEAM = "STEAM"


class StatusEnum(StrEnum):
    FULFILLED = "FULFILLED"
    VERIFIED = "VERIFIED"


class IAPOrderLineItemInfo(Model):
    """IAP order line item info (IAPOrderLineItemInfo)

    Properties:
        amount: (amount) OPTIONAL int

        iap_order_no: (iapOrderNo) OPTIONAL str

        id_: (id) OPTIONAL str

        item_identity: (itemIdentity) OPTIONAL str

        item_identity_type: (itemIdentityType) OPTIONAL Union[str, ItemIdentityTypeEnum]

        last_fulfillment_v2_result: (lastFulfillmentV2Result) OPTIONAL FulfillmentV2Result

        last_revoke_fulfillment_v2_result: (lastRevokeFulfillmentV2Result) OPTIONAL RevokeFulfillmentV2Result

        line_item_id: (lineItemId) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        platform: (platform) OPTIONAL Union[str, PlatformEnum]

        qty: (qty) OPTIONAL int

        sandbox: (sandbox) OPTIONAL bool

        status: (status) OPTIONAL Union[str, StatusEnum]

        status_reason: (statusReason) OPTIONAL str

        third_party_item_id: (thirdPartyItemId) OPTIONAL str

        third_party_order_id: (thirdPartyOrderId) OPTIONAL str

        user_id: (userId) OPTIONAL str

        vat: (vat) OPTIONAL int
    """

    # region fields

    amount: int  # OPTIONAL
    iap_order_no: str  # OPTIONAL
    id_: str  # OPTIONAL
    item_identity: str  # OPTIONAL
    item_identity_type: Union[str, ItemIdentityTypeEnum]  # OPTIONAL
    last_fulfillment_v2_result: FulfillmentV2Result  # OPTIONAL
    last_revoke_fulfillment_v2_result: RevokeFulfillmentV2Result  # OPTIONAL
    line_item_id: str  # OPTIONAL
    namespace: str  # OPTIONAL
    platform: Union[str, PlatformEnum]  # OPTIONAL
    qty: int  # OPTIONAL
    sandbox: bool  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    status_reason: str  # OPTIONAL
    third_party_item_id: str  # OPTIONAL
    third_party_order_id: str  # OPTIONAL
    user_id: str  # OPTIONAL
    vat: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_amount(self, value: int) -> IAPOrderLineItemInfo:
        self.amount = value
        return self

    def with_iap_order_no(self, value: str) -> IAPOrderLineItemInfo:
        self.iap_order_no = value
        return self

    def with_id(self, value: str) -> IAPOrderLineItemInfo:
        self.id_ = value
        return self

    def with_item_identity(self, value: str) -> IAPOrderLineItemInfo:
        self.item_identity = value
        return self

    def with_item_identity_type(
        self, value: Union[str, ItemIdentityTypeEnum]
    ) -> IAPOrderLineItemInfo:
        self.item_identity_type = value
        return self

    def with_last_fulfillment_v2_result(
        self, value: FulfillmentV2Result
    ) -> IAPOrderLineItemInfo:
        self.last_fulfillment_v2_result = value
        return self

    def with_last_revoke_fulfillment_v2_result(
        self, value: RevokeFulfillmentV2Result
    ) -> IAPOrderLineItemInfo:
        self.last_revoke_fulfillment_v2_result = value
        return self

    def with_line_item_id(self, value: str) -> IAPOrderLineItemInfo:
        self.line_item_id = value
        return self

    def with_namespace(self, value: str) -> IAPOrderLineItemInfo:
        self.namespace = value
        return self

    def with_platform(self, value: Union[str, PlatformEnum]) -> IAPOrderLineItemInfo:
        self.platform = value
        return self

    def with_qty(self, value: int) -> IAPOrderLineItemInfo:
        self.qty = value
        return self

    def with_sandbox(self, value: bool) -> IAPOrderLineItemInfo:
        self.sandbox = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> IAPOrderLineItemInfo:
        self.status = value
        return self

    def with_status_reason(self, value: str) -> IAPOrderLineItemInfo:
        self.status_reason = value
        return self

    def with_third_party_item_id(self, value: str) -> IAPOrderLineItemInfo:
        self.third_party_item_id = value
        return self

    def with_third_party_order_id(self, value: str) -> IAPOrderLineItemInfo:
        self.third_party_order_id = value
        return self

    def with_user_id(self, value: str) -> IAPOrderLineItemInfo:
        self.user_id = value
        return self

    def with_vat(self, value: int) -> IAPOrderLineItemInfo:
        self.vat = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "amount"):
            result["amount"] = int(self.amount)
        elif include_empty:
            result["amount"] = 0
        if hasattr(self, "iap_order_no"):
            result["iapOrderNo"] = str(self.iap_order_no)
        elif include_empty:
            result["iapOrderNo"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "item_identity"):
            result["itemIdentity"] = str(self.item_identity)
        elif include_empty:
            result["itemIdentity"] = ""
        if hasattr(self, "item_identity_type"):
            result["itemIdentityType"] = str(self.item_identity_type)
        elif include_empty:
            result["itemIdentityType"] = Union[str, ItemIdentityTypeEnum]()
        if hasattr(self, "last_fulfillment_v2_result"):
            result["lastFulfillmentV2Result"] = self.last_fulfillment_v2_result.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["lastFulfillmentV2Result"] = FulfillmentV2Result()
        if hasattr(self, "last_revoke_fulfillment_v2_result"):
            result[
                "lastRevokeFulfillmentV2Result"
            ] = self.last_revoke_fulfillment_v2_result.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["lastRevokeFulfillmentV2Result"] = RevokeFulfillmentV2Result()
        if hasattr(self, "line_item_id"):
            result["lineItemId"] = str(self.line_item_id)
        elif include_empty:
            result["lineItemId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = Union[str, PlatformEnum]()
        if hasattr(self, "qty"):
            result["qty"] = int(self.qty)
        elif include_empty:
            result["qty"] = 0
        if hasattr(self, "sandbox"):
            result["sandbox"] = bool(self.sandbox)
        elif include_empty:
            result["sandbox"] = False
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "status_reason"):
            result["statusReason"] = str(self.status_reason)
        elif include_empty:
            result["statusReason"] = ""
        if hasattr(self, "third_party_item_id"):
            result["thirdPartyItemId"] = str(self.third_party_item_id)
        elif include_empty:
            result["thirdPartyItemId"] = ""
        if hasattr(self, "third_party_order_id"):
            result["thirdPartyOrderId"] = str(self.third_party_order_id)
        elif include_empty:
            result["thirdPartyOrderId"] = ""
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "vat"):
            result["vat"] = int(self.vat)
        elif include_empty:
            result["vat"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        amount: Optional[int] = None,
        iap_order_no: Optional[str] = None,
        id_: Optional[str] = None,
        item_identity: Optional[str] = None,
        item_identity_type: Optional[Union[str, ItemIdentityTypeEnum]] = None,
        last_fulfillment_v2_result: Optional[FulfillmentV2Result] = None,
        last_revoke_fulfillment_v2_result: Optional[RevokeFulfillmentV2Result] = None,
        line_item_id: Optional[str] = None,
        namespace: Optional[str] = None,
        platform: Optional[Union[str, PlatformEnum]] = None,
        qty: Optional[int] = None,
        sandbox: Optional[bool] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        status_reason: Optional[str] = None,
        third_party_item_id: Optional[str] = None,
        third_party_order_id: Optional[str] = None,
        user_id: Optional[str] = None,
        vat: Optional[int] = None,
        **kwargs,
    ) -> IAPOrderLineItemInfo:
        instance = cls()
        if amount is not None:
            instance.amount = amount
        if iap_order_no is not None:
            instance.iap_order_no = iap_order_no
        if id_ is not None:
            instance.id_ = id_
        if item_identity is not None:
            instance.item_identity = item_identity
        if item_identity_type is not None:
            instance.item_identity_type = item_identity_type
        if last_fulfillment_v2_result is not None:
            instance.last_fulfillment_v2_result = last_fulfillment_v2_result
        if last_revoke_fulfillment_v2_result is not None:
            instance.last_revoke_fulfillment_v2_result = (
                last_revoke_fulfillment_v2_result
            )
        if line_item_id is not None:
            instance.line_item_id = line_item_id
        if namespace is not None:
            instance.namespace = namespace
        if platform is not None:
            instance.platform = platform
        if qty is not None:
            instance.qty = qty
        if sandbox is not None:
            instance.sandbox = sandbox
        if status is not None:
            instance.status = status
        if status_reason is not None:
            instance.status_reason = status_reason
        if third_party_item_id is not None:
            instance.third_party_item_id = third_party_item_id
        if third_party_order_id is not None:
            instance.third_party_order_id = third_party_order_id
        if user_id is not None:
            instance.user_id = user_id
        if vat is not None:
            instance.vat = vat
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> IAPOrderLineItemInfo:
        instance = cls()
        if not dict_:
            return instance
        if "amount" in dict_ and dict_["amount"] is not None:
            instance.amount = int(dict_["amount"])
        elif include_empty:
            instance.amount = 0
        if "iapOrderNo" in dict_ and dict_["iapOrderNo"] is not None:
            instance.iap_order_no = str(dict_["iapOrderNo"])
        elif include_empty:
            instance.iap_order_no = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "itemIdentity" in dict_ and dict_["itemIdentity"] is not None:
            instance.item_identity = str(dict_["itemIdentity"])
        elif include_empty:
            instance.item_identity = ""
        if "itemIdentityType" in dict_ and dict_["itemIdentityType"] is not None:
            instance.item_identity_type = str(dict_["itemIdentityType"])
        elif include_empty:
            instance.item_identity_type = Union[str, ItemIdentityTypeEnum]()
        if (
            "lastFulfillmentV2Result" in dict_
            and dict_["lastFulfillmentV2Result"] is not None
        ):
            instance.last_fulfillment_v2_result = FulfillmentV2Result.create_from_dict(
                dict_["lastFulfillmentV2Result"], include_empty=include_empty
            )
        elif include_empty:
            instance.last_fulfillment_v2_result = FulfillmentV2Result()
        if (
            "lastRevokeFulfillmentV2Result" in dict_
            and dict_["lastRevokeFulfillmentV2Result"] is not None
        ):
            instance.last_revoke_fulfillment_v2_result = (
                RevokeFulfillmentV2Result.create_from_dict(
                    dict_["lastRevokeFulfillmentV2Result"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.last_revoke_fulfillment_v2_result = RevokeFulfillmentV2Result()
        if "lineItemId" in dict_ and dict_["lineItemId"] is not None:
            instance.line_item_id = str(dict_["lineItemId"])
        elif include_empty:
            instance.line_item_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = Union[str, PlatformEnum]()
        if "qty" in dict_ and dict_["qty"] is not None:
            instance.qty = int(dict_["qty"])
        elif include_empty:
            instance.qty = 0
        if "sandbox" in dict_ and dict_["sandbox"] is not None:
            instance.sandbox = bool(dict_["sandbox"])
        elif include_empty:
            instance.sandbox = False
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "statusReason" in dict_ and dict_["statusReason"] is not None:
            instance.status_reason = str(dict_["statusReason"])
        elif include_empty:
            instance.status_reason = ""
        if "thirdPartyItemId" in dict_ and dict_["thirdPartyItemId"] is not None:
            instance.third_party_item_id = str(dict_["thirdPartyItemId"])
        elif include_empty:
            instance.third_party_item_id = ""
        if "thirdPartyOrderId" in dict_ and dict_["thirdPartyOrderId"] is not None:
            instance.third_party_order_id = str(dict_["thirdPartyOrderId"])
        elif include_empty:
            instance.third_party_order_id = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "vat" in dict_ and dict_["vat"] is not None:
            instance.vat = int(dict_["vat"])
        elif include_empty:
            instance.vat = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, IAPOrderLineItemInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[IAPOrderLineItemInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        IAPOrderLineItemInfo,
        List[IAPOrderLineItemInfo],
        Dict[Any, IAPOrderLineItemInfo],
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
            "amount": "amount",
            "iapOrderNo": "iap_order_no",
            "id": "id_",
            "itemIdentity": "item_identity",
            "itemIdentityType": "item_identity_type",
            "lastFulfillmentV2Result": "last_fulfillment_v2_result",
            "lastRevokeFulfillmentV2Result": "last_revoke_fulfillment_v2_result",
            "lineItemId": "line_item_id",
            "namespace": "namespace",
            "platform": "platform",
            "qty": "qty",
            "sandbox": "sandbox",
            "status": "status",
            "statusReason": "status_reason",
            "thirdPartyItemId": "third_party_item_id",
            "thirdPartyOrderId": "third_party_order_id",
            "userId": "user_id",
            "vat": "vat",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "amount": False,
            "iapOrderNo": False,
            "id": False,
            "itemIdentity": False,
            "itemIdentityType": False,
            "lastFulfillmentV2Result": False,
            "lastRevokeFulfillmentV2Result": False,
            "lineItemId": False,
            "namespace": False,
            "platform": False,
            "qty": False,
            "sandbox": False,
            "status": False,
            "statusReason": False,
            "thirdPartyItemId": False,
            "thirdPartyOrderId": False,
            "userId": False,
            "vat": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemIdentityType": ["ITEM_ID", "ITEM_SKU"],
            "platform": ["STEAM"],
            "status": ["FULFILLED", "VERIFIED"],
        }

    # endregion static methods
