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

from ..models.available_price import AvailablePrice


class EstimatedPriceInfo(Model):
    """Estimated price info (EstimatedPriceInfo)

    Properties:
        item_id: (itemId) REQUIRED str

        estimated_prices: (estimatedPrices) OPTIONAL List[AvailablePrice]

        region: (region) OPTIONAL str
    """

    # region fields

    item_id: str  # REQUIRED
    estimated_prices: List[AvailablePrice]  # OPTIONAL
    region: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> EstimatedPriceInfo:
        self.item_id = value
        return self

    def with_estimated_prices(self, value: List[AvailablePrice]) -> EstimatedPriceInfo:
        self.estimated_prices = value
        return self

    def with_region(self, value: str) -> EstimatedPriceInfo:
        self.region = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "estimated_prices"):
            result["estimatedPrices"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.estimated_prices
            ]
        elif include_empty:
            result["estimatedPrices"] = []
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        estimated_prices: Optional[List[AvailablePrice]] = None,
        region: Optional[str] = None,
        **kwargs,
    ) -> EstimatedPriceInfo:
        instance = cls()
        instance.item_id = item_id
        if estimated_prices is not None:
            instance.estimated_prices = estimated_prices
        if region is not None:
            instance.region = region
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> EstimatedPriceInfo:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "estimatedPrices" in dict_ and dict_["estimatedPrices"] is not None:
            instance.estimated_prices = [
                AvailablePrice.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["estimatedPrices"]
            ]
        elif include_empty:
            instance.estimated_prices = []
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, EstimatedPriceInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[EstimatedPriceInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        EstimatedPriceInfo, List[EstimatedPriceInfo], Dict[Any, EstimatedPriceInfo]
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
            "estimatedPrices": "estimated_prices",
            "region": "region",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": True,
            "estimatedPrices": False,
            "region": False,
        }

    # endregion static methods
