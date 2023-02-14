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
from ....core import StrEnum

from ..models.redeemable_item import RedeemableItem


class RedeemTypeEnum(StrEnum):
    ITEM = "ITEM"


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    INACTIVE = "INACTIVE"


class TypeEnum(StrEnum):
    REDEMPTION = "REDEMPTION"


class CodeInfo(Model):
    """Code info (CodeInfo)

    Properties:
        batch_no: (batchNo) REQUIRED int

        campaign_id: (campaignId) REQUIRED str

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        max_redeem_count_per_campaign_per_user: (maxRedeemCountPerCampaignPerUser) REQUIRED int

        max_redeem_count_per_code: (maxRedeemCountPerCode) REQUIRED int

        max_redeem_count_per_code_per_user: (maxRedeemCountPerCodePerUser) REQUIRED int

        namespace: (namespace) REQUIRED str

        redeem_type: (redeemType) REQUIRED Union[str, RedeemTypeEnum]

        redeemed_count: (redeemedCount) REQUIRED int

        remainder: (remainder) REQUIRED int

        status: (status) REQUIRED Union[str, StatusEnum]

        type_: (type) REQUIRED Union[str, TypeEnum]

        updated_at: (updatedAt) REQUIRED str

        value: (value) REQUIRED str

        acquire_order_no: (acquireOrderNo) OPTIONAL str

        acquire_user_id: (acquireUserId) OPTIONAL str

        items: (items) OPTIONAL List[RedeemableItem]

        redeem_end: (redeemEnd) OPTIONAL str

        redeem_start: (redeemStart) OPTIONAL str
    """

    # region fields

    batch_no: int  # REQUIRED
    campaign_id: str  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    max_redeem_count_per_campaign_per_user: int  # REQUIRED
    max_redeem_count_per_code: int  # REQUIRED
    max_redeem_count_per_code_per_user: int  # REQUIRED
    namespace: str  # REQUIRED
    redeem_type: Union[str, RedeemTypeEnum]  # REQUIRED
    redeemed_count: int  # REQUIRED
    remainder: int  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    value: str  # REQUIRED
    acquire_order_no: str  # OPTIONAL
    acquire_user_id: str  # OPTIONAL
    items: List[RedeemableItem]  # OPTIONAL
    redeem_end: str  # OPTIONAL
    redeem_start: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_batch_no(self, value: int) -> CodeInfo:
        self.batch_no = value
        return self

    def with_campaign_id(self, value: str) -> CodeInfo:
        self.campaign_id = value
        return self

    def with_created_at(self, value: str) -> CodeInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> CodeInfo:
        self.id_ = value
        return self

    def with_max_redeem_count_per_campaign_per_user(self, value: int) -> CodeInfo:
        self.max_redeem_count_per_campaign_per_user = value
        return self

    def with_max_redeem_count_per_code(self, value: int) -> CodeInfo:
        self.max_redeem_count_per_code = value
        return self

    def with_max_redeem_count_per_code_per_user(self, value: int) -> CodeInfo:
        self.max_redeem_count_per_code_per_user = value
        return self

    def with_namespace(self, value: str) -> CodeInfo:
        self.namespace = value
        return self

    def with_redeem_type(self, value: Union[str, RedeemTypeEnum]) -> CodeInfo:
        self.redeem_type = value
        return self

    def with_redeemed_count(self, value: int) -> CodeInfo:
        self.redeemed_count = value
        return self

    def with_remainder(self, value: int) -> CodeInfo:
        self.remainder = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> CodeInfo:
        self.status = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> CodeInfo:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> CodeInfo:
        self.updated_at = value
        return self

    def with_value(self, value: str) -> CodeInfo:
        self.value = value
        return self

    def with_acquire_order_no(self, value: str) -> CodeInfo:
        self.acquire_order_no = value
        return self

    def with_acquire_user_id(self, value: str) -> CodeInfo:
        self.acquire_user_id = value
        return self

    def with_items(self, value: List[RedeemableItem]) -> CodeInfo:
        self.items = value
        return self

    def with_redeem_end(self, value: str) -> CodeInfo:
        self.redeem_end = value
        return self

    def with_redeem_start(self, value: str) -> CodeInfo:
        self.redeem_start = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "batch_no"):
            result["batchNo"] = int(self.batch_no)
        elif include_empty:
            result["batchNo"] = 0
        if hasattr(self, "campaign_id"):
            result["campaignId"] = str(self.campaign_id)
        elif include_empty:
            result["campaignId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
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
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "redeem_type"):
            result["redeemType"] = str(self.redeem_type)
        elif include_empty:
            result["redeemType"] = Union[str, RedeemTypeEnum]()
        if hasattr(self, "redeemed_count"):
            result["redeemedCount"] = int(self.redeemed_count)
        elif include_empty:
            result["redeemedCount"] = 0
        if hasattr(self, "remainder"):
            result["remainder"] = int(self.remainder)
        elif include_empty:
            result["remainder"] = 0
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "value"):
            result["value"] = str(self.value)
        elif include_empty:
            result["value"] = ""
        if hasattr(self, "acquire_order_no"):
            result["acquireOrderNo"] = str(self.acquire_order_no)
        elif include_empty:
            result["acquireOrderNo"] = ""
        if hasattr(self, "acquire_user_id"):
            result["acquireUserId"] = str(self.acquire_user_id)
        elif include_empty:
            result["acquireUserId"] = ""
        if hasattr(self, "items"):
            result["items"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.items
            ]
        elif include_empty:
            result["items"] = []
        if hasattr(self, "redeem_end"):
            result["redeemEnd"] = str(self.redeem_end)
        elif include_empty:
            result["redeemEnd"] = ""
        if hasattr(self, "redeem_start"):
            result["redeemStart"] = str(self.redeem_start)
        elif include_empty:
            result["redeemStart"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        batch_no: int,
        campaign_id: str,
        created_at: str,
        id_: str,
        max_redeem_count_per_campaign_per_user: int,
        max_redeem_count_per_code: int,
        max_redeem_count_per_code_per_user: int,
        namespace: str,
        redeem_type: Union[str, RedeemTypeEnum],
        redeemed_count: int,
        remainder: int,
        status: Union[str, StatusEnum],
        type_: Union[str, TypeEnum],
        updated_at: str,
        value: str,
        acquire_order_no: Optional[str] = None,
        acquire_user_id: Optional[str] = None,
        items: Optional[List[RedeemableItem]] = None,
        redeem_end: Optional[str] = None,
        redeem_start: Optional[str] = None,
    ) -> CodeInfo:
        instance = cls()
        instance.batch_no = batch_no
        instance.campaign_id = campaign_id
        instance.created_at = created_at
        instance.id_ = id_
        instance.max_redeem_count_per_campaign_per_user = (
            max_redeem_count_per_campaign_per_user
        )
        instance.max_redeem_count_per_code = max_redeem_count_per_code
        instance.max_redeem_count_per_code_per_user = max_redeem_count_per_code_per_user
        instance.namespace = namespace
        instance.redeem_type = redeem_type
        instance.redeemed_count = redeemed_count
        instance.remainder = remainder
        instance.status = status
        instance.type_ = type_
        instance.updated_at = updated_at
        instance.value = value
        if acquire_order_no is not None:
            instance.acquire_order_no = acquire_order_no
        if acquire_user_id is not None:
            instance.acquire_user_id = acquire_user_id
        if items is not None:
            instance.items = items
        if redeem_end is not None:
            instance.redeem_end = redeem_end
        if redeem_start is not None:
            instance.redeem_start = redeem_start
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CodeInfo:
        instance = cls()
        if not dict_:
            return instance
        if "batchNo" in dict_ and dict_["batchNo"] is not None:
            instance.batch_no = int(dict_["batchNo"])
        elif include_empty:
            instance.batch_no = 0
        if "campaignId" in dict_ and dict_["campaignId"] is not None:
            instance.campaign_id = str(dict_["campaignId"])
        elif include_empty:
            instance.campaign_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "redeemType" in dict_ and dict_["redeemType"] is not None:
            instance.redeem_type = str(dict_["redeemType"])
        elif include_empty:
            instance.redeem_type = Union[str, RedeemTypeEnum]()
        if "redeemedCount" in dict_ and dict_["redeemedCount"] is not None:
            instance.redeemed_count = int(dict_["redeemedCount"])
        elif include_empty:
            instance.redeemed_count = 0
        if "remainder" in dict_ and dict_["remainder"] is not None:
            instance.remainder = int(dict_["remainder"])
        elif include_empty:
            instance.remainder = 0
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "value" in dict_ and dict_["value"] is not None:
            instance.value = str(dict_["value"])
        elif include_empty:
            instance.value = ""
        if "acquireOrderNo" in dict_ and dict_["acquireOrderNo"] is not None:
            instance.acquire_order_no = str(dict_["acquireOrderNo"])
        elif include_empty:
            instance.acquire_order_no = ""
        if "acquireUserId" in dict_ and dict_["acquireUserId"] is not None:
            instance.acquire_user_id = str(dict_["acquireUserId"])
        elif include_empty:
            instance.acquire_user_id = ""
        if "items" in dict_ and dict_["items"] is not None:
            instance.items = [
                RedeemableItem.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["items"]
            ]
        elif include_empty:
            instance.items = []
        if "redeemEnd" in dict_ and dict_["redeemEnd"] is not None:
            instance.redeem_end = str(dict_["redeemEnd"])
        elif include_empty:
            instance.redeem_end = ""
        if "redeemStart" in dict_ and dict_["redeemStart"] is not None:
            instance.redeem_start = str(dict_["redeemStart"])
        elif include_empty:
            instance.redeem_start = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CodeInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CodeInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CodeInfo, List[CodeInfo], Dict[Any, CodeInfo]]:
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
            "batchNo": "batch_no",
            "campaignId": "campaign_id",
            "createdAt": "created_at",
            "id": "id_",
            "maxRedeemCountPerCampaignPerUser": "max_redeem_count_per_campaign_per_user",
            "maxRedeemCountPerCode": "max_redeem_count_per_code",
            "maxRedeemCountPerCodePerUser": "max_redeem_count_per_code_per_user",
            "namespace": "namespace",
            "redeemType": "redeem_type",
            "redeemedCount": "redeemed_count",
            "remainder": "remainder",
            "status": "status",
            "type": "type_",
            "updatedAt": "updated_at",
            "value": "value",
            "acquireOrderNo": "acquire_order_no",
            "acquireUserId": "acquire_user_id",
            "items": "items",
            "redeemEnd": "redeem_end",
            "redeemStart": "redeem_start",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "batchNo": True,
            "campaignId": True,
            "createdAt": True,
            "id": True,
            "maxRedeemCountPerCampaignPerUser": True,
            "maxRedeemCountPerCode": True,
            "maxRedeemCountPerCodePerUser": True,
            "namespace": True,
            "redeemType": True,
            "redeemedCount": True,
            "remainder": True,
            "status": True,
            "type": True,
            "updatedAt": True,
            "value": True,
            "acquireOrderNo": False,
            "acquireUserId": False,
            "items": False,
            "redeemEnd": False,
            "redeemStart": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "redeemType": ["ITEM"],
            "status": ["ACTIVE", "INACTIVE"],
            "type": ["REDEMPTION"],
        }

    # endregion static methods
