# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.4.2)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model


class KeyGroupDynamicInfo(Model):
    """Key group dynamic info (KeyGroupDynamicInfo)

    Properties:
        available_sale_count: (availableSaleCount) REQUIRED int

        quantity: (quantity) REQUIRED int

        sale_count: (saleCount) REQUIRED int
    """

    # region fields

    available_sale_count: int                                                                      # REQUIRED
    quantity: int                                                                                  # REQUIRED
    sale_count: int                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_available_sale_count(self, value: int) -> KeyGroupDynamicInfo:
        self.available_sale_count = value
        return self

    def with_quantity(self, value: int) -> KeyGroupDynamicInfo:
        self.quantity = value
        return self

    def with_sale_count(self, value: int) -> KeyGroupDynamicInfo:
        self.sale_count = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: no-self-use
        # required checks
        if not hasattr(self, "available_sale_count") or self.available_sale_count is None:
            return False
        if not hasattr(self, "quantity") or self.quantity is None:
            return False
        if not hasattr(self, "sale_count") or self.sale_count is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "available_sale_count"):
            result["availableSaleCount"] = int(self.available_sale_count)
        elif include_empty:
            result["availableSaleCount"] = int()
        if hasattr(self, "quantity"):
            result["quantity"] = int(self.quantity)
        elif include_empty:
            result["quantity"] = int()
        if hasattr(self, "sale_count"):
            result["saleCount"] = int(self.sale_count)
        elif include_empty:
            result["saleCount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        available_sale_count: int,
        quantity: int,
        sale_count: int,
    ) -> KeyGroupDynamicInfo:
        instance = cls()
        instance.available_sale_count = available_sale_count
        instance.quantity = quantity
        instance.sale_count = sale_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> KeyGroupDynamicInfo:
        instance = cls()
        if not dict_:
            return instance
        if "availableSaleCount" in dict_ and dict_["availableSaleCount"] is not None:
            instance.available_sale_count = int(dict_["availableSaleCount"])
        elif include_empty:
            instance.available_sale_count = int()
        if "quantity" in dict_ and dict_["quantity"] is not None:
            instance.quantity = int(dict_["quantity"])
        elif include_empty:
            instance.quantity = int()
        if "saleCount" in dict_ and dict_["saleCount"] is not None:
            instance.sale_count = int(dict_["saleCount"])
        elif include_empty:
            instance.sale_count = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, KeyGroupDynamicInfo]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[KeyGroupDynamicInfo]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[KeyGroupDynamicInfo, List[KeyGroupDynamicInfo]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "availableSaleCount": "available_sale_count",
            "quantity": "quantity",
            "saleCount": "sale_count",
        }

    # endregion static methods
