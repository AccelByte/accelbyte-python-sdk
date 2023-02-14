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

from ..models.condition_group_validate_result import ConditionGroupValidateResult


class ItemPurchaseConditionValidateResult(Model):
    """Item purchase condition validate result (ItemPurchaseConditionValidateResult)

    Properties:
        item_id: (itemId) OPTIONAL str

        purchasable: (purchasable) OPTIONAL bool

        sku: (sku) OPTIONAL str

        validate_details: (validateDetails) OPTIONAL List[ConditionGroupValidateResult]
    """

    # region fields

    item_id: str  # OPTIONAL
    purchasable: bool  # OPTIONAL
    sku: str  # OPTIONAL
    validate_details: List[ConditionGroupValidateResult]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> ItemPurchaseConditionValidateResult:
        self.item_id = value
        return self

    def with_purchasable(self, value: bool) -> ItemPurchaseConditionValidateResult:
        self.purchasable = value
        return self

    def with_sku(self, value: str) -> ItemPurchaseConditionValidateResult:
        self.sku = value
        return self

    def with_validate_details(
        self, value: List[ConditionGroupValidateResult]
    ) -> ItemPurchaseConditionValidateResult:
        self.validate_details = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "purchasable"):
            result["purchasable"] = bool(self.purchasable)
        elif include_empty:
            result["purchasable"] = False
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "validate_details"):
            result["validateDetails"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.validate_details
            ]
        elif include_empty:
            result["validateDetails"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: Optional[str] = None,
        purchasable: Optional[bool] = None,
        sku: Optional[str] = None,
        validate_details: Optional[List[ConditionGroupValidateResult]] = None,
    ) -> ItemPurchaseConditionValidateResult:
        instance = cls()
        if item_id is not None:
            instance.item_id = item_id
        if purchasable is not None:
            instance.purchasable = purchasable
        if sku is not None:
            instance.sku = sku
        if validate_details is not None:
            instance.validate_details = validate_details
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ItemPurchaseConditionValidateResult:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "purchasable" in dict_ and dict_["purchasable"] is not None:
            instance.purchasable = bool(dict_["purchasable"])
        elif include_empty:
            instance.purchasable = False
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "validateDetails" in dict_ and dict_["validateDetails"] is not None:
            instance.validate_details = [
                ConditionGroupValidateResult.create_from_dict(
                    i0, include_empty=include_empty
                )
                for i0 in dict_["validateDetails"]
            ]
        elif include_empty:
            instance.validate_details = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ItemPurchaseConditionValidateResult]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemPurchaseConditionValidateResult]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ItemPurchaseConditionValidateResult,
        List[ItemPurchaseConditionValidateResult],
        Dict[Any, ItemPurchaseConditionValidateResult],
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
            "purchasable": "purchasable",
            "sku": "sku",
            "validateDetails": "validate_details",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": False,
            "purchasable": False,
            "sku": False,
            "validateDetails": False,
        }

    # endregion static methods
