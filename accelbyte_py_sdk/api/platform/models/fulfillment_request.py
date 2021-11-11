# justice-platform-service (3.34.0)

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


class FulfillmentRequest(Model):
    """A DTO object for fulfillment request API call. (FulfillmentRequest)

    Properties:
        quantity: (quantity) REQUIRED int

        end_date: (endDate) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        language: (language) OPTIONAL str

        order_no: (orderNo) OPTIONAL str

        region: (region) OPTIONAL str

        source: (source) OPTIONAL str

        start_date: (startDate) OPTIONAL str

        store_id: (storeId) OPTIONAL str
    """

    # region fields

    quantity: int                                                                                  # REQUIRED
    end_date: str                                                                                  # OPTIONAL
    item_id: str                                                                                   # OPTIONAL
    item_sku: str                                                                                  # OPTIONAL
    language: str                                                                                  # OPTIONAL
    order_no: str                                                                                  # OPTIONAL
    region: str                                                                                    # OPTIONAL
    source: str                                                                                    # OPTIONAL
    start_date: str                                                                                # OPTIONAL
    store_id: str                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_quantity(self, value: int) -> FulfillmentRequest:
        self.quantity = value
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

    def with_order_no(self, value: str) -> FulfillmentRequest:
        self.order_no = value
        return self

    def with_region(self, value: str) -> FulfillmentRequest:
        self.region = value
        return self

    def with_source(self, value: str) -> FulfillmentRequest:
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
            result["quantity"] = int()
        if hasattr(self, "end_date"):
            result["endDate"] = str(self.end_date)
        elif include_empty:
            result["endDate"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "order_no"):
            result["orderNo"] = str(self.order_no)
        elif include_empty:
            result["orderNo"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        if hasattr(self, "start_date"):
            result["startDate"] = str(self.start_date)
        elif include_empty:
            result["startDate"] = str()
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        quantity: int,
        store_id: Optional[str] = None,
        item_id: Optional[str] = None,
        item_sku: Optional[str] = None,
        order_no: Optional[str] = None,
        source: Optional[str] = None,
        start_date: Optional[str] = None,
        end_date: Optional[str] = None,
        region: Optional[str] = None,
        language: Optional[str] = None,
    ) -> FulfillmentRequest:
        instance = cls()
        instance.quantity = quantity
        if store_id is not None:
            instance.store_id = store_id
        if item_id is not None:
            instance.item_id = item_id
        if item_sku is not None:
            instance.item_sku = item_sku
        if order_no is not None:
            instance.order_no = order_no
        if source is not None:
            instance.source = source
        if start_date is not None:
            instance.start_date = start_date
        if end_date is not None:
            instance.end_date = end_date
        if region is not None:
            instance.region = region
        if language is not None:
            instance.language = language
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FulfillmentRequest:
        instance = cls()
        if not dict_:
            return instance
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "endDate" in dict_ and dict_["endDate"] is not None:
            instance.end_date = str(dict_["endDate"])
        elif include_empty:
            instance.end_date = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "orderNo" in dict_ and dict_["orderNo"] is not None:
            instance.order_no = str(dict_["orderNo"])
        elif include_empty:
            instance.order_no = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "startDate" in dict_ and dict_["startDate"] is not None:
            instance.start_date = str(dict_["startDate"])
        elif include_empty:
            instance.start_date = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "quantity": "quantity",
            "endDate": "end_date",
            "itemId": "item_id",
            "itemSku": "item_sku",
            "language": "language",
            "orderNo": "order_no",
            "region": "region",
            "source": "source",
            "startDate": "start_date",
            "storeId": "store_id",
        }

    # endregion static methods
