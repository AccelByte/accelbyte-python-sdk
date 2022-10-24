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


class ItemTypeEnum(StrEnum):
    APP = "APP"
    BUNDLE = "BUNDLE"
    CODE = "CODE"
    COINS = "COINS"
    EXTENSION = "EXTENSION"
    INGAMEITEM = "INGAMEITEM"
    MEDIA = "MEDIA"
    OPTIONBOX = "OPTIONBOX"
    SEASON = "SEASON"
    SUBSCRIPTION = "SUBSCRIPTION"


class ItemTypeConfigCreate(Model):
    """A DTO object for creating item type config API call. (ItemTypeConfigCreate)

    Properties:
        fulfillment_url: (fulfillmentUrl) REQUIRED str

        item_type: (itemType) REQUIRED Union[str, ItemTypeEnum]

        clazz: (clazz) OPTIONAL str

        dry_run: (dryRun) OPTIONAL bool

        purchase_condition_url: (purchaseConditionUrl) OPTIONAL str
    """

    # region fields

    fulfillment_url: str  # REQUIRED
    item_type: Union[str, ItemTypeEnum]  # REQUIRED
    clazz: str  # OPTIONAL
    dry_run: bool  # OPTIONAL
    purchase_condition_url: str  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_fulfillment_url(self, value: str) -> ItemTypeConfigCreate:
        self.fulfillment_url = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> ItemTypeConfigCreate:
        self.item_type = value
        return self

    def with_clazz(self, value: str) -> ItemTypeConfigCreate:
        self.clazz = value
        return self

    def with_dry_run(self, value: bool) -> ItemTypeConfigCreate:
        self.dry_run = value
        return self

    def with_purchase_condition_url(self, value: str) -> ItemTypeConfigCreate:
        self.purchase_condition_url = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "fulfillment_url"):
            result["fulfillmentUrl"] = str(self.fulfillment_url)
        elif include_empty:
            result["fulfillmentUrl"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
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
        fulfillment_url: str,
        item_type: Union[str, ItemTypeEnum],
        clazz: Optional[str] = None,
        dry_run: Optional[bool] = None,
        purchase_condition_url: Optional[str] = None,
    ) -> ItemTypeConfigCreate:
        instance = cls()
        instance.fulfillment_url = fulfillment_url
        instance.item_type = item_type
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
    ) -> ItemTypeConfigCreate:
        instance = cls()
        if not dict_:
            return instance
        if "fulfillmentUrl" in dict_ and dict_["fulfillmentUrl"] is not None:
            instance.fulfillment_url = str(dict_["fulfillmentUrl"])
        elif include_empty:
            instance.fulfillment_url = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
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
    ) -> Dict[str, ItemTypeConfigCreate]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemTypeConfigCreate]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        ItemTypeConfigCreate,
        List[ItemTypeConfigCreate],
        Dict[Any, ItemTypeConfigCreate],
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
            "fulfillmentUrl": "fulfillment_url",
            "itemType": "item_type",
            "clazz": "clazz",
            "dryRun": "dry_run",
            "purchaseConditionUrl": "purchase_condition_url",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "fulfillmentUrl": True,
            "itemType": True,
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
                "MEDIA",
                "OPTIONBOX",
                "SEASON",
                "SUBSCRIPTION",
            ],
        }

    # endregion static methods
