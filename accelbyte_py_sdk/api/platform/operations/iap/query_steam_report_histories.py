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

from ...models import SteamReportInfoPagingSlicedResult


class ProcessStatusEnum(StrEnum):
    ERROR = "ERROR"
    IGNORED = "IGNORED"
    PROCESSED = "PROCESSED"


class QuerySteamReportHistories(Operation):
    """Get IAP steam report process histories, default sort by created at (querySteamReportHistories)

    Properties:
        url: /platform/admin/namespaces/{namespace}/iap/steam/report/histories

        method: GET

        tags: ["IAP"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        order_id: (orderId) OPTIONAL str in query

        process_status: (processStatus) OPTIONAL Union[str, ProcessStatusEnum] in query

        steam_id: (steamId) OPTIONAL str in query

    Responses:
        200: OK - SteamReportInfoPagingSlicedResult (successful operation)
    """

    # region fields

    _url: str = "/platform/admin/namespaces/{namespace}/iap/steam/report/histories"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    order_id: str  # OPTIONAL in [query]
    process_status: Union[str, ProcessStatusEnum]  # OPTIONAL in [query]
    steam_id: str  # OPTIONAL in [query]

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
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "order_id"):
            result["orderId"] = self.order_id
        if hasattr(self, "process_status"):
            result["processStatus"] = self.process_status
        if hasattr(self, "steam_id"):
            result["steamId"] = self.steam_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> QuerySteamReportHistories:
        self.namespace = value
        return self

    def with_limit(self, value: int) -> QuerySteamReportHistories:
        self.limit = value
        return self

    def with_offset(self, value: int) -> QuerySteamReportHistories:
        self.offset = value
        return self

    def with_order_id(self, value: str) -> QuerySteamReportHistories:
        self.order_id = value
        return self

    def with_process_status(
        self, value: Union[str, ProcessStatusEnum]
    ) -> QuerySteamReportHistories:
        self.process_status = value
        return self

    def with_steam_id(self, value: str) -> QuerySteamReportHistories:
        self.steam_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
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
        if hasattr(self, "order_id") and self.order_id:
            result["orderId"] = str(self.order_id)
        elif include_empty:
            result["orderId"] = ""
        if hasattr(self, "process_status") and self.process_status:
            result["processStatus"] = str(self.process_status)
        elif include_empty:
            result["processStatus"] = Union[str, ProcessStatusEnum]()
        if hasattr(self, "steam_id") and self.steam_id:
            result["steamId"] = str(self.steam_id)
        elif include_empty:
            result["steamId"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, SteamReportInfoPagingSlicedResult], Union[None, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - SteamReportInfoPagingSlicedResult (successful operation)

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
            return SteamReportInfoPagingSlicedResult.create_from_dict(content), None

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        order_id: Optional[str] = None,
        process_status: Optional[Union[str, ProcessStatusEnum]] = None,
        steam_id: Optional[str] = None,
        **kwargs,
    ) -> QuerySteamReportHistories:
        instance = cls()
        instance.namespace = namespace
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if order_id is not None:
            instance.order_id = order_id
        if process_status is not None:
            instance.process_status = process_status
        if steam_id is not None:
            instance.steam_id = steam_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> QuerySteamReportHistories:
        instance = cls()
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
        if "orderId" in dict_ and dict_["orderId"] is not None:
            instance.order_id = str(dict_["orderId"])
        elif include_empty:
            instance.order_id = ""
        if "processStatus" in dict_ and dict_["processStatus"] is not None:
            instance.process_status = str(dict_["processStatus"])
        elif include_empty:
            instance.process_status = Union[str, ProcessStatusEnum]()
        if "steamId" in dict_ and dict_["steamId"] is not None:
            instance.steam_id = str(dict_["steamId"])
        elif include_empty:
            instance.steam_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "limit": "limit",
            "offset": "offset",
            "orderId": "order_id",
            "processStatus": "process_status",
            "steamId": "steam_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "limit": False,
            "offset": False,
            "orderId": False,
            "processStatus": False,
            "steamId": False,
        }

    @staticmethod
    def get_enum_map() -> Dict[str, List[Any]]:
        return {
            "processStatus": ["ERROR", "IGNORED", "PROCESSED"],  # in query
        }

    # endregion static methods
