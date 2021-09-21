# Auto-generated at 2021-09-21T14:10:38.666325+08:00
# from: Justice Platform Service (3.24.0)

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


class FullItemInfo(Model):
    """Full item info

    Properties:
        item_id: (itemId) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL str

        base_app_id: (baseAppId) OPTIONAL str

        namespace: (namespace) REQUIRED str

        sku: (sku) OPTIONAL str

        name: (name) REQUIRED str

        entitlement_type: (entitlementType) REQUIRED str

        use_count: (useCount) OPTIONAL int

        stackable: (stackable) OPTIONAL bool

        category_path: (categoryPath) REQUIRED str

        images: (images) OPTIONAL List[Image]

        thumbnail_url: (thumbnailUrl) OPTIONAL str

        localizations: (localizations) REQUIRED Dict[str, Localization]

        status: (status) REQUIRED str

        item_type: (itemType) REQUIRED str

        target_namespace: (targetNamespace) OPTIONAL str

        target_currency_code: (targetCurrencyCode) OPTIONAL str

        target_item_id: (targetItemId) OPTIONAL str

        region_data: (regionData) REQUIRED Dict[str, List[RegionDataItem]]

        recurring: (recurring) OPTIONAL Recurring

        item_ids: (itemIds) OPTIONAL List[str]

        tags: (tags) OPTIONAL List[str]

        features: (features) OPTIONAL List[str]

        max_count_per_user: (maxCountPerUser) OPTIONAL int

        max_count: (maxCount) OPTIONAL int

        clazz: (clazz) OPTIONAL str

        ext: (ext) OPTIONAL Dict[str, Any]

        booth_name: (boothName) OPTIONAL str

        display_order: (displayOrder) OPTIONAL int

        created_at: (createdAt) REQUIRED str

        updated_at: (updatedAt) REQUIRED str
    """

    # region fields

    item_id: str                                                                                   # REQUIRED
    app_id: str                                                                                    # OPTIONAL
    app_type: str                                                                                  # OPTIONAL
    base_app_id: str                                                                               # OPTIONAL
    namespace: str                                                                                 # REQUIRED
    sku: str                                                                                       # OPTIONAL
    name: str                                                                                      # REQUIRED
    entitlement_type: str                                                                          # REQUIRED
    use_count: int                                                                                 # OPTIONAL
    stackable: bool                                                                                # OPTIONAL
    category_path: str                                                                             # REQUIRED
    images: List[Image]                                                                            # OPTIONAL
    thumbnail_url: str                                                                             # OPTIONAL
    localizations: Dict[str, Localization]                                                         # REQUIRED
    status: str                                                                                    # REQUIRED
    item_type: str                                                                                 # REQUIRED
    target_namespace: str                                                                          # OPTIONAL
    target_currency_code: str                                                                      # OPTIONAL
    target_item_id: str                                                                            # OPTIONAL
    region_data: Dict[str, List[RegionDataItem]]                                                   # REQUIRED
    recurring: Recurring                                                                           # OPTIONAL
    item_ids: List[str]                                                                            # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    features: List[str]                                                                            # OPTIONAL
    max_count_per_user: int                                                                        # OPTIONAL
    max_count: int                                                                                 # OPTIONAL
    clazz: str                                                                                     # OPTIONAL
    ext: Dict[str, Any]                                                                            # OPTIONAL
    booth_name: str                                                                                # OPTIONAL
    display_order: int                                                                             # OPTIONAL
    created_at: str                                                                                # REQUIRED
    updated_at: str                                                                                # REQUIRED

    # endregion fields

    # region with_x methods

    def with_item_id(self, value: str) -> FullItemInfo:
        self.item_id = value
        return self

    def with_app_id(self, value: str) -> FullItemInfo:
        self.app_id = value
        return self

    def with_app_type(self, value: str) -> FullItemInfo:
        self.app_type = value
        return self

    def with_base_app_id(self, value: str) -> FullItemInfo:
        self.base_app_id = value
        return self

    def with_namespace(self, value: str) -> FullItemInfo:
        self.namespace = value
        return self

    def with_sku(self, value: str) -> FullItemInfo:
        self.sku = value
        return self

    def with_name(self, value: str) -> FullItemInfo:
        self.name = value
        return self

    def with_entitlement_type(self, value: str) -> FullItemInfo:
        self.entitlement_type = value
        return self

    def with_use_count(self, value: int) -> FullItemInfo:
        self.use_count = value
        return self

    def with_stackable(self, value: bool) -> FullItemInfo:
        self.stackable = value
        return self

    def with_category_path(self, value: str) -> FullItemInfo:
        self.category_path = value
        return self

    def with_images(self, value: List[Image]) -> FullItemInfo:
        self.images = value
        return self

    def with_thumbnail_url(self, value: str) -> FullItemInfo:
        self.thumbnail_url = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> FullItemInfo:
        self.localizations = value
        return self

    def with_status(self, value: str) -> FullItemInfo:
        self.status = value
        return self

    def with_item_type(self, value: str) -> FullItemInfo:
        self.item_type = value
        return self

    def with_target_namespace(self, value: str) -> FullItemInfo:
        self.target_namespace = value
        return self

    def with_target_currency_code(self, value: str) -> FullItemInfo:
        self.target_currency_code = value
        return self

    def with_target_item_id(self, value: str) -> FullItemInfo:
        self.target_item_id = value
        return self

    def with_region_data(self, value: Dict[str, List[RegionDataItem]]) -> FullItemInfo:
        self.region_data = value
        return self

    def with_recurring(self, value: Recurring) -> FullItemInfo:
        self.recurring = value
        return self

    def with_item_ids(self, value: List[str]) -> FullItemInfo:
        self.item_ids = value
        return self

    def with_tags(self, value: List[str]) -> FullItemInfo:
        self.tags = value
        return self

    def with_features(self, value: List[str]) -> FullItemInfo:
        self.features = value
        return self

    def with_max_count_per_user(self, value: int) -> FullItemInfo:
        self.max_count_per_user = value
        return self

    def with_max_count(self, value: int) -> FullItemInfo:
        self.max_count = value
        return self

    def with_clazz(self, value: str) -> FullItemInfo:
        self.clazz = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> FullItemInfo:
        self.ext = value
        return self

    def with_booth_name(self, value: str) -> FullItemInfo:
        self.booth_name = value
        return self

    def with_display_order(self, value: int) -> FullItemInfo:
        self.display_order = value
        return self

    def with_created_at(self, value: str) -> FullItemInfo:
        self.created_at = value
        return self

    def with_updated_at(self, value: str) -> FullItemInfo:
        self.updated_at = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result = {}
        if hasattr(self, "item_id") and self.item_id:
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = str()
        if hasattr(self, "app_id") and self.app_id:
            result["appId"] = str(self.app_id)
        elif include_empty:
            result["appId"] = str()
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "base_app_id") and self.base_app_id:
            result["baseAppId"] = str(self.base_app_id)
        elif include_empty:
            result["baseAppId"] = str()
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "sku") and self.sku:
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = str()
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
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "target_currency_code") and self.target_currency_code:
            result["targetCurrencyCode"] = str(self.target_currency_code)
        elif include_empty:
            result["targetCurrencyCode"] = str()
        if hasattr(self, "target_item_id") and self.target_item_id:
            result["targetItemId"] = str(self.target_item_id)
        elif include_empty:
            result["targetItemId"] = str()
        if hasattr(self, "region_data") and self.region_data:
            result["regionData"] = {str(k0): [i1.to_dict(include_empty=include_empty) for i1 in v0] for k0, v0 in self.region_data.items()}
        elif include_empty:
            result["regionData"] = {}
        if hasattr(self, "recurring") and self.recurring:
            result["recurring"] = self.recurring.to_dict(include_empty=include_empty)
        elif include_empty:
            result["recurring"] = Recurring()
        if hasattr(self, "item_ids") and self.item_ids:
            result["itemIds"] = [str(i0) for i0 in self.item_ids]
        elif include_empty:
            result["itemIds"] = []
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
        if hasattr(self, "clazz") and self.clazz:
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = str()
        if hasattr(self, "ext") and self.ext:
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        if hasattr(self, "booth_name") and self.booth_name:
            result["boothName"] = str(self.booth_name)
        elif include_empty:
            result["boothName"] = str()
        if hasattr(self, "display_order") and self.display_order:
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = int()
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
        item_id: str,
        namespace: str,
        name: str,
        entitlement_type: str,
        category_path: str,
        localizations: Dict[str, Localization],
        status: str,
        item_type: str,
        region_data: Dict[str, List[RegionDataItem]],
        created_at: str,
        updated_at: str,
        app_id: Optional[str] = None,
        app_type: Optional[str] = None,
        base_app_id: Optional[str] = None,
        sku: Optional[str] = None,
        use_count: Optional[int] = None,
        stackable: Optional[bool] = None,
        images: Optional[List[Image]] = None,
        thumbnail_url: Optional[str] = None,
        target_namespace: Optional[str] = None,
        target_currency_code: Optional[str] = None,
        target_item_id: Optional[str] = None,
        recurring: Optional[Recurring] = None,
        item_ids: Optional[List[str]] = None,
        tags: Optional[List[str]] = None,
        features: Optional[List[str]] = None,
        max_count_per_user: Optional[int] = None,
        max_count: Optional[int] = None,
        clazz: Optional[str] = None,
        ext: Optional[Dict[str, Any]] = None,
        booth_name: Optional[str] = None,
        display_order: Optional[int] = None,
    ) -> FullItemInfo:
        instance = cls()
        instance.item_id = item_id
        instance.namespace = namespace
        instance.name = name
        instance.entitlement_type = entitlement_type
        instance.category_path = category_path
        instance.localizations = localizations
        instance.status = status
        instance.item_type = item_type
        instance.region_data = region_data
        instance.created_at = created_at
        instance.updated_at = updated_at
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if base_app_id is not None:
            instance.base_app_id = base_app_id
        if sku is not None:
            instance.sku = sku
        if use_count is not None:
            instance.use_count = use_count
        if stackable is not None:
            instance.stackable = stackable
        if images is not None:
            instance.images = images
        if thumbnail_url is not None:
            instance.thumbnail_url = thumbnail_url
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if target_currency_code is not None:
            instance.target_currency_code = target_currency_code
        if target_item_id is not None:
            instance.target_item_id = target_item_id
        if recurring is not None:
            instance.recurring = recurring
        if item_ids is not None:
            instance.item_ids = item_ids
        if tags is not None:
            instance.tags = tags
        if features is not None:
            instance.features = features
        if max_count_per_user is not None:
            instance.max_count_per_user = max_count_per_user
        if max_count is not None:
            instance.max_count = max_count
        if clazz is not None:
            instance.clazz = clazz
        if ext is not None:
            instance.ext = ext
        if booth_name is not None:
            instance.booth_name = booth_name
        if display_order is not None:
            instance.display_order = display_order
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> FullItemInfo:
        instance = cls()
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = str()
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
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = str()
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
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "targetCurrencyCode" in dict_ and dict_["targetCurrencyCode"] is not None:
            instance.target_currency_code = str(dict_["targetCurrencyCode"])
        elif include_empty:
            instance.target_currency_code = str()
        if "targetItemId" in dict_ and dict_["targetItemId"] is not None:
            instance.target_item_id = str(dict_["targetItemId"])
        elif include_empty:
            instance.target_item_id = str()
        if "regionData" in dict_ and dict_["regionData"] is not None:
            instance.region_data = {str(k0): [RegionDataItem.create_from_dict(i1, include_empty=include_empty) for i1 in v0] for k0, v0 in dict_["regionData"].items()}
        elif include_empty:
            instance.region_data = {}
        if "recurring" in dict_ and dict_["recurring"] is not None:
            instance.recurring = Recurring.create_from_dict(dict_["recurring"], include_empty=include_empty)
        elif include_empty:
            instance.recurring = Recurring()
        if "itemIds" in dict_ and dict_["itemIds"] is not None:
            instance.item_ids = [str(i0) for i0 in dict_["itemIds"]]
        elif include_empty:
            instance.item_ids = []
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
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = str()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        if "boothName" in dict_ and dict_["boothName"] is not None:
            instance.booth_name = str(dict_["boothName"])
        elif include_empty:
            instance.booth_name = str()
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = int()
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
            "itemId": "item_id",
            "appId": "app_id",
            "appType": "app_type",
            "baseAppId": "base_app_id",
            "namespace": "namespace",
            "sku": "sku",
            "name": "name",
            "entitlementType": "entitlement_type",
            "useCount": "use_count",
            "stackable": "stackable",
            "categoryPath": "category_path",
            "images": "images",
            "thumbnailUrl": "thumbnail_url",
            "localizations": "localizations",
            "status": "status",
            "itemType": "item_type",
            "targetNamespace": "target_namespace",
            "targetCurrencyCode": "target_currency_code",
            "targetItemId": "target_item_id",
            "regionData": "region_data",
            "recurring": "recurring",
            "itemIds": "item_ids",
            "tags": "tags",
            "features": "features",
            "maxCountPerUser": "max_count_per_user",
            "maxCount": "max_count",
            "clazz": "clazz",
            "ext": "ext",
            "boothName": "booth_name",
            "displayOrder": "display_order",
            "createdAt": "created_at",
            "updatedAt": "updated_at",
        }

    # endregion static methods
