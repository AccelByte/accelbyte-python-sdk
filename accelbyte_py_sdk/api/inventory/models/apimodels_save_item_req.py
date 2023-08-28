# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Inventory Service (0.1.0)

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


class ApimodelsSaveItemReq(Model):
    """Apimodels save item req (apimodels.SaveItemReq)

    Properties:
        custom_attributes: (customAttributes) REQUIRED Dict[str, Any]

        inventory_configuration_code: (inventoryConfigurationCode) REQUIRED str

        qty: (qty) REQUIRED int

        server_custom_attributes: (serverCustomAttributes) REQUIRED Dict[str, Any]

        source_item_id: (sourceItemId) REQUIRED str

        tags: (tags) REQUIRED List[str]

        type_: (type) REQUIRED str
    """

    # region fields

    custom_attributes: Dict[str, Any]  # REQUIRED
    inventory_configuration_code: str  # REQUIRED
    qty: int  # REQUIRED
    server_custom_attributes: Dict[str, Any]  # REQUIRED
    source_item_id: str  # REQUIRED
    tags: List[str]  # REQUIRED
    type_: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_custom_attributes(self, value: Dict[str, Any]) -> ApimodelsSaveItemReq:
        self.custom_attributes = value
        return self

    def with_inventory_configuration_code(self, value: str) -> ApimodelsSaveItemReq:
        self.inventory_configuration_code = value
        return self

    def with_qty(self, value: int) -> ApimodelsSaveItemReq:
        self.qty = value
        return self

    def with_server_custom_attributes(
        self, value: Dict[str, Any]
    ) -> ApimodelsSaveItemReq:
        self.server_custom_attributes = value
        return self

    def with_source_item_id(self, value: str) -> ApimodelsSaveItemReq:
        self.source_item_id = value
        return self

    def with_tags(self, value: List[str]) -> ApimodelsSaveItemReq:
        self.tags = value
        return self

    def with_type(self, value: str) -> ApimodelsSaveItemReq:
        self.type_ = value
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
        if hasattr(self, "inventory_configuration_code"):
            result["inventoryConfigurationCode"] = str(
                self.inventory_configuration_code
            )
        elif include_empty:
            result["inventoryConfigurationCode"] = ""
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
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        custom_attributes: Dict[str, Any],
        inventory_configuration_code: str,
        qty: int,
        server_custom_attributes: Dict[str, Any],
        source_item_id: str,
        tags: List[str],
        type_: str,
        **kwargs,
    ) -> ApimodelsSaveItemReq:
        instance = cls()
        instance.custom_attributes = custom_attributes
        instance.inventory_configuration_code = inventory_configuration_code
        instance.qty = qty
        instance.server_custom_attributes = server_custom_attributes
        instance.source_item_id = source_item_id
        instance.tags = tags
        instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsSaveItemReq:
        instance = cls()
        if not dict_:
            return instance
        if "customAttributes" in dict_ and dict_["customAttributes"] is not None:
            instance.custom_attributes = {
                str(k0): v0 for k0, v0 in dict_["customAttributes"].items()
            }
        elif include_empty:
            instance.custom_attributes = {}
        if (
            "inventoryConfigurationCode" in dict_
            and dict_["inventoryConfigurationCode"] is not None
        ):
            instance.inventory_configuration_code = str(
                dict_["inventoryConfigurationCode"]
            )
        elif include_empty:
            instance.inventory_configuration_code = ""
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
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsSaveItemReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsSaveItemReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsSaveItemReq,
        List[ApimodelsSaveItemReq],
        Dict[Any, ApimodelsSaveItemReq],
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
            "inventoryConfigurationCode": "inventory_configuration_code",
            "qty": "qty",
            "serverCustomAttributes": "server_custom_attributes",
            "sourceItemId": "source_item_id",
            "tags": "tags",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "customAttributes": True,
            "inventoryConfigurationCode": True,
            "qty": True,
            "serverCustomAttributes": True,
            "sourceItemId": True,
            "tags": True,
            "type": True,
        }

    # endregion static methods
