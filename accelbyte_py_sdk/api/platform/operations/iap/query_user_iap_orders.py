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

from ...models import IAPOrderPagingSlicedResult


class QueryUserIAPOrders(Operation):
    """Query IAP orders (queryUserIAPOrders)

    Query IAP orders.<br>Other detail info: <ul><li><i>Required permission</i>:
    resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2
    (READ)</li><li><i>Returns</i>: paginated iap orders</li></ul>


    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        security_type: bearer

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        product_id: (productId) OPTIONAL str in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL str in query

        type_: (type) OPTIONAL str in query

    Responses:
        200: OK - IAPOrderPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/iap"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    namespace: str                                                                                 # REQUIRED in [path]
    user_id: str                                                                                   # REQUIRED in [path]
    end_time: str                                                                                  # OPTIONAL in [query]
    limit: int                                                                                     # OPTIONAL in [query]
    offset: int                                                                                    # OPTIONAL in [query]
    product_id: str                                                                                # OPTIONAL in [query]
    start_time: str                                                                                # OPTIONAL in [query]
    status: str                                                                                    # OPTIONAL in [query]
    type_: str                                                                                     # OPTIONAL in [query]

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
            "user_id",
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
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "end_time"):
            result["endTime"] = self.end_time
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "product_id"):
            result["productId"] = self.product_id
        if hasattr(self, "start_time"):
            result["startTime"] = self.start_time
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "type_"):
            result["type"] = self.type_
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "namespace") or self.namespace is None:
            return False
        if not hasattr(self, "user_id") or self.user_id is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryUserIAPOrders:
        self.namespace = value
        return self

    def with_user_id(self, value: str) -> QueryUserIAPOrders:
        self.user_id = value
        return self

    def with_end_time(self, value: str) -> QueryUserIAPOrders:
        self.end_time = value
        return self

    def with_limit(self, value: int) -> QueryUserIAPOrders:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryUserIAPOrders:
        self.offset = value
        return self

    def with_product_id(self, value: str) -> QueryUserIAPOrders:
        self.product_id = value
        return self

    def with_start_time(self, value: str) -> QueryUserIAPOrders:
        self.start_time = value
        return self

    def with_status(self, value: str) -> QueryUserIAPOrders:
        self.status = value
        return self

    def with_type_(self, value: str) -> QueryUserIAPOrders:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = str()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = str()
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
        if hasattr(self, "product_id") and self.product_id:
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = str()
        if hasattr(self, "start_time") and self.start_time:
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = str()
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = str()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, IAPOrderPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - IAPOrderPagingSlicedResult (successful operation)
        """
        if code == 200:
            return IAPOrderPagingSlicedResult.create_from_dict(content), None
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
        user_id: str,
        end_time: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        product_id: Optional[str] = None,
        start_time: Optional[str] = None,
        status: Optional[str] = None,
        type_: Optional[str] = None,
    ) -> QueryUserIAPOrders:
        instance = cls()
        instance.namespace = namespace
        instance.user_id = user_id
        if end_time is not None:
            instance.end_time = end_time
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if product_id is not None:
            instance.product_id = product_id
        if start_time is not None:
            instance.start_time = start_time
        if status is not None:
            instance.status = status
        if type_ is not None:
            instance.type_ = type_
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> QueryUserIAPOrders:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = str()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = str()
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
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = str()
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = str()
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = str()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "userId": "user_id",
            "endTime": "end_time",
            "limit": "limit",
            "offset": "offset",
            "productId": "product_id",
            "startTime": "start_time",
            "status": "status",
            "type": "type_",
        }

    # endregion static methods
