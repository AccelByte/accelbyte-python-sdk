# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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

from ..models.item_info import ItemInfo
from ..models.order_summary import OrderSummary


class SourceEnum(StrEnum):
    PURCHASE = "PURCHASE"
    IAP = "IAP"
    PROMOTION = "PROMOTION"
    ACHIEVEMENT = "ACHIEVEMENT"
    REFERRAL_BONUS = "REFERRAL_BONUS"
    REDEEM_CODE = "REDEEM_CODE"
    REWARD = "REWARD"
    GIFT = "GIFT"
    DLC = "DLC"
    OTHER = "OTHER"


class FulfillmentScriptContext(Model):
    """Fulfillment script context (FulfillmentScriptContext)

    Properties:
        item: (item) REQUIRED ItemInfo

        namespace: (namespace) REQUIRED str

        source: (source) REQUIRED Union[str, SourceEnum]

        order: (order) OPTIONAL OrderSummary
    """

    # region fields

    item: ItemInfo                                                                                 # REQUIRED
    namespace: str                                                                                 # REQUIRED
    source: Union[str, SourceEnum]                                                                 # REQUIRED
    order: OrderSummary                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item(self, value: ItemInfo) -> FulfillmentScriptContext:
        self.item = value
        return self

    def with_namespace(self, value: str) -> FulfillmentScriptContext:
        self.namespace = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> FulfillmentScriptContext:
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
            result["source"] = Union[str, SourceEnum]()
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
        source: Union[str, SourceEnum],
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
            instance.source = Union[str, SourceEnum]()
        if "order" in dict_ and dict_["order"] is not None:
            instance.order = OrderSummary.create_from_dict(dict_["order"], include_empty=include_empty)
        elif include_empty:
            instance.order = OrderSummary()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, FulfillmentScriptContext]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[FulfillmentScriptContext]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[FulfillmentScriptContext, List[FulfillmentScriptContext], Dict[Any, FulfillmentScriptContext]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "item": "item",
            "namespace": "namespace",
            "source": "source",
            "order": "order",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "item": True,
            "namespace": True,
            "source": True,
            "order": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "source": ["PURCHASE", "IAP", "PROMOTION", "ACHIEVEMENT", "REFERRAL_BONUS", "REDEEM_CODE", "REWARD", "GIFT", "DLC", "OTHER"],
        }

    # endregion static methods
