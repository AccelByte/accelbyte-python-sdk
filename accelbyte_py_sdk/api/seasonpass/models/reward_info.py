# justice-seasonpass-service (1.5.0)

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

from ..models.image import Image
from ..models.reward_currency import RewardCurrency


class RewardInfo(Model):
    """A DTO object for reward info. (RewardInfo)

    Properties:
        code: (code) REQUIRED str

        namespace: (namespace) REQUIRED str

        season_id: (seasonId) REQUIRED str

        type_: (type) REQUIRED str

        currency: (currency) OPTIONAL RewardCurrency

        image: (image) OPTIONAL Image

        item_id: (itemId) OPTIONAL str

        item_name: (itemName) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        item_type: (itemType) OPTIONAL str

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    code: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    season_id: str                                                                                 # REQUIRED
    type_: str                                                                                     # REQUIRED
    currency: RewardCurrency                                                                       # OPTIONAL
    image: Image                                                                                   # OPTIONAL
    item_id: str                                                                                   # OPTIONAL
    item_name: str                                                                                 # OPTIONAL
    item_sku: str                                                                                  # OPTIONAL
    item_type: str                                                                                 # OPTIONAL
    quantity: int                                                                                  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_code(self, value: str) -> RewardInfo:
        self.code = value
        return self

    def with_namespace(self, value: str) -> RewardInfo:
        self.namespace = value
        return self

    def with_season_id(self, value: str) -> RewardInfo:
        self.season_id = value
        return self

    def with_type(self, value: str) -> RewardInfo:
        self.type_ = value
        return self

    def with_currency(self, value: RewardCurrency) -> RewardInfo:
        self.currency = value
        return self

    def with_image(self, value: Image) -> RewardInfo:
        self.image = value
        return self

    def with_item_id(self, value: str) -> RewardInfo:
        self.item_id = value
        return self

    def with_item_name(self, value: str) -> RewardInfo:
        self.item_name = value
        return self

    def with_item_sku(self, value: str) -> RewardInfo:
        self.item_sku = value
        return self

    def with_item_type(self, value: str) -> RewardInfo:
        self.item_type = value
        return self

    def with_quantity(self, value: int) -> RewardInfo:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "season_id"):
            result["seasonId"] = str(self.season_id)
        elif include_empty:
            result["seasonId"] = str()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "currency"):
            result["currency"] = self.currency.to_dict(include_empty=include_empty)
        elif include_empty:
            result["currency"] = RewardCurrency()
        if hasattr(self, "image"):
            result["image"] = self.image.to_dict(include_empty=include_empty)
        elif include_empty:
            result["image"] = Image()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "item_name"):
            result["itemName"] = str(self.item_name)
        elif include_empty:
            result["itemName"] = str()
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = str()
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        code: str,
        namespace: str,
        season_id: str,
        type_: str,
        currency: Optional[RewardCurrency] = None,
        image: Optional[Image] = None,
        item_id: Optional[str] = None,
        item_name: Optional[str] = None,
        item_sku: Optional[str] = None,
        item_type: Optional[str] = None,
        quantity: Optional[int] = None,
    ) -> RewardInfo:
        instance = cls()
        instance.code = code
        instance.namespace = namespace
        instance.season_id = season_id
        instance.type_ = type_
        if currency is not None:
            instance.currency = currency
        if image is not None:
            instance.image = image
        if item_id is not None:
            instance.item_id = item_id
        if item_name is not None:
            instance.item_name = item_name
        if item_sku is not None:
            instance.item_sku = item_sku
        if item_type is not None:
            instance.item_type = item_type
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> RewardInfo:
        instance = cls()
        if not dict_:
            return instance
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "seasonId" in dict_ and dict_["seasonId"] is not None:
            instance.season_id = str(dict_["seasonId"])
        elif include_empty:
            instance.season_id = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "currency" in dict_ and dict_["currency"] is not None:
            instance.currency = RewardCurrency.create_from_dict(dict_["currency"], include_empty=include_empty)
        elif include_empty:
            instance.currency = RewardCurrency()
        if "image" in dict_ and dict_["image"] is not None:
            instance.image = Image.create_from_dict(dict_["image"], include_empty=include_empty)
        elif include_empty:
            instance.image = Image()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "itemName" in dict_ and dict_["itemName"] is not None:
            instance.item_name = str(dict_["itemName"])
        elif include_empty:
            instance.item_name = str()
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = str()
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "code": "code",
            "namespace": "namespace",
            "seasonId": "season_id",
            "type": "type_",
            "currency": "currency",
            "image": "image",
            "itemId": "item_id",
            "itemName": "item_name",
            "itemSku": "item_sku",
            "itemType": "item_type",
            "quantity": "quantity",
        }

    # endregion static methods