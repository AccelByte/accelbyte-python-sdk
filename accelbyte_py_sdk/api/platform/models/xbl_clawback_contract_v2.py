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

from ..models.xbl_clawback_event_subscription_data import (
    XblClawbackEventSubscriptionData,
)


class XblClawbackContractV2(Model):
    """Xbl clawback contract V2 (XblClawbackContractV2)

    Properties:
        event_state: (eventState) REQUIRED str

        line_item_id: (lineItemId) REQUIRED str

        order_id: (orderId) REQUIRED str

        product_id: (productId) REQUIRED str

        event_date: (eventDate) OPTIONAL str

        product_type: (productType) OPTIONAL str

        purchased_date: (purchasedDate) OPTIONAL str

        sandbox_id: (sandboxId) OPTIONAL str

        sku_id: (skuId) OPTIONAL str

        subscription_data: (subscriptionData) OPTIONAL XblClawbackEventSubscriptionData
    """

    # region fields

    event_state: str  # REQUIRED
    line_item_id: str  # REQUIRED
    order_id: str  # REQUIRED
    product_id: str  # REQUIRED
    event_date: str  # OPTIONAL
    product_type: str  # OPTIONAL
    purchased_date: str  # OPTIONAL
    sandbox_id: str  # OPTIONAL
    sku_id: str  # OPTIONAL
    subscription_data: XblClawbackEventSubscriptionData  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_event_state(self, value: str) -> XblClawbackContractV2:
        self.event_state = value
        return self

    def with_line_item_id(self, value: str) -> XblClawbackContractV2:
        self.line_item_id = value
        return self

    def with_order_id(self, value: str) -> XblClawbackContractV2:
        self.order_id = value
        return self

    def with_product_id(self, value: str) -> XblClawbackContractV2:
        self.product_id = value
        return self

    def with_event_date(self, value: str) -> XblClawbackContractV2:
        self.event_date = value
        return self

    def with_product_type(self, value: str) -> XblClawbackContractV2:
        self.product_type = value
        return self

    def with_purchased_date(self, value: str) -> XblClawbackContractV2:
        self.purchased_date = value
        return self

    def with_sandbox_id(self, value: str) -> XblClawbackContractV2:
        self.sandbox_id = value
        return self

    def with_sku_id(self, value: str) -> XblClawbackContractV2:
        self.sku_id = value
        return self

    def with_subscription_data(
        self, value: XblClawbackEventSubscriptionData
    ) -> XblClawbackContractV2:
        self.subscription_data = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "event_state"):
            result["eventState"] = str(self.event_state)
        elif include_empty:
            result["eventState"] = ""
        if hasattr(self, "line_item_id"):
            result["lineItemId"] = str(self.line_item_id)
        elif include_empty:
            result["lineItemId"] = ""
        if hasattr(self, "order_id"):
            result["orderId"] = str(self.order_id)
        elif include_empty:
            result["orderId"] = ""
        if hasattr(self, "product_id"):
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = ""
        if hasattr(self, "event_date"):
            result["eventDate"] = str(self.event_date)
        elif include_empty:
            result["eventDate"] = ""
        if hasattr(self, "product_type"):
            result["productType"] = str(self.product_type)
        elif include_empty:
            result["productType"] = ""
        if hasattr(self, "purchased_date"):
            result["purchasedDate"] = str(self.purchased_date)
        elif include_empty:
            result["purchasedDate"] = ""
        if hasattr(self, "sandbox_id"):
            result["sandboxId"] = str(self.sandbox_id)
        elif include_empty:
            result["sandboxId"] = ""
        if hasattr(self, "sku_id"):
            result["skuId"] = str(self.sku_id)
        elif include_empty:
            result["skuId"] = ""
        if hasattr(self, "subscription_data"):
            result["subscriptionData"] = self.subscription_data.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["subscriptionData"] = XblClawbackEventSubscriptionData()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        event_state: str,
        line_item_id: str,
        order_id: str,
        product_id: str,
        event_date: Optional[str] = None,
        product_type: Optional[str] = None,
        purchased_date: Optional[str] = None,
        sandbox_id: Optional[str] = None,
        sku_id: Optional[str] = None,
        subscription_data: Optional[XblClawbackEventSubscriptionData] = None,
        **kwargs,
    ) -> XblClawbackContractV2:
        instance = cls()
        instance.event_state = event_state
        instance.line_item_id = line_item_id
        instance.order_id = order_id
        instance.product_id = product_id
        if event_date is not None:
            instance.event_date = event_date
        if product_type is not None:
            instance.product_type = product_type
        if purchased_date is not None:
            instance.purchased_date = purchased_date
        if sandbox_id is not None:
            instance.sandbox_id = sandbox_id
        if sku_id is not None:
            instance.sku_id = sku_id
        if subscription_data is not None:
            instance.subscription_data = subscription_data
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> XblClawbackContractV2:
        instance = cls()
        if not dict_:
            return instance
        if "eventState" in dict_ and dict_["eventState"] is not None:
            instance.event_state = str(dict_["eventState"])
        elif include_empty:
            instance.event_state = ""
        if "lineItemId" in dict_ and dict_["lineItemId"] is not None:
            instance.line_item_id = str(dict_["lineItemId"])
        elif include_empty:
            instance.line_item_id = ""
        if "orderId" in dict_ and dict_["orderId"] is not None:
            instance.order_id = str(dict_["orderId"])
        elif include_empty:
            instance.order_id = ""
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = ""
        if "eventDate" in dict_ and dict_["eventDate"] is not None:
            instance.event_date = str(dict_["eventDate"])
        elif include_empty:
            instance.event_date = ""
        if "productType" in dict_ and dict_["productType"] is not None:
            instance.product_type = str(dict_["productType"])
        elif include_empty:
            instance.product_type = ""
        if "purchasedDate" in dict_ and dict_["purchasedDate"] is not None:
            instance.purchased_date = str(dict_["purchasedDate"])
        elif include_empty:
            instance.purchased_date = ""
        if "sandboxId" in dict_ and dict_["sandboxId"] is not None:
            instance.sandbox_id = str(dict_["sandboxId"])
        elif include_empty:
            instance.sandbox_id = ""
        if "skuId" in dict_ and dict_["skuId"] is not None:
            instance.sku_id = str(dict_["skuId"])
        elif include_empty:
            instance.sku_id = ""
        if "subscriptionData" in dict_ and dict_["subscriptionData"] is not None:
            instance.subscription_data = (
                XblClawbackEventSubscriptionData.create_from_dict(
                    dict_["subscriptionData"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.subscription_data = XblClawbackEventSubscriptionData()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, XblClawbackContractV2]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[XblClawbackContractV2]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        XblClawbackContractV2,
        List[XblClawbackContractV2],
        Dict[Any, XblClawbackContractV2],
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
            "eventState": "event_state",
            "lineItemId": "line_item_id",
            "orderId": "order_id",
            "productId": "product_id",
            "eventDate": "event_date",
            "productType": "product_type",
            "purchasedDate": "purchased_date",
            "sandboxId": "sandbox_id",
            "skuId": "sku_id",
            "subscriptionData": "subscription_data",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "eventState": True,
            "lineItemId": True,
            "orderId": True,
            "productId": True,
            "eventDate": False,
            "productType": False,
            "purchasedDate": False,
            "sandboxId": False,
            "skuId": False,
            "subscriptionData": False,
        }

    # endregion static methods
