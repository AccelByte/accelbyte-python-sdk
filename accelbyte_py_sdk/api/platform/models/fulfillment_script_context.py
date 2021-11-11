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

from ..models.item_info import ItemInfo
from ..models.order_summary import OrderSummary


class FulfillmentScriptContext(Model):
    """Fulfillment script context (FulfillmentScriptContext)

    Properties:
        item: (item) REQUIRED ItemInfo

        namespace: (namespace) REQUIRED str

        source: (source) REQUIRED str

        order: (order) OPTIONAL OrderSummary
    """

    # region fields

    item: ItemInfo                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    source: str                                                                                    # REQUIRED
    order: OrderSummary                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item(self, value: ItemInfo) -> FulfillmentScriptContext:
        self.item = value
        return self

    def with_namespace(self, value: str) -> FulfillmentScriptContext:
        self.namespace = value
        return self

    def with_source(self, value: str) -> FulfillmentScriptContext:
        self.source = value
        return self

    def with_order(self, value: OrderSummary) -> FulfillmentScriptContext:
        self.order = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item"):
            result["item"] = self.item.to_dict(include_empty=include_empty)
        elif include_empty:
            result["item"] = ItemInfo()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = str()
        if hasattr(self, "order"):
            result["order"] = self.order.to_dict(include_empty=include_empty)
        elif include_empty:
            result["order"] = OrderSummary()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item: ItemInfo,
        namespace: str,
        source: str,
        order: Optional[OrderSummary] = None,
    ) -> FulfillmentScriptContext:
        instance = cls()
        instance.item = item
        instance.namespace = namespace
        instance.source = source
        if order is not None:
            instance.order = order
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FulfillmentScriptContext:
        instance = cls()
        if not dict_:
            return instance
        if "item" in dict_ and dict_["item"] is not None:
            instance.item = ItemInfo.create_from_dict(dict_["item"], include_empty=include_empty)
        elif include_empty:
            instance.item = ItemInfo()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = str()
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = OrderSummary.create_from_dict(dict_["order"], include_empty=include_empty)
        elif include_empty:
            instance.order = OrderSummary()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "item": "item",
            "namespace": "namespace",
            "source": "source",
            "order": "order",
        }

    # endregion static methods
