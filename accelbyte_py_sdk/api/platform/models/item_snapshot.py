# justice-platform-service (4.1.1)

# template file: justice_py_sdk_codegen/__main__.py

# Copyright (c) 2018 - 2022 AccelByte Inc. All Rights Reserved.
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

from ..models.recurring import Recurring
from ..models.region_data_item import RegionDataItem


class ItemSnapshot(Model):
    """Item snapshot (ItemSnapshot)

    Properties:
        entitlement_type: (entitlementType) REQUIRED str

        item_id: (itemId) REQUIRED str

        item_type: (itemType) REQUIRED str

        language: (language) REQUIRED str

        name: (name) REQUIRED str

        namespace: (namespace) REQUIRED str

        region: (region) REQUIRED str

        title: (title) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL str

        base_app_id: (baseAppId) OPTIONAL str

        booth_name: (boothName) OPTIONAL str

        created_at: (createdAt) OPTIONAL str

        description: (description) OPTIONAL str

        features: (features) OPTIONAL List[str]

        item_ids: (itemIds) OPTIONAL List[str]

        item_qty: (itemQty) OPTIONAL Dict[str, int]

        listable: (listable) OPTIONAL bool

        max_count: (maxCount) OPTIONAL int

        max_count_per_user: (maxCountPerUser) OPTIONAL int

        purchasable: (purchasable) OPTIONAL bool

        recurring: (recurring) OPTIONAL Recurring

        region_data_item: (regionDataItem) OPTIONAL RegionDataItem

        season_type: (seasonType) OPTIONAL str

        sku: (sku) OPTIONAL str

        stackable: (stackable) OPTIONAL bool

        target_currency_code: (targetCurrencyCode) OPTIONAL str

        target_item_id: (targetItemId) OPTIONAL str

        target_namespace: (targetNamespace) OPTIONAL str

        thumbnail_url: (thumbnailUrl) OPTIONAL str

        updated_at: (updatedAt) OPTIONAL str

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    entitlement_type: str                                                                          # REQUIRED
    item_id: str                                                                                   # REQUIRED
    item_type: str                                                                                 # REQUIRED
    language: str                                                                                  # REQUIRED
    name: str                                                                                      # REQUIRED
    namespace: str                                                                                 # REQUIRED
    region: str                                                                                    # REQUIRED
    title: str                                                                                     # REQUIRED
    app_id: str                                                                                    # OPTIONAL
    app_type: str                                                                                  # OPTIONAL
    base_app_id: str                                                                               # OPTIONAL
    booth_name: str                                                                                # OPTIONAL
    created_at: str                                                                                # OPTIONAL
    description: str                                                                               # OPTIONAL
    features: List[str]                                                                            # OPTIONAL
    item_ids: List[str]                                                                            # OPTIONAL
    item_qty: Dict[str, int]                                                                       # OPTIONAL
    listable: bool                                                                                 # OPTIONAL
    max_count: int                                                                                 # OPTIONAL
    max_count_per_user: int                                                                        # OPTIONAL
    purchasable: bool                                                                              # OPTIONAL
    recurring: Recurring                                                                           # OPTIONAL
    region_data_item: RegionDataItem                                                               # OPTIONAL
    season_type: str                                                                               # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    stackable: bool                                                                                # OPTIONAL
    target_currency_code: str                                                                      # OPTIONAL
    target_item_id: str                                                                            # OPTIONAL
    target_namespace: str                                                                          # OPTIONAL
    thumbnail_url: str                                                                             # OPTIONAL
    updated_at: str                                                                                # OPTIONAL
    use_count: int                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_type(self, value: str) -> ItemSnapshot:
        self.entitlement_type = value
        return self

    def with_item_id(self, value: str) -> ItemSnapshot:
        self.item_id = value
        return self

    def with_item_type(self, value: str) -> ItemSnapshot:
        self.item_type = value
        return self

    def with_language(self, value: str) -> ItemSnapshot:
        self.language = value
        return self

    def with_name(self, value: str) -> ItemSnapshot:
        self.name = value
        return self

    def with_namespace(self, value: str) -> ItemSnapshot:
        self.namespace = value
        return self

    def with_region(self, value: str) -> ItemSnapshot:
        self.region = value
        return self

    def with_title(self, value: str) -> ItemSnapshot:
        self.title = value
        return self

    def with_app_id(self, value: str) -> ItemSnapshot:
        self.app_id = value
        return self

    def with_app_type(self, value: str) -> ItemSnapshot:
        self.app_type = value
        return self

    def with_base_app_id(self, value: str) -> ItemSnapshot:
        self.base_app_id = value
        return self

    def with_booth_name(self, value: str) -> ItemSnapshot:
        self.booth_name = value
        return self

    def with_created_at(self, value: str) -> ItemSnapshot:
        self.created_at = value
        return self

    def with_description(self, value: str) -> ItemSnapshot:
        self.description = value
        return self

    def with_features(self, value: List[str]) -> ItemSnapshot:
        self.features = value
        return self

    def with_item_ids(self, value: List[str]) -> ItemSnapshot:
        self.item_ids = value
        return self

    def with_item_qty(self, value: Dict[str, int]) -> ItemSnapshot:
        self.item_qty = value
        return self

    def with_listable(self, value: bool) -> ItemSnapshot:
        self.listable = value
        return self

    def with_max_count(self, value: int) -> ItemSnapshot:
        self.max_count = value
        return self

    def with_max_count_per_user(self, value: int) -> ItemSnapshot:
        self.max_count_per_user = value
        return self

    def with_purchasable(self, value: bool) -> ItemSnapshot:
        self.purchasable = value
        return self

    def with_recurring(self, value: Recurring) -> ItemSnapshot:
        self.recurring = value
        return self

    def with_region_data_item(self, value: RegionDataItem) -> ItemSnapshot:
        self.region_data_item = value
        return self

    def with_season_type(self, value: str) -> ItemSnapshot:
        self.season_type = value
        return self

    def with_sku(self, value: str) -> ItemSnapshot:
        self.sku = value
        return self

    def with_stackable(self, value: bool) -> ItemSnapshot:
        self.stackable = value
        return self

    def with_target_currency_code(self, value: str) -> ItemSnapshot:
        self.target_currency_code = value
        return self

    def with_target_item_id(self, value: str) -> ItemSnapshot:
        self.target_item_id = value
        return self

    def with_target_namespace(self, value: str) -> ItemSnapshot:
        self.target_namespace = value
        return self

    def with_thumbnail_url(self, value: str) -> ItemSnapshot:
        self.thumbnail_url = value
        return self

    def with_updated_at(self, value: str) -> ItemSnapshot:
        self.updated_at = value
        return self

    def with_use_count(self, value: int) -> ItemSnapshot:
        self.use_count = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_type"):
            result["entitlementType"] = str(self.entitlement_type)
        elif include_empty:
            result["entitlementType"] = str()
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "language"):
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "region"):
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = str()
        if hasattr(self, "app_id"):
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "app_type"):
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "base_app_id"):
            result["baseAppId"] = str(self.base_app_id)
        elif include_empty:
            result["baseAppId"] = str()
        if hasattr(self, "booth_name"):
            result["boothName"] = str(self.booth_name)
        elif include_empty:
            result["boothName"] = str()
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = str()
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = str()
        if hasattr(self, "features"):
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "item_ids"):
            result["itemIds"] = [str(i0) for i0 in self.item_ids]
        elif include_empty:
            result["itemIds"] = []
        if hasattr(self, "item_qty"):
            result["itemQty"] = {str(k0): int(v0) for k0, v0 in self.item_qty.items()}
        elif include_empty:
            result["itemQty"] = {}
        if hasattr(self, "listable"):
            result["listable"] = bool(self.listable)
        elif include_empty:
            result["listable"] = bool()
        if hasattr(self, "max_count"):
            result["maxCount"] = int(self.max_count)
        elif include_empty:
            result["maxCount"] = int()
        if hasattr(self, "max_count_per_user"):
            result["maxCountPerUser"] = int(self.max_count_per_user)
        elif include_empty:
            result["maxCountPerUser"] = int()
        if hasattr(self, "purchasable"):
            result["purchasable"] = bool(self.purchasable)
        elif include_empty:
            result["purchasable"] = bool()
        if hasattr(self, "recurring"):
            result["recurring"] = self.recurring.to_dict(include_empty=include_empty)
        elif include_empty:
            result["recurring"] = Recurring()
        if hasattr(self, "region_data_item"):
            result["regionDataItem"] = self.region_data_item.to_dict(include_empty=include_empty)
        elif include_empty:
            result["regionDataItem"] = RegionDataItem()
        if hasattr(self, "season_type"):
            result["seasonType"] = str(self.season_type)
        elif include_empty:
            result["seasonType"] = str()
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "stackable"):
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = bool()
        if hasattr(self, "target_currency_code"):
            result["targetCurrencyCode"] = str(self.target_currency_code)
        elif include_empty:
            result["targetCurrencyCode"] = str()
        if hasattr(self, "target_item_id"):
            result["targetItemId"] = str(self.target_item_id)
        elif include_empty:
            result["targetItemId"] = str()
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "thumbnail_url"):
            result["thumbnailUrl"] = str(self.thumbnail_url)
        elif include_empty:
            result["thumbnailUrl"] = str()
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = str()
        if hasattr(self, "use_count"):
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = int()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        entitlement_type: str,
        item_id: str,
        item_type: str,
        language: str,
        name: str,
        namespace: str,
        region: str,
        title: str,
        app_id: Optional[str] = None,
        app_type: Optional[str] = None,
        base_app_id: Optional[str] = None,
        booth_name: Optional[str] = None,
        created_at: Optional[str] = None,
        description: Optional[str] = None,
        features: Optional[List[str]] = None,
        item_ids: Optional[List[str]] = None,
        item_qty: Optional[Dict[str, int]] = None,
        listable: Optional[bool] = None,
        max_count: Optional[int] = None,
        max_count_per_user: Optional[int] = None,
        purchasable: Optional[bool] = None,
        recurring: Optional[Recurring] = None,
        region_data_item: Optional[RegionDataItem] = None,
        season_type: Optional[str] = None,
        sku: Optional[str] = None,
        stackable: Optional[bool] = None,
        target_currency_code: Optional[str] = None,
        target_item_id: Optional[str] = None,
        target_namespace: Optional[str] = None,
        thumbnail_url: Optional[str] = None,
        updated_at: Optional[str] = None,
        use_count: Optional[int] = None,
    ) -> ItemSnapshot:
        instance = cls()
        instance.entitlement_type = entitlement_type
        instance.item_id = item_id
        instance.item_type = item_type
        instance.language = language
        instance.name = name
        instance.namespace = namespace
        instance.region = region
        instance.title = title
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if base_app_id is not None:
            instance.base_app_id = base_app_id
        if booth_name is not None:
            instance.booth_name = booth_name
        if created_at is not None:
            instance.created_at = created_at
        if description is not None:
            instance.description = description
        if features is not None:
            instance.features = features
        if item_ids is not None:
            instance.item_ids = item_ids
        if item_qty is not None:
            instance.item_qty = item_qty
        if listable is not None:
            instance.listable = listable
        if max_count is not None:
            instance.max_count = max_count
        if max_count_per_user is not None:
            instance.max_count_per_user = max_count_per_user
        if purchasable is not None:
            instance.purchasable = purchasable
        if recurring is not None:
            instance.recurring = recurring
        if region_data_item is not None:
            instance.region_data_item = region_data_item
        if season_type is not None:
            instance.season_type = season_type
        if sku is not None:
            instance.sku = sku
        if stackable is not None:
            instance.stackable = stackable
        if target_currency_code is not None:
            instance.target_currency_code = target_currency_code
        if target_item_id is not None:
            instance.target_item_id = target_item_id
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if thumbnail_url is not None:
            instance.thumbnail_url = thumbnail_url
        if updated_at is not None:
            instance.updated_at = updated_at
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ItemSnapshot:
        instance = cls()
        if not dict_:
            return instance
        if "entitlementType" in dict_ and dict_["entitlementType"] is not None:
            instance.entitlement_type = str(dict_["entitlementType"])
        elif include_empty:
            instance.entitlement_type = str()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = str()
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = str()
        if "baseAppId" in dict_ and dict_["baseAppId"] is not None:
            instance.base_app_id = str(dict_["baseAppId"])
        elif include_empty:
            instance.base_app_id = str()
        if "boothName" in dict_ and dict_["boothName"] is not None:
            instance.booth_name = str(dict_["boothName"])
        elif include_empty:
            instance.booth_name = str()
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = str()
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = str()
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "itemIds" in dict_ and dict_["itemIds"] is not None:
            instance.item_ids = [str(i0) for i0 in dict_["itemIds"]]
        elif include_empty:
            instance.item_ids = []
        if "itemQty" in dict_ and dict_["itemQty"] is not None:
            instance.item_qty = {str(k0): int(v0) for k0, v0 in dict_["itemQty"].items()}
        elif include_empty:
            instance.item_qty = {}
        if "listable" in dict_ and dict_["listable"] is not None:
            instance.listable = bool(dict_["listable"])
        elif include_empty:
            instance.listable = bool()
        if "maxCount" in dict_ and dict_["maxCount"] is not None:
            instance.max_count = int(dict_["maxCount"])
        elif include_empty:
            instance.max_count = int()
        if "maxCountPerUser" in dict_ and dict_["maxCountPerUser"] is not None:
            instance.max_count_per_user = int(dict_["maxCountPerUser"])
        elif include_empty:
            instance.max_count_per_user = int()
        if "purchasable" in dict_ and dict_["purchasable"] is not None:
            instance.purchasable = bool(dict_["purchasable"])
        elif include_empty:
            instance.purchasable = bool()
        if "recurring" in dict_ and dict_["recurring"] is not None:
            instance.recurring = Recurring.create_from_dict(dict_["recurring"], include_empty=include_empty)
        elif include_empty:
            instance.recurring = Recurring()
        if "regionDataItem" in dict_ and dict_["regionDataItem"] is not None:
            instance.region_data_item = RegionDataItem.create_from_dict(dict_["regionDataItem"], include_empty=include_empty)
        elif include_empty:
            instance.region_data_item = RegionDataItem()
        if "seasonType" in dict_ and dict_["seasonType"] is not None:
            instance.season_type = str(dict_["seasonType"])
        elif include_empty:
            instance.season_type = str()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = bool()
        if "targetCurrencyCode" in dict_ and dict_["targetCurrencyCode"] is not None:
            instance.target_currency_code = str(dict_["targetCurrencyCode"])
        elif include_empty:
            instance.target_currency_code = str()
        if "targetItemId" in dict_ and dict_["targetItemId"] is not None:
            instance.target_item_id = str(dict_["targetItemId"])
        elif include_empty:
            instance.target_item_id = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "thumbnailUrl" in dict_ and dict_["thumbnailUrl"] is not None:
            instance.thumbnail_url = str(dict_["thumbnailUrl"])
        elif include_empty:
            instance.thumbnail_url = str()
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = str()
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ItemSnapshot]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ItemSnapshot]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ItemSnapshot, List[ItemSnapshot]]:
        if many:
            if isinstance(any_, dict):
                cls.create_many_from_dict(any_, include_empty=include_empty)
            elif isinstance(any_, list):
                cls.create_many_from_list(any_, include_empty=include_empty)
        else:
            return cls.create_from_dict(any_, include_empty=include_empty)

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "entitlementType": "entitlement_type",
            "itemId": "item_id",
            "itemType": "item_type",
            "language": "language",
            "name": "name",
            "namespace": "namespace",
            "region": "region",
            "title": "title",
            "appId": "app_id",
            "appType": "app_type",
            "baseAppId": "base_app_id",
            "boothName": "booth_name",
            "createdAt": "created_at",
            "description": "description",
            "features": "features",
            "itemIds": "item_ids",
            "itemQty": "item_qty",
            "listable": "listable",
            "maxCount": "max_count",
            "maxCountPerUser": "max_count_per_user",
            "purchasable": "purchasable",
            "recurring": "recurring",
            "regionDataItem": "region_data_item",
            "seasonType": "season_type",
            "sku": "sku",
            "stackable": "stackable",
            "targetCurrencyCode": "target_currency_code",
            "targetItemId": "target_item_id",
            "targetNamespace": "target_namespace",
            "thumbnailUrl": "thumbnail_url",
            "updatedAt": "updated_at",
            "useCount": "use_count",
        }

    # endregion static methods
