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


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class FulfillmentItem(Model):
    """Fulfillment item (FulfillmentItem)

    Properties:
        quantity: (quantity) REQUIRED int

        extra_subscription_days: (extraSubscriptionDays) OPTIONAL int

        item_id: (itemId) OPTIONAL str

        item_name: (itemName) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum]

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    quantity: int  # REQUIRED
    extra_subscription_days: int  # OPTIONAL
    item_id: str  # OPTIONAL
    item_name: str  # OPTIONAL
    item_sku: str  # OPTIONAL
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL
    store_id: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_quantity(self, value: int) -> FulfillmentItem:
        self.quantity = value
        return self

    def with_extra_subscription_days(self, value: int) -> FulfillmentItem:
        self.extra_subscription_days = value
        return self

    def with_item_id(self, value: str) -> FulfillmentItem:
        self.item_id = value
        return self

    def with_item_name(self, value: str) -> FulfillmentItem:
        self.item_name = value
        return self

    def with_item_sku(self, value: str) -> FulfillmentItem:
        self.item_sku = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> FulfillmentItem:
        self.item_type = value
        return self

    def with_store_id(self, value: str) -> FulfillmentItem:
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
        if hasattr(self, "extra_subscription_days"):
            result["extraSubscriptionDays"] = int(self.extra_subscription_days)
        elif include_empty:
            result["extraSubscriptionDays"] = 0
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_name"):
            result["itemName"] = str(self.item_name)
        elif include_empty:
            result["itemName"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
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
        extra_subscription_days: Optional[int] = None,
        item_id: Optional[str] = None,
        item_name: Optional[str] = None,
        item_sku: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        store_id: Optional[str] = None,
    ) -> FulfillmentItem:
        instance = cls()
        instance.quantity = quantity
        if extra_subscription_days is not None:
            instance.extra_subscription_days = extra_subscription_days
        if item_id is not None:
            instance.item_id = item_id
        if item_name is not None:
            instance.item_name = item_name
        if item_sku is not None:
            instance.item_sku = item_sku
        if item_type is not None:
            instance.item_type = item_type
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillmentItem:
        instance = cls()
        if not dict_:
            return instance
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if (
            "extraSubscriptionDays" in dict_
            and dict_["extraSubscriptionDays"] is not None
        ):
            instance.extra_subscription_days = int(dict_["extraSubscriptionDays"])
        elif include_empty:
            instance.extra_subscription_days = 0
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemName" in dict_ and dict_["itemName"] is not None:
            instance.item_name = str(dict_["itemName"])
        elif include_empty:
            instance.item_name = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillmentItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillmentItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[FulfillmentItem, List[FulfillmentItem], Dict[Any, FulfillmentItem]]:
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
            "extraSubscriptionDays": "extra_subscription_days",
            "itemId": "item_id",
            "itemName": "item_name",
            "itemSku": "item_sku",
            "itemType": "item_type",
            "storeId": "store_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "quantity": True,
            "extraSubscriptionDays": False,
            "itemId": False,
            "itemName": False,
            "itemSku": False,
            "itemType": False,
            "storeId": False,
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
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],
        }

    # endregion static methods
