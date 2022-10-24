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

# AccelByte Cloud Platform Service (4.17.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import CatalogChangePagingSlicedResult


class ActionEnum(StrEnum):
    CREATE = "CREATE"
    DELETE = "DELETE"
    UPDATE = "UPDATE"


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


class SortByEnum(StrEnum):
    CREATEDAT = "createdAt"
    CREATEDAT_ASC = "createdAt:asc"
    CREATEDAT_DESC = "createdAt:desc"
    UPDATEDAT = "updatedAt"
    UPDATEDAT_ASC = "updatedAt:asc"
    UPDATEDAT_DESC = "updatedAt:desc"


class StatusEnum(StrEnum):
    PUBLISHED = "PUBLISHED"
    UNPUBLISHED = "UNPUBLISHED"


class TypeEnum(StrEnum):
    CATEGORY = "CATEGORY"
    ITEM = "ITEM"
    STORE = "STORE"


class QueryChanges(Operation):
    """Query catalog changes (queryChanges)

    This API is used to query changes .

    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:STORE", action=2 (READ)
      *  Returns : the pagination of changes

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:STORE [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria

        method: GET

        tags: ["CatalogChanges"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        store_id: (storeId) REQUIRED str in path

        action: (action) OPTIONAL Union[str, ActionEnum] in query

        item_sku: (itemSku) OPTIONAL str in query

        item_type: (itemType) OPTIONAL Union[str, ItemTypeEnum] in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        selected: (selected) OPTIONAL bool in query

        sort_by: (sortBy) OPTIONAL List[Union[str, SortByEnum]] in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

        updated_at_end: (updatedAtEnd) OPTIONAL str in query

        updated_at_start: (updatedAtStart) OPTIONAL str in query

    Responses:
        200: OK - List[CatalogChangePagingSlicedResult] (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/stores/{storeId}/catalogChanges/byCriteria"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    store_id: str  # REQUIRED in [path]
    action: Union[str, ActionEnum]  # OPTIONAL in [query]
    item_sku: str  # OPTIONAL in [query]
    item_type: Union[str, ItemTypeEnum]  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    selected: bool  # OPTIONAL in [query]
    sort_by: List[Union[str, SortByEnum]]  # OPTIONAL in [query]
    status: Union[str, StatusEnum]  # OPTIONAL in [query]
    type_: Union[str, TypeEnum]  # OPTIONAL in [query]
    updated_at_end: str  # OPTIONAL in [query]
    updated_at_start: str  # OPTIONAL in [query]

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
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "action"):
            result["action"] = self.action
        if hasattr(self, "item_sku"):
            result["itemSku"] = self.item_sku
        if hasattr(self, "item_type"):
            result["itemType"] = self.item_type
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "selected"):
            result["selected"] = self.selected
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "type_"):
            result["type"] = self.type_
        if hasattr(self, "updated_at_end"):
            result["updatedAtEnd"] = self.updated_at_end
        if hasattr(self, "updated_at_start"):
            result["updatedAtStart"] = self.updated_at_start
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryChanges:
        self.namespace = value
        return self

    def with_store_id(self, value: str) -> QueryChanges:
        self.store_id = value
        return self

    def with_action(self, value: Union[str, ActionEnum]) -> QueryChanges:
        self.action = value
        return self

    def with_item_sku(self, value: str) -> QueryChanges:
        self.item_sku = value
        return self

    def with_item_type(self, value: Union[str, ItemTypeEnum]) -> QueryChanges:
        self.item_type = value
        return self

    def with_limit(self, value: int) -> QueryChanges:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryChanges:
        self.offset = value
        return self

    def with_selected(self, value: bool) -> QueryChanges:
        self.selected = value
        return self

    def with_sort_by(self, value: List[Union[str, SortByEnum]]) -> QueryChanges:
        self.sort_by = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> QueryChanges:
        self.status = value
        return self

    def with_type_(self, value: Union[str, TypeEnum]) -> QueryChanges:
        self.type_ = value
        return self

    def with_updated_at_end(self, value: str) -> QueryChanges:
        self.updated_at_end = value
        return self

    def with_updated_at_start(self, value: str) -> QueryChanges:
        self.updated_at_start = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = ""
        if hasattr(self, "action") and self.action:
            result["action"] = str(self.action)
        elif include_empty:
            result["action"] = Union[str, ActionEnum]()
        if hasattr(self, "item_sku") and self.item_sku:
            result["itemSku"] = str(self.item_sku)
        elif include_empty:
            result["itemSku"] = ""
        if hasattr(self, "item_type") and self.item_type:
            result["itemType"] = str(self.item_type)
        elif include_empty:
            result["itemType"] = Union[str, ItemTypeEnum]()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "selected") and self.selected:
            result["selected"] = bool(self.selected)
        elif include_empty:
            result["selected"] = False
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = [str(i0) for i0 in self.sort_by]
        elif include_empty:
            result["sortBy"] = []
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        if hasattr(self, "updated_at_end") and self.updated_at_end:
            result["updatedAtEnd"] = str(self.updated_at_end)
        elif include_empty:
            result["updatedAtEnd"] = ""
        if hasattr(self, "updated_at_start") and self.updated_at_start:
            result["updatedAtStart"] = str(self.updated_at_start)
        elif include_empty:
            result["updatedAtStart"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, List[CatalogChangePagingSlicedResult]], Union[None, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - List[CatalogChangePagingSlicedResult] (successful operation)

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
            return [
                CatalogChangePagingSlicedResult.create_from_dict(i) for i in content
            ], None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        store_id: str,
        action: Optional[Union[str, ActionEnum]] = None,
        item_sku: Optional[str] = None,
        item_type: Optional[Union[str, ItemTypeEnum]] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        selected: Optional[bool] = None,
        sort_by: Optional[List[Union[str, SortByEnum]]] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
        updated_at_end: Optional[str] = None,
        updated_at_start: Optional[str] = None,
    ) -> QueryChanges:
        instance = cls()
        instance.namespace = namespace
        instance.store_id = store_id
        if action is not None:
            instance.action = action
        if item_sku is not None:
            instance.item_sku = item_sku
        if item_type is not None:
            instance.item_type = item_type
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if selected is not None:
            instance.selected = selected
        if sort_by is not None:
            instance.sort_by = sort_by
        if status is not None:
            instance.status = status
        if type_ is not None:
            instance.type_ = type_
        if updated_at_end is not None:
            instance.updated_at_end = updated_at_end
        if updated_at_start is not None:
            instance.updated_at_start = updated_at_start
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryChanges:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = ""
        if "action" in dict_ and dict_["action"] is not None:
            instance.action = str(dict_["action"])
        elif include_empty:
            instance.action = Union[str, ActionEnum]()
        if "itemSku" in dict_ and dict_["itemSku"] is not None:
            instance.item_sku = str(dict_["itemSku"])
        elif include_empty:
            instance.item_sku = ""
        if "itemType" in dict_ and dict_["itemType"] is not None:
            instance.item_type = str(dict_["itemType"])
        elif include_empty:
            instance.item_type = Union[str, ItemTypeEnum]()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "selected" in dict_ and dict_["selected"] is not None:
            instance.selected = bool(dict_["selected"])
        elif include_empty:
            instance.selected = False
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = [str(i0) for i0 in dict_["sortBy"]]
        elif include_empty:
            instance.sort_by = []
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
        if "updatedAtEnd" in dict_ and dict_["updatedAtEnd"] is not None:
            instance.updated_at_end = str(dict_["updatedAtEnd"])
        elif include_empty:
            instance.updated_at_end = ""
        if "updatedAtStart" in dict_ and dict_["updatedAtStart"] is not None:
            instance.updated_at_start = str(dict_["updatedAtStart"])
        elif include_empty:
            instance.updated_at_start = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "storeId": "store_id",
            "action": "action",
            "itemSku": "item_sku",
            "itemType": "item_type",
            "limit": "limit",
            "offset": "offset",
            "selected": "selected",
            "sortBy": "sort_by",
            "status": "status",
            "type": "type_",
            "updatedAtEnd": "updated_at_end",
            "updatedAtStart": "updated_at_start",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "storeId": True,
            "action": False,
            "itemSku": False,
            "itemType": False,
            "limit": False,
            "offset": False,
            "selected": False,
            "sortBy": False,
            "status": False,
            "type": False,
            "updatedAtEnd": False,
            "updatedAtStart": False,
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "sortBy": "csv",  # in query
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "action": ["CREATE", "DELETE", "UPDATE"],  # in query
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
            ],  # in query
            "sortBy": [
                "createdAt",
                "createdAt:asc",
                "createdAt:desc",
                "updatedAt",
                "updatedAt:asc",
                "updatedAt:desc",
            ],  # in query
            "status": ["PUBLISHED", "UNPUBLISHED"],  # in query
            "type": ["CATEGORY", "ITEM", "STORE"],  # in query
        }

    # endregion static methods
