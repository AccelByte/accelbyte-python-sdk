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


class ApimodelsPurchaseValidationItemReq(Model):
    """Apimodels purchase validation item req (apimodels.PurchaseValidationItemReq)

    Properties:
        bundled_qty: (bundledQty) REQUIRED int

        entitlement_type: (entitlementType) REQUIRED str

        inventory_config: (inventoryConfig) REQUIRED ApimodelsInventoryConfig

        item_id: (itemId) REQUIRED str

        item_type: (itemType) REQUIRED str

        sku: (sku) REQUIRED str

        stackable: (stackable) REQUIRED bool

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    bundled_qty: int  # REQUIRED
    entitlement_type: str  # REQUIRED
    inventory_config: ApimodelsInventoryConfig  # REQUIRED
    item_id: str  # REQUIRED
    item_type: str  # REQUIRED
    sku: str  # REQUIRED
    stackable: bool  # REQUIRED
    use_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_bundled_qty(self, value: int) -> ApimodelsPurchaseValidationItemReq:
        self.bundled_qty = value
        return self

    def with_entitlement_type(self, value: str) -> ApimodelsPurchaseValidationItemReq:
        self.entitlement_type = value
        return self

    def with_inventory_config(
        self, value: ApimodelsInventoryConfig
    ) -> ApimodelsPurchaseValidationItemReq:
        self.inventory_config = value
        return self

    def with_item_id(self, value: str) -> ApimodelsPurchaseValidationItemReq:
        self.item_id = value
        return self

    def with_item_type(self, value: str) -> ApimodelsPurchaseValidationItemReq:
        self.item_type = value
        return self

    def with_sku(self, value: str) -> ApimodelsPurchaseValidationItemReq:
        self.sku = value
        return self

    def with_stackable(self, value: bool) -> ApimodelsPurchaseValidationItemReq:
        self.stackable = value
        return self

    def with_use_count(self, value: int) -> ApimodelsPurchaseValidationItemReq:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "bundled_qty"):
            result["bundledQty"] = int(self.bundled_qty)
        elif include_empty:
            result["bundledQty"] = 0
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
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
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
        bundled_qty: int,
        entitlement_type: str,
        inventory_config: ApimodelsInventoryConfig,
        item_id: str,
        item_type: str,
        sku: str,
        stackable: bool,
        use_count: Optional[int] = None,
        **kwargs,
    ) -> ApimodelsPurchaseValidationItemReq:
        instance = cls()
        instance.bundled_qty = bundled_qty
        instance.entitlement_type = entitlement_type
        instance.inventory_config = inventory_config
        instance.item_id = item_id
        instance.item_type = item_type
        instance.sku = sku
        instance.stackable = stackable
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsPurchaseValidationItemReq:
        instance = cls()
        if not dict_:
            return instance
        if "bundledQty" in dict_ and dict_["bundledQty"] is not None:
            instance.bundled_qty = int(dict_["bundledQty"])
        elif include_empty:
            instance.bundled_qty = 0
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
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
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
    ) -> Dict[str, ApimodelsPurchaseValidationItemReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsPurchaseValidationItemReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsPurchaseValidationItemReq,
        List[ApimodelsPurchaseValidationItemReq],
        Dict[Any, ApimodelsPurchaseValidationItemReq],
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
            "bundledQty": "bundled_qty",
            "entitlementType": "entitlement_type",
            "inventoryConfig": "inventory_config",
            "itemId": "item_id",
            "itemType": "item_type",
            "sku": "sku",
            "stackable": "stackable",
            "useCount": "use_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "bundledQty": True,
            "entitlementType": True,
            "inventoryConfig": True,
            "itemId": True,
            "itemType": True,
            "sku": True,
            "stackable": True,
            "useCount": False,
        }

    # endregion static methods
