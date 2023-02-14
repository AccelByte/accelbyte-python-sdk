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

from ..models.order_summary import OrderSummary


class OriginEnum(StrEnum):
    EPIC = "Epic"
    GOOGLEPLAY = "GooglePlay"
    IOS = "IOS"
    NINTENDO = "Nintendo"
    OTHER = "Other"
    PLAYSTATION = "Playstation"
    STEAM = "Steam"
    SYSTEM = "System"
    TWITCH = "Twitch"
    XBOX = "Xbox"


class SourceEnum(StrEnum):
    ACHIEVEMENT = "ACHIEVEMENT"
    DLC = "DLC"
    GIFT = "GIFT"
    IAP = "IAP"
    OTHER = "OTHER"
    PROMOTION = "PROMOTION"
    PURCHASE = "PURCHASE"
    REDEEM_CODE = "REDEEM_CODE"
    REFERRAL_BONUS = "REFERRAL_BONUS"
    REWARD = "REWARD"


class FulfillmentRequest(Model):
    """A DTO object for fulfillment request API call. (FulfillmentRequest)

    Properties:
        quantity: (quantity) REQUIRED int

        duration: (duration) OPTIONAL int

        end_date: (endDate) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        language: (language) OPTIONAL str

        order: (order) OPTIONAL OrderSummary

        order_no: (orderNo) OPTIONAL str

        origin: (origin) OPTIONAL Union[str, OriginEnum]

        region: (region) OPTIONAL str

        source: (source) OPTIONAL Union[str, SourceEnum]

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    quantity: int  # REQUIRED
    duration: int  # OPTIONAL
    end_date: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_sku: str  # OPTIONAL
    language: str  # OPTIONAL
    order: OrderSummary  # OPTIONAL
    order_no: str  # OPTIONAL
    origin: Union[str, OriginEnum]  # OPTIONAL
    region: str  # OPTIONAL
    source: Union[str, SourceEnum]  # OPTIONAL
    start_date: str  # OPTIONAL
    store_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_quantity(self, value: int) -> FulfillmentRequest:
        self.quantity = value
        return self

    def with_duration(self, value: int) -> FulfillmentRequest:
        self.duration = value
        return self

    def with_end_date(self, value: str) -> FulfillmentRequest:
        self.end_date = value
        return self

    def with_item_id(self, value: str) -> FulfillmentRequest:
        self.item_id = value
        return self

    def with_item_sku(self, value: str) -> FulfillmentRequest:
        self.item_sku = value
        return self

    def with_language(self, value: str) -> FulfillmentRequest:
        self.language = value
        return self

    def with_order(self, value: OrderSummary) -> FulfillmentRequest:
        self.order = value
        return self

    def with_order_no(self, value: str) -> FulfillmentRequest:
        self.order_no = value
        return self

    def with_origin(self, value: Union[str, OriginEnum]) -> FulfillmentRequest:
        self.origin = value
        return self

    def with_region(self, value: str) -> FulfillmentRequest:
        self.region = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> FulfillmentRequest:
        self.source = value
        return self

    def with_start_date(self, value: str) -> FulfillmentRequest:
        self.start_date = value
        return self

    def with_store_id(self, value: str) -> FulfillmentRequest:
        self.store_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "duration"):
            result["duration"] = int(self.duration)
        elif include_empty:
            result["duration"] = 0
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "order"):
            result["order"] = self.order.to_dict(include_empty=include_empty)
        elif include_empty:
            result["order"] = OrderSummary()
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = ""
        if hasattr(self, "origin"):
            result["origin"] = str(self.origin)
        elif include_empty:
            result["origin"] = Union[str, OriginEnum]()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = ""
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        quantity: int,
        duration: Optional[int] = None,
        end_date: Optional[str] = None,
        item_id: Optional[str] = None,
        item_sku: Optional[str] = None,
        language: Optional[str] = None,
        order: Optional[OrderSummary] = None,
        order_no: Optional[str] = None,
        origin: Optional[Union[str, OriginEnum]] = None,
        region: Optional[str] = None,
        source: Optional[Union[str, SourceEnum]] = None,
        start_date: Optional[str] = None,
        store_id: Optional[str] = None,
    ) -> FulfillmentRequest:
        instance = cls()
        instance.quantity = quantity
        if duration is not None:
            instance.duration = duration
        if end_date is not None:
            instance.end_date = end_date
        if item_id is not None:
            instance.item_id = item_id
        if item_sku is not None:
            instance.item_sku = item_sku
        if language is not None:
            instance.language = language
        if order is not None:
            instance.order = order
        if order_no is not None:
            instance.order_no = order_no
        if origin is not None:
            instance.origin = origin
        if region is not None:
            instance.region = region
        if source is not None:
            instance.source = source
        if start_date is not None:
            instance.start_date = start_date
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "duration" in dict_ and dict_["duration"] is not None:
            instance.duration = int(dict_["duration"])
        elif include_empty:
            instance.duration = 0
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = OrderSummary.create_from_dict(
                dict_["order"], include_empty=include_empty
            )
        elif include_empty:
            instance.order = OrderSummary()
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = ""
        if "origin" in dict_ and dict_["origin"] is not None:
            instance.origin = str(dict_["origin"])
        elif include_empty:
            instance.origin = Union[str, OriginEnum]()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentRequest]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentRequest]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillmentRequest, List[FulfillmentRequest], Dict[Any, FulfillmentRequest]
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
            "quantity": "quantity",
            "duration": "duration",
            "endDate": "end_date",
            "itemId": "item_id",
            "itemSku": "item_sku",
            "language": "language",
            "order": "order",
            "orderNo": "order_no",
            "origin": "origin",
            "region": "region",
            "source": "source",
            "startDate": "start_date",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "quantity": True,
            "duration": False,
            "endDate": False,
            "itemId": False,
            "itemSku": False,
            "language": False,
            "order": False,
            "orderNo": False,
            "origin": False,
            "region": False,
            "source": False,
            "startDate": False,
            "storeId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "origin": [
                "Epic",
                "GooglePlay",
                "IOS",
                "Nintendo",
                "Other",
                "Playstation",
                "Steam",
                "System",
                "Twitch",
                "Xbox",
            ],
            "source": [
                "ACHIEVEMENT",
                "DLC",
                "GIFT",
                "IAP",
                "OTHER",
                "PROMOTION",
                "PURCHASE",
                "REDEEM_CODE",
                "REFERRAL_BONUS",
                "REWARD",
            ],
        }

    # endregion static methods
