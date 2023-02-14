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


class EntitlementTypeEnum(StrEnum):
    CONSUMABLE = "CONSUMABLE"
    DURABLE = "DURABLE"


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


class StatusEnum(StrEnum):
    ACTIVE = "ACTIVE"
    INACTIVE = "INACTIVE"


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


class SeasonTypeEnum(StrEnum):
    PASS = "PASS"
    TIER = "TIER"


class BasicItem(Model):
    """Basic item (BasicItem)

    Properties:
        created_at: (createdAt) REQUIRED str

        entitlement_type: (entitlementType) REQUIRED Union[str, EntitlementTypeEnum]

        item_id: (itemId) REQUIRED str

        item_type: (itemType) REQUIRED Union[str, ItemTypeEnum]

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        status: (status) REQUIRED Union[str, StatusEnum]

        updated_at: (updatedAt) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum]

        base_app_id: (baseAppId) OPTIONAL str

        features: (features) OPTIONAL List[str]

        season_type: (seasonType) OPTIONAL Union[str, SeasonTypeEnum]

        sku: (sku) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    created_at: str  # REQUIRED
    entitlement_type: Union[str, EntitlementTypeEnum]  # REQUIRED
    item_id: str  # REQUIRED
    item_type: Union[str, ItemTypeEnum]  # REQUIRED
    name: str  # REQUIRED
    namespace: str  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    updated_at: str  # REQUIRED
    app_id: str  # OPTIONAL
    app_type: Union[str, AppTypeEnum]  # OPTIONAL
    base_app_id: str  # OPTIONAL
    features: List[str]  # OPTIONAL
    season_type: Union[str, SeasonTypeEnum]  # OPTIONAL
    sku: str  # OPTIONAL
    tags: List[str]  # OPTIONAL
    use_count: int  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_created_at(self, value: str) -> BasicItem:
        self.created_at = value
        return self

    def with_entitlement_type(
        self, value: Union[str, EntitlementTypeEnum]
    ) -> BasicItem:
        self.entitlement_type = value
        return self

    def with_item_id(self, value: str) -> BasicItem:
        self.item_id = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> BasicItem:
        self.item_type = value
        return self

    def with_name(self, value: str) -> BasicItem:
        self.name = value
        return self

    def with_namespace(self, value: str) -> BasicItem:
        self.namespace = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> BasicItem:
        self.status = value
        return self

    def with_updated_at(self, value: str) -> BasicItem:
        self.updated_at = value
        return self

    def with_app_id(self, value: str) -> BasicItem:
        self.app_id = value
        return self

    def with_app_type(self, value: Union[str, AppTypeEnum]) -> BasicItem:
        self.app_type = value
        return self

    def with_base_app_id(self, value: str) -> BasicItem:
        self.base_app_id = value
        return self

    def with_features(self, value: List[str]) -> BasicItem:
        self.features = value
        return self

    def with_season_type(self, value: Union[str, SeasonTypeEnum]) -> BasicItem:
        self.season_type = value
        return self

    def with_sku(self, value: str) -> BasicItem:
        self.sku = value
        return self

    def with_tags(self, value: List[str]) -> BasicItem:
        self.tags = value
        return self

    def with_use_count(self, value: int) -> BasicItem:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "entitlement_type"):
            result["entitlementType"] = str(self.entitlement_type)
        elif include_empty:
            result["entitlementType"] = Union[str, EntitlementTypeEnum]()
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
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = ""
        if hasattr(self, "app_type"):
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = Union[str, AppTypeEnum]()
        if hasattr(self, "base_app_id"):
            result["baseAppId"] = str(self.base_app_id)
        elif include_empty:
            result["baseAppId"] = ""
        if hasattr(self, "features"):
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "season_type"):
            result["seasonType"] = str(self.season_type)
        elif include_empty:
            result["seasonType"] = Union[str, SeasonTypeEnum]()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = 0
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        created_at: str,
        entitlement_type: Union[str, EntitlementTypeEnum],
        item_id: str,
        item_type: Union[str, ItemTypeEnum],
        name: str,
        namespace: str,
        status: Union[str, StatusEnum],
        updated_at: str,
        app_id: Optional[str] = None,
        app_type: Optional[Union[str, AppTypeEnum]] = None,
        base_app_id: Optional[str] = None,
        features: Optional[List[str]] = None,
        season_type: Optional[Union[str, SeasonTypeEnum]] = None,
        sku: Optional[str] = None,
        tags: Optional[List[str]] = None,
        use_count: Optional[int] = None,
    ) -> BasicItem:
        instance = cls()
        instance.created_at = created_at
        instance.entitlement_type = entitlement_type
        instance.item_id = item_id
        instance.item_type = item_type
        instance.name = name
        instance.namespace = namespace
        instance.status = status
        instance.updated_at = updated_at
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if base_app_id is not None:
            instance.base_app_id = base_app_id
        if features is not None:
            instance.features = features
        if season_type is not None:
            instance.season_type = season_type
        if sku is not None:
            instance.sku = sku
        if tags is not None:
            instance.tags = tags
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> BasicItem:
        instance = cls()
        if not dict_:
            return instance
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "entitlementType" in dict_ and dict_["entitlementType"] is not None:
            instance.entitlement_type = str(dict_["entitlementType"])
        elif include_empty:
            instance.entitlement_type = Union[str, EntitlementTypeEnum]()
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
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = ""
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = Union[str, AppTypeEnum]()
        if "baseAppId" in dict_ and dict_["baseAppId"] is not None:
            instance.base_app_id = str(dict_["baseAppId"])
        elif include_empty:
            instance.base_app_id = ""
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "seasonType" in dict_ and dict_["seasonType"] is not None:
            instance.season_type = str(dict_["seasonType"])
        elif include_empty:
            instance.season_type = Union[str, SeasonTypeEnum]()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = 0
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, BasicItem]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[BasicItem]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[BasicItem, List[BasicItem], Dict[Any, BasicItem]]:
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
            "entitlementType": "entitlement_type",
            "itemId": "item_id",
            "itemType": "item_type",
            "name": "name",
            "namespace": "namespace",
            "status": "status",
            "updatedAt": "updated_at",
            "appId": "app_id",
            "appType": "app_type",
            "baseAppId": "base_app_id",
            "features": "features",
            "seasonType": "season_type",
            "sku": "sku",
            "tags": "tags",
            "useCount": "use_count",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "createdAt": True,
            "entitlementType": True,
            "itemId": True,
            "itemType": True,
            "name": True,
            "namespace": True,
            "status": True,
            "updatedAt": True,
            "appId": False,
            "appType": False,
            "baseAppId": False,
            "features": False,
            "seasonType": False,
            "sku": False,
            "tags": False,
            "useCount": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "entitlementType": ["CONSUMABLE", "DURABLE"],
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
            "status": ["ACTIVE", "INACTIVE"],
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],
            "seasonType": ["PASS", "TIER"],
        }

    # endregion static methods
