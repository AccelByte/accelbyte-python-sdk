# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

# AccelByte Cloud Platform Service (4.17.0)

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


class CampaignInfo(Model):
    """Campaign info (CampaignInfo)

    Properties:
        booth_name: (boothName) REQUIRED str

        created_at: (createdAt) REQUIRED str

        id_: (id) REQUIRED str

        max_redeem_count_per_campaign_per_user: (maxRedeemCountPerCampaignPerUser) REQUIRED int

        max_redeem_count_per_code: (maxRedeemCountPerCode) REQUIRED int

        max_redeem_count_per_code_per_user: (maxRedeemCountPerCodePerUser) REQUIRED int

        max_sale_count: (maxSaleCount) REQUIRED int

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        redeem_type: (redeemType) REQUIRED Union[str, RedeemTypeEnum]

        status: (status) REQUIRED Union[str, StatusEnum]

        type_: (type) REQUIRED Union[str, TypeEnum]

        updated_at: (updatedAt) REQUIRED str

        description: (description) OPTIONAL str

        items: (items) OPTIONAL List[RedeemableItem]

        redeem_end: (redeemEnd) OPTIONAL str

        redeem_start: (redeemStart) OPTIONAL str

        tags: (tags) OPTIONAL List[str]
    """

    # region fields

    booth_name: str  # REQUIRED
    created_at: str  # REQUIRED
    id_: str  # REQUIRED
    max_redeem_count_per_campaign_per_user: int  # REQUIRED
    max_redeem_count_per_code: int  # REQUIRED
    max_redeem_count_per_code_per_user: int  # REQUIRED
    max_sale_count: int  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    redeem_type: Union[str, RedeemTypeEnum]  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    type_: Union[str, TypeEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    description: str  # OPTIONAL
    items: List[RedeemableItem]  # OPTIONAL
    redeem_end: str  # OPTIONAL
    redeem_start: str  # OPTIONAL
    tags: List[str]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_booth_name(self, value: str) -> CampaignInfo:
        self.booth_name = value
        return self

    def with_created_at(self, value: str) -> CampaignInfo:
        self.created_at = value
        return self

    def with_id(self, value: str) -> CampaignInfo:
        self.id_ = value
        return self

    def with_max_redeem_count_per_campaign_per_user(self, value: int) -> CampaignInfo:
        self.max_redeem_count_per_campaign_per_user = value
        return self

    def with_max_redeem_count_per_code(self, value: int) -> CampaignInfo:
        self.max_redeem_count_per_code = value
        return self

    def with_max_redeem_count_per_code_per_user(self, value: int) -> CampaignInfo:
        self.max_redeem_count_per_code_per_user = value
        return self

    def with_max_sale_count(self, value: int) -> CampaignInfo:
        self.max_sale_count = value
        return self

    def with_name(self, value: str) -> CampaignInfo:
        self.name = value
        return self

    def with_namespace(self, value: str) -> CampaignInfo:
        self.namespace = value
        return self

    def with_redeem_type(self, value: Union[str, RedeemTypeEnum]) -> CampaignInfo:
        self.redeem_type = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> CampaignInfo:
        self.status = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> CampaignInfo:
        self.type_ = value
        return self

    def with_updated_at(self, value: str) -> CampaignInfo:
        self.updated_at = value
        return self

    def with_description(self, value: str) -> CampaignInfo:
        self.description = value
        return self

    def with_items(self, value: List[RedeemableItem]) -> CampaignInfo:
        self.items = value
        return self

    def with_redeem_end(self, value: str) -> CampaignInfo:
        self.redeem_end = value
        return self

    def with_redeem_start(self, value: str) -> CampaignInfo:
        self.redeem_start = value
        return self

    def with_tags(self, value: List[str]) -> CampaignInfo:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "booth_name"):
            result["boothName"] = str(self.booth_name)
        elif include_empty:
            result["boothName"] = ""
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
        if hasattr(self, "max_sale_count"):
            result["maxSaleCount"] = int(self.max_sale_count)
        elif include_empty:
            result["maxSaleCount"] = 0
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "redeem_type"):
            result["redeemType"] = str(self.redeem_type)
        elif include_empty:
            result["redeemType"] = Union[str, RedeemTypeEnum]()
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
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
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
        booth_name: str,
        created_at: str,
        id_: str,
        max_redeem_count_per_campaign_per_user: int,
        max_redeem_count_per_code: int,
        max_redeem_count_per_code_per_user: int,
        max_sale_count: int,
        name: str,
        namespace: str,
        redeem_type: Union[str, RedeemTypeEnum],
        status: Union[str, StatusEnum],
        type_: Union[str, TypeEnum],
        updated_at: str,
        description: Optional[str] = None,
        items: Optional[List[RedeemableItem]] = None,
        redeem_end: Optional[str] = None,
        redeem_start: Optional[str] = None,
        tags: Optional[List[str]] = None,
    ) -> CampaignInfo:
        instance = cls()
        instance.booth_name = booth_name
        instance.created_at = created_at
        instance.id_ = id_
        instance.max_redeem_count_per_campaign_per_user = (
            max_redeem_count_per_campaign_per_user
        )
        instance.max_redeem_count_per_code = max_redeem_count_per_code
        instance.max_redeem_count_per_code_per_user = max_redeem_count_per_code_per_user
        instance.max_sale_count = max_sale_count
        instance.name = name
        instance.namespace = namespace
        instance.redeem_type = redeem_type
        instance.status = status
        instance.type_ = type_
        instance.updated_at = updated_at
        if description is not None:
            instance.description = description
        if items is not None:
            instance.items = items
        if redeem_end is not None:
            instance.redeem_end = redeem_end
        if redeem_start is not None:
            instance.redeem_start = redeem_start
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> CampaignInfo:
        instance = cls()
        if not dict_:
            return instance
        if "boothName" in dict_ and dict_["boothName"] is not None:
            instance.booth_name = str(dict_["boothName"])
        elif include_empty:
            instance.booth_name = ""
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
        if "maxSaleCount" in dict_ and dict_["maxSaleCount"] is not None:
            instance.max_sale_count = int(dict_["maxSaleCount"])
        elif include_empty:
            instance.max_sale_count = 0
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "redeemType" in dict_ and dict_["redeemType"] is not None:
            instance.redeem_type = str(dict_["redeemType"])
        elif include_empty:
            instance.redeem_type = Union[str, RedeemTypeEnum]()
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
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
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
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CampaignInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CampaignInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[CampaignInfo, List[CampaignInfo], Dict[Any, CampaignInfo]]:
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
            "boothName": "booth_name",
            "createdAt": "created_at",
            "id": "id_",
            "maxRedeemCountPerCampaignPerUser": "max_redeem_count_per_campaign_per_user",
            "maxRedeemCountPerCode": "max_redeem_count_per_code",
            "maxRedeemCountPerCodePerUser": "max_redeem_count_per_code_per_user",
            "maxSaleCount": "max_sale_count",
            "name": "name",
            "namespace": "namespace",
            "redeemType": "redeem_type",
            "status": "status",
            "type": "type_",
            "updatedAt": "updated_at",
            "description": "description",
            "items": "items",
            "redeemEnd": "redeem_end",
            "redeemStart": "redeem_start",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "boothName": True,
            "createdAt": True,
            "id": True,
            "maxRedeemCountPerCampaignPerUser": True,
            "maxRedeemCountPerCode": True,
            "maxRedeemCountPerCodePerUser": True,
            "maxSaleCount": True,
            "name": True,
            "namespace": True,
            "redeemType": True,
            "status": True,
            "type": True,
            "updatedAt": True,
            "description": False,
            "items": False,
            "redeemEnd": False,
            "redeemStart": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "redeemType": ["ITEM"],
            "status": ["ACTIVE", "INACTIVE"],
            "type": ["REDEMPTION"],
        }

    # endregion static methods
