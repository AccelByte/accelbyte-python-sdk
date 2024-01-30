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

from ..models.apimodels_trade_item_resp import ApimodelsTradeItemResp


class ApimodelsMoveItemsResp(Model):
    """Apimodels move items resp (apimodels.MoveItemsResp)

    Properties:
        created_at: (createdAt) REQUIRED str

        dst_inventory_id: (dstInventoryId) REQUIRED str

        items: (items) REQUIRED List[ApimodelsTradeItemResp]

        namespace: (namespace) REQUIRED str

        src_inventory_id: (srcInventoryId) REQUIRED str
    """

    # region fields

    created_at: str  # REQUIRED
    dst_inventory_id: str  # REQUIRED
    items: List[ApimodelsTradeItemResp]  # REQUIRED
    namespace: str  # REQUIRED
    src_inventory_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ApimodelsMoveItemsResp:
        self.created_at = value
        return self

    def with_dst_inventory_id(self, value: str) -> ApimodelsMoveItemsResp:
        self.dst_inventory_id = value
        return self

    def with_items(self, value: List[ApimodelsTradeItemResp]) -> ApimodelsMoveItemsResp:
        self.items = value
        return self

    def with_namespace(self, value: str) -> ApimodelsMoveItemsResp:
        self.namespace = value
        return self

    def with_src_inventory_id(self, value: str) -> ApimodelsMoveItemsResp:
        self.src_inventory_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "dst_inventory_id"):
            result["dstInventoryId"] = str(self.dst_inventory_id)
        elif include_empty:
            result["dstInventoryId"] = ""
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "src_inventory_id"):
            result["srcInventoryId"] = str(self.src_inventory_id)
        elif include_empty:
            result["srcInventoryId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        dst_inventory_id: str,
        items: List[ApimodelsTradeItemResp],
        namespace: str,
        src_inventory_id: str,
        **kwargs,
    ) -> ApimodelsMoveItemsResp:
        instance = cls()
        instance.created_at = created_at
        instance.dst_inventory_id = dst_inventory_id
        instance.items = items
        instance.namespace = namespace
        instance.src_inventory_id = src_inventory_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsMoveItemsResp:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "dstInventoryId" in dict_ and dict_["dstInventoryId"] is not None:
            instance.dst_inventory_id = str(dict_["dstInventoryId"])
        elif include_empty:
            instance.dst_inventory_id = ""
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                ApimodelsTradeItemResp.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "srcInventoryId" in dict_ and dict_["srcInventoryId"] is not None:
            instance.src_inventory_id = str(dict_["srcInventoryId"])
        elif include_empty:
            instance.src_inventory_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsMoveItemsResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsMoveItemsResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsMoveItemsResp,
        List[ApimodelsMoveItemsResp],
        Dict[Any, ApimodelsMoveItemsResp],
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
            "createdAt": "created_at",
            "dstInventoryId": "dst_inventory_id",
            "items": "items",
            "namespace": "namespace",
            "srcInventoryId": "src_inventory_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "dstInventoryId": True,
            "items": True,
            "namespace": True,
            "srcInventoryId": True,
        }

    # endregion static methods
