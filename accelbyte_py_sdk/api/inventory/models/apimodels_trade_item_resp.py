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


class ApimodelsTradeItemResp(Model):
    """Apimodels trade item resp (apimodels.TradeItemResp)

    Properties:
        item_id: (itemId) REQUIRED str

        qty: (qty) REQUIRED int

        source_item_id: (sourceItemId) REQUIRED str
    """

    # region fields

    item_id: str  # REQUIRED
    qty: int  # REQUIRED
    source_item_id: str  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> ApimodelsTradeItemResp:
        self.item_id = value
        return self

    def with_qty(self, value: int) -> ApimodelsTradeItemResp:
        self.qty = value
        return self

    def with_source_item_id(self, value: str) -> ApimodelsTradeItemResp:
        self.source_item_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "qty"):
            result["qty"] = int(self.qty)
        elif include_empty:
            result["qty"] = 0
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, item_id: str, qty: int, source_item_id: str, **kwargs
    ) -> ApimodelsTradeItemResp:
        instance = cls()
        instance.item_id = item_id
        instance.qty = qty
        instance.source_item_id = source_item_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsTradeItemResp:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "qty" in dict_ and dict_["qty"] is not None:
            instance.qty = int(dict_["qty"])
        elif include_empty:
            instance.qty = 0
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsTradeItemResp]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsTradeItemResp]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsTradeItemResp,
        List[ApimodelsTradeItemResp],
        Dict[Any, ApimodelsTradeItemResp],
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
            "qty": "qty",
            "sourceItemId": "source_item_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": True,
            "qty": True,
            "sourceItemId": True,
        }

    # endregion static methods
