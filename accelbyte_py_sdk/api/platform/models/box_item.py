# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.23.0)

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


class BoxItem(Model):
    """box item (BoxItem)

    Properties:
        count: (count) OPTIONAL int

        item_id: (itemId) OPTIONAL str

        item_sku: (itemSku) OPTIONAL str

        item_type: (itemType) OPTIONAL str
    """

    # region fields

    count: int  # OPTIONAL
    item_id: str  # OPTIONAL
    item_sku: str  # OPTIONAL
    item_type: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_count(self, value: int) -> BoxItem:
        self.count = value
        return self

    def with_item_id(self, value: str) -> BoxItem:
        self.item_id = value
        return self

    def with_item_sku(self, value: str) -> BoxItem:
        self.item_sku = value
        return self

    def with_item_type(self, value: str) -> BoxItem:
        self.item_type = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "count"):
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_sku"):
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        count: Optional[int] = None,
        item_id: Optional[str] = None,
        item_sku: Optional[str] = None,
        item_type: Optional[str] = None,
    ) -> BoxItem:
        instance = cls()
        if count is not None:
            instance.count = count
        if item_id is not None:
            instance.item_id = item_id
        if item_sku is not None:
            instance.item_sku = item_sku
        if item_type is not None:
            instance.item_type = item_type
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> BoxItem:
        instance = cls()
        if not dict_:
            return instance
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BoxItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BoxItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[BoxItem, List[BoxItem], Dict[Any, BoxItem]]:
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
            "count": "count",
            "itemId": "item_id",
            "itemSku": "item_sku",
            "itemType": "item_type",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "count": False,
            "itemId": False,
            "itemSku": False,
            "itemType": False,
        }

    # endregion static methods
