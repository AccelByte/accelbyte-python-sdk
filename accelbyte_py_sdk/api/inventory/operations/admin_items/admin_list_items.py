# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

# AccelByte Gaming Services Inventory Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import ApimodelsErrorResponse
from ...models import ApimodelsListItemResp


class SortByEnum(StrEnum):
    CREATEDAT = "createdAt"
    CREATEDAT_ASC = "createdAt:asc"
    CREATEDAT_DESC = "createdAt:desc"
    UPDATEDAT = "updatedAt"
    UPDATEDAT_ASC = "updatedAt:asc"
    UPDATEDAT_DESC = "updatedAt:desc"


class AdminListItems(Operation):
    """To list all items (AdminListItems)


    Listing all items in an inventory.
    The response body will be in the form of standard pagination.

    Permission: ADMIN:NAMESPACE:{namespace}:USER:{userId}:INVENTORY:ITEM [READ]

    Properties:
        url: /inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items

        method: GET

        tags: ["Admin Items"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        inventory_id: (inventoryId) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        sort_by: (sortBy) OPTIONAL Union[str, SortByEnum] in query

        source_item_id: (sourceItemId) OPTIONAL str in query

        tags: (tags) OPTIONAL str in query

    Responses:
        200: OK - ApimodelsListItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = (
        "/inventory/v1/admin/namespaces/{namespace}/inventories/{inventoryId}/items"
    )
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    inventory_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    sort_by: Union[str, SortByEnum]  # OPTIONAL in [query]
    source_item_id: str  # OPTIONAL in [query]
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
        if hasattr(self, "inventory_id"):
            result["inventoryId"] = self.inventory_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "source_item_id"):
            result["sourceItemId"] = self.source_item_id
        if hasattr(self, "tags"):
            result["tags"] = self.tags
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_inventory_id(self, value: str) -> AdminListItems:
        self.inventory_id = value
        return self

    def with_namespace(self, value: str) -> AdminListItems:
        self.namespace = value
        return self

    def with_limit(self, value: int) -> AdminListItems:
        self.limit = value
        return self

    def with_offset(self, value: int) -> AdminListItems:
        self.offset = value
        return self

    def with_sort_by(self, value: Union[str, SortByEnum]) -> AdminListItems:
        self.sort_by = value
        return self

    def with_source_item_id(self, value: str) -> AdminListItems:
        self.source_item_id = value
        return self

    def with_tags(self, value: str) -> AdminListItems:
        self.tags = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "inventory_id") and self.inventory_id:
            result["inventoryId"] = str(self.inventory_id)
        elif include_empty:
            result["inventoryId"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = Union[str, SortByEnum]()
        if hasattr(self, "source_item_id") and self.source_item_id:
            result["sourceItemId"] = str(self.source_item_id)
        elif include_empty:
            result["sourceItemId"] = ""
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
        Union[None, ApimodelsListItemResp],
        Union[None, ApimodelsErrorResponse, HttpResponse],
    ]:
        """Parse the given response.

        200: OK - ApimodelsListItemResp (OK)

        400: Bad Request - ApimodelsErrorResponse (Bad Request)

        500: Internal Server Error - ApimodelsErrorResponse (Internal Server Error)

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
            return ApimodelsListItemResp.create_from_dict(content), None
        if code == 400:
            return None, ApimodelsErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ApimodelsErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        inventory_id: str,
        namespace: str,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        sort_by: Optional[Union[str, SortByEnum]] = None,
        source_item_id: Optional[str] = None,
        tags: Optional[str] = None,
        **kwargs,
    ) -> AdminListItems:
        instance = cls()
        instance.inventory_id = inventory_id
        instance.namespace = namespace
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if sort_by is not None:
            instance.sort_by = sort_by
        if source_item_id is not None:
            instance.source_item_id = source_item_id
        if tags is not None:
            instance.tags = tags
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> AdminListItems:
        instance = cls()
        if "inventoryId" in dict_ and dict_["inventoryId"] is not None:
            instance.inventory_id = str(dict_["inventoryId"])
        elif include_empty:
            instance.inventory_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = Union[str, SortByEnum]()
        if "sourceItemId" in dict_ and dict_["sourceItemId"] is not None:
            instance.source_item_id = str(dict_["sourceItemId"])
        elif include_empty:
            instance.source_item_id = ""
        if "tags" in dict_ and dict_["tags"] is not None:
            instance.tags = str(dict_["tags"])
        elif include_empty:
            instance.tags = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "inventoryId": "inventory_id",
            "namespace": "namespace",
            "limit": "limit",
            "offset": "offset",
            "sortBy": "sort_by",
            "sourceItemId": "source_item_id",
            "tags": "tags",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "inventoryId": True,
            "namespace": True,
            "limit": False,
            "offset": False,
            "sortBy": False,
            "sourceItemId": False,
            "tags": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "sortBy": [
                "createdAt",
                "createdAt:asc",
                "createdAt:desc",
                "updatedAt",
                "updatedAt:asc",
                "updatedAt:desc",
            ],  # in query
        }

    # endregion static methods
