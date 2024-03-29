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

from ..models.purchase_condition import PurchaseCondition


class PurchaseConditionUpdate(Model):
    """A DTO object for creating/updating item purchase condition (PurchaseConditionUpdate)

    Properties:
        purchase_condition: (purchaseCondition) OPTIONAL PurchaseCondition
    """

    # region fields

    purchase_condition: PurchaseCondition  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_purchase_condition(
        self, value: PurchaseCondition
    ) -> PurchaseConditionUpdate:
        self.purchase_condition = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "purchase_condition"):
            result["purchaseCondition"] = self.purchase_condition.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["purchaseCondition"] = PurchaseCondition()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls, purchase_condition: Optional[PurchaseCondition] = None, **kwargs
    ) -> PurchaseConditionUpdate:
        instance = cls()
        if purchase_condition is not None:
            instance.purchase_condition = purchase_condition
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PurchaseConditionUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "purchaseCondition" in dict_ and dict_["purchaseCondition"] is not None:
            instance.purchase_condition = PurchaseCondition.create_from_dict(
                dict_["purchaseCondition"], include_empty=include_empty
            )
        elif include_empty:
            instance.purchase_condition = PurchaseCondition()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, PurchaseConditionUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[PurchaseConditionUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        PurchaseConditionUpdate,
        List[PurchaseConditionUpdate],
        Dict[Any, PurchaseConditionUpdate],
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
            "purchaseCondition": "purchase_condition",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "purchaseCondition": False,
        }

    # endregion static methods
