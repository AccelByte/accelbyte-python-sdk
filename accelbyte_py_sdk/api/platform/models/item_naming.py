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


class SeasonTypeEnum(StrEnum):
    PASS = "PASS"
    TIER = "TIER"


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    INACTIVE = "INACTIVE"


class ItemNaming(Model):
    """Item naming (ItemNaming)

    Properties:
        item_id: (itemId) REQUIRED str

        item_type: (itemType) REQUIRED Union[str, ItemTypeEnum]

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        category_path: (categoryPath) OPTIONAL str

        season_type: (seasonType) OPTIONAL Union[str, SeasonTypeEnum]

        sku: (sku) OPTIONAL str

        status: (status) OPTIONAL Union[str, StatusEnum]
    """

    # region fields

    item_id: str  # REQUIRED
    item_type: Union[str, ItemTypeEnum]  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    category_path: str  # OPTIONAL
    season_type: Union[str, SeasonTypeEnum]  # OPTIONAL
    sku: str  # OPTIONAL
    status: Union[str, StatusEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> ItemNaming:
        self.item_id = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> ItemNaming:
        self.item_type = value
        return self

    def with_name(self, value: str) -> ItemNaming:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ItemNaming:
        self.namespace = value
        return self

    def with_category_path(self, value: str) -> ItemNaming:
        self.category_path = value
        return self

    def with_season_type(self, value: Union[str, SeasonTypeEnum]) -> ItemNaming:
        self.season_type = value
        return self

    def with_sku(self, value: str) -> ItemNaming:
        self.sku = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> ItemNaming:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "category_path"):
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = ""
        if hasattr(self, "season_type"):
            result["seasonType"] = str(self.season_type)
        elif include_empty:
            result["seasonType"] = Union[str, SeasonTypeEnum]()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_id: str,
        item_type: Union[str, ItemTypeEnum],
        name: str,
        namespace: str,
        category_path: Optional[str] = None,
        season_type: Optional[Union[str, SeasonTypeEnum]] = None,
        sku: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
    ) -> ItemNaming:
        instance = cls()
        instance.item_id = item_id
        instance.item_type = item_type
        instance.name = name
        instance.namespace = namespace
        if category_path is not None:
            instance.category_path = category_path
        if season_type is not None:
            instance.season_type = season_type
        if sku is not None:
            instance.sku = sku
        if status is not None:
            instance.status = status
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ItemNaming:
        instance = cls()
        if not dict_:
            return instance
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = ""
        if "seasonType" in dict_ and dict_["seasonType"] is not None:
            instance.season_type = str(dict_["seasonType"])
        elif include_empty:
            instance.season_type = Union[str, SeasonTypeEnum]()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, ItemNaming]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[ItemNaming]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[ItemNaming, List[ItemNaming], Dict[Any, ItemNaming]]:
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
            "itemId": "item_id",
            "itemType": "item_type",
            "name": "name",
            "namespace": "namespace",
            "categoryPath": "category_path",
            "seasonType": "season_type",
            "sku": "sku",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "itemId": True,
            "itemType": True,
            "name": True,
            "namespace": True,
            "categoryPath": False,
            "seasonType": False,
            "sku": False,
            "status": False,
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
            "seasonType": ["PASS", "TIER"],
            "status": ["ACTIVE", "INACTIVE"],
        }

    # endregion static methods
