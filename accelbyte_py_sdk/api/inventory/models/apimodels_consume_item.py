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


class ApimodelsConsumeItem(Model):
    """Apimodels consume item (apimodels.ConsumeItem)

    Properties:
        inventory_id: (inventoryId) REQUIRED str

        qty: (qty) REQUIRED int

        slot_id: (slotId) REQUIRED str

        source_item_id: (sourceItemId) REQUIRED str

        date_range_validation: (dateRangeValidation) OPTIONAL bool

        options: (options) OPTIONAL List[str]
    """

    # region fields

    inventory_id: str  # REQUIRED
    qty: int  # REQUIRED
    slot_id: str  # REQUIRED
    source_item_id: str  # REQUIRED
    date_range_validation: bool  # OPTIONAL
    options: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_inventory_id(self, value: str) -> ApimodelsConsumeItem:
        self.inventory_id = value
        return self

    def with_qty(self, value: int) -> ApimodelsConsumeItem:
        self.qty = value
        return self

    def with_slot_id(self, value: str) -> ApimodelsConsumeItem:
        self.slot_id = value
        return self

    def with_source_item_id(self, value: str) -> ApimodelsConsumeItem:
        self.source_item_id = value
        return self

    def with_date_range_validation(self, value: bool) -> ApimodelsConsumeItem:
        self.date_range_validation = value
        return self

    def with_options(self, value: List[str]) -> ApimodelsConsumeItem:
        self.options = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "inventory_id"):
            result["inventoryId"] = str(self.inventory_id)
        elif include_empty:
            result["inventoryId"] = ""
        if hasattr(self, "qty"):
            result["qty"] = int(self.qty)
        elif include_empty:
            result["qty"] = 0
        if hasattr(self, "slot_id"):
            result["slotId"] = str(self.slot_id)
        elif include_empty:
            result["slotId"] = ""
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
        if hasattr(self, "date_range_validation"):
            result["dateRangeValidation"] = bool(self.date_range_validation)
        elif include_empty:
            result["dateRangeValidation"] = False
        if hasattr(self, "options"):
            result["options"] = [str(i0) for i0 in self.options]
        elif include_empty:
            result["options"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        inventory_id: str,
        qty: int,
        slot_id: str,
        source_item_id: str,
        date_range_validation: Optional[bool] = None,
        options: Optional[List[str]] = None,
        **kwargs,
    ) -> ApimodelsConsumeItem:
        instance = cls()
        instance.inventory_id = inventory_id
        instance.qty = qty
        instance.slot_id = slot_id
        instance.source_item_id = source_item_id
        if date_range_validation is not None:
            instance.date_range_validation = date_range_validation
        if options is not None:
            instance.options = options
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ApimodelsConsumeItem:
        instance = cls()
        if not dict_:
            return instance
        if "inventoryId" in dict_ and dict_["inventoryId"] is not None:
            instance.inventory_id = str(dict_["inventoryId"])
        elif include_empty:
            instance.inventory_id = ""
        if "qty" in dict_ and dict_["qty"] is not None:
            instance.qty = int(dict_["qty"])
        elif include_empty:
            instance.qty = 0
        if "slotId" in dict_ and dict_["slotId"] is not None:
            instance.slot_id = str(dict_["slotId"])
        elif include_empty:
            instance.slot_id = ""
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        if "dateRangeValidation" in dict_ and dict_["dateRangeValidation"] is not None:
            instance.date_range_validation = bool(dict_["dateRangeValidation"])
        elif include_empty:
            instance.date_range_validation = False
        if "options" in dict_ and dict_["options"] is not None:
            instance.options = [str(i0) for i0 in dict_["options"]]
        elif include_empty:
            instance.options = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ApimodelsConsumeItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ApimodelsConsumeItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ApimodelsConsumeItem,
        List[ApimodelsConsumeItem],
        Dict[Any, ApimodelsConsumeItem],
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
            "inventoryId": "inventory_id",
            "qty": "qty",
            "slotId": "slot_id",
            "sourceItemId": "source_item_id",
            "dateRangeValidation": "date_range_validation",
            "options": "options",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "inventoryId": True,
            "qty": True,
            "slotId": True,
            "sourceItemId": True,
            "dateRangeValidation": False,
            "options": False,
        }

    # endregion static methods
