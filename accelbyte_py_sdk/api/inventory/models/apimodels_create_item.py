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
from ....core import StrEnum


class SourceEnum(StrEnum):
    ECOMMERCE = "ECOMMERCE"
    OTHER = "OTHER"


class ApimodelsCreateItem(Model):
    """Apimodels create item (apimodels.CreateItem)

    Properties:
        custom_attributes: (customAttributes) REQUIRED Dict[str, Any]

        qty: (qty) REQUIRED int

        server_custom_attributes: (serverCustomAttributes) REQUIRED Dict[str, Any]

        slot_id: (slotId) REQUIRED str

        slot_used: (slotUsed) REQUIRED int

        source_item_id: (sourceItemId) REQUIRED str

        tags: (tags) REQUIRED List[str]

        to_specific_inventory: (toSpecificInventory) REQUIRED bool

        type_: (type) REQUIRED str

        inventory_configuration_code: (inventoryConfigurationCode) OPTIONAL str

        inventory_id: (inventoryId) OPTIONAL str

        source: (source) OPTIONAL Union[str, SourceEnum]
    """

    # region fields

    custom_attributes: Dict[str, Any]  # REQUIRED
    qty: int  # REQUIRED
    server_custom_attributes: Dict[str, Any]  # REQUIRED
    slot_id: str  # REQUIRED
    slot_used: int  # REQUIRED
    source_item_id: str  # REQUIRED
    tags: List[str]  # REQUIRED
    to_specific_inventory: bool  # REQUIRED
    type_: str  # REQUIRED
    inventory_configuration_code: str  # OPTIONAL
    inventory_id: str  # OPTIONAL
    source: Union[str, SourceEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_custom_attributes(self, value: Dict[str, Any]) -> ApimodelsCreateItem:
        self.custom_attributes = value
        return self

    def with_qty(self, value: int) -> ApimodelsCreateItem:
        self.qty = value
        return self

    def with_server_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ApimodelsCreateItem:
        self.server_custom_attributes = value
        return self

    def with_slot_id(self, value: str) -> ApimodelsCreateItem:
        self.slot_id = value
        return self

    def with_slot_used(self, value: int) -> ApimodelsCreateItem:
        self.slot_used = value
        return self

    def with_source_item_id(self, value: str) -> ApimodelsCreateItem:
        self.source_item_id = value
        return self

    def with_tags(self, value: List[str]) -> ApimodelsCreateItem:
        self.tags = value
        return self

    def with_to_specific_inventory(self, value: bool) -> ApimodelsCreateItem:
        self.to_specific_inventory = value
        return self

    def with_type(self, value: str) -> ApimodelsCreateItem:
        self.type_ = value
        return self

    def with_inventory_configuration_code(self, value: str) -> ApimodelsCreateItem:
        self.inventory_configuration_code = value
        return self

    def with_inventory_id(self, value: str) -> ApimodelsCreateItem:
        self.inventory_id = value
        return self

    def with_source(self, value: Union[str, SourceEnum]) -> ApimodelsCreateItem:
        self.source = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "custom_attributes"):
            result["customAttributes"] = {
                str(k0): v0 for k0, v0 in self.custom_attributes.items()
            }
        elif include_empty:
            result["customAttributes"] = {}
        if hasattr(self, "qty"):
            result["qty"] = int(self.qty)
        elif include_empty:
            result["qty"] = 0
        if hasattr(self, "server_custom_attributes"):
            result["serverCustomAttributes"] = {
                str(k0): v0 for k0, v0 in self.server_custom_attributes.items()
            }
        elif include_empty:
            result["serverCustomAttributes"] = {}
        if hasattr(self, "slot_id"):
            result["slotId"] = str(self.slot_id)
        elif include_empty:
            result["slotId"] = ""
        if hasattr(self, "slot_used"):
            result["slotUsed"] = int(self.slot_used)
        elif include_empty:
            result["slotUsed"] = 0
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "to_specific_inventory"):
            result["toSpecificInventory"] = bool(self.to_specific_inventory)
        elif include_empty:
            result["toSpecificInventory"] = False
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        if hasattr(self, "inventory_configuration_code"):
            result["inventoryConfigurationCode"] = str(
                self.inventory_configuration_code
            )
        elif include_empty:
            result["inventoryConfigurationCode"] = ""
        if hasattr(self, "inventory_id"):
            result["inventoryId"] = str(self.inventory_id)
        elif include_empty:
            result["inventoryId"] = ""
        if hasattr(self, "source"):
            result["source"] = str(self.source)
        elif include_empty:
            result["source"] = Union[str, SourceEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_attributes: Dict[str, Any],
        qty: int,
        server_custom_attributes: Dict[str, Any],
        slot_id: str,
        slot_used: int,
        source_item_id: str,
        tags: List[str],
        to_specific_inventory: bool,
        type_: str,
        inventory_configuration_code: Optional[str] = None,
        inventory_id: Optional[str] = None,
        source: Optional[Union[str, SourceEnum]] = None,
        **kwargs,
    ) -> ApimodelsCreateItem:
        instance = cls()
        instance.custom_attributes = custom_attributes
        instance.qty = qty
        instance.server_custom_attributes = server_custom_attributes
        instance.slot_id = slot_id
        instance.slot_used = slot_used
        instance.source_item_id = source_item_id
        instance.tags = tags
        instance.to_specific_inventory = to_specific_inventory
        instance.type_ = type_
        if inventory_configuration_code is not None:
            instance.inventory_configuration_code = inventory_configuration_code
        if inventory_id is not None:
            instance.inventory_id = inventory_id
        if source is not None:
            instance.source = source
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsCreateItem:
        instance = cls()
        if not dict_:
            return instance
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if "qty" in dict_ and dict_["qty"] is not None:
            instance.qty = int(dict_["qty"])
        elif include_empty:
            instance.qty = 0
        if (
            "serverCustomAttributes" in dict_
            and dict_["serverCustomAttributes"] is not None
        ):
            instance.server_custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["serverCustomAttributes"].items()
            }
        elif include_empty:
            instance.server_custom_attributes = {}
        if "slotId" in dict_ and dict_["slotId"] is not None:
            instance.slot_id = str(dict_["slotId"])
        elif include_empty:
            instance.slot_id = ""
        if "slotUsed" in dict_ and dict_["slotUsed"] is not None:
            instance.slot_used = int(dict_["slotUsed"])
        elif include_empty:
            instance.slot_used = 0
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "toSpecificInventory" in dict_ and dict_["toSpecificInventory"] is not None:
            instance.to_specific_inventory = bool(dict_["toSpecificInventory"])
        elif include_empty:
            instance.to_specific_inventory = False
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        if (
            "inventoryConfigurationCode" in dict_
            and dict_["inventoryConfigurationCode"] is not None
        ):
            instance.inventory_configuration_code = str(
                dict_["inventoryConfigurationCode"]
            )
        elif include_empty:
            instance.inventory_configuration_code = ""
        if "inventoryId" in dict_ and dict_["inventoryId"] is not None:
            instance.inventory_id = str(dict_["inventoryId"])
        elif include_empty:
            instance.inventory_id = ""
        if "source" in dict_ and dict_["source"] is not None:
            instance.source = str(dict_["source"])
        elif include_empty:
            instance.source = Union[str, SourceEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsCreateItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsCreateItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsCreateItem, List[ApimodelsCreateItem], Dict[Any, ApimodelsCreateItem]
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
            "customAttributes": "custom_attributes",
            "qty": "qty",
            "serverCustomAttributes": "server_custom_attributes",
            "slotId": "slot_id",
            "slotUsed": "slot_used",
            "sourceItemId": "source_item_id",
            "tags": "tags",
            "toSpecificInventory": "to_specific_inventory",
            "type": "type_",
            "inventoryConfigurationCode": "inventory_configuration_code",
            "inventoryId": "inventory_id",
            "source": "source",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "customAttributes": True,
            "qty": True,
            "serverCustomAttributes": True,
            "slotId": True,
            "slotUsed": True,
            "sourceItemId": True,
            "tags": True,
            "toSpecificInventory": True,
            "type": True,
            "inventoryConfigurationCode": False,
            "inventoryId": False,
            "source": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "source": ["ECOMMERCE", "OTHER"],
        }

    # endregion static methods
