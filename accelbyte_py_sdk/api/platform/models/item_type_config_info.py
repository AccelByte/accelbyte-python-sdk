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


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    LOOTBOX = "LOOTBOX"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class ItemTypeConfigInfo(Model):
    """Item type config info (ItemTypeConfigInfo)

    Properties:
        created_at: (createdAt) REQUIRED str

        fulfillment_url: (fulfillmentUrl) REQUIRED str

        id_: (id) REQUIRED str

        item_type: (itemType) REQUIRED Union[str, ItemTypeEnum]

        updated_at: (updatedAt) REQUIRED str

        clazz: (clazz) OPTIONAL str

        dry_run: (dryRun) OPTIONAL bool

        purchase_condition_url: (purchaseConditionUrl) OPTIONAL str
    """

    # region fields

    created_at: str  # REQUIRED
    fulfillment_url: str  # REQUIRED
    id_: str  # REQUIRED
    item_type: Union[str, ItemTypeEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    clazz: str  # OPTIONAL
    dry_run: bool  # OPTIONAL
    purchase_condition_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> ItemTypeConfigInfo:
        self.created_at = value
        return self

    def with_fulfillment_url(self, value: str) -> ItemTypeConfigInfo:
        self.fulfillment_url = value
        return self

    def with_id(self, value: str) -> ItemTypeConfigInfo:
        self.id_ = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> ItemTypeConfigInfo:
        self.item_type = value
        return self

    def with_updated_at(self, value: str) -> ItemTypeConfigInfo:
        self.updated_at = value
        return self

    def with_clazz(self, value: str) -> ItemTypeConfigInfo:
        self.clazz = value
        return self

    def with_dry_run(self, value: bool) -> ItemTypeConfigInfo:
        self.dry_run = value
        return self

    def with_purchase_condition_url(self, value: str) -> ItemTypeConfigInfo:
        self.purchase_condition_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "fulfillment_url"):
            result["fulfillmentUrl"] = str(self.fulfillment_url)
        elif include_empty:
            result["fulfillmentUrl"] = ""
        if hasattr(self, "id_"):
            result["id"] = str(self.id_)
        elif include_empty:
            result["id"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "clazz"):
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = ""
        if hasattr(self, "dry_run"):
            result["dryRun"] = bool(self.dry_run)
        elif include_empty:
            result["dryRun"] = False
        if hasattr(self, "purchase_condition_url"):
            result["purchaseConditionUrl"] = str(self.purchase_condition_url)
        elif include_empty:
            result["purchaseConditionUrl"] = ""
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        fulfillment_url: str,
        id_: str,
        item_type: Union[str, ItemTypeEnum],
        updated_at: str,
        clazz: Optional[str] = None,
        dry_run: Optional[bool] = None,
        purchase_condition_url: Optional[str] = None,
    ) -> ItemTypeConfigInfo:
        instance = cls()
        instance.created_at = created_at
        instance.fulfillment_url = fulfillment_url
        instance.id_ = id_
        instance.item_type = item_type
        instance.updated_at = updated_at
        if clazz is not None:
            instance.clazz = clazz
        if dry_run is not None:
            instance.dry_run = dry_run
        if purchase_condition_url is not None:
            instance.purchase_condition_url = purchase_condition_url
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ItemTypeConfigInfo:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "fulfillmentUrl" in dict_ and dict_["fulfillmentUrl"] is not None:
            instance.fulfillment_url = str(dict_["fulfillmentUrl"])
        elif include_empty:
            instance.fulfillment_url = ""
        if "id" in dict_ and dict_["id"] is not None:
            instance.id_ = str(dict_["id"])
        elif include_empty:
            instance.id_ = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = ""
        if "dryRun" in dict_ and dict_["dryRun"] is not None:
            instance.dry_run = bool(dict_["dryRun"])
        elif include_empty:
            instance.dry_run = False
        if (
            "purchaseConditionUrl" in dict_
            and dict_["purchaseConditionUrl"] is not None
        ):
            instance.purchase_condition_url = str(dict_["purchaseConditionUrl"])
        elif include_empty:
            instance.purchase_condition_url = ""
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ItemTypeConfigInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemTypeConfigInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ItemTypeConfigInfo, List[ItemTypeConfigInfo], Dict[Any, ItemTypeConfigInfo]
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
            "createdAt": "created_at",
            "fulfillmentUrl": "fulfillment_url",
            "id": "id_",
            "itemType": "item_type",
            "updatedAt": "updated_at",
            "clazz": "clazz",
            "dryRun": "dry_run",
            "purchaseConditionUrl": "purchase_condition_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "fulfillmentUrl": True,
            "id": True,
            "itemType": True,
            "updatedAt": True,
            "clazz": False,
            "dryRun": False,
            "purchaseConditionUrl": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "itemType": [
                "APP",
                "BUNDLE",
                "CODE",
                "COINS",
                "EXTENSION",
                "INGAMEITEM",
                "LOOTBOX",
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],
        }

    # endregion static methods
