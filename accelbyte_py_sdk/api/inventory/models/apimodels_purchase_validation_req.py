# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service

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

from ..models.apimodels_inventory_config import ApimodelsInventoryConfig
from ..models.apimodels_purchase_validation_item_req import (
    ApimodelsPurchaseValidationItemReq,
)


class ApimodelsPurchaseValidationReq(Model):
    """Apimodels purchase validation req (apimodels.PurchaseValidationReq)

    Properties:
        item_id: (itemId) REQUIRED str

        item_type: (itemType) REQUIRED str

        quantity: (quantity) REQUIRED int

        sku: (sku) REQUIRED str

        entitlement_type: (entitlementType) OPTIONAL str

        inventory_config: (inventoryConfig) OPTIONAL ApimodelsInventoryConfig

        items: (items) OPTIONAL List[ApimodelsPurchaseValidationItemReq]

        stackable: (stackable) OPTIONAL bool

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    item_id: str  # REQUIRED
    item_type: str  # REQUIRED
    quantity: int  # REQUIRED
    sku: str  # REQUIRED
    entitlement_type: str  # OPTIONAL
    inventory_config: ApimodelsInventoryConfig  # OPTIONAL
    items: List[ApimodelsPurchaseValidationItemReq]  # OPTIONAL
    stackable: bool  # OPTIONAL
    use_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> ApimodelsPurchaseValidationReq:
        self.item_id = value
        return self

    def with_item_type(self, value: str) -> ApimodelsPurchaseValidationReq:
        self.item_type = value
        return self

    def with_quantity(self, value: int) -> ApimodelsPurchaseValidationReq:
        self.quantity = value
        return self

    def with_sku(self, value: str) -> ApimodelsPurchaseValidationReq:
        self.sku = value
        return self

    def with_entitlement_type(self, value: str) -> ApimodelsPurchaseValidationReq:
        self.entitlement_type = value
        return self

    def with_inventory_config(
        self, value: ApimodelsInventoryConfig
    ) -> ApimodelsPurchaseValidationReq:
        self.inventory_config = value
        return self

    def with_items(
        self, value: List[ApimodelsPurchaseValidationItemReq]
    ) -> ApimodelsPurchaseValidationReq:
        self.items = value
        return self

    def with_stackable(self, value: bool) -> ApimodelsPurchaseValidationReq:
        self.stackable = value
        return self

    def with_use_count(self, value: int) -> ApimodelsPurchaseValidationReq:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "entitlement_type"):
            result["entitlementType"] = str(self.entitlement_type)
        elif include_empty:
            result["entitlementType"] = ""
        if hasattr(self, "inventory_config"):
            result["inventoryConfig"] = self.inventory_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["inventoryConfig"] = ApimodelsInventoryConfig()
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "stackable"):
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = False
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        item_type: str,
        quantity: int,
        sku: str,
        entitlement_type: Optional[str] = None,
        inventory_config: Optional[ApimodelsInventoryConfig] = None,
        items: Optional[List[ApimodelsPurchaseValidationItemReq]] = None,
        stackable: Optional[bool] = None,
        use_count: Optional[int] = None,
        **kwargs,
    ) -> ApimodelsPurchaseValidationReq:
        instance = cls()
        instance.item_id = item_id
        instance.item_type = item_type
        instance.quantity = quantity
        instance.sku = sku
        if entitlement_type is not None:
            instance.entitlement_type = entitlement_type
        if inventory_config is not None:
            instance.inventory_config = inventory_config
        if items is not None:
            instance.items = items
        if stackable is not None:
            instance.stackable = stackable
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsPurchaseValidationReq:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "entitlementType" in dict_ and dict_["entitlementType"] is not None:
            instance.entitlement_type = str(dict_["entitlementType"])
        elif include_empty:
            instance.entitlement_type = ""
        if "inventoryConfig" in dict_ and dict_["inventoryConfig"] is not None:
            instance.inventory_config = ApimodelsInventoryConfig.create_from_dict(
                dict_["inventoryConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.inventory_config = ApimodelsInventoryConfig()
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                ApimodelsPurchaseValidationItemReq.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = False
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsPurchaseValidationReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsPurchaseValidationReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsPurchaseValidationReq,
        List[ApimodelsPurchaseValidationReq],
        Dict[Any, ApimodelsPurchaseValidationReq],
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
            "itemId": "item_id",
            "itemType": "item_type",
            "quantity": "quantity",
            "sku": "sku",
            "entitlementType": "entitlement_type",
            "inventoryConfig": "inventory_config",
            "items": "items",
            "stackable": "stackable",
            "useCount": "use_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": True,
            "itemType": True,
            "quantity": True,
            "sku": True,
            "entitlementType": False,
            "inventoryConfig": False,
            "items": False,
            "stackable": False,
            "useCount": False,
        }

    # endregion static methods
