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

from .....core import Operation
from .....core import HttpResponse

from ...models import OrderPagingResult
from ...models import ValidationErrorEntity


class QueryOrders(Operation):
    """Query orders (queryOrders)

    Query orders.<br>Other detail info: <ul><li><i>Required permission</i>:
    resource="ADMIN:NAMESPACE:{namespace}:ORDER", action=2
    (READ)</li><li><i>Returns</i>: query orders</li></ul>


    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:ORDER [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/orders

        method: GET

        tags: ["Order"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_nos: (orderNos) OPTIONAL List[str] in query

        sort_by: (sortBy) OPTIONAL str in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        with_total: (withTotal) OPTIONAL bool in query

    Responses:
        200: OK - OrderPagingResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/orders"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    end_time: str                                                                                  # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    order_nos: List[str]                                                                           # OPTIONAL in [query]
    sort_by: str                                                                                   # OPTIONAL in [query]
    start_time: str                                                                                # OPTIONAL in [query]
    status: str                                                                                    # OPTIONAL in [query]
    with_total: bool                                                                               # OPTIONAL in [query]

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
            collection_format_map=collection_format_map or self.get_collection_format_map(),
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
        if hasattr(self, "end_time"):
            result["endTime"] = self.end_time
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order_nos"):
            result["orderNos"] = self.order_nos
        if hasattr(self, "sort_by"):
            result["sortBy"] = self.sort_by
        if hasattr(self, "start_time"):
            result["startTime"] = self.start_time
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "with_total"):
            result["withTotal"] = self.with_total
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryOrders:
        self.namespace = value
        return self

    def with_end_time(self, value: str) -> QueryOrders:
        self.end_time = value
        return self

    def with_limit(self, value: int) -> QueryOrders:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryOrders:
        self.offset = value
        return self

    def with_order_nos(self, value: List[str]) -> QueryOrders:
        self.order_nos = value
        return self

    def with_sort_by(self, value: str) -> QueryOrders:
        self.sort_by = value
        return self

    def with_start_time(self, value: str) -> QueryOrders:
        self.start_time = value
        return self

    def with_status(self, value: str) -> QueryOrders:
        self.status = value
        return self

    def with_with_total(self, value: bool) -> QueryOrders:
        self.with_total = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "end_time") and self.end_time:
            result["endTime"] = str(self.end_time)
        elif include_empty:
            result["endTime"] = str()
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = int()
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = int()
        if hasattr(self, "order_nos") and self.order_nos:
            result["orderNos"] = [str(i0) for i0 in self.order_nos]
        elif include_empty:
            result["orderNos"] = []
        if hasattr(self, "sort_by") and self.sort_by:
            result["sortBy"] = str(self.sort_by)
        elif include_empty:
            result["sortBy"] = str()
        if hasattr(self, "start_time") and self.start_time:
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "with_total") and self.with_total:
            result["withTotal"] = bool(self.with_total)
        elif include_empty:
            result["withTotal"] = bool()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, OrderPagingResult], Union[None, ValidationErrorEntity]]:
        """Parse the given response.

        200: OK - OrderPagingResult (successful operation)

        422: Unprocessable Entity - ValidationErrorEntity (20002: validation error)
        """
        if code == 200:
            return OrderPagingResult.create_from_dict(content), None
        if code == 422:
            return None, ValidationErrorEntity.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            if undocumented_response.is_no_content():
                return None, None
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        end_time: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        order_nos: Optional[List[str]] = None,
        sort_by: Optional[str] = None,
        start_time: Optional[str] = None,
        status: Optional[str] = None,
        with_total: Optional[bool] = None,
    ) -> QueryOrders:
        instance = cls()
        instance.namespace = namespace
        if end_time is not None:
            instance.end_time = end_time
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if order_nos is not None:
            instance.order_nos = order_nos
        if sort_by is not None:
            instance.sort_by = sort_by
        if start_time is not None:
            instance.start_time = start_time
        if status is not None:
            instance.status = status
        if with_total is not None:
            instance.with_total = with_total
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryOrders:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "endTime" in dict_ and dict_["endTime"] is not None:
            instance.end_time = str(dict_["endTime"])
        elif include_empty:
            instance.end_time = str()
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = int()
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = int()
        if "orderNos" in dict_ and dict_["orderNos"] is not None:
            instance.order_nos = [str(i0) for i0 in dict_["orderNos"]]
        elif include_empty:
            instance.order_nos = []
        if "sortBy" in dict_ and dict_["sortBy"] is not None:
            instance.sort_by = str(dict_["sortBy"])
        elif include_empty:
            instance.sort_by = str()
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "withTotal" in dict_ and dict_["withTotal"] is not None:
            instance.with_total = bool(dict_["withTotal"])
        elif include_empty:
            instance.with_total = bool()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "endTime": "end_time",
            "limit": "limit",
            "offset": "offset",
            "orderNos": "order_nos",
            "sortBy": "sort_by",
            "startTime": "start_time",
            "status": "status",
            "withTotal": "with_total",
        }

    @staticmethod
    def get_collection_format_map() -> Dict[str, Union[None, str]]:
        return {
            "orderNos": "multi",                                                                   # in query
        }

    # endregion static methods
