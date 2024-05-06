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

from ..models.discount_code_info import DiscountCodeInfo


class DiscountCodeDeductionDetail(Model):
    """Discount code deduction detail (DiscountCodeDeductionDetail)

    Properties:
        discount_amount_codes: (discountAmountCodes) OPTIONAL List[DiscountCodeInfo]

        discount_percentage_codes: (discountPercentageCodes) OPTIONAL List[DiscountCodeInfo]

        total_amount_deduction: (totalAmountDeduction) OPTIONAL int

        total_deduction: (totalDeduction) OPTIONAL int

        total_percentage_deduction: (totalPercentageDeduction) OPTIONAL int
    """

    # region fields

    discount_amount_codes: List[DiscountCodeInfo]  # OPTIONAL
    discount_percentage_codes: List[DiscountCodeInfo]  # OPTIONAL
    total_amount_deduction: int  # OPTIONAL
    total_deduction: int  # OPTIONAL
    total_percentage_deduction: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_discount_amount_codes(
        self, value: List[DiscountCodeInfo]
    ) -> DiscountCodeDeductionDetail:
        self.discount_amount_codes = value
        return self

    def with_discount_percentage_codes(
        self, value: List[DiscountCodeInfo]
    ) -> DiscountCodeDeductionDetail:
        self.discount_percentage_codes = value
        return self

    def with_total_amount_deduction(self, value: int) -> DiscountCodeDeductionDetail:
        self.total_amount_deduction = value
        return self

    def with_total_deduction(self, value: int) -> DiscountCodeDeductionDetail:
        self.total_deduction = value
        return self

    def with_total_percentage_deduction(
        self, value: int
    ) -> DiscountCodeDeductionDetail:
        self.total_percentage_deduction = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "discount_amount_codes"):
            result["discountAmountCodes"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.discount_amount_codes
            ]
        elif include_empty:
            result["discountAmountCodes"] = []
        if hasattr(self, "discount_percentage_codes"):
            result["discountPercentageCodes"] = [
                i0.to_dict(include_empty=include_empty)
                for i0 in self.discount_percentage_codes
            ]
        elif include_empty:
            result["discountPercentageCodes"] = []
        if hasattr(self, "total_amount_deduction"):
            result["totalAmountDeduction"] = int(self.total_amount_deduction)
        elif include_empty:
            result["totalAmountDeduction"] = 0
        if hasattr(self, "total_deduction"):
            result["totalDeduction"] = int(self.total_deduction)
        elif include_empty:
            result["totalDeduction"] = 0
        if hasattr(self, "total_percentage_deduction"):
            result["totalPercentageDeduction"] = int(self.total_percentage_deduction)
        elif include_empty:
            result["totalPercentageDeduction"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        discount_amount_codes: Optional[List[DiscountCodeInfo]] = None,
        discount_percentage_codes: Optional[List[DiscountCodeInfo]] = None,
        total_amount_deduction: Optional[int] = None,
        total_deduction: Optional[int] = None,
        total_percentage_deduction: Optional[int] = None,
        **kwargs,
    ) -> DiscountCodeDeductionDetail:
        instance = cls()
        if discount_amount_codes is not None:
            instance.discount_amount_codes = discount_amount_codes
        if discount_percentage_codes is not None:
            instance.discount_percentage_codes = discount_percentage_codes
        if total_amount_deduction is not None:
            instance.total_amount_deduction = total_amount_deduction
        if total_deduction is not None:
            instance.total_deduction = total_deduction
        if total_percentage_deduction is not None:
            instance.total_percentage_deduction = total_percentage_deduction
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DiscountCodeDeductionDetail:
        instance = cls()
        if not dict_:
            return instance
        if "discountAmountCodes" in dict_ and dict_["discountAmountCodes"] is not None:
            instance.discount_amount_codes = [
                DiscountCodeInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["discountAmountCodes"]
            ]
        elif include_empty:
            instance.discount_amount_codes = []
        if (
            "discountPercentageCodes" in dict_
            and dict_["discountPercentageCodes"] is not None
        ):
            instance.discount_percentage_codes = [
                DiscountCodeInfo.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["discountPercentageCodes"]
            ]
        elif include_empty:
            instance.discount_percentage_codes = []
        if (
            "totalAmountDeduction" in dict_
            and dict_["totalAmountDeduction"] is not None
        ):
            instance.total_amount_deduction = int(dict_["totalAmountDeduction"])
        elif include_empty:
            instance.total_amount_deduction = 0
        if "totalDeduction" in dict_ and dict_["totalDeduction"] is not None:
            instance.total_deduction = int(dict_["totalDeduction"])
        elif include_empty:
            instance.total_deduction = 0
        if (
            "totalPercentageDeduction" in dict_
            and dict_["totalPercentageDeduction"] is not None
        ):
            instance.total_percentage_deduction = int(dict_["totalPercentageDeduction"])
        elif include_empty:
            instance.total_percentage_deduction = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DiscountCodeDeductionDetail]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DiscountCodeDeductionDetail]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        DiscountCodeDeductionDetail,
        List[DiscountCodeDeductionDetail],
        Dict[Any, DiscountCodeDeductionDetail],
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
            "discountAmountCodes": "discount_amount_codes",
            "discountPercentageCodes": "discount_percentage_codes",
            "totalAmountDeduction": "total_amount_deduction",
            "totalDeduction": "total_deduction",
            "totalPercentageDeduction": "total_percentage_deduction",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "discountAmountCodes": False,
            "discountPercentageCodes": False,
            "totalAmountDeduction": False,
            "totalDeduction": False,
            "totalPercentageDeduction": False,
        }

    # endregion static methods
