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

from ..models.discount_config import DiscountConfig


class DiscountCodeInfo(Model):
    """Discount code info (DiscountCodeInfo)

    Properties:
        campaign_id: (campaignId) OPTIONAL str

        campaign_name: (campaignName) OPTIONAL str

        code: (code) OPTIONAL str

        deduction: (deduction) OPTIONAL int

        discount_config: (discountConfig) OPTIONAL DiscountConfig
    """

    # region fields

    campaign_id: str  # OPTIONAL
    campaign_name: str  # OPTIONAL
    code: str  # OPTIONAL
    deduction: int  # OPTIONAL
    discount_config: DiscountConfig  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_campaign_id(self, value: str) -> DiscountCodeInfo:
        self.campaign_id = value
        return self

    def with_campaign_name(self, value: str) -> DiscountCodeInfo:
        self.campaign_name = value
        return self

    def with_code(self, value: str) -> DiscountCodeInfo:
        self.code = value
        return self

    def with_deduction(self, value: int) -> DiscountCodeInfo:
        self.deduction = value
        return self

    def with_discount_config(self, value: DiscountConfig) -> DiscountCodeInfo:
        self.discount_config = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "campaign_id"):
            result["campaignId"] = str(self.campaign_id)
        elif include_empty:
            result["campaignId"] = ""
        if hasattr(self, "campaign_name"):
            result["campaignName"] = str(self.campaign_name)
        elif include_empty:
            result["campaignName"] = ""
        if hasattr(self, "code"):
            result["code"] = str(self.code)
        elif include_empty:
            result["code"] = ""
        if hasattr(self, "deduction"):
            result["deduction"] = int(self.deduction)
        elif include_empty:
            result["deduction"] = 0
        if hasattr(self, "discount_config"):
            result["discountConfig"] = self.discount_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["discountConfig"] = DiscountConfig()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        campaign_id: Optional[str] = None,
        campaign_name: Optional[str] = None,
        code: Optional[str] = None,
        deduction: Optional[int] = None,
        discount_config: Optional[DiscountConfig] = None,
        **kwargs,
    ) -> DiscountCodeInfo:
        instance = cls()
        if campaign_id is not None:
            instance.campaign_id = campaign_id
        if campaign_name is not None:
            instance.campaign_name = campaign_name
        if code is not None:
            instance.code = code
        if deduction is not None:
            instance.deduction = deduction
        if discount_config is not None:
            instance.discount_config = discount_config
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> DiscountCodeInfo:
        instance = cls()
        if not dict_:
            return instance
        if "campaignId" in dict_ and dict_["campaignId"] is not None:
            instance.campaign_id = str(dict_["campaignId"])
        elif include_empty:
            instance.campaign_id = ""
        if "campaignName" in dict_ and dict_["campaignName"] is not None:
            instance.campaign_name = str(dict_["campaignName"])
        elif include_empty:
            instance.campaign_name = ""
        if "code" in dict_ and dict_["code"] is not None:
            instance.code = str(dict_["code"])
        elif include_empty:
            instance.code = ""
        if "deduction" in dict_ and dict_["deduction"] is not None:
            instance.deduction = int(dict_["deduction"])
        elif include_empty:
            instance.deduction = 0
        if "discountConfig" in dict_ and dict_["discountConfig"] is not None:
            instance.discount_config = DiscountConfig.create_from_dict(
                dict_["discountConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.discount_config = DiscountConfig()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, DiscountCodeInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[DiscountCodeInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[DiscountCodeInfo, List[DiscountCodeInfo], Dict[Any, DiscountCodeInfo]]:
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
            "campaignId": "campaign_id",
            "campaignName": "campaign_name",
            "code": "code",
            "deduction": "deduction",
            "discountConfig": "discount_config",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "campaignId": False,
            "campaignName": False,
            "code": False,
            "deduction": False,
            "discountConfig": False,
        }

    # endregion static methods
