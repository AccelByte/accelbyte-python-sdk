# Auto-generated at 2021-10-21T08:52:30.694837+08:00
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

from ..models.image import Image
from ..models.localization import Localization
from ..models.recurring import Recurring
from ..models.region_data_item import RegionDataItem


class ItemUpdate(Model):
    """A DTO object for updating item API call. (ItemUpdate)

    Properties:
        item_type: (itemType) REQUIRED str

        name: (name) OPTIONAL str

        entitlement_type: (entitlementType) REQUIRED str

        use_count: (useCount) OPTIONAL int

        stackable: (stackable) OPTIONAL bool

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL str

        season_type: (seasonType) OPTIONAL str

        base_app_id: (baseAppId) OPTIONAL str

        target_currency_code: (targetCurrencyCode) OPTIONAL str

        target_namespace: (targetNamespace) OPTIONAL str

        category_path: (categoryPath) OPTIONAL str

        images: (images) OPTIONAL List[Image]

        thumbnail_url: (thumbnailUrl) OPTIONAL str

        localizations: (localizations) OPTIONAL Dict[str, Localization]

        status: (status) OPTIONAL str

        listable: (listable) OPTIONAL bool

        purchasable: (purchasable) OPTIONAL bool

        sku: (sku) OPTIONAL str

        region_data: (regionData) OPTIONAL Dict[str, List[RegionDataItem]]

        item_ids: (itemIds) OPTIONAL List[str]

        recurring: (recurring) OPTIONAL Recurring

        tags: (tags) OPTIONAL List[str]

        features: (features) OPTIONAL List[str]

        max_count_per_user: (maxCountPerUser) OPTIONAL int

        max_count: (maxCount) OPTIONAL int

        booth_name: (boothName) OPTIONAL str

        display_order: (displayOrder) OPTIONAL int

        clazz: (clazz) OPTIONAL str

        ext: (ext) OPTIONAL Dict[str, Any]
    """

    # region fields

    item_type: str                                                                                 # REQUIRED
    name: str                                                                                      # OPTIONAL
    entitlement_type: str                                                                          # REQUIRED
    use_count: int                                                                                 # OPTIONAL
    stackable: bool                                                                                # OPTIONAL
    app_id: str                                                                                    # OPTIONAL
    app_type: str                                                                                  # OPTIONAL
    season_type: str                                                                               # OPTIONAL
    base_app_id: str                                                                               # OPTIONAL
    target_currency_code: str                                                                      # OPTIONAL
    target_namespace: str                                                                          # OPTIONAL
    category_path: str                                                                             # OPTIONAL
    images: List[Image]                                                                            # OPTIONAL
    thumbnail_url: str                                                                             # OPTIONAL
    localizations: Dict[str, Localization]                                                         # OPTIONAL
    status: str                                                                                    # OPTIONAL
    listable: bool                                                                                 # OPTIONAL
    purchasable: bool                                                                              # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    region_data: Dict[str, List[RegionDataItem]]                                                   # OPTIONAL
    item_ids: List[str]                                                                            # OPTIONAL
    recurring: Recurring                                                                           # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    features: List[str]                                                                            # OPTIONAL
    max_count_per_user: int                                                                        # OPTIONAL
    max_count: int                                                                                 # OPTIONAL
    booth_name: str                                                                                # OPTIONAL
    display_order: int                                                                             # OPTIONAL
    clazz: str                                                                                     # OPTIONAL
    ext: Dict[str, Any]                                                                            # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_item_type(self, value: str) -> ItemUpdate:
        self.item_type = value
        return self

    def with_name(self, value: str) -> ItemUpdate:
        self.name = value
        return self

    def with_entitlement_type(self, value: str) -> ItemUpdate:
        self.entitlement_type = value
        return self

    def with_use_count(self, value: int) -> ItemUpdate:
        self.use_count = value
        return self

    def with_stackable(self, value: bool) -> ItemUpdate:
        self.stackable = value
        return self

    def with_app_id(self, value: str) -> ItemUpdate:
        self.app_id = value
        return self

    def with_app_type(self, value: str) -> ItemUpdate:
        self.app_type = value
        return self

    def with_season_type(self, value: str) -> ItemUpdate:
        self.season_type = value
        return self

    def with_base_app_id(self, value: str) -> ItemUpdate:
        self.base_app_id = value
        return self

    def with_target_currency_code(self, value: str) -> ItemUpdate:
        self.target_currency_code = value
        return self

    def with_target_namespace(self, value: str) -> ItemUpdate:
        self.target_namespace = value
        return self

    def with_category_path(self, value: str) -> ItemUpdate:
        self.category_path = value
        return self

    def with_images(self, value: List[Image]) -> ItemUpdate:
        self.images = value
        return self

    def with_thumbnail_url(self, value: str) -> ItemUpdate:
        self.thumbnail_url = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> ItemUpdate:
        self.localizations = value
        return self

    def with_status(self, value: str) -> ItemUpdate:
        self.status = value
        return self

    def with_listable(self, value: bool) -> ItemUpdate:
        self.listable = value
        return self

    def with_purchasable(self, value: bool) -> ItemUpdate:
        self.purchasable = value
        return self

    def with_sku(self, value: str) -> ItemUpdate:
        self.sku = value
        return self

    def with_region_data(self, value: Dict[str, List[RegionDataItem]]) -> ItemUpdate:
        self.region_data = value
        return self

    def with_item_ids(self, value: List[str]) -> ItemUpdate:
        self.item_ids = value
        return self

    def with_recurring(self, value: Recurring) -> ItemUpdate:
        self.recurring = value
        return self

    def with_tags(self, value: List[str]) -> ItemUpdate:
        self.tags = value
        return self

    def with_features(self, value: List[str]) -> ItemUpdate:
        self.features = value
        return self

    def with_max_count_per_user(self, value: int) -> ItemUpdate:
        self.max_count_per_user = value
        return self

    def with_max_count(self, value: int) -> ItemUpdate:
        self.max_count = value
        return self

    def with_booth_name(self, value: str) -> ItemUpdate:
        self.booth_name = value
        return self

    def with_display_order(self, value: int) -> ItemUpdate:
        self.display_order = value
        return self

    def with_clazz(self, value: str) -> ItemUpdate:
        self.clazz = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> ItemUpdate:
        self.ext = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "name") and self.name:
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "entitlement_type") and self.entitlement_type:
            result["entitlementType"] = str(self.entitlement_type)
        elif include_empty:
            result["entitlementType"] = str()
        if hasattr(self, "use_count") and self.use_count:
            result["useCount"] = int(self.use_count)
        elif include_empty:
            result["useCount"] = int()
        if hasattr(self, "stackable") and self.stackable:
            result["stackable"] = bool(self.stackable)
        elif include_empty:
            result["stackable"] = bool()
        if hasattr(self, "app_id") and self.app_id:
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "season_type") and self.season_type:
            result["seasonType"] = str(self.season_type)
        elif include_empty:
            result["seasonType"] = str()
        if hasattr(self, "base_app_id") and self.base_app_id:
            result["baseAppId"] = str(self.base_app_id)
        elif include_empty:
            result["baseAppId"] = str()
        if hasattr(self, "target_currency_code") and self.target_currency_code:
            result["targetCurrencyCode"] = str(self.target_currency_code)
        elif include_empty:
            result["targetCurrencyCode"] = str()
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "category_path") and self.category_path:
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = str()
        if hasattr(self, "images") and self.images:
            result["images"] = [i0.to_dict(include_empty=include_empty) for i0 in self.images]
        elif include_empty:
            result["images"] = []
        if hasattr(self, "thumbnail_url") and self.thumbnail_url:
            result["thumbnailUrl"] = str(self.thumbnail_url)
        elif include_empty:
            result["thumbnailUrl"] = str()
        if hasattr(self, "localizations") and self.localizations:
            result["localizations"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.localizations.items()}
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "listable") and self.listable:
            result["listable"] = bool(self.listable)
        elif include_empty:
            result["listable"] = bool()
        if hasattr(self, "purchasable") and self.purchasable:
            result["purchasable"] = bool(self.purchasable)
        elif include_empty:
            result["purchasable"] = bool()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
        if hasattr(self, "region_data") and self.region_data:
            result["regionData"] = {str(k0): [i1.to_dict(include_empty=include_empty) for i1 in v0] for k0, v0 in self.region_data.items()}
        elif include_empty:
            result["regionData"] = {}
        if hasattr(self, "item_ids") and self.item_ids:
            result["itemIds"] = [str(i0) for i0 in self.item_ids]
        elif include_empty:
            result["itemIds"] = []
        if hasattr(self, "recurring") and self.recurring:
            result["recurring"] = self.recurring.to_dict(include_empty=include_empty)
        elif include_empty:
            result["recurring"] = Recurring()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "features") and self.features:
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "max_count_per_user") and self.max_count_per_user:
            result["maxCountPerUser"] = int(self.max_count_per_user)
        elif include_empty:
            result["maxCountPerUser"] = int()
        if hasattr(self, "max_count") and self.max_count:
            result["maxCount"] = int(self.max_count)
        elif include_empty:
            result["maxCount"] = int()
        if hasattr(self, "booth_name") and self.booth_name:
            result["boothName"] = str(self.booth_name)
        elif include_empty:
            result["boothName"] = str()
        if hasattr(self, "display_order") and self.display_order:
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = int()
        if hasattr(self, "clazz") and self.clazz:
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = str()
        if hasattr(self, "ext") and self.ext:
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        item_type: str,
        entitlement_type: str,
        name: Optional[str] = None,
        use_count: Optional[int] = None,
        stackable: Optional[bool] = None,
        app_id: Optional[str] = None,
        app_type: Optional[str] = None,
        season_type: Optional[str] = None,
        base_app_id: Optional[str] = None,
        target_currency_code: Optional[str] = None,
        target_namespace: Optional[str] = None,
        category_path: Optional[str] = None,
        images: Optional[List[Image]] = None,
        thumbnail_url: Optional[str] = None,
        localizations: Optional[Dict[str, Localization]] = None,
        status: Optional[str] = None,
        listable: Optional[bool] = None,
        purchasable: Optional[bool] = None,
        sku: Optional[str] = None,
        region_data: Optional[Dict[str, List[RegionDataItem]]] = None,
        item_ids: Optional[List[str]] = None,
        recurring: Optional[Recurring] = None,
        tags: Optional[List[str]] = None,
        features: Optional[List[str]] = None,
        max_count_per_user: Optional[int] = None,
        max_count: Optional[int] = None,
        booth_name: Optional[str] = None,
        display_order: Optional[int] = None,
        clazz: Optional[str] = None,
        ext: Optional[Dict[str, Any]] = None,
    ) -> ItemUpdate:
        instance = cls()
        instance.item_type = item_type
        instance.entitlement_type = entitlement_type
        if name is not None:
            instance.name = name
        if use_count is not None:
            instance.use_count = use_count
        if stackable is not None:
            instance.stackable = stackable
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if season_type is not None:
            instance.season_type = season_type
        if base_app_id is not None:
            instance.base_app_id = base_app_id
        if target_currency_code is not None:
            instance.target_currency_code = target_currency_code
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if category_path is not None:
            instance.category_path = category_path
        if images is not None:
            instance.images = images
        if thumbnail_url is not None:
            instance.thumbnail_url = thumbnail_url
        if localizations is not None:
            instance.localizations = localizations
        if status is not None:
            instance.status = status
        if listable is not None:
            instance.listable = listable
        if purchasable is not None:
            instance.purchasable = purchasable
        if sku is not None:
            instance.sku = sku
        if region_data is not None:
            instance.region_data = region_data
        if item_ids is not None:
            instance.item_ids = item_ids
        if recurring is not None:
            instance.recurring = recurring
        if tags is not None:
            instance.tags = tags
        if features is not None:
            instance.features = features
        if max_count_per_user is not None:
            instance.max_count_per_user = max_count_per_user
        if max_count is not None:
            instance.max_count = max_count
        if booth_name is not None:
            instance.booth_name = booth_name
        if display_order is not None:
            instance.display_order = display_order
        if clazz is not None:
            instance.clazz = clazz
        if ext is not None:
            instance.ext = ext
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ItemUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "entitlementType" in dict_ and dict_["entitlementType"] is not None:
            instance.entitlement_type = str(dict_["entitlementType"])
        elif include_empty:
            instance.entitlement_type = str()
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = int()
        if "stackable" in dict_ and dict_["stackable"] is not None:
            instance.stackable = bool(dict_["stackable"])
        elif include_empty:
            instance.stackable = bool()
        if "appId" in dict_ and dict_["appId"] is not None:
            instance.app_id = str(dict_["appId"])
        elif include_empty:
            instance.app_id = str()
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = str()
        if "seasonType" in dict_ and dict_["seasonType"] is not None:
            instance.season_type = str(dict_["seasonType"])
        elif include_empty:
            instance.season_type = str()
        if "baseAppId" in dict_ and dict_["baseAppId"] is not None:
            instance.base_app_id = str(dict_["baseAppId"])
        elif include_empty:
            instance.base_app_id = str()
        if "targetCurrencyCode" in dict_ and dict_["targetCurrencyCode"] is not None:
            instance.target_currency_code = str(dict_["targetCurrencyCode"])
        elif include_empty:
            instance.target_currency_code = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = str()
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [Image.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["images"]]
        elif include_empty:
            instance.images = []
        if "thumbnailUrl" in dict_ and dict_["thumbnailUrl"] is not None:
            instance.thumbnail_url = str(dict_["thumbnailUrl"])
        elif include_empty:
            instance.thumbnail_url = str()
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {str(k0): Localization.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["localizations"].items()}
        elif include_empty:
            instance.localizations = {}
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "listable" in dict_ and dict_["listable"] is not None:
            instance.listable = bool(dict_["listable"])
        elif include_empty:
            instance.listable = bool()
        if "purchasable" in dict_ and dict_["purchasable"] is not None:
            instance.purchasable = bool(dict_["purchasable"])
        elif include_empty:
            instance.purchasable = bool()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
        if "regionData" in dict_ and dict_["regionData"] is not None:
            instance.region_data = {str(k0): [RegionDataItem.create_from_dict(i1, include_empty=include_empty) for i1 in v0] for k0, v0 in dict_["regionData"].items()}
        elif include_empty:
            instance.region_data = {}
        if "itemIds" in dict_ and dict_["itemIds"] is not None:
            instance.item_ids = [str(i0) for i0 in dict_["itemIds"]]
        elif include_empty:
            instance.item_ids = []
        if "recurring" in dict_ and dict_["recurring"] is not None:
            instance.recurring = Recurring.create_from_dict(dict_["recurring"], include_empty=include_empty)
        elif include_empty:
            instance.recurring = Recurring()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "maxCountPerUser" in dict_ and dict_["maxCountPerUser"] is not None:
            instance.max_count_per_user = int(dict_["maxCountPerUser"])
        elif include_empty:
            instance.max_count_per_user = int()
        if "maxCount" in dict_ and dict_["maxCount"] is not None:
            instance.max_count = int(dict_["maxCount"])
        elif include_empty:
            instance.max_count = int()
        if "boothName" in dict_ and dict_["boothName"] is not None:
            instance.booth_name = str(dict_["boothName"])
        elif include_empty:
            instance.booth_name = str()
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = int()
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = str()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "itemType": "item_type",
            "name": "name",
            "entitlementType": "entitlement_type",
            "useCount": "use_count",
            "stackable": "stackable",
            "appId": "app_id",
            "appType": "app_type",
            "seasonType": "season_type",
            "baseAppId": "base_app_id",
            "targetCurrencyCode": "target_currency_code",
            "targetNamespace": "target_namespace",
            "categoryPath": "category_path",
            "images": "images",
            "thumbnailUrl": "thumbnail_url",
            "localizations": "localizations",
            "status": "status",
            "listable": "listable",
            "purchasable": "purchasable",
            "sku": "sku",
            "regionData": "region_data",
            "itemIds": "item_ids",
            "recurring": "recurring",
            "tags": "tags",
            "features": "features",
            "maxCountPerUser": "max_count_per_user",
            "maxCount": "max_count",
            "boothName": "booth_name",
            "displayOrder": "display_order",
            "clazz": "clazz",
            "ext": "ext",
        }

    # endregion static methods
