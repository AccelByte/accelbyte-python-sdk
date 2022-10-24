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


class ActionEnum(StrEnum):
    CREATE = "CREATE"
    DELETE = "DELETE"
    UPDATE = "UPDATE"


class StatusEnum(StrEnum):
    PUBLISHED = "PUBLISHED"
    UNPUBLISHED = "UNPUBLISHED"


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


class TypeEnum(StrEnum):
    CATEGORY = "CATEGORY"
    ITEM = "ITEM"
    STORE = "STORE"


class CatalogChangeInfo(Model):
    """Catalog change info (CatalogChangeInfo)

    Properties:
        action: (action) REQUIRED Union[str, ActionEnum]

        change_id: (changeId) REQUIRED str

        created_at: (createdAt) REQUIRED str

        namespace: (namespace) REQUIRED str

        selected: (selected) REQUIRED bool

        status: (status) REQUIRED Union[str, StatusEnum]

        store_id: (storeId) REQUIRED str

        updated_at: (updatedAt) REQUIRED str

        category_path: (categoryPath) OPTIONAL str

        description: (description) OPTIONAL str

        item_id: (itemId) OPTIONAL str

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum]

        published_at: (publishedAt) OPTIONAL str

        sku: (sku) OPTIONAL str

        title: (title) OPTIONAL str

        type_: (type) OPTIONAL Union[str, TypeEnum]
    """

    # region fields

    action: Union[str, ActionEnum]  # REQUIRED
    change_id: str  # REQUIRED
    created_at: str  # REQUIRED
    namespace: str  # REQUIRED
    selected: bool  # REQUIRED
    status: Union[str, StatusEnum]  # REQUIRED
    store_id: str  # REQUIRED
    updated_at: str  # REQUIRED
    category_path: str  # OPTIONAL
    description: str  # OPTIONAL
    item_id: str  # OPTIONAL
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL
    published_at: str  # OPTIONAL
    sku: str  # OPTIONAL
    title: str  # OPTIONAL
    type_: Union[str, TypeEnum]  # OPTIONAL

    # endregion fields

    # region with_x methods

    def with_action(self, value: Union[str, ActionEnum]) -> CatalogChangeInfo:
        self.action = value
        return self

    def with_change_id(self, value: str) -> CatalogChangeInfo:
        self.change_id = value
        return self

    def with_created_at(self, value: str) -> CatalogChangeInfo:
        self.created_at = value
        return self

    def with_namespace(self, value: str) -> CatalogChangeInfo:
        self.namespace = value
        return self

    def with_selected(self, value: bool) -> CatalogChangeInfo:
        self.selected = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> CatalogChangeInfo:
        self.status = value
        return self

    def with_store_id(self, value: str) -> CatalogChangeInfo:
        self.store_id = value
        return self

    def with_updated_at(self, value: str) -> CatalogChangeInfo:
        self.updated_at = value
        return self

    def with_category_path(self, value: str) -> CatalogChangeInfo:
        self.category_path = value
        return self

    def with_description(self, value: str) -> CatalogChangeInfo:
        self.description = value
        return self

    def with_item_id(self, value: str) -> CatalogChangeInfo:
        self.item_id = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> CatalogChangeInfo:
        self.item_type = value
        return self

    def with_published_at(self, value: str) -> CatalogChangeInfo:
        self.published_at = value
        return self

    def with_sku(self, value: str) -> CatalogChangeInfo:
        self.sku = value
        return self

    def with_title(self, value: str) -> CatalogChangeInfo:
        self.title = value
        return self

    def with_type(self, value: Union[str, TypeEnum]) -> CatalogChangeInfo:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "action"):
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = Union[str, ActionEnum]()
        if hasattr(self, "change_id"):
            result["changeId"] = str(self.change_id)
        elif include_empty:
            result["changeId"] = ""
        if hasattr(self, "created_at"):
            result["createdAt"] = str(self.created_at)
        elif include_empty:
            result["createdAt"] = ""
        if hasattr(self, "namespace"):
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "selected"):
            result["selected"] = bool(self.selected)
        elif include_empty:
            result["selected"] = False
        if hasattr(self, "status"):
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "store_id"):
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "updated_at"):
            result["updatedAt"] = str(self.updated_at)
        elif include_empty:
            result["updatedAt"] = ""
        if hasattr(self, "category_path"):
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = ""
        if hasattr(self, "description"):
            result["description"] = str(self.description)
        elif include_empty:
            result["description"] = ""
        if hasattr(self, "item_id"):
            result["itemId"] = str(self.item_id)
        elif include_empty:
            result["itemId"] = ""
        if hasattr(self, "item_type"):
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "published_at"):
            result["publishedAt"] = str(self.published_at)
        elif include_empty:
            result["publishedAt"] = ""
        if hasattr(self, "sku"):
            result["sku"] = str(self.sku)
        elif include_empty:
            result["sku"] = ""
        if hasattr(self, "title"):
            result["title"] = str(self.title)
        elif include_empty:
            result["title"] = ""
        if hasattr(self, "type_"):
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region static methods

    @classmethod
    def create(
        cls,
        action: Union[str, ActionEnum],
        change_id: str,
        created_at: str,
        namespace: str,
        selected: bool,
        status: Union[str, StatusEnum],
        store_id: str,
        updated_at: str,
        category_path: Optional[str] = None,
        description: Optional[str] = None,
        item_id: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        published_at: Optional[str] = None,
        sku: Optional[str] = None,
        title: Optional[str] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
    ) -> CatalogChangeInfo:
        instance = cls()
        instance.action = action
        instance.change_id = change_id
        instance.created_at = created_at
        instance.namespace = namespace
        instance.selected = selected
        instance.status = status
        instance.store_id = store_id
        instance.updated_at = updated_at
        if category_path is not None:
            instance.category_path = category_path
        if description is not None:
            instance.description = description
        if item_id is not None:
            instance.item_id = item_id
        if item_type is not None:
            instance.item_type = item_type
        if published_at is not None:
            instance.published_at = published_at
        if sku is not None:
            instance.sku = sku
        if title is not None:
            instance.title = title
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> CatalogChangeInfo:
        instance = cls()
        if not dict_:
            return instance
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = Union[str, ActionEnum]()
        if "changeId" in dict_ and dict_["changeId"] is not None:
            instance.change_id = str(dict_["changeId"])
        elif include_empty:
            instance.change_id = ""
        if "createdAt" in dict_ and dict_["createdAt"] is not None:
            instance.created_at = str(dict_["createdAt"])
        elif include_empty:
            instance.created_at = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "selected" in dict_ and dict_["selected"] is not None:
            instance.selected = bool(dict_["selected"])
        elif include_empty:
            instance.selected = False
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "updatedAt" in dict_ and dict_["updatedAt"] is not None:
            instance.updated_at = str(dict_["updatedAt"])
        elif include_empty:
            instance.updated_at = ""
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = ""
        if "description" in dict_ and dict_["description"] is not None:
            instance.description = str(dict_["description"])
        elif include_empty:
            instance.description = ""
        if "itemId" in dict_ and dict_["itemId"] is not None:
            instance.item_id = str(dict_["itemId"])
        elif include_empty:
            instance.item_id = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "publishedAt" in dict_ and dict_["publishedAt"] is not None:
            instance.published_at = str(dict_["publishedAt"])
        elif include_empty:
            instance.published_at = ""
        if "sku" in dict_ and dict_["sku"] is not None:
            instance.sku = str(dict_["sku"])
        elif include_empty:
            instance.sku = ""
        if "title" in dict_ and dict_["title"] is not None:
            instance.title = str(dict_["title"])
        elif include_empty:
            instance.title = ""
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        return instance

    @classmethod
    def create_many_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> Dict[str, CatalogChangeInfo]:
        return (
            {k: cls.create_from_dict(v, include_empty=include_empty) for k, v in dict_}
            if dict_
            else {}
        )

    @classmethod
    def create_many_from_list(
        cls, list_: list, include_empty: bool = False
    ) -> List[CatalogChangeInfo]:
        return (
            [cls.create_from_dict(i, include_empty=include_empty) for i in list_]
            if list_
            else []
        )

    @classmethod
    def create_from_any(
        cls, any_: any, include_empty: bool = False, many: bool = False
    ) -> Union[
        CatalogChangeInfo, List[CatalogChangeInfo], Dict[Any, CatalogChangeInfo]
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
            "action": "action",
            "changeId": "change_id",
            "createdAt": "created_at",
            "namespace": "namespace",
            "selected": "selected",
            "status": "status",
            "storeId": "store_id",
            "updatedAt": "updated_at",
            "categoryPath": "category_path",
            "description": "description",
            "itemId": "item_id",
            "itemType": "item_type",
            "publishedAt": "published_at",
            "sku": "sku",
            "title": "title",
            "type": "type_",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "action": True,
            "changeId": True,
            "createdAt": True,
            "namespace": True,
            "selected": True,
            "status": True,
            "storeId": True,
            "updatedAt": True,
            "categoryPath": False,
            "description": False,
            "itemId": False,
            "itemType": False,
            "publishedAt": False,
            "sku": False,
            "title": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "action": ["CREATE", "DELETE", "UPDATE"],
            "status": ["PUBLISHED", "UNPUBLISHED"],
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
            "type": ["CATEGORY", "ITEM", "STORE"],
        }

    # endregion static methods
