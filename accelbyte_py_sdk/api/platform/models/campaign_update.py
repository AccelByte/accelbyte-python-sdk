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

from ..models.discount_config import DiscountConfig
from ..models.redeemable_item import RedeemableItem


class RedeemTypeEnum(StrEnum):
    DISCOUNT = "DISCOUNT"
    ITEM = "ITEM"


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    INACTIVE = "INACTIVE"


class CampaignUpdate(Model):
    """A DTO object for updating campaign API call. (CampaignUpdate)

    Properties:
        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        discount_config: (discountConfig) OPTIONAL DiscountConfig

        items: (items) OPTIONAL List[RedeemableItem]

        max_redeem_count_per_campaign_per_user: (maxRedeemCountPerCampaignPerUser) OPTIONAL int

        max_redeem_count_per_code: (maxRedeemCountPerCode) OPTIONAL int

        max_redeem_count_per_code_per_user: (maxRedeemCountPerCodePerUser) OPTIONAL int

        max_sale_count: (maxSaleCount) OPTIONAL int

        redeem_end: (redeemEnd) OPTIONAL str

        redeem_start: (redeemStart) OPTIONAL str

        redeem_type: (redeemType) OPTIONAL Union[str, RedeemTypeEnum]

        status: (status) OPTIONAL Union[str, StatusEnum]

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    name: str  # REQUIRED
    description: str  # OPTIONAL
    discount_config: DiscountConfig  # OPTIONAL
    items: List[RedeemableItem]  # OPTIONAL
    max_redeem_count_per_campaign_per_user: int  # OPTIONAL
    max_redeem_count_per_code: int  # OPTIONAL
    max_redeem_count_per_code_per_user: int  # OPTIONAL
    max_sale_count: int  # OPTIONAL
    redeem_end: str  # OPTIONAL
    redeem_start: str  # OPTIONAL
    redeem_type: Union[str, RedeemTypeEnum]  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> CampaignUpdate:
        self.name = value
        return self

    def with_description(self, value: str) -> CampaignUpdate:
        self.description = value
        return self

    def with_discount_config(self, value: DiscountConfig) -> CampaignUpdate:
        self.discount_config = value
        return self

    def with_items(self, value: List[RedeemableItem]) -> CampaignUpdate:
        self.items = value
        return self

    def with_max_redeem_count_per_campaign_per_user(self, value: int) -> CampaignUpdate:
        self.max_redeem_count_per_campaign_per_user = value
        return self

    def with_max_redeem_count_per_code(self, value: int) -> CampaignUpdate:
        self.max_redeem_count_per_code = value
        return self

    def with_max_redeem_count_per_code_per_user(self, value: int) -> CampaignUpdate:
        self.max_redeem_count_per_code_per_user = value
        return self

    def with_max_sale_count(self, value: int) -> CampaignUpdate:
        self.max_sale_count = value
        return self

    def with_redeem_end(self, value: str) -> CampaignUpdate:
        self.redeem_end = value
        return self

    def with_redeem_start(self, value: str) -> CampaignUpdate:
        self.redeem_start = value
        return self

    def with_redeem_type(self, value: Union[str, RedeemTypeEnum]) -> CampaignUpdate:
        self.redeem_type = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> CampaignUpdate:
        self.status = value
        return self

    def with_tags(self, value: List[str]) -> CampaignUpdate:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "discount_config"):
            result["discountConfig"] = self.discount_config.to_dict(
                include_empty=include_empty
            )
        elif include_empty:
            result["discountConfig"] = DiscountConfig()
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "max_redeem_count_per_campaign_per_user"):
            result["maxRedeemCountPerCampaignPerUser"] = int(
                self.max_redeem_count_per_campaign_per_user
            )
        elif include_empty:
            result["maxRedeemCountPerCampaignPerUser"] = 0
        if hasattr(self, "max_redeem_count_per_code"):
            result["maxRedeemCountPerCode"] = int(self.max_redeem_count_per_code)
        elif include_empty:
            result["maxRedeemCountPerCode"] = 0
        if hasattr(self, "max_redeem_count_per_code_per_user"):
            result["maxRedeemCountPerCodePerUser"] = int(
                self.max_redeem_count_per_code_per_user
            )
        elif include_empty:
            result["maxRedeemCountPerCodePerUser"] = 0
        if hasattr(self, "max_sale_count"):
            result["maxSaleCount"] = int(self.max_sale_count)
        elif include_empty:
            result["maxSaleCount"] = 0
        if hasattr(self, "redeem_end"):
            result["redeemEnd"] = str(self.redeem_end)
        elif include_empty:
            result["redeemEnd"] = ""
        if hasattr(self, "redeem_start"):
            result["redeemStart"] = str(self.redeem_start)
        elif include_empty:
            result["redeemStart"] = ""
        if hasattr(self, "redeem_type"):
            result["redeemType"] = str(self.redeem_type)
        elif include_empty:
            result["redeemType"] = Union[str, RedeemTypeEnum]()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: str,
        description: Optional[str] = None,
        discount_config: Optional[DiscountConfig] = None,
        items: Optional[List[RedeemableItem]] = None,
        max_redeem_count_per_campaign_per_user: Optional[int] = None,
        max_redeem_count_per_code: Optional[int] = None,
        max_redeem_count_per_code_per_user: Optional[int] = None,
        max_sale_count: Optional[int] = None,
        redeem_end: Optional[str] = None,
        redeem_start: Optional[str] = None,
        redeem_type: Optional[Union[str, RedeemTypeEnum]] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        tags: Optional[List[str]] = None,
        **kwargs,
    ) -> CampaignUpdate:
        instance = cls()
        instance.name = name
        if description is not None:
            instance.description = description
        if discount_config is not None:
            instance.discount_config = discount_config
        if items is not None:
            instance.items = items
        if max_redeem_count_per_campaign_per_user is not None:
            instance.max_redeem_count_per_campaign_per_user = (
                max_redeem_count_per_campaign_per_user
            )
        if max_redeem_count_per_code is not None:
            instance.max_redeem_count_per_code = max_redeem_count_per_code
        if max_redeem_count_per_code_per_user is not None:
            instance.max_redeem_count_per_code_per_user = (
                max_redeem_count_per_code_per_user
            )
        if max_sale_count is not None:
            instance.max_sale_count = max_sale_count
        if redeem_end is not None:
            instance.redeem_end = redeem_end
        if redeem_start is not None:
            instance.redeem_start = redeem_start
        if redeem_type is not None:
            instance.redeem_type = redeem_type
        if status is not None:
            instance.status = status
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CampaignUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "discountConfig" in dict_ and dict_["discountConfig"] is not None:
            instance.discount_config = DiscountConfig.create_from_dict(
                dict_["discountConfig"], include_empty=include_empty
            )
        elif include_empty:
            instance.discount_config = DiscountConfig()
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                RedeemableItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if (
            "maxRedeemCountPerCampaignPerUser" in dict_
            and dict_["maxRedeemCountPerCampaignPerUser"] is not None
        ):
            instance.max_redeem_count_per_campaign_per_user = int(
                dict_["maxRedeemCountPerCampaignPerUser"]
            )
        elif include_empty:
            instance.max_redeem_count_per_campaign_per_user = 0
        if (
            "maxRedeemCountPerCode" in dict_
            and dict_["maxRedeemCountPerCode"] is not None
        ):
            instance.max_redeem_count_per_code = int(dict_["maxRedeemCountPerCode"])
        elif include_empty:
            instance.max_redeem_count_per_code = 0
        if (
            "maxRedeemCountPerCodePerUser" in dict_
            and dict_["maxRedeemCountPerCodePerUser"] is not None
        ):
            instance.max_redeem_count_per_code_per_user = int(
                dict_["maxRedeemCountPerCodePerUser"]
            )
        elif include_empty:
            instance.max_redeem_count_per_code_per_user = 0
        if "maxSaleCount" in dict_ and dict_["maxSaleCount"] is not None:
            instance.max_sale_count = int(dict_["maxSaleCount"])
        elif include_empty:
            instance.max_sale_count = 0
        if "redeemEnd" in dict_ and dict_["redeemEnd"] is not None:
            instance.redeem_end = str(dict_["redeemEnd"])
        elif include_empty:
            instance.redeem_end = ""
        if "redeemStart" in dict_ and dict_["redeemStart"] is not None:
            instance.redeem_start = str(dict_["redeemStart"])
        elif include_empty:
            instance.redeem_start = ""
        if "redeemType" in dict_ and dict_["redeemType"] is not None:
            instance.redeem_type = str(dict_["redeemType"])
        elif include_empty:
            instance.redeem_type = Union[str, RedeemTypeEnum]()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CampaignUpdate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CampaignUpdate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CampaignUpdate, List[CampaignUpdate], Dict[Any, CampaignUpdate]]:
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
            "name": "name",
            "description": "description",
            "discountConfig": "discount_config",
            "items": "items",
            "maxRedeemCountPerCampaignPerUser": "max_redeem_count_per_campaign_per_user",
            "maxRedeemCountPerCode": "max_redeem_count_per_code",
            "maxRedeemCountPerCodePerUser": "max_redeem_count_per_code_per_user",
            "maxSaleCount": "max_sale_count",
            "redeemEnd": "redeem_end",
            "redeemStart": "redeem_start",
            "redeemType": "redeem_type",
            "status": "status",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "name": True,
            "description": False,
            "discountConfig": False,
            "items": False,
            "maxRedeemCountPerCampaignPerUser": False,
            "maxRedeemCountPerCode": False,
            "maxRedeemCountPerCodePerUser": False,
            "maxSaleCount": False,
            "redeemEnd": False,
            "redeemStart": False,
            "redeemType": False,
            "status": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "redeemType": ["DISCOUNT", "ITEM"],
            "status": ["ACTIVE", "INACTIVE"],
        }

    # endregion static methods
