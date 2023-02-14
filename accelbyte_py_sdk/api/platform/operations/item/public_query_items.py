# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: accelbyte_cloud_py_codegen

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

# AccelByte Cloud Platform Service (4.23.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ErrorEntity
from ...models import ItemPagingSlicedResult
from ...models import ValidationErrorEntity


class AppTypeEnum(StrEnum):
    DEMO = "DEMO"
    DLC = "DLC"
    GAME = "GAME"
    SOFTWARE = "SOFTWARE"


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


class SortByEnum(StrEnum):
    NAME = "name"
    NAME_ASC = "name:asc"
    NAME_DESC = "name:desc"
    CREATEDAT = "createdAt"
    CREATEDAT_ASC = "createdAt:asc"
    CREATEDAT_DESC = "createdAt:desc"
    UPDATEDAT = "updatedAt"
    UPDATEDAT_ASC = "updatedAt:asc"
    UPDATEDAT_DESC = "updatedAt:desc"
    DISPLAYORDER = "displayOrder"
    DISPLAYORDER_ASC = "displayOrder:asc"
    DISPLAYORDER_DESC = "displayOrder:desc"


class PublicQueryItems(Operation):
    """Query items by criteria (publicQueryItems)

    This API is used to query items by criteria within a store. If item not exist in specific region, default region item will return.

    Other detail info:

      * Optional permission : resource="PREVIEW", action=1(CREATE) (user with this permission can view draft store item)
      *  Optional permission : resource="SANDBOX", action=1(CREATE) (user with this permission can view draft store item)
      *  Returns : the list of items

    Properties:
        url: /platform/public/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        app_type: (appType) OPTIONAL Union[str, AppTypeEnum] in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        include_sub_category_item: (includeSubCategoryItem) OPTIONAL bool in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        language: (language) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/items/byCriteria"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    app_type: Union[str, AppTypeEnum]  # OPTIONAL in [query]
    base_app_id: str  # OPTIONAL in [query]
    category_path: str  # OPTIONAL in [query]
    features: str  # OPTIONAL in [query]
    include_sub_category_item: bool  # OPTIONAL in [query]
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL in [query]
    language: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    region: str  # OPTIONAL in [query]
    sort_by: List[Union[str, SortByEnum]]  # OPTIONAL in [query]
    store_id: str  # OPTIONAL in [query]
    tags: str  # OPTIONAL in [query]

    # endregion fields

    # region properties

    @property
    def url(self) -> str:
        return self._url

    @property
    def method(self) -> str:
        return self._method

    @property
    def consumes(self) -> List[str]:
        return self._consumes

    @property
    def produces(self) -> List[str]:
        return self._produces

    @property
    def securities(self) -> List[List[str]]:
        return self._securities

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
            "query": self.get_query_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "app_type"):
            result["appType"] = self.app_type
        if hasattr(self, "base_app_id"):
            result["baseAppId"] = self.base_app_id
        if hasattr(self, "category_path"):
            result["categoryPath"] = self.category_path
        if hasattr(self, "features"):
            result["features"] = self.features
        if hasattr(self, "include_sub_category_item"):
            result["includeSubCategoryItem"] = self.include_sub_category_item
        if hasattr(self, "item_type"):
            result["itemType"] = self.item_type
        if hasattr(self, "language"):
            result["language"] = self.language
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicQueryItems:
        self.namespace = value
        return self

    def with_app_type(self, value: Union[str, AppTypeEnum]) -> PublicQueryItems:
        self.app_type = value
        return self

    def with_base_app_id(self, value: str) -> PublicQueryItems:
        self.base_app_id = value
        return self

    def with_category_path(self, value: str) -> PublicQueryItems:
        self.category_path = value
        return self

    def with_features(self, value: str) -> PublicQueryItems:
        self.features = value
        return self

    def with_include_sub_category_item(self, value: bool) -> PublicQueryItems:
        self.include_sub_category_item = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> PublicQueryItems:
        self.item_type = value
        return self

    def with_language(self, value: str) -> PublicQueryItems:
        self.language = value
        return self

    def with_limit(self, value: int) -> PublicQueryItems:
        self.limit = value
        return self

    def with_offset(self, value: int) -> PublicQueryItems:
        self.offset = value
        return self

    def with_region(self, value: str) -> PublicQueryItems:
        self.region = value
        return self

    def with_sort_by(self, value: List[Union[str, SortByEnum]]) -> PublicQueryItems:
        self.sort_by = value
        return self

    def with_store_id(self, value: str) -> PublicQueryItems:
        self.store_id = value
        return self

    def with_tags(self, value: str) -> PublicQueryItems:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = Union[str, AppTypeEnum]()
        if hasattr(self, "base_app_id") and self.base_app_id:
            result["baseAppId"] = str(self.base_app_id)
        elif include_empty:
            result["baseAppId"] = ""
        if hasattr(self, "category_path") and self.category_path:
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = ""
        if hasattr(self, "features") and self.features:
            result["features"] = str(self.features)
        elif include_empty:
            result["features"] = ""
        if (
            hasattr(self, "include_sub_category_item")
            and self.include_sub_category_item
        ):
            result["includeSubCategoryItem"] = bool(self.include_sub_category_item)
        elif include_empty:
            result["includeSubCategoryItem"] = False
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = [str(i0) for i0 in self.sort_by]
        elif include_empty:
            result["sortBy"] = []
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "tags") and self.tags:
            result["tags"] = str(self.tags)
        elif include_empty:
            result["tags"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ItemPagingSlicedResult],
        Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity],
    ]:
        """Parse the given response.

        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(
            code=code, content_type=content_type, content=content
        )
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return ItemPagingSlicedResult.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        app_type: Optional[Union[str, AppTypeEnum]] = None,
        base_app_id: Optional[str] = None,
        category_path: Optional[str] = None,
        features: Optional[str] = None,
        include_sub_category_item: Optional[bool] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        language: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        region: Optional[str] = None,
        sort_by: Optional[List[Union[str, SortByEnum]]] = None,
        store_id: Optional[str] = None,
        tags: Optional[str] = None,
    ) -> PublicQueryItems:
        instance = cls()
        instance.namespace = namespace
        if app_type is not None:
            instance.app_type = app_type
        if base_app_id is not None:
            instance.base_app_id = base_app_id
        if category_path is not None:
            instance.category_path = category_path
        if features is not None:
            instance.features = features
        if include_sub_category_item is not None:
            instance.include_sub_category_item = include_sub_category_item
        if item_type is not None:
            instance.item_type = item_type
        if language is not None:
            instance.language = language
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if region is not None:
            instance.region = region
        if sort_by is not None:
            instance.sort_by = sort_by
        if store_id is not None:
            instance.store_id = store_id
        if tags is not None:
            instance.tags = tags
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> PublicQueryItems:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = Union[str, AppTypeEnum]()
        if "baseAppId" in dict_ and dict_["baseAppId"] is not None:
            instance.base_app_id = str(dict_["baseAppId"])
        elif include_empty:
            instance.base_app_id = ""
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = ""
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = str(dict_["features"])
        elif include_empty:
            instance.features = ""
        if (
            "includeSubCategoryItem" in dict_
            and dict_["includeSubCategoryItem"] is not None
        ):
            instance.include_sub_category_item = bool(dict_["includeSubCategoryItem"])
        elif include_empty:
            instance.include_sub_category_item = False
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = [str(i0) for i0 in dict_["sortBy"]]
        elif include_empty:
            instance.sort_by = []
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = str(dict_["tags"])
        elif include_empty:
            instance.tags = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "appType": "app_type",
            "baseAppId": "base_app_id",
            "categoryPath": "category_path",
            "features": "features",
            "includeSubCategoryItem": "include_sub_category_item",
            "itemType": "item_type",
            "language": "language",
            "limit": "limit",
            "offset": "offset",
            "region": "region",
            "sortBy": "sort_by",
            "storeId": "store_id",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "appType": False,
            "baseAppId": False,
            "categoryPath": False,
            "features": False,
            "includeSubCategoryItem": False,
            "itemType": False,
            "language": False,
            "limit": False,
            "offset": False,
            "region": False,
            "sortBy": False,
            "storeId": False,
            "tags": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "sortBy": "csv",  # in query
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],  # in query
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
            ],  # in query
            "sortBy": [
                "name",
                "name:asc",
                "name:desc",
                "createdAt",
                "createdAt:asc",
                "createdAt:desc",
                "updatedAt",
                "updatedAt:asc",
                "updatedAt:desc",
                "displayOrder",
                "displayOrder:asc",
                "displayOrder:desc",
            ],  # in query
        }

    # endregion static methods
