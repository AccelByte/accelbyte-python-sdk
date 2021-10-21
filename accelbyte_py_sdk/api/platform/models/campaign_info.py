# justice-platform-service (3.34.0)

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


class CampaignInfo(Model):
    """Campaign info (CampaignInfo)

    Properties:
        id_: (id) REQUIRED str

        type_: (type) REQUIRED str

        namespace: (namespace) REQUIRED str

        name: (name) REQUIRED str

        description: (description) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        status: (status) REQUIRED str

        redeem_start: (redeemStart) OPTIONAL str

        redeem_end: (redeemEnd) OPTIONAL str

        max_redeem_count_per_code: (maxRedeemCountPerCode) REQUIRED int

        max_redeem_count_per_code_per_user: (maxRedeemCountPerCodePerUser) REQUIRED int

        max_redeem_count_per_campaign_per_user: (maxRedeemCountPerCampaignPerUser) REQUIRED int

        max_sale_count: (maxSaleCount) REQUIRED int

        redeem_type: (redeemType) REQUIRED str

        items: (items) OPTIONAL List[RedeemableItem]

        booth_name: (boothName) REQUIRED str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    type_: str                                                                                     # REQUIRED
    namespace: str                                                                                 # REQUIRED
    name: str                                                                                      # REQUIRED
    description: str                                                                               # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    status: str                                                                                    # REQUIRED
    redeem_start: str                                                                              # OPTIONAL
    redeem_end: str                                                                                # OPTIONAL
    max_redeem_count_per_code: int                                                                 # REQUIRED
    max_redeem_count_per_code_per_user: int                                                        # REQUIRED
    max_redeem_count_per_campaign_per_user: int                                                    # REQUIRED
    max_sale_count: int                                                                            # REQUIRED
    redeem_type: str                                                                               # REQUIRED
    items: List[RedeemableItem]                                                                    # OPTIONAL
    booth_name: str                                                                                # REQUIRED
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> CampaignInfo:
        self.id_ = value
        return self

    def with_type(self, value: str) -> CampaignInfo:
        self.type_ = value
        return self

    def with_namespace(self, value: str) -> CampaignInfo:
        self.namespace = value
        return self

    def with_name(self, value: str) -> CampaignInfo:
        self.name = value
        return self

    def with_description(self, value: str) -> CampaignInfo:
        self.description = value
        return self

    def with_tags(self, value: List[str]) -> CampaignInfo:
        self.tags = value
        return self

    def with_status(self, value: str) -> CampaignInfo:
        self.status = value
        return self

    def with_redeem_start(self, value: str) -> CampaignInfo:
        self.redeem_start = value
        return self

    def with_redeem_end(self, value: str) -> CampaignInfo:
        self.redeem_end = value
        return self

    def with_max_redeem_count_per_code(self, value: int) -> CampaignInfo:
        self.max_redeem_count_per_code = value
        return self

    def with_max_redeem_count_per_code_per_user(self, value: int) -> CampaignInfo:
        self.max_redeem_count_per_code_per_user = value
        return self

    def with_max_redeem_count_per_campaign_per_user(self, value: int) -> CampaignInfo:
        self.max_redeem_count_per_campaign_per_user = value
        return self

    def with_max_sale_count(self, value: int) -> CampaignInfo:
        self.max_sale_count = value
        return self

    def with_redeem_type(self, value: str) -> CampaignInfo:
        self.redeem_type = value
        return self

    def with_items(self, value: List[RedeemableItem]) -> CampaignInfo:
        self.items = value
        return self

    def with_booth_name(self, value: str) -> CampaignInfo:
        self.booth_name = value
        return self

    def with_created_at(self, value: str) -> CampaignInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> CampaignInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_") and self.id_:
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "description") and self.description:
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "redeem_start") and self.redeem_start:
            result["redeemStart"] = str(self.redeem_start)
        elif include_empty:
            result["redeemStart"] = str()
        if hasattr(self, "redeem_end") and self.redeem_end:
            result["redeemEnd"] = str(self.redeem_end)
        elif include_empty:
            result["redeemEnd"] = str()
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
        if hasattr(self, "redeem_type") and self.redeem_type:
            result["redeemType"] = str(self.redeem_type)
        elif include_empty:
            result["redeemType"] = str()
        if hasattr(self, "items") and self.items:
            result["items"] = [i0.to_dict(include_empty=include_empty) for i0 in self.items]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "booth_name") and self.booth_name:
            result["boothName"] = str(self.booth_name)
        elif include_empty:
            result["boothName"] = str()
        if hasattr(self, "created_at") and self.created_at:
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at") and self.updated_at:
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        id_: str,
        type_: str,
        namespace: str,
        name: str,
        status: str,
        max_redeem_count_per_code: int,
        max_redeem_count_per_code_per_user: int,
        max_redeem_count_per_campaign_per_user: int,
        max_sale_count: int,
        redeem_type: str,
        booth_name: str,
        created_at: str,
        updated_at: str,
        description: Optional[str] = None,
        tags: Optional[List[str]] = None,
        redeem_start: Optional[str] = None,
        redeem_end: Optional[str] = None,
        items: Optional[List[RedeemableItem]] = None,
    ) -> CampaignInfo:
        instance = cls()
        instance.id_ = id_
        instance.type_ = type_
        instance.namespace = namespace
        instance.name = name
        instance.status = status
        instance.max_redeem_count_per_code = max_redeem_count_per_code
        instance.max_redeem_count_per_code_per_user = max_redeem_count_per_code_per_user
        instance.max_redeem_count_per_campaign_per_user = max_redeem_count_per_campaign_per_user
        instance.max_sale_count = max_sale_count
        instance.redeem_type = redeem_type
        instance.booth_name = booth_name
        instance.created_at = created_at
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if tags is not None:
            instance.tags = tags
        if redeem_start is not None:
            instance.redeem_start = redeem_start
        if redeem_end is not None:
            instance.redeem_end = redeem_end
        if items is not None:
            instance.items = items
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CampaignInfo:
        instance = cls()
        if not dict_:
            return instance
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "redeemStart" in dict_ and dict_["redeemStart"] is not None:
            instance.redeem_start = str(dict_["redeemStart"])
        elif include_empty:
            instance.redeem_start = str()
        if "redeemEnd" in dict_ and dict_["redeemEnd"] is not None:
            instance.redeem_end = str(dict_["redeemEnd"])
        elif include_empty:
            instance.redeem_end = str()
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
        if "redeemType" in dict_ and dict_["redeemType"] is not None:
            instance.redeem_type = str(dict_["redeemType"])
        elif include_empty:
            instance.redeem_type = str()
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [RedeemableItem.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["items"]]
        elif include_empty:
            instance.items = []
        if "boothName" in dict_ and dict_["boothName"] is not None:
            instance.booth_name = str(dict_["boothName"])
        elif include_empty:
            instance.booth_name = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "id": "id_",
            "type": "type_",
            "namespace": "namespace",
            "name": "name",
            "description": "description",
            "tags": "tags",
            "status": "status",
            "redeemStart": "redeem_start",
            "redeemEnd": "redeem_end",
            "maxRedeemCountPerCode": "max_redeem_count_per_code",
            "maxRedeemCountPerCodePerUser": "max_redeem_count_per_code_per_user",
            "maxRedeemCountPerCampaignPerUser": "max_redeem_count_per_campaign_per_user",
            "maxSaleCount": "max_sale_count",
            "redeemType": "redeem_type",
            "items": "items",
            "boothName": "booth_name",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
