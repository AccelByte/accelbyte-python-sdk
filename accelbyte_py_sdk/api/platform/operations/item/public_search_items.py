# justice-platform-service (3.37.1)

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

from .....core import Operation
from .....core import HttpResponse

from ...models import ErrorEntity
from ...models import ItemPagingSlicedResult


class PublicSearchItems(Operation):
    """Search items by keyword (publicSearchItems)

    This API is used to search items by keyword in title, description and long
    description, It's language constrained, also if item not exist in specific
    region, default region item will return.<p>Other detail info:
    <ul><li><i>Optional permission</i>: resource="PREVIEW", action=1(CREATE) (user
    with this permission can view draft store item)</li><li><i>Optional
    permission</i>: resource="SANDBOX", action=1(CREATE) (user with this
    permission can view draft store item)</li><li><i>Returns</i>: the list of
    items</li></ul>


    Properties:
        url: /platform/public/namespaces/{namespace}/items/search

        method: GET

        tags: ["Item"]

        consumes: []

        produces: ["application/json"]

        security: bearer

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        region: (region) OPTIONAL str in query

        store_id: (storeId) OPTIONAL str in query

        keyword: (keyword) REQUIRED str in query

        language: (language) REQUIRED str in query

    Responses:
        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
    """

    # region fields

    _url: str = "/platform/public/namespaces/{namespace}/items/search"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    region: str                                                                                    # OPTIONAL in [query]
    store_id: str                                                                                  # OPTIONAL in [query]
    keyword: str                                                                                   # REQUIRED in [query]
    language: str                                                                                  # REQUIRED in [query]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
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
            "keyword",
            "language",
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
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "store_id"):
            result["storeId"] = self.store_id
        if hasattr(self, "keyword"):
            result["keyword"] = self.keyword
        if hasattr(self, "language"):
            result["language"] = self.language
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "keyword") or self.keyword is None:
            return False
        if not hasattr(self, "language") or self.language is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> PublicSearchItems:
        self.namespace = value
        return self

    def with_limit(self, value: int) -> PublicSearchItems:
        self.limit = value
        return self

    def with_offset(self, value: int) -> PublicSearchItems:
        self.offset = value
        return self

    def with_region(self, value: str) -> PublicSearchItems:
        self.region = value
        return self

    def with_store_id(self, value: str) -> PublicSearchItems:
        self.store_id = value
        return self

    def with_keyword(self, value: str) -> PublicSearchItems:
        self.keyword = value
        return self

    def with_language(self, value: str) -> PublicSearchItems:
        self.language = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
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
        if hasattr(self, "store_id") and self.store_id:
            result["storeId"] = str(self.store_id)
        elif include_empty:
            result["storeId"] = str()
        if hasattr(self, "keyword") and self.keyword:
            result["keyword"] = str(self.keyword)
        elif include_empty:
            result["keyword"] = str()
        if hasattr(self, "language") and self.language:
            result["language"] = str(self.language)
        elif include_empty:
            result["language"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, ItemPagingSlicedResult], Union[None, ErrorEntity]]:
        """Parse the given response.

        200: OK - ItemPagingSlicedResult (successful operation)

        404: Not Found - ErrorEntity (30141: Store [{storeId}] does not exist in namespace [{namespace}] | 30142: Published store does not exist in namespace [{namespace}])
        """
        if code == 200:
            return ItemPagingSlicedResult.create_from_dict(content), None
        if code == 404:
            return None, ErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        keyword: str,
        language: str,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        region: Optional[str] = None,
        store_id: Optional[str] = None,
    ) -> PublicSearchItems:
        instance = cls()
        instance.namespace = namespace
        instance.keyword = keyword
        instance.language = language
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if region is not None:
            instance.region = region
        if store_id is not None:
            instance.store_id = store_id
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> PublicSearchItems:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
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
        if "storeId" in dict_ and dict_["storeId"] is not None:
            instance.store_id = str(dict_["storeId"])
        elif include_empty:
            instance.store_id = str()
        if "keyword" in dict_ and dict_["keyword"] is not None:
            instance.keyword = str(dict_["keyword"])
        elif include_empty:
            instance.keyword = str()
        if "language" in dict_ and dict_["language"] is not None:
            instance.language = str(dict_["language"])
        elif include_empty:
            instance.language = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "limit": "limit",
            "offset": "offset",
            "region": "region",
            "storeId": "store_id",
            "keyword": "keyword",
            "language": "language",
        }

    # endregion static methods
