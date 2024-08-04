# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

# AccelByte Gaming Services Platform Service

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


class FulfillBundledItemResult(Model):
    """Fulfill bundled item result (FulfillBundledItemResult)

    Properties:
        error: (error) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        quantity: (quantity) OPTIONAL int
    """

    # region fields

    error: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_sku: str  # OPTIONAL
    quantity: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_error(self, value: str) -> FulfillBundledItemResult:
        self.error = value
        return self

    def with_item_id(self, value: str) -> FulfillBundledItemResult:
        self.item_id = value
        return self

    def with_item_sku(self, value: str) -> FulfillBundledItemResult:
        self.item_sku = value
        return self

    def with_quantity(self, value: int) -> FulfillBundledItemResult:
        self.quantity = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "error"):
            result["error"] = str(self.error)
        elif include_empty:
            result["error"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        error: Optional[str] = None,
        item_id: Optional[str] = None,
        item_sku: Optional[str] = None,
        quantity: Optional[int] = None,
        **kwargs,
    ) -> FulfillBundledItemResult:
        instance = cls()
        if error is not None:
            instance.error = error
        if item_id is not None:
            instance.item_id = item_id
        if item_sku is not None:
            instance.item_sku = item_sku
        if quantity is not None:
            instance.quantity = quantity
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FulfillBundledItemResult:
        instance = cls()
        if not dict_:
            return instance
        if "error" in dict_ and dict_["error"] is not None:
            instance.error = str(dict_["error"])
        elif include_empty:
            instance.error = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, FulfillBundledItemResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[FulfillBundledItemResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        FulfillBundledItemResult,
        List[FulfillBundledItemResult],
        Dict[Any, FulfillBundledItemResult],
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
            "error": "error",
            "itemId": "item_id",
            "itemSku": "item_sku",
            "quantity": "quantity",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "error": False,
            "itemId": False,
            "itemSku": False,
            "quantity": False,
        }

    # endregion static methods
