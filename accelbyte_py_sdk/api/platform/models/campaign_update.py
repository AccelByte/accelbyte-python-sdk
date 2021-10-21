# Auto-generated at 2021-10-21T08:52:30.637720+08:00
# from: Justice platform Service (3.34.0)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

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

from ..models.redeemable_item import RedeemableItem


class CampaignUpdate(Model):
    """A DTO object for updating campaign API call. (CampaignUpdate)

    Properties:
        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        status: (status) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        max_redeem_count_per_code: (maxRedeemCountPerCode) OPTIONAL int

        max_redeem_count_per_code_per_user: (maxRedeemCountPerCodePerUser) OPTIONAL int

        max_redeem_count_per_campaign_per_user: (maxRedeemCountPerCampaignPerUser) OPTIONAL int

        max_sale_count: (maxSaleCount) OPTIONAL int

        redeem_start: (redeemStart) OPTIONAL str

        redeem_end: (redeemEnd) OPTIONAL str

        redeem_type: (redeemType) OPTIONAL str

        items: (items) OPTIONAL List[RedeemableItem]
    """

    # region fields

    name: str                                                                                      # REQUIRED
    description: str                                                                               # OPTIONAL
    status: str                                                                                    # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    max_redeem_count_per_code: int                                                                 # OPTIONAL
    max_redeem_count_per_code_per_user: int                                                        # OPTIONAL
    max_redeem_count_per_campaign_per_user: int                                                    # OPTIONAL
    max_sale_count: int                                                                            # OPTIONAL
    redeem_start: str                                                                              # OPTIONAL
    redeem_end: str                                                                                # OPTIONAL
    redeem_type: str                                                                               # OPTIONAL
    items: List[RedeemableItem]                                                                    # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_name(self, value: str) -> CampaignUpdate:
        self.name = value
        return self

    def with_description(self, value: str) -> CampaignUpdate:
        self.description = value
        return self

    def with_status(self, value: str) -> CampaignUpdate:
        self.status = value
        return self

    def with_tags(self, value: List[str]) -> CampaignUpdate:
        self.tags = value
        return self

    def with_max_redeem_count_per_code(self, value: int) -> CampaignUpdate:
        self.max_redeem_count_per_code = value
        return self

    def with_max_redeem_count_per_code_per_user(self, value: int) -> CampaignUpdate:
        self.max_redeem_count_per_code_per_user = value
        return self

    def with_max_redeem_count_per_campaign_per_user(self, value: int) -> CampaignUpdate:
        self.max_redeem_count_per_campaign_per_user = value
        return self

    def with_max_sale_count(self, value: int) -> CampaignUpdate:
        self.max_sale_count = value
        return self

    def with_redeem_start(self, value: str) -> CampaignUpdate:
        self.redeem_start = value
        return self

    def with_redeem_end(self, value: str) -> CampaignUpdate:
        self.redeem_end = value
        return self

    def with_redeem_type(self, value: str) -> CampaignUpdate:
        self.redeem_type = value
        return self

    def with_items(self, value: List[RedeemableItem]) -> CampaignUpdate:
        self.items = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "max_redeem_count_per_code") and self.max_redeem_count_per_code:
            result["maxRedeemCountPerCode"] = int(self.max_redeem_count_per_code)
        elif include_empty:
            result["maxRedeemCountPerCode"] = int()
        if hasattr(self, "max_redeem_count_per_code_per_user") and self.max_redeem_count_per_code_per_user:
            result["maxRedeemCountPerCodePerUser"] = int(self.max_redeem_count_per_code_per_user)
        elif include_empty:
            result["maxRedeemCountPerCodePerUser"] = int()
        if hasattr(self, "max_redeem_count_per_campaign_per_user") and self.max_redeem_count_per_campaign_per_user:
            result["maxRedeemCountPerCampaignPerUser"] = int(self.max_redeem_count_per_campaign_per_user)
        elif include_empty:
            result["maxRedeemCountPerCampaignPerUser"] = int()
        if hasattr(self, "max_sale_count") and self.max_sale_count:
            result["maxSaleCount"] = int(self.max_sale_count)
        elif include_empty:
            result["maxSaleCount"] = int()
        if hasattr(self, "redeem_start") and self.redeem_start:
            result["redeemStart"] = str(self.redeem_start)
        elif include_empty:
            result["redeemStart"] = str()
        if hasattr(self, "redeem_end") and self.redeem_end:
            result["redeemEnd"] = str(self.redeem_end)
        elif include_empty:
            result["redeemEnd"] = str()
        if hasattr(self, "redeem_type") and self.redeem_type:
            result["redeemType"] = str(self.redeem_type)
        elif include_empty:
            result["redeemType"] = str()
        if hasattr(self, "items") and self.items:
            result["items"] = [i0.to_dict(include_empty=include_empty) for i0 in self.items]
        elif include_empty:
            result["items"] = []
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        name: str,
        description: Optional[str] = None,
        status: Optional[str] = None,
        tags: Optional[List[str]] = None,
        max_redeem_count_per_code: Optional[int] = None,
        max_redeem_count_per_code_per_user: Optional[int] = None,
        max_redeem_count_per_campaign_per_user: Optional[int] = None,
        max_sale_count: Optional[int] = None,
        redeem_start: Optional[str] = None,
        redeem_end: Optional[str] = None,
        redeem_type: Optional[str] = None,
        items: Optional[List[RedeemableItem]] = None,
    ) -> CampaignUpdate:
        instance = cls()
        instance.name = name
        if description is not None:
            instance.description = description
        if status is not None:
            instance.status = status
        if tags is not None:
            instance.tags = tags
        if max_redeem_count_per_code is not None:
            instance.max_redeem_count_per_code = max_redeem_count_per_code
        if max_redeem_count_per_code_per_user is not None:
            instance.max_redeem_count_per_code_per_user = max_redeem_count_per_code_per_user
        if max_redeem_count_per_campaign_per_user is not None:
            instance.max_redeem_count_per_campaign_per_user = max_redeem_count_per_campaign_per_user
        if max_sale_count is not None:
            instance.max_sale_count = max_sale_count
        if redeem_start is not None:
            instance.redeem_start = redeem_start
        if redeem_end is not None:
            instance.redeem_end = redeem_end
        if redeem_type is not None:
            instance.redeem_type = redeem_type
        if items is not None:
            instance.items = items
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CampaignUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "maxRedeemCountPerCode" in dict_ and dict_["maxRedeemCountPerCode"] is not None:
            instance.max_redeem_count_per_code = int(dict_["maxRedeemCountPerCode"])
        elif include_empty:
            instance.max_redeem_count_per_code = int()
        if "maxRedeemCountPerCodePerUser" in dict_ and dict_["maxRedeemCountPerCodePerUser"] is not None:
            instance.max_redeem_count_per_code_per_user = int(dict_["maxRedeemCountPerCodePerUser"])
        elif include_empty:
            instance.max_redeem_count_per_code_per_user = int()
        if "maxRedeemCountPerCampaignPerUser" in dict_ and dict_["maxRedeemCountPerCampaignPerUser"] is not None:
            instance.max_redeem_count_per_campaign_per_user = int(dict_["maxRedeemCountPerCampaignPerUser"])
        elif include_empty:
            instance.max_redeem_count_per_campaign_per_user = int()
        if "maxSaleCount" in dict_ and dict_["maxSaleCount"] is not None:
            instance.max_sale_count = int(dict_["maxSaleCount"])
        elif include_empty:
            instance.max_sale_count = int()
        if "redeemStart" in dict_ and dict_["redeemStart"] is not None:
            instance.redeem_start = str(dict_["redeemStart"])
        elif include_empty:
            instance.redeem_start = str()
        if "redeemEnd" in dict_ and dict_["redeemEnd"] is not None:
            instance.redeem_end = str(dict_["redeemEnd"])
        elif include_empty:
            instance.redeem_end = str()
        if "redeemType" in dict_ and dict_["redeemType"] is not None:
            instance.redeem_type = str(dict_["redeemType"])
        elif include_empty:
            instance.redeem_type = str()
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [RedeemableItem.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["items"]]
        elif include_empty:
            instance.items = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "name": "name",
            "description": "description",
            "status": "status",
            "tags": "tags",
            "maxRedeemCountPerCode": "max_redeem_count_per_code",
            "maxRedeemCountPerCodePerUser": "max_redeem_count_per_code_per_user",
            "maxRedeemCountPerCampaignPerUser": "max_redeem_count_per_campaign_per_user",
            "maxSaleCount": "max_sale_count",
            "redeemStart": "redeem_start",
            "redeemEnd": "redeem_end",
            "redeemType": "redeem_type",
            "items": "items",
        }

    # endregion static methods
