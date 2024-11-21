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


class StatusEnum(StrEnum):
    FULFILLED = "FULFILLED"
    RECONNECTED = "RECONNECTED"
    REVOKED = "REVOKED"


class IAPOrderConsumeDetailInfo(Model):
    """IAP order consume detail info (IAPOrderConsumeDetailInfo)

    Properties:
        correlation_id: (correlationId) OPTIONAL str

        iap_order_no: (iapOrderNo) OPTIONAL str

        id_: (id) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        line_item_order_id: (lineItemOrderId) OPTIONAL str

        namespace: (namespace) OPTIONAL str

        order_id: (orderId) OPTIONAL str

        platform: (platform) OPTIONAL str

        product_id: (productId) OPTIONAL str

        quantity_consumed: (quantityConsumed) OPTIONAL int

        quantity_revoked: (quantityRevoked) OPTIONAL int

        status: (status) OPTIONAL Union[str, StatusEnum]

        user_id: (userId) OPTIONAL str
    """

    # region fields

    correlation_id: str  # OPTIONAL
    iap_order_no: str  # OPTIONAL
    id_: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_sku: str  # OPTIONAL
    line_item_order_id: str  # OPTIONAL
    namespace: str  # OPTIONAL
    order_id: str  # OPTIONAL
    platform: str  # OPTIONAL
    product_id: str  # OPTIONAL
    quantity_consumed: int  # OPTIONAL
    quantity_revoked: int  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    user_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_correlation_id(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.correlation_id = value
        return self

    def with_iap_order_no(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.iap_order_no = value
        return self

    def with_id(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.id_ = value
        return self

    def with_item_id(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.item_id = value
        return self

    def with_item_sku(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.item_sku = value
        return self

    def with_line_item_order_id(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.line_item_order_id = value
        return self

    def with_namespace(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.namespace = value
        return self

    def with_order_id(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.order_id = value
        return self

    def with_platform(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.platform = value
        return self

    def with_product_id(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.product_id = value
        return self

    def with_quantity_consumed(self, value: int) -> IAPOrderConsumeDetailInfo:
        self.quantity_consumed = value
        return self

    def with_quantity_revoked(self, value: int) -> IAPOrderConsumeDetailInfo:
        self.quantity_revoked = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> IAPOrderConsumeDetailInfo:
        self.status = value
        return self

    def with_user_id(self, value: str) -> IAPOrderConsumeDetailInfo:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "correlation_id"):
            result["correlationId"] = str(self.correlation_id)
        elif include_empty:
            result["correlationId"] = ""
        if hasattr(self, "iap_order_no"):
            result["iapOrderNo"] = str(self.iap_order_no)
        elif include_empty:
            result["iapOrderNo"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "line_item_order_id"):
            result["lineItemOrderId"] = str(self.line_item_order_id)
        elif include_empty:
            result["lineItemOrderId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "order_id"):
            result["orderId"] = str(self.order_id)
        elif include_empty:
            result["orderId"] = ""
        if hasattr(self, "platform"):
            result["platform"] = str(self.platform)
        elif include_empty:
            result["platform"] = ""
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = ""
        if hasattr(self, "quantity_consumed"):
            result["quantityConsumed"] = int(self.quantity_consumed)
        elif include_empty:
            result["quantityConsumed"] = 0
        if hasattr(self, "quantity_revoked"):
            result["quantityRevoked"] = int(self.quantity_revoked)
        elif include_empty:
            result["quantityRevoked"] = 0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "user_id"):
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        correlation_id: Optional[str] = None,
        iap_order_no: Optional[str] = None,
        id_: Optional[str] = None,
        item_id: Optional[str] = None,
        item_sku: Optional[str] = None,
        line_item_order_id: Optional[str] = None,
        namespace: Optional[str] = None,
        order_id: Optional[str] = None,
        platform: Optional[str] = None,
        product_id: Optional[str] = None,
        quantity_consumed: Optional[int] = None,
        quantity_revoked: Optional[int] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> IAPOrderConsumeDetailInfo:
        instance = cls()
        if correlation_id is not None:
            instance.correlation_id = correlation_id
        if iap_order_no is not None:
            instance.iap_order_no = iap_order_no
        if id_ is not None:
            instance.id_ = id_
        if item_id is not None:
            instance.item_id = item_id
        if item_sku is not None:
            instance.item_sku = item_sku
        if line_item_order_id is not None:
            instance.line_item_order_id = line_item_order_id
        if namespace is not None:
            instance.namespace = namespace
        if order_id is not None:
            instance.order_id = order_id
        if platform is not None:
            instance.platform = platform
        if product_id is not None:
            instance.product_id = product_id
        if quantity_consumed is not None:
            instance.quantity_consumed = quantity_consumed
        if quantity_revoked is not None:
            instance.quantity_revoked = quantity_revoked
        if status is not None:
            instance.status = status
        if user_id is not None:
            instance.user_id = user_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> IAPOrderConsumeDetailInfo:
        instance = cls()
        if not dict_:
            return instance
        if "correlationId" in dict_ and dict_["correlationId"] is not None:
            instance.correlation_id = str(dict_["correlationId"])
        elif include_empty:
            instance.correlation_id = ""
        if "iapOrderNo" in dict_ and dict_["iapOrderNo"] is not None:
            instance.iap_order_no = str(dict_["iapOrderNo"])
        elif include_empty:
            instance.iap_order_no = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "lineItemOrderId" in dict_ and dict_["lineItemOrderId"] is not None:
            instance.line_item_order_id = str(dict_["lineItemOrderId"])
        elif include_empty:
            instance.line_item_order_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "orderId" in dict_ and dict_["orderId"] is not None:
            instance.order_id = str(dict_["orderId"])
        elif include_empty:
            instance.order_id = ""
        if "platform" in dict_ and dict_["platform"] is not None:
            instance.platform = str(dict_["platform"])
        elif include_empty:
            instance.platform = ""
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = ""
        if "quantityConsumed" in dict_ and dict_["quantityConsumed"] is not None:
            instance.quantity_consumed = int(dict_["quantityConsumed"])
        elif include_empty:
            instance.quantity_consumed = 0
        if "quantityRevoked" in dict_ and dict_["quantityRevoked"] is not None:
            instance.quantity_revoked = int(dict_["quantityRevoked"])
        elif include_empty:
            instance.quantity_revoked = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, IAPOrderConsumeDetailInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[IAPOrderConsumeDetailInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        IAPOrderConsumeDetailInfo,
        List[IAPOrderConsumeDetailInfo],
        Dict[Any, IAPOrderConsumeDetailInfo],
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
            "correlationId": "correlation_id",
            "iapOrderNo": "iap_order_no",
            "id": "id_",
            "itemId": "item_id",
            "itemSku": "item_sku",
            "lineItemOrderId": "line_item_order_id",
            "namespace": "namespace",
            "orderId": "order_id",
            "platform": "platform",
            "productId": "product_id",
            "quantityConsumed": "quantity_consumed",
            "quantityRevoked": "quantity_revoked",
            "status": "status",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "correlationId": False,
            "iapOrderNo": False,
            "id": False,
            "itemId": False,
            "itemSku": False,
            "lineItemOrderId": False,
            "namespace": False,
            "orderId": False,
            "platform": False,
            "productId": False,
            "quantityConsumed": False,
            "quantityRevoked": False,
            "status": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FULFILLED", "RECONNECTED", "REVOKED"],
        }

    # endregion static methods
