# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

# justice-platform-service (4.5.1)

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
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import Model

from ..models.image import Image
from ..models.localization import Localization
from ..models.recurring import Recurring
from ..models.region_data_item import RegionDataItem


class ItemUpdate(Model):
    """A DTO object for updating item API call. (ItemUpdate)

    Properties:
        entitlement_type: (entitlementType) REQUIRED str

        item_type: (itemType) REQUIRED str

        app_id: (appId) OPTIONAL str

        app_type: (appType) OPTIONAL str

        base_app_id: (baseAppId) OPTIONAL str

        booth_name: (boothName) OPTIONAL str

        category_path: (categoryPath) OPTIONAL str

        clazz: (clazz) OPTIONAL str

        display_order: (displayOrder) OPTIONAL int

        ext: (ext) OPTIONAL Dict[str, Any]

        features: (features) OPTIONAL List[str]

        images: (images) OPTIONAL List[Image]

        item_ids: (itemIds) OPTIONAL List[str]

        item_qty: (itemQty) OPTIONAL Dict[str, int]

        listable: (listable) OPTIONAL bool

        localizations: (localizations) OPTIONAL Dict[str, Localization]

        max_count: (maxCount) OPTIONAL int

        max_count_per_user: (maxCountPerUser) OPTIONAL int

        name: (name) OPTIONAL str

        purchasable: (purchasable) OPTIONAL bool

        recurring: (recurring) OPTIONAL Recurring

        region_data: (regionData) OPTIONAL Dict[str, List[RegionDataItem]]

        season_type: (seasonType) OPTIONAL str

        sku: (sku) OPTIONAL str

        stackable: (stackable) OPTIONAL bool

        status: (status) OPTIONAL str

        tags: (tags) OPTIONAL List[str]

        target_currency_code: (targetCurrencyCode) OPTIONAL str

        target_namespace: (targetNamespace) OPTIONAL str

        thumbnail_url: (thumbnailUrl) OPTIONAL str

        use_count: (useCount) OPTIONAL int
    """

    # region fields

    entitlement_type: str                                                                          # REQUIRED
    item_type: str                                                                                 # REQUIRED
    app_id: str                                                                                    # OPTIONAL
    app_type: str                                                                                  # OPTIONAL
    base_app_id: str                                                                               # OPTIONAL
    booth_name: str                                                                                # OPTIONAL
    category_path: str                                                                             # OPTIONAL
    clazz: str                                                                                     # OPTIONAL
    display_order: int                                                                             # OPTIONAL
    ext: Dict[str, Any]                                                                            # OPTIONAL
    features: List[str]                                                                            # OPTIONAL
    images: List[Image]                                                                            # OPTIONAL
    item_ids: List[str]                                                                            # OPTIONAL
    item_qty: Dict[str, int]                                                                       # OPTIONAL
    listable: bool                                                                                 # OPTIONAL
    localizations: Dict[str, Localization]                                                         # OPTIONAL
    max_count: int                                                                                 # OPTIONAL
    max_count_per_user: int                                                                        # OPTIONAL
    name: str                                                                                      # OPTIONAL
    purchasable: bool                                                                              # OPTIONAL
    recurring: Recurring                                                                           # OPTIONAL
    region_data: Dict[str, List[RegionDataItem]]                                                   # OPTIONAL
    season_type: str                                                                               # OPTIONAL
    sku: str                                                                                       # OPTIONAL
    stackable: bool                                                                                # OPTIONAL
    status: str                                                                                    # OPTIONAL
    tags: List[str]                                                                                # OPTIONAL
    target_currency_code: str                                                                      # OPTIONAL
    target_namespace: str                                                                          # OPTIONAL
    thumbnail_url: str                                                                             # OPTIONAL
    use_count: int                                                                                 # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_entitlement_type(self, value: str) -> ItemUpdate:
        self.entitlement_type = value
        return self

    def with_item_type(self, value: str) -> ItemUpdate:
        self.item_type = value
        return self

    def with_app_id(self, value: str) -> ItemUpdate:
        self.app_id = value
        return self

    def with_app_type(self, value: str) -> ItemUpdate:
        self.app_type = value
        return self

    def with_base_app_id(self, value: str) -> ItemUpdate:
        self.base_app_id = value
        return self

    def with_booth_name(self, value: str) -> ItemUpdate:
        self.booth_name = value
        return self

    def with_category_path(self, value: str) -> ItemUpdate:
        self.category_path = value
        return self

    def with_clazz(self, value: str) -> ItemUpdate:
        self.clazz = value
        return self

    def with_display_order(self, value: int) -> ItemUpdate:
        self.display_order = value
        return self

    def with_ext(self, value: Dict[str, Any]) -> ItemUpdate:
        self.ext = value
        return self

    def with_features(self, value: List[str]) -> ItemUpdate:
        self.features = value
        return self

    def with_images(self, value: List[Image]) -> ItemUpdate:
        self.images = value
        return self

    def with_item_ids(self, value: List[str]) -> ItemUpdate:
        self.item_ids = value
        return self

    def with_item_qty(self, value: Dict[str, int]) -> ItemUpdate:
        self.item_qty = value
        return self

    def with_listable(self, value: bool) -> ItemUpdate:
        self.listable = value
        return self

    def with_localizations(self, value: Dict[str, Localization]) -> ItemUpdate:
        self.localizations = value
        return self

    def with_max_count(self, value: int) -> ItemUpdate:
        self.max_count = value
        return self

    def with_max_count_per_user(self, value: int) -> ItemUpdate:
        self.max_count_per_user = value
        return self

    def with_name(self, value: str) -> ItemUpdate:
        self.name = value
        return self

    def with_purchasable(self, value: bool) -> ItemUpdate:
        self.purchasable = value
        return self

    def with_recurring(self, value: Recurring) -> ItemUpdate:
        self.recurring = value
        return self

    def with_region_data(self, value: Dict[str, List[RegionDataItem]]) -> ItemUpdate:
        self.region_data = value
        return self

    def with_season_type(self, value: str) -> ItemUpdate:
        self.season_type = value
        return self

    def with_sku(self, value: str) -> ItemUpdate:
        self.sku = value
        return self

    def with_stackable(self, value: bool) -> ItemUpdate:
        self.stackable = value
        return self

    def with_status(self, value: str) -> ItemUpdate:
        self.status = value
        return self

    def with_tags(self, value: List[str]) -> ItemUpdate:
        self.tags = value
        return self

    def with_target_currency_code(self, value: str) -> ItemUpdate:
        self.target_currency_code = value
        return self

    def with_target_namespace(self, value: str) -> ItemUpdate:
        self.target_namespace = value
        return self

    def with_thumbnail_url(self, value: str) -> ItemUpdate:
        self.thumbnail_url = value
        return self

    def with_use_count(self, value: int) -> ItemUpdate:
        self.use_count = value
        return self

    # endregion with_x methods

    # region is/has methods

    # noinspection PyMethodMayBeStatic
    def is_valid(self) -> bool:
        # pylint: disable=no-self-use
        # required checks
        if not hasattr(self, "entitlement_type") or self.entitlement_type is None:
            return False
        if not hasattr(self, "item_type") or self.item_type is None:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "entitlement_type"):
            result["entitlementType"] = str(self.entitlement_type)
        elif include_empty:
            result["entitlementType"] = str()
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
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
        if hasattr(self, "category_path"):
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = str()
        if hasattr(self, "clazz"):
            result["clazz"] = str(self.clazz)
        elif include_empty:
            result["clazz"] = str()
        if hasattr(self, "display_order"):
            result["displayOrder"] = int(self.display_order)
        elif include_empty:
            result["displayOrder"] = int()
        if hasattr(self, "ext"):
            result["ext"] = {str(k0): v0 for k0, v0 in self.ext.items()}
        elif include_empty:
            result["ext"] = {}
        if hasattr(self, "features"):
            result["features"] = [str(i0) for i0 in self.features]
        elif include_empty:
            result["features"] = []
        if hasattr(self, "images"):
            result["images"] = [i0.to_dict(include_empty=include_empty) for i0 in self.images]
        elif include_empty:
            result["images"] = []
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
        if hasattr(self, "localizations"):
            result["localizations"] = {str(k0): v0.to_dict(include_empty=include_empty) for k0, v0 in self.localizations.items()}
        elif include_empty:
            result["localizations"] = {}
        if hasattr(self, "max_count"):
            result["maxCount"] = int(self.max_count)
        elif include_empty:
            result["maxCount"] = int()
        if hasattr(self, "max_count_per_user"):
            result["maxCountPerUser"] = int(self.max_count_per_user)
        elif include_empty:
            result["maxCountPerUser"] = int()
        if hasattr(self, "name"):
            result["name"] = str(self.name)
        elif include_empty:
            result["name"] = str()
        if hasattr(self, "purchasable"):
            result["purchasable"] = bool(self.purchasable)
        elif include_empty:
            result["purchasable"] = bool()
        if hasattr(self, "recurring"):
            result["recurring"] = self.recurring.to_dict(include_empty=include_empty)
        elif include_empty:
            result["recurring"] = Recurring()
        if hasattr(self, "region_data"):
            result["regionData"] = {str(k0): [i1.to_dict(include_empty=include_empty) for i1 in v0] for k0, v0 in self.region_data.items()}
        elif include_empty:
            result["regionData"] = {}
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
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "tags"):
            result["tags"] = [str(i0) for i0 in self.tags]
        elif include_empty:
            result["tags"] = []
        if hasattr(self, "target_currency_code"):
            result["targetCurrencyCode"] = str(self.target_currency_code)
        elif include_empty:
            result["targetCurrencyCode"] = str()
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        if hasattr(self, "thumbnail_url"):
            result["thumbnailUrl"] = str(self.thumbnail_url)
        elif include_empty:
            result["thumbnailUrl"] = str()
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
        item_type: str,
        app_id: Optional[str] = None,
        app_type: Optional[str] = None,
        base_app_id: Optional[str] = None,
        booth_name: Optional[str] = None,
        category_path: Optional[str] = None,
        clazz: Optional[str] = None,
        display_order: Optional[int] = None,
        ext: Optional[Dict[str, Any]] = None,
        features: Optional[List[str]] = None,
        images: Optional[List[Image]] = None,
        item_ids: Optional[List[str]] = None,
        item_qty: Optional[Dict[str, int]] = None,
        listable: Optional[bool] = None,
        localizations: Optional[Dict[str, Localization]] = None,
        max_count: Optional[int] = None,
        max_count_per_user: Optional[int] = None,
        name: Optional[str] = None,
        purchasable: Optional[bool] = None,
        recurring: Optional[Recurring] = None,
        region_data: Optional[Dict[str, List[RegionDataItem]]] = None,
        season_type: Optional[str] = None,
        sku: Optional[str] = None,
        stackable: Optional[bool] = None,
        status: Optional[str] = None,
        tags: Optional[List[str]] = None,
        target_currency_code: Optional[str] = None,
        target_namespace: Optional[str] = None,
        thumbnail_url: Optional[str] = None,
        use_count: Optional[int] = None,
    ) -> ItemUpdate:
        instance = cls()
        instance.entitlement_type = entitlement_type
        instance.item_type = item_type
        if app_id is not None:
            instance.app_id = app_id
        if app_type is not None:
            instance.app_type = app_type
        if base_app_id is not None:
            instance.base_app_id = base_app_id
        if booth_name is not None:
            instance.booth_name = booth_name
        if category_path is not None:
            instance.category_path = category_path
        if clazz is not None:
            instance.clazz = clazz
        if display_order is not None:
            instance.display_order = display_order
        if ext is not None:
            instance.ext = ext
        if features is not None:
            instance.features = features
        if images is not None:
            instance.images = images
        if item_ids is not None:
            instance.item_ids = item_ids
        if item_qty is not None:
            instance.item_qty = item_qty
        if listable is not None:
            instance.listable = listable
        if localizations is not None:
            instance.localizations = localizations
        if max_count is not None:
            instance.max_count = max_count
        if max_count_per_user is not None:
            instance.max_count_per_user = max_count_per_user
        if name is not None:
            instance.name = name
        if purchasable is not None:
            instance.purchasable = purchasable
        if recurring is not None:
            instance.recurring = recurring
        if region_data is not None:
            instance.region_data = region_data
        if season_type is not None:
            instance.season_type = season_type
        if sku is not None:
            instance.sku = sku
        if stackable is not None:
            instance.stackable = stackable
        if status is not None:
            instance.status = status
        if tags is not None:
            instance.tags = tags
        if target_currency_code is not None:
            instance.target_currency_code = target_currency_code
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        if thumbnail_url is not None:
            instance.thumbnail_url = thumbnail_url
        if use_count is not None:
            instance.use_count = use_count
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ItemUpdate:
        instance = cls()
        if not dict_:
            return instance
        if "entitlementType" in dict_ and dict_["entitlementType"] is not None:
            instance.entitlement_type = str(dict_["entitlementType"])
        elif include_empty:
            instance.entitlement_type = str()
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
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
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = str()
        if "clazz" in dict_ and dict_["clazz"] is not None:
            instance.clazz = str(dict_["clazz"])
        elif include_empty:
            instance.clazz = str()
        if "displayOrder" in dict_ and dict_["displayOrder"] is not None:
            instance.display_order = int(dict_["displayOrder"])
        elif include_empty:
            instance.display_order = int()
        if "ext" in dict_ and dict_["ext"] is not None:
            instance.ext = {str(k0): v0 for k0, v0 in dict_["ext"].items()}
        elif include_empty:
            instance.ext = {}
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = [str(i0) for i0 in dict_["features"]]
        elif include_empty:
            instance.features = []
        if "images" in dict_ and dict_["images"] is not None:
            instance.images = [Image.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["images"]]
        elif include_empty:
            instance.images = []
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
        if "localizations" in dict_ and dict_["localizations"] is not None:
            instance.localizations = {str(k0): Localization.create_from_dict(v0, include_empty=include_empty) for k0, v0 in dict_["localizations"].items()}
        elif include_empty:
            instance.localizations = {}
        if "maxCount" in dict_ and dict_["maxCount"] is not None:
            instance.max_count = int(dict_["maxCount"])
        elif include_empty:
            instance.max_count = int()
        if "maxCountPerUser" in dict_ and dict_["maxCountPerUser"] is not None:
            instance.max_count_per_user = int(dict_["maxCountPerUser"])
        elif include_empty:
            instance.max_count_per_user = int()
        if "name" in dict_ and dict_["name"] is not None:
            instance.name = str(dict_["name"])
        elif include_empty:
            instance.name = str()
        if "purchasable" in dict_ and dict_["purchasable"] is not None:
            instance.purchasable = bool(dict_["purchasable"])
        elif include_empty:
            instance.purchasable = bool()
        if "recurring" in dict_ and dict_["recurring"] is not None:
            instance.recurring = Recurring.create_from_dict(dict_["recurring"], include_empty=include_empty)
        elif include_empty:
            instance.recurring = Recurring()
        if "regionData" in dict_ and dict_["regionData"] is not None:
            instance.region_data = {str(k0): [RegionDataItem.create_from_dict(i1, include_empty=include_empty) for i1 in v0] for k0, v0 in dict_["regionData"].items()}
        elif include_empty:
            instance.region_data = {}
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
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = [str(i0) for i0 in dict_["tags"]]
        elif include_empty:
            instance.tags = []
        if "targetCurrencyCode" in dict_ and dict_["targetCurrencyCode"] is not None:
            instance.target_currency_code = str(dict_["targetCurrencyCode"])
        elif include_empty:
            instance.target_currency_code = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        if "thumbnailUrl" in dict_ and dict_["thumbnailUrl"] is not None:
            instance.thumbnail_url = str(dict_["thumbnailUrl"])
        elif include_empty:
            instance.thumbnail_url = str()
        if "useCount" in dict_ and dict_["useCount"] is not None:
            instance.use_count = int(dict_["useCount"])
        elif include_empty:
            instance.use_count = int()
        return instance

    @classmethod
    def create_many_from_dict(cls, dict_: dict, include_empty: bool = False) -> Dict[str, ItemUpdate]:
        return {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_} if dict_ else {}

    @classmethod
    def create_many_from_list(cls, list_: list, include_empty: bool = False) -> List[ItemUpdate]:
        return [cls.create_from_dict(i, include_empty=include_empty) for i in list_] if list_ else []

    @classmethod
    def create_from_any(cls, any_: any, include_empty: bool = False, many: bool = False) -> Union[ItemUpdate, List[ItemUpdate]]:
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
            "itemType": "item_type",
            "appId": "app_id",
            "appType": "app_type",
            "baseAppId": "base_app_id",
            "boothName": "booth_name",
            "categoryPath": "category_path",
            "clazz": "clazz",
            "displayOrder": "display_order",
            "ext": "ext",
            "features": "features",
            "images": "images",
            "itemIds": "item_ids",
            "itemQty": "item_qty",
            "listable": "listable",
            "localizations": "localizations",
            "maxCount": "max_count",
            "maxCountPerUser": "max_count_per_user",
            "name": "name",
            "purchasable": "purchasable",
            "recurring": "recurring",
            "regionData": "region_data",
            "seasonType": "season_type",
            "sku": "sku",
            "stackable": "stackable",
            "status": "status",
            "tags": "tags",
            "targetCurrencyCode": "target_currency_code",
            "targetNamespace": "target_namespace",
            "thumbnailUrl": "thumbnail_url",
            "useCount": "use_count",
        }

    # endregion static methods
