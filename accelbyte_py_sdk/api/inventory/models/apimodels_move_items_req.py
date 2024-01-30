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

from ..models.apimodels_trade_item import ApimodelsTradeItem


class ApimodelsMoveItemsReq(Model):
    """Apimodels move items req (apimodels.MoveItemsReq)

    Properties:
        items: (items) REQUIRED List[ApimodelsTradeItem]

        src_inventory_id: (srcInventoryId) REQUIRED str
    """

    # region fields

    items: List[ApimodelsTradeItem]  # REQUIRED
    src_inventory_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_items(self, value: List[ApimodelsTradeItem]) -> ApimodelsMoveItemsReq:
        self.items = value
        return self

    def with_src_inventory_id(self, value: str) -> ApimodelsMoveItemsReq:
        self.src_inventory_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "src_inventory_id"):
            result["srcInventoryId"] = str(self.src_inventory_id)
        elif include_empty:
            result["srcInventoryId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, items: List[ApimodelsTradeItem], src_inventory_id: str, **kwargs
    ) -> ApimodelsMoveItemsReq:
        instance = cls()
        instance.items = items
        instance.src_inventory_id = src_inventory_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsMoveItemsReq:
        instance = cls()
        if not dict_:
            return instance
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                ApimodelsTradeItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "srcInventoryId" in dict_ and dict_["srcInventoryId"] is not None:
            instance.src_inventory_id = str(dict_["srcInventoryId"])
        elif include_empty:
            instance.src_inventory_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsMoveItemsReq]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsMoveItemsReq]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsMoveItemsReq,
        List[ApimodelsMoveItemsReq],
        Dict[Any, ApimodelsMoveItemsReq],
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
            "items": "items",
            "srcInventoryId": "src_inventory_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "items": True,
            "srcInventoryId": True,
        }

    # endregion static methods
