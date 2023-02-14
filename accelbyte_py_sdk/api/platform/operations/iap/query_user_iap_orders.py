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

from ...models import IAPOrderPagingSlicedResult


class StatusEnum(StrEnum):
    FAILED = "FAILED"
    FULFILLED = "FULFILLED"
    VERIFIED = "VERIFIED"


class TypeEnum(StrEnum):
    APPLE = "APPLE"
    EPICGAMES = "EPICGAMES"
    GOOGLE = "GOOGLE"
    PLAYSTATION = "PLAYSTATION"
    STADIA = "STADIA"
    STEAM = "STEAM"
    TWITCH = "TWITCH"
    XBOX = "XBOX"


class QueryUserIAPOrders(Operation):
    """Query IAP orders (queryUserIAPOrders)

    Query IAP orders.
    Other detail info:

      * Required permission : resource="ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP", action=2 (READ)
      *  Returns : paginated iap orders

    Required Permission(s):
        - ADMIN:NAMESPACE:{namespace}:USER:{userId}:IAP [READ]

    Properties:
        url: /platform/admin/namespaces/{namespace}/users/{userId}/iap

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        user_id: (userId) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        product_id: (productId) OPTIONAL str in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        type_: (type) OPTIONAL Union[str, TypeEnum] in query

    Responses:
        200: OK - IAPOrderPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/users/{userId}/iap"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    user_id: str  # REQUIRED in [path]
    end_time: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    product_id: str  # OPTIONAL in [query]
    start_time: str  # OPTIONAL in [query]
    status: Union[str, StatusEnum]  # OPTIONAL in [query]
    type_: Union[str, TypeEnum]  # OPTIONAL in [query]

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

    def with_status(self, value: Union[str, StatusEnum]) -> QueryUserIAPOrders:
        self.status = value
        return self

    def with_type_(self, value: Union[str, TypeEnum]) -> QueryUserIAPOrders:
        self.type_ = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        if hasattr(self, "end_time") and self.end_time:
            result["endTime"] = str(self.end_time)
        elif include_empty:
            result["endTime"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "product_id") and self.product_id:
            result["productId"] = str(self.product_id)
        elif include_empty:
            result["productId"] = ""
        if hasattr(self, "start_time") and self.start_time:
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "type_") and self.type_:
            result["type"] = str(self.type_)
        elif include_empty:
            result["type"] = Union[str, TypeEnum]()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, IAPOrderPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - IAPOrderPagingSlicedResult (successful operation)

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
            return IAPOrderPagingSlicedResult.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

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
        status: Optional[Union[str, StatusEnum]] = None,
        type_: Optional[Union[str, TypeEnum]] = None,
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
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QueryUserIAPOrders:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        if "endTime" in dict_ and dict_["endTime"] is not None:
            instance.end_time = str(dict_["endTime"])
        elif include_empty:
            instance.end_time = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "productId" in dict_ and dict_["productId"] is not None:
            instance.product_id = str(dict_["productId"])
        elif include_empty:
            instance.product_id = ""
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "type" in dict_ and dict_["type"] is not None:
            instance.type_ = str(dict_["type"])
        elif include_empty:
            instance.type_ = Union[str, TypeEnum]()
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

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "userId": True,
            "endTime": False,
            "limit": False,
            "offset": False,
            "productId": False,
            "startTime": False,
            "status": False,
            "type": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "status": ["FAILED", "FULFILLED", "VERIFIED"],  # in query
            "type": [
                "APPLE",
                "EPICGAMES",
                "GOOGLE",
                "PLAYSTATION",
                "STADIA",
                "STEAM",
                "TWITCH",
                "XBOX",
            ],  # in query
        }

    # endregion static methods
