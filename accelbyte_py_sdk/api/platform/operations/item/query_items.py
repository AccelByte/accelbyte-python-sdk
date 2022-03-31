# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# justice-platform-service (4.5.1)

from __future__ import annotations
import re
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import FullItemPagingSlicedResult
from ...models import ValidationErrorEntity


class QueryItems(Operation):
    """Query items by criteria (queryItems)

    This API is used to query items by criteria within a store.

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:ITEM", action=2 (READ)
      *  Returns : the list of items

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ITEM [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/items/byCriteria

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        active_only: (activeOnly) OPTIONAL bool in query

        app_type: (appType) OPTIONAL str in query

        available_date: (availableDate) OPTIONAL str in query

        base_app_id: (baseAppId) OPTIONAL str in query

        category_path: (categoryPath) OPTIONAL str in query

        features: (features) OPTIONAL str in query

        item_type: (itemType) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        sort_by: (sortBy) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

        target_namespace: (targetNamespace) OPTIONAL str in query

    Responses:
        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/items/byCriteria"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    active_only: bool                                                                              # OPTIONAL in [query]
    app_type: str                                                                                  # OPTIONAL in [query]
    available_date: str                                                                            # OPTIONAL in [query]
    base_app_id: str                                                                               # OPTIONAL in [query]
    category_path: str                                                                             # OPTIONAL in [query]
    features: str                                                                                  # OPTIONAL in [query]
    item_type: str                                                                                 # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    region: str                                                                                    # OPTIONAL in [query]
    sort_by: str                                                                                   # OPTIONAL in [query]
    store_id: str                                                                                  # OPTIONAL in [query]
    tags: str                                                                                      # OPTIONAL in [query]
    target_namespace: str                                                                          # OPTIONAL in [query]

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
    def security_type(self) -> Optional[str]:
        return self._security_type

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None, collection_format_map: Optional[Dict[str, Optional[str]]] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
            path_params=self.get_path_params(),
            query_params=self.get_query_params(),
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "namespace",
        ]

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
        if hasattr(self, "active_only"):
            result["activeOnly"] = self.active_only
        if hasattr(self, "app_type"):
            result["appType"] = self.app_type
        if hasattr(self, "available_date"):
            result["availableDate"] = self.available_date
        if hasattr(self, "base_app_id"):
            result["baseAppId"] = self.base_app_id
        if hasattr(self, "category_path"):
            result["categoryPath"] = self.category_path
        if hasattr(self, "features"):
            result["features"] = self.features
        if hasattr(self, "item_type"):
            result["itemType"] = self.item_type
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
        if hasattr(self, "target_namespace"):
            result["targetNamespace"] = self.target_namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        # required checks
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        # enum checks
        if hasattr(self, "app_type") and self.app_type is not None and self.app_type not in QueryItems.get_enum_map()["appType"]:
            return False
        if hasattr(self, "item_type") and self.item_type is not None and self.item_type not in QueryItems.get_enum_map()["itemType"]:
            return False
        # pattern checks
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryItems:
        self.namespace = value
        return self

    def with_active_only(self, value: bool) -> QueryItems:
        self.active_only = value
        return self

    def with_app_type(self, value: str) -> QueryItems:
        self.app_type = value
        return self

    def with_available_date(self, value: str) -> QueryItems:
        self.available_date = value
        return self

    def with_base_app_id(self, value: str) -> QueryItems:
        self.base_app_id = value
        return self

    def with_category_path(self, value: str) -> QueryItems:
        self.category_path = value
        return self

    def with_features(self, value: str) -> QueryItems:
        self.features = value
        return self

    def with_item_type(self, value: str) -> QueryItems:
        self.item_type = value
        return self

    def with_limit(self, value: int) -> QueryItems:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryItems:
        self.offset = value
        return self

    def with_region(self, value: str) -> QueryItems:
        self.region = value
        return self

    def with_sort_by(self, value: str) -> QueryItems:
        self.sort_by = value
        return self

    def with_store_id(self, value: str) -> QueryItems:
        self.store_id = value
        return self

    def with_tags(self, value: str) -> QueryItems:
        self.tags = value
        return self

    def with_target_namespace(self, value: str) -> QueryItems:
        self.target_namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "active_only") and self.active_only:
            result["activeOnly"] = bool(self.active_only)
        elif include_empty:
            result["activeOnly"] = bool()
        if hasattr(self, "app_type") and self.app_type:
            result["appType"] = str(self.app_type)
        elif include_empty:
            result["appType"] = str()
        if hasattr(self, "available_date") and self.available_date:
            result["availableDate"] = str(self.available_date)
        elif include_empty:
            result["availableDate"] = str()
        if hasattr(self, "base_app_id") and self.base_app_id:
            result["baseAppId"] = str(self.base_app_id)
        elif include_empty:
            result["baseAppId"] = str()
        if hasattr(self, "category_path") and self.category_path:
            result["categoryPath"] = str(self.category_path)
        elif include_empty:
            result["categoryPath"] = str()
        if hasattr(self, "features") and self.features:
            result["features"] = str(self.features)
        elif include_empty:
            result["features"] = str()
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = str()
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = str()
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        if hasattr(self, "tags") and self.tags:
            result["tags"] = str(self.tags)
        elif include_empty:
            result["tags"] = str()
        if hasattr(self, "target_namespace") and self.target_namespace:
            result["targetNamespace"] = str(self.target_namespace)
        elif include_empty:
            result["targetNamespace"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, FullItemPagingSlicedResult], Union[None, ErrorEntity, HttpResponse, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - FullItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return FullItemPagingSlicedResult.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        active_only: Optional[bool] = None,
        app_type: Optional[str] = None,
        available_date: Optional[str] = None,
        base_app_id: Optional[str] = None,
        category_path: Optional[str] = None,
        features: Optional[str] = None,
        item_type: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        region: Optional[str] = None,
        sort_by: Optional[str] = None,
        store_id: Optional[str] = None,
        tags: Optional[str] = None,
        target_namespace: Optional[str] = None,
    ) -> QueryItems:
        instance = cls()
        instance.namespace = namespace
        if active_only is not None:
            instance.active_only = active_only
        if app_type is not None:
            instance.app_type = app_type
        if available_date is not None:
            instance.available_date = available_date
        if base_app_id is not None:
            instance.base_app_id = base_app_id
        if category_path is not None:
            instance.category_path = category_path
        if features is not None:
            instance.features = features
        if item_type is not None:
            instance.item_type = item_type
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
        if target_namespace is not None:
            instance.target_namespace = target_namespace
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryItems:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "activeOnly" in dict_ and dict_["activeOnly"] is not None:
            instance.active_only = bool(dict_["activeOnly"])
        elif include_empty:
            instance.active_only = bool()
        if "appType" in dict_ and dict_["appType"] is not None:
            instance.app_type = str(dict_["appType"])
        elif include_empty:
            instance.app_type = str()
        if "availableDate" in dict_ and dict_["availableDate"] is not None:
            instance.available_date = str(dict_["availableDate"])
        elif include_empty:
            instance.available_date = str()
        if "baseAppId" in dict_ and dict_["baseAppId"] is not None:
            instance.base_app_id = str(dict_["baseAppId"])
        elif include_empty:
            instance.base_app_id = str()
        if "categoryPath" in dict_ and dict_["categoryPath"] is not None:
            instance.category_path = str(dict_["categoryPath"])
        elif include_empty:
            instance.category_path = str()
        if "features" in dict_ and dict_["features"] is not None:
            instance.features = str(dict_["features"])
        elif include_empty:
            instance.features = str()
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = str()
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = str()
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = str(dict_["tags"])
        elif include_empty:
            instance.tags = str()
        if "targetNamespace" in dict_ and dict_["targetNamespace"] is not None:
            instance.target_namespace = str(dict_["targetNamespace"])
        elif include_empty:
            instance.target_namespace = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "activeOnly": "active_only",
            "appType": "app_type",
            "availableDate": "available_date",
            "baseAppId": "base_app_id",
            "categoryPath": "category_path",
            "features": "features",
            "itemType": "item_type",
            "limit": "limit",
            "offset": "offset",
            "region": "region",
            "sortBy": "sort_by",
            "storeId": "store_id",
            "tags": "tags",
            "targetNamespace": "target_namespace",
        }

    @staticmethod
    def get_enum_map() -> Dict[str, Union[None, List[Any]]]:
        return {
            "appType": ["DEMO", "DLC", "GAME", "SOFTWARE"],                                        # in query
            "itemType": ["APP", "BUNDLE", "CODE", "COINS", "INGAMEITEM", "MEDIA", "SEASON", "SUBSCRIPTION"],# in query
        }

    # endregion static methods
