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
from ....core import StrEnum

from ..models.discount_code_deduction_detail import DiscountCodeDeductionDetail


class DeductionTypeEnum(StrEnum):
    DISCOUNT_CODE = "DISCOUNT_CODE"
    PAYMENT_DISCOUNT_CODE = "PAYMENT_DISCOUNT_CODE"


class DeductionDetail(Model):
    """Deduction detail (DeductionDetail)

    Properties:
        deduction_type: (deductionType) OPTIONAL Union[str, DeductionTypeEnum]

        discount_code_deduction_detail: (discountCodeDeductionDetail) OPTIONAL DiscountCodeDeductionDetail

        discount_provider_name: (discountProviderName) OPTIONAL str
    """

    # region fields

    deduction_type: Union[str, DeductionTypeEnum]  # OPTIONAL
    discount_code_deduction_detail: DiscountCodeDeductionDetail  # OPTIONAL
    discount_provider_name: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_deduction_type(
        self, value: Union[str, DeductionTypeEnum]
    ) -> DeductionDetail:
        self.deduction_type = value
        return self

    def with_discount_code_deduction_detail(
        self, value: DiscountCodeDeductionDetail
    ) -> DeductionDetail:
        self.discount_code_deduction_detail = value
        return self

    def with_discount_provider_name(self, value: str) -> DeductionDetail:
        self.discount_provider_name = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "deduction_type"):
            result["deductionType"] = str(self.deduction_type)
        elif include_empty:
            result["deductionType"] = Union[str, DeductionTypeEnum]()
        if hasattr(self, "discount_code_deduction_detail"):
            result[
                "discountCodeDeductionDetail"
            ] = self.discount_code_deduction_detail.to_dict(include_empty=include_empty)
        elif include_empty:
            result["discountCodeDeductionDetail"] = DiscountCodeDeductionDetail()
        if hasattr(self, "discount_provider_name"):
            result["discountProviderName"] = str(self.discount_provider_name)
        elif include_empty:
            result["discountProviderName"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        deduction_type: Optional[Union[str, DeductionTypeEnum]] = None,
        discount_code_deduction_detail: Optional[DiscountCodeDeductionDetail] = None,
        discount_provider_name: Optional[str] = None,
        **kwargs,
    ) -> DeductionDetail:
        instance = cls()
        if deduction_type is not None:
            instance.deduction_type = deduction_type
        if discount_code_deduction_detail is not None:
            instance.discount_code_deduction_detail = discount_code_deduction_detail
        if discount_provider_name is not None:
            instance.discount_provider_name = discount_provider_name
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DeductionDetail:
        instance = cls()
        if not dict_:
            return instance
        if "deductionType" in dict_ and dict_["deductionType"] is not None:
            instance.deduction_type = str(dict_["deductionType"])
        elif include_empty:
            instance.deduction_type = Union[str, DeductionTypeEnum]()
        if (
            "discountCodeDeductionDetail" in dict_
            and dict_["discountCodeDeductionDetail"] is not None
        ):
            instance.discount_code_deduction_detail = (
                DiscountCodeDeductionDetail.create_from_dict(
                    dict_["discountCodeDeductionDetail"], include_empty=include_empty
                )
            )
        elif include_empty:
            instance.discount_code_deduction_detail = DiscountCodeDeductionDetail()
        if (
            "discountProviderName" in dict_
            and dict_["discountProviderName"] is not None
        ):
            instance.discount_provider_name = str(dict_["discountProviderName"])
        elif include_empty:
            instance.discount_provider_name = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DeductionDetail]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DeductionDetail]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[DeductionDetail, List[DeductionDetail], Dict[Any, DeductionDetail]]:
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
            "deductionType": "deduction_type",
            "discountCodeDeductionDetail": "discount_code_deduction_detail",
            "discountProviderName": "discount_provider_name",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "deductionType": False,
            "discountCodeDeductionDetail": False,
            "discountProviderName": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "deductionType": ["DISCOUNT_CODE", "PAYMENT_DISCOUNT_CODE"],
        }

    # endregion static methods
