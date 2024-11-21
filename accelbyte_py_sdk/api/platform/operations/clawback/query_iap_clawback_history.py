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

# AccelByte Gaming Services Platform Service

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse
from .....core import StrEnum

from ...models import IAPClawbackPagingSlicedResult


class EventTypeEnum(StrEnum):
    CHARGEBACK = "CHARGEBACK"
    CHARGEBACK_REVERSED = "CHARGEBACK_REVERSED"
    OTHER = "OTHER"
    REFUND = "REFUND"
    REVOKED = "REVOKED"


class StatusEnum(StrEnum):
    FAIL = "FAIL"
    IGNORED = "IGNORED"
    INIT = "INIT"
    SUCCESS = "SUCCESS"


class QueryIAPClawbackHistory(Operation):
    """Query clawback history (queryIAPClawbackHistory)

    Query clawback history.
    Other detail info:

      * Returns : paginated clawback history

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/clawback/histories

        method: GET

        tags: ["Clawback"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        end_time: (endTime) OPTIONAL str in query

        event_type: (eventType) OPTIONAL Union[str, EventTypeEnum] in query

        external_order_id: (externalOrderId) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        start_time: (startTime) OPTIONAL str in query

        status: (status) OPTIONAL Union[str, StatusEnum] in query

        user_id: (userId) OPTIONAL str in query

    Responses:
        200: OK - IAPClawbackPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/iap/clawback/histories"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    end_time: str  # OPTIONAL in [query]
    event_type: Union[str, EventTypeEnum]  # OPTIONAL in [query]
    external_order_id: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    start_time: str  # OPTIONAL in [query]
    status: Union[str, StatusEnum]  # OPTIONAL in [query]
    user_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "end_time"):
            result["endTime"] = self.end_time
        if hasattr(self, "event_type"):
            result["eventType"] = self.event_type
        if hasattr(self, "external_order_id"):
            result["externalOrderId"] = self.external_order_id
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "start_time"):
            result["startTime"] = self.start_time
        if hasattr(self, "status"):
            result["status"] = self.status
        if hasattr(self, "user_id"):
            result["userId"] = self.user_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QueryIAPClawbackHistory:
        self.namespace = value
        return self

    def with_end_time(self, value: str) -> QueryIAPClawbackHistory:
        self.end_time = value
        return self

    def with_event_type(
        self, value: Union[str, EventTypeEnum]
    ) -> QueryIAPClawbackHistory:
        self.event_type = value
        return self

    def with_external_order_id(self, value: str) -> QueryIAPClawbackHistory:
        self.external_order_id = value
        return self

    def with_limit(self, value: int) -> QueryIAPClawbackHistory:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QueryIAPClawbackHistory:
        self.offset = value
        return self

    def with_start_time(self, value: str) -> QueryIAPClawbackHistory:
        self.start_time = value
        return self

    def with_status(self, value: Union[str, StatusEnum]) -> QueryIAPClawbackHistory:
        self.status = value
        return self

    def with_user_id(self, value: str) -> QueryIAPClawbackHistory:
        self.user_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "end_time") and self.end_time:
            result["endTime"] = str(self.end_time)
        elif include_empty:
            result["endTime"] = ""
        if hasattr(self, "event_type") and self.event_type:
            result["eventType"] = str(self.event_type)
        elif include_empty:
            result["eventType"] = Union[str, EventTypeEnum]()
        if hasattr(self, "external_order_id") and self.external_order_id:
            result["externalOrderId"] = str(self.external_order_id)
        elif include_empty:
            result["externalOrderId"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "start_time") and self.start_time:
            result["startTime"] = str(self.start_time)
        elif include_empty:
            result["startTime"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = Union[str, StatusEnum]()
        if hasattr(self, "user_id") and self.user_id:
            result["userId"] = str(self.user_id)
        elif include_empty:
            result["userId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[Union[None, IAPClawbackPagingSlicedResult], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - IAPClawbackPagingSlicedResult (successful operation)

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
            return IAPClawbackPagingSlicedResult.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        end_time: Optional[str] = None,
        event_type: Optional[Union[str, EventTypeEnum]] = None,
        external_order_id: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        start_time: Optional[str] = None,
        status: Optional[Union[str, StatusEnum]] = None,
        user_id: Optional[str] = None,
        **kwargs,
    ) -> QueryIAPClawbackHistory:
        instance = cls()
        instance.namespace = namespace
        if end_time is not None:
            instance.end_time = end_time
        if event_type is not None:
            instance.event_type = event_type
        if external_order_id is not None:
            instance.external_order_id = external_order_id
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if start_time is not None:
            instance.start_time = start_time
        if status is not None:
            instance.status = status
        if user_id is not None:
            instance.user_id = user_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QueryIAPClawbackHistory:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "endTime" in dict_ and dict_["endTime"] is not None:
            instance.end_time = str(dict_["endTime"])
        elif include_empty:
            instance.end_time = ""
        if "eventType" in dict_ and dict_["eventType"] is not None:
            instance.event_type = str(dict_["eventType"])
        elif include_empty:
            instance.event_type = Union[str, EventTypeEnum]()
        if "externalOrderId" in dict_ and dict_["externalOrderId"] is not None:
            instance.external_order_id = str(dict_["externalOrderId"])
        elif include_empty:
            instance.external_order_id = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "startTime" in dict_ and dict_["startTime"] is not None:
            instance.start_time = str(dict_["startTime"])
        elif include_empty:
            instance.start_time = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = Union[str, StatusEnum]()
        if "userId" in dict_ and dict_["userId"] is not None:
            instance.user_id = str(dict_["userId"])
        elif include_empty:
            instance.user_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "endTime": "end_time",
            "eventType": "event_type",
            "externalOrderId": "external_order_id",
            "limit": "limit",
            "offset": "offset",
            "startTime": "start_time",
            "status": "status",
            "userId": "user_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "endTime": False,
            "eventType": False,
            "externalOrderId": False,
            "limit": False,
            "offset": False,
            "startTime": False,
            "status": False,
            "userId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "eventType": [
                "CHARGEBACK",
                "CHARGEBACK_REVERSED",
                "OTHER",
                "REFUND",
                "REVOKED",
            ],  # in query
            "status": ["FAIL", "IGNORED", "INIT", "SUCCESS"],  # in query
        }

    # endregion static methods
