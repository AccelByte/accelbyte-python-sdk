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

# Fleet Commander

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApiDSHistoryList
from ...models import ResponseErrorResponse


class FleetServerHistory(Operation):
    """get history records of a dedicated server in a fleet (FleetServerHistory)

    Required Permission: ADMIN:NAMESPACE:{namespace}:ARMADA:FLEET [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        fleet_id: (fleetID) REQUIRED str in path

        namespace: (namespace) REQUIRED str in path

        count: (count) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

        reason: (reason) OPTIONAL str in query

        region: (region) OPTIONAL str in query

        server_id: (serverId) OPTIONAL str in query

        sort_direction: (sortDirection) OPTIONAL str in query

        status: (status) OPTIONAL str in query

    Responses:
        200: OK - ApiDSHistoryList (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/fleets/{fleetID}/servers/history"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    fleet_id: str  # REQUIRED in [path]
    namespace: str  # REQUIRED in [path]
    count: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]
    reason: str  # OPTIONAL in [query]
    region: str  # OPTIONAL in [query]
    server_id: str  # OPTIONAL in [query]
    sort_direction: str  # OPTIONAL in [query]
    status: str  # OPTIONAL in [query]

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
        if hasattr(self, "fleet_id"):
            result["fleetID"] = self.fleet_id
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "count"):
            result["count"] = self.count
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        if hasattr(self, "reason"):
            result["reason"] = self.reason
        if hasattr(self, "region"):
            result["region"] = self.region
        if hasattr(self, "server_id"):
            result["serverId"] = self.server_id
        if hasattr(self, "sort_direction"):
            result["sortDirection"] = self.sort_direction
        if hasattr(self, "status"):
            result["status"] = self.status
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_fleet_id(self, value: str) -> FleetServerHistory:
        self.fleet_id = value
        return self

    def with_namespace(self, value: str) -> FleetServerHistory:
        self.namespace = value
        return self

    def with_count(self, value: int) -> FleetServerHistory:
        self.count = value
        return self

    def with_offset(self, value: int) -> FleetServerHistory:
        self.offset = value
        return self

    def with_reason(self, value: str) -> FleetServerHistory:
        self.reason = value
        return self

    def with_region(self, value: str) -> FleetServerHistory:
        self.region = value
        return self

    def with_server_id(self, value: str) -> FleetServerHistory:
        self.server_id = value
        return self

    def with_sort_direction(self, value: str) -> FleetServerHistory:
        self.sort_direction = value
        return self

    def with_status(self, value: str) -> FleetServerHistory:
        self.status = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "fleet_id") and self.fleet_id:
            result["fleetID"] = str(self.fleet_id)
        elif include_empty:
            result["fleetID"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "count") and self.count:
            result["count"] = int(self.count)
        elif include_empty:
            result["count"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        if hasattr(self, "reason") and self.reason:
            result["reason"] = str(self.reason)
        elif include_empty:
            result["reason"] = ""
        if hasattr(self, "region") and self.region:
            result["region"] = str(self.region)
        elif include_empty:
            result["region"] = ""
        if hasattr(self, "server_id") and self.server_id:
            result["serverId"] = str(self.server_id)
        elif include_empty:
            result["serverId"] = ""
        if hasattr(self, "sort_direction") and self.sort_direction:
            result["sortDirection"] = str(self.sort_direction)
        elif include_empty:
            result["sortDirection"] = ""
        if hasattr(self, "status") and self.status:
            result["status"] = str(self.status)
        elif include_empty:
            result["status"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApiDSHistoryList], Union[None, HttpResponse, ResponseErrorResponse]
    ]:
        """Parse the given response.

        200: OK - ApiDSHistoryList (success)

        400: Bad Request - ResponseErrorResponse (bad request)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        500: Internal Server Error - ResponseErrorResponse (internal server error)

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
            return ApiDSHistoryList.create_from_dict(content), None
        if code == 400:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 500:
            return None, ResponseErrorResponse.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        fleet_id: str,
        namespace: str,
        count: Optional[int] = None,
        offset: Optional[int] = None,
        reason: Optional[str] = None,
        region: Optional[str] = None,
        server_id: Optional[str] = None,
        sort_direction: Optional[str] = None,
        status: Optional[str] = None,
        **kwargs,
    ) -> FleetServerHistory:
        instance = cls()
        instance.fleet_id = fleet_id
        instance.namespace = namespace
        if count is not None:
            instance.count = count
        if offset is not None:
            instance.offset = offset
        if reason is not None:
            instance.reason = reason
        if region is not None:
            instance.region = region
        if server_id is not None:
            instance.server_id = server_id
        if sort_direction is not None:
            instance.sort_direction = sort_direction
        if status is not None:
            instance.status = status
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FleetServerHistory:
        instance = cls()
        if "fleetID" in dict_ and dict_["fleetID"] is not None:
            instance.fleet_id = str(dict_["fleetID"])
        elif include_empty:
            instance.fleet_id = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "count" in dict_ and dict_["count"] is not None:
            instance.count = int(dict_["count"])
        elif include_empty:
            instance.count = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        if "reason" in dict_ and dict_["reason"] is not None:
            instance.reason = str(dict_["reason"])
        elif include_empty:
            instance.reason = ""
        if "region" in dict_ and dict_["region"] is not None:
            instance.region = str(dict_["region"])
        elif include_empty:
            instance.region = ""
        if "serverId" in dict_ and dict_["serverId"] is not None:
            instance.server_id = str(dict_["serverId"])
        elif include_empty:
            instance.server_id = ""
        if "sortDirection" in dict_ and dict_["sortDirection"] is not None:
            instance.sort_direction = str(dict_["sortDirection"])
        elif include_empty:
            instance.sort_direction = ""
        if "status" in dict_ and dict_["status"] is not None:
            instance.status = str(dict_["status"])
        elif include_empty:
            instance.status = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "fleetID": "fleet_id",
            "namespace": "namespace",
            "count": "count",
            "offset": "offset",
            "reason": "reason",
            "region": "region",
            "serverId": "server_id",
            "sortDirection": "sort_direction",
            "status": "status",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "fleetID": True,
            "namespace": True,
            "count": False,
            "offset": False,
            "reason": False,
            "region": False,
            "serverId": False,
            "sortDirection": False,
            "status": False,
        }

    # endregion static methods
