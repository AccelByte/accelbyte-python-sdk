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


class ItemDynamicDataInfo(Model):
    """Item dynamic data info (ItemDynamicDataInfo)

    Properties:
        available_count: (availableCount) REQUIRED int

        item_id: (itemId) REQUIRED str

        namespace: (namespace) REQUIRED str

        user_available_count: (userAvailableCount) REQUIRED int

        user_purchase_limit: (userPurchaseLimit) REQUIRED int
    """

    # region fields

    available_count: int  # REQUIRED
    item_id: str  # REQUIRED
    namespace: str  # REQUIRED
    user_available_count: int  # REQUIRED
    user_purchase_limit: int  # REQUIRED

    # endregion fields

    # region with_x methods

    def with_available_count(self, value: int) -> ItemDynamicDataInfo:
        self.available_count = value
        return self

    def with_item_id(self, value: str) -> ItemDynamicDataInfo:
        self.item_id = value
        return self

    def with_namespace(self, value: str) -> ItemDynamicDataInfo:
        self.namespace = value
        return self

    def with_user_available_count(self, value: int) -> ItemDynamicDataInfo:
        self.user_available_count = value
        return self

    def with_user_purchase_limit(self, value: int) -> ItemDynamicDataInfo:
        self.user_purchase_limit = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "available_count"):
            result["availableCount"] = int(self.available_count)
        elif include_empty:
            result["availableCount"] = 0
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_available_count"):
            result["userAvailableCount"] = int(self.user_available_count)
        elif include_empty:
            result["userAvailableCount"] = 0
        if hasattr(self, "user_purchase_limit"):
            result["userPurchaseLimit"] = int(self.user_purchase_limit)
        elif include_empty:
            result["userPurchaseLimit"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        available_count: int,
        item_id: str,
        namespace: str,
        user_available_count: int,
        user_purchase_limit: int,
    ) -> ItemDynamicDataInfo:
        instance = cls()
        instance.available_count = available_count
        instance.item_id = item_id
        instance.namespace = namespace
        instance.user_available_count = user_available_count
        instance.user_purchase_limit = user_purchase_limit
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ItemDynamicDataInfo:
        instance = cls()
        if not dict_:
            return instance
        if "availableCount" in dict_ and dict_["availableCount"] is not None:
            instance.available_count = int(dict_["availableCount"])
        elif include_empty:
            instance.available_count = 0
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userAvailableCount" in dict_ and dict_["userAvailableCount"] is not None:
            instance.user_available_count = int(dict_["userAvailableCount"])
        elif include_empty:
            instance.user_available_count = 0
        if "userPurchaseLimit" in dict_ and dict_["userPurchaseLimit"] is not None:
            instance.user_purchase_limit = int(dict_["userPurchaseLimit"])
        elif include_empty:
            instance.user_purchase_limit = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ItemDynamicDataInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemDynamicDataInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ItemDynamicDataInfo, List[ItemDynamicDataInfo], Dict[Any, ItemDynamicDataInfo]
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
            "availableCount": "available_count",
            "itemId": "item_id",
            "namespace": "namespace",
            "userAvailableCount": "user_available_count",
            "userPurchaseLimit": "user_purchase_limit",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "availableCount": True,
            "itemId": True,
            "namespace": True,
            "userAvailableCount": True,
            "userPurchaseLimit": True,
        }

    # endregion static methods
