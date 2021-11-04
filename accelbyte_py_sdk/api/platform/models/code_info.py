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


class CodeInfo(Model):
    """Code info (CodeInfo)

    Properties:
        id_: (id) REQUIRED str

        type_: (type) REQUIRED str

        namespace: (namespace) REQUIRED str

        campaign_id: (campaignId) REQUIRED str

        value: (value) REQUIRED str

        max_redeem_count_per_code: (maxRedeemCountPerCode) REQUIRED int

        max_redeem_count_per_code_per_user: (maxRedeemCountPerCodePerUser) REQUIRED int

        max_redeem_count_per_campaign_per_user: (maxRedeemCountPerCampaignPerUser) REQUIRED int

        remainder: (remainder) REQUIRED int

        redeemed_count: (redeemedCount) REQUIRED int

        status: (status) REQUIRED str

        redeem_start: (redeemStart) OPTIONAL str

        redeem_end: (redeemEnd) OPTIONAL str

        redeem_type: (redeemType) REQUIRED str

        items: (items) OPTIONAL List[RedeemableItem]

        batch_no: (batchNo) REQUIRED int

        acquire_order_no: (acquireOrderNo) OPTIONAL str

        acquire_user_id: (acquireUserId) OPTIONAL str

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    id_: str                                                                                       # REQUIRED
    type_: str                                                                                     # REQUIRED
    namespace: str                                                                                 # REQUIRED
    campaign_id: str                                                                               # REQUIRED
    value: str                                                                                     # REQUIRED
    max_redeem_count_per_code: int                                                                 # REQUIRED
    max_redeem_count_per_code_per_user: int                                                        # REQUIRED
    max_redeem_count_per_campaign_per_user: int                                                    # REQUIRED
    remainder: int                                                                                 # REQUIRED
    redeemed_count: int                                                                            # REQUIRED
    status: str                                                                                    # REQUIRED
    redeem_start: str                                                                              # OPTIONAL
    redeem_end: str                                                                                # OPTIONAL
    redeem_type: str                                                                               # REQUIRED
    items: List[RedeemableItem]                                                                    # OPTIONAL
    batch_no: int                                                                                  # REQUIRED
    acquire_order_no: str                                                                          # OPTIONAL
    acquire_user_id: str                                                                           # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_id(self, value: str) -> CodeInfo:
        self.id_ = value
        return self

    def with_type(self, value: str) -> CodeInfo:
        self.type_ = value
        return self

    def with_namespace(self, value: str) -> CodeInfo:
        self.namespace = value
        return self

    def with_campaign_id(self, value: str) -> CodeInfo:
        self.campaign_id = value
        return self

    def with_value(self, value: str) -> CodeInfo:
        self.value = value
        return self

    def with_max_redeem_count_per_code(self, value: int) -> CodeInfo:
        self.max_redeem_count_per_code = value
        return self

    def with_max_redeem_count_per_code_per_user(self, value: int) -> CodeInfo:
        self.max_redeem_count_per_code_per_user = value
        return self

    def with_max_redeem_count_per_campaign_per_user(self, value: int) -> CodeInfo:
        self.max_redeem_count_per_campaign_per_user = value
        return self

    def with_remainder(self, value: int) -> CodeInfo:
        self.remainder = value
        return self

    def with_redeemed_count(self, value: int) -> CodeInfo:
        self.redeemed_count = value
        return self

    def with_status(self, value: str) -> CodeInfo:
        self.status = value
        return self

    def with_redeem_start(self, value: str) -> CodeInfo:
        self.redeem_start = value
        return self

    def with_redeem_end(self, value: str) -> CodeInfo:
        self.redeem_end = value
        return self

    def with_redeem_type(self, value: str) -> CodeInfo:
        self.redeem_type = value
        return self

    def with_items(self, value: List[RedeemableItem]) -> CodeInfo:
        self.items = value
        return self

    def with_batch_no(self, value: int) -> CodeInfo:
        self.batch_no = value
        return self

    def with_acquire_order_no(self, value: str) -> CodeInfo:
        self.acquire_order_no = value
        return self

    def with_acquire_user_id(self, value: str) -> CodeInfo:
        self.acquire_user_id = value
        return self

    def with_created_at(self, value: str) -> CodeInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> CodeInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = str()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "campaign_id"):
            result["campaignId"] = str(self.campaign_id)
        elif include_empty:
            result["campaignId"] = str()
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = str()
        if hasattr(self, "max_redeem_count_per_code"):
            result["maxRedeemCountPerCode"] = int(self.max_redeem_count_per_code)
        elif include_empty:
            result["maxRedeemCountPerCode"] = int()
        if hasattr(self, "max_redeem_count_per_code_per_user"):
            result["maxRedeemCountPerCodePerUser"] = int(self.max_redeem_count_per_code_per_user)
        elif include_empty:
            result["maxRedeemCountPerCodePerUser"] = int()
        if hasattr(self, "max_redeem_count_per_campaign_per_user"):
            result["maxRedeemCountPerCampaignPerUser"] = int(self.max_redeem_count_per_campaign_per_user)
        elif include_empty:
            result["maxRedeemCountPerCampaignPerUser"] = int()
        if hasattr(self, "remainder"):
            result["remainder"] = int(self.remainder)
        elif include_empty:
            result["remainder"] = int()
        if hasattr(self, "redeemed_count"):
            result["redeemedCount"] = int(self.redeemed_count)
        elif include_empty:
            result["redeemedCount"] = int()
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "redeem_start"):
            result["redeemStart"] = str(self.redeem_start)
        elif include_empty:
            result["redeemStart"] = str()
        if hasattr(self, "redeem_end"):
            result["redeemEnd"] = str(self.redeem_end)
        elif include_empty:
            result["redeemEnd"] = str()
        if hasattr(self, "redeem_type"):
            result["redeemType"] = str(self.redeem_type)
        elif include_empty:
            result["redeemType"] = str()
        if hasattr(self, "items"):
            result["items"] = [i0.to_dict(include_empty=include_empty) for i0 in self.items]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "batch_no"):
            result["batchNo"] = int(self.batch_no)
        elif include_empty:
            result["batchNo"] = int()
        if hasattr(self, "acquire_order_no"):
            result["acquireOrderNo"] = str(self.acquire_order_no)
        elif include_empty:
            result["acquireOrderNo"] = str()
        if hasattr(self, "acquire_user_id"):
            result["acquireUserId"] = str(self.acquire_user_id)
        elif include_empty:
            result["acquireUserId"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "updated_at"):
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
        campaign_id: str,
        value: str,
        max_redeem_count_per_code: int,
        max_redeem_count_per_code_per_user: int,
        max_redeem_count_per_campaign_per_user: int,
        remainder: int,
        redeemed_count: int,
        status: str,
        redeem_type: str,
        batch_no: int,
        created_at: str,
        updated_at: str,
        redeem_start: Optional[str] = None,
        redeem_end: Optional[str] = None,
        items: Optional[List[RedeemableItem]] = None,
        acquire_order_no: Optional[str] = None,
        acquire_user_id: Optional[str] = None,
    ) -> CodeInfo:
        instance = cls()
        instance.id_ = id_
        instance.type_ = type_
        instance.namespace = namespace
        instance.campaign_id = campaign_id
        instance.value = value
        instance.max_redeem_count_per_code = max_redeem_count_per_code
        instance.max_redeem_count_per_code_per_user = max_redeem_count_per_code_per_user
        instance.max_redeem_count_per_campaign_per_user = max_redeem_count_per_campaign_per_user
        instance.remainder = remainder
        instance.redeemed_count = redeemed_count
        instance.status = status
        instance.redeem_type = redeem_type
        instance.batch_no = batch_no
        instance.created_at = created_at
        instance.updated_at = updated_at
        if redeem_start is not None:
            instance.redeem_start = redeem_start
        if redeem_end is not None:
            instance.redeem_end = redeem_end
        if items is not None:
            instance.items = items
        if acquire_order_no is not None:
            instance.acquire_order_no = acquire_order_no
        if acquire_user_id is not None:
            instance.acquire_user_id = acquire_user_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CodeInfo:
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
        if "campaignId" in dict_ and dict_["campaignId"] is not None:
            instance.campaign_id = str(dict_["campaignId"])
        elif include_empty:
            instance.campaign_id = str()
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = str()
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
        if "remainder" in dict_ and dict_["remainder"] is not None:
            instance.remainder = int(dict_["remainder"])
        elif include_empty:
            instance.remainder = int()
        if "redeemedCount" in dict_ and dict_["redeemedCount"] is not None:
            instance.redeemed_count = int(dict_["redeemedCount"])
        elif include_empty:
            instance.redeemed_count = int()
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
        if "redeemType" in dict_ and dict_["redeemType"] is not None:
            instance.redeem_type = str(dict_["redeemType"])
        elif include_empty:
            instance.redeem_type = str()
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [RedeemableItem.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["items"]]
        elif include_empty:
            instance.items = []
        if "batchNo" in dict_ and dict_["batchNo"] is not None:
            instance.batch_no = int(dict_["batchNo"])
        elif include_empty:
            instance.batch_no = int()
        if "acquireOrderNo" in dict_ and dict_["acquireOrderNo"] is not None:
            instance.acquire_order_no = str(dict_["acquireOrderNo"])
        elif include_empty:
            instance.acquire_order_no = str()
        if "acquireUserId" in dict_ and dict_["acquireUserId"] is not None:
            instance.acquire_user_id = str(dict_["acquireUserId"])
        elif include_empty:
            instance.acquire_user_id = str()
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
            "campaignId": "campaign_id",
            "value": "value",
            "maxRedeemCountPerCode": "max_redeem_count_per_code",
            "maxRedeemCountPerCodePerUser": "max_redeem_count_per_code_per_user",
            "maxRedeemCountPerCampaignPerUser": "max_redeem_count_per_campaign_per_user",
            "remainder": "remainder",
            "redeemedCount": "redeemed_count",
            "status": "status",
            "redeemStart": "redeem_start",
            "redeemEnd": "redeem_end",
            "redeemType": "redeem_type",
            "items": "items",
            "batchNo": "batch_no",
            "acquireOrderNo": "acquire_order_no",
            "acquireUserId": "acquire_user_id",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
