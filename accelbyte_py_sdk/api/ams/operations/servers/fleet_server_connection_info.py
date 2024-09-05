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

from ...models import ApiFleetServerConnectionInfoResponse
from ...models import ResponseErrorResponse


class FleetServerConnectionInfo(Operation):
    """get connection info for a dedicated server (FleetServerConnectionInfo)

    Required Permission: ADMIN:NAMESPACE:{namespace}:AMS:DS:LOGS [READ]

    Properties:
        url: /ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo

        method: GET

        tags: ["Servers"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        namespace: (namespace) REQUIRED str in path

        server_id: (serverID) REQUIRED str in path

    Responses:
        200: OK - ApiFleetServerConnectionInfoResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (dedicated server not found)

        500: Internal Server Error - ResponseErrorResponse (internal server error)
    """

    # region fields

    _url: str = "/ams/v1/admin/namespaces/{namespace}/servers/{serverID}/connectioninfo"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    namespace: str  # REQUIRED in [path]
    server_id: str  # REQUIRED in [path]

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
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        if hasattr(self, "server_id"):
            result["serverID"] = self.server_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_namespace(self, value: str) -> FleetServerConnectionInfo:
        self.namespace = value
        return self

    def with_server_id(self, value: str) -> FleetServerConnectionInfo:
        self.server_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        if hasattr(self, "server_id") and self.server_id:
            result["serverID"] = str(self.server_id)
        elif include_empty:
            result["serverID"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApiFleetServerConnectionInfoResponse],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ApiFleetServerConnectionInfoResponse (success)

        401: Unauthorized - ResponseErrorResponse (no authorization provided)

        403: Forbidden - ResponseErrorResponse (insufficient permissions)

        404: Not Found - ResponseErrorResponse (dedicated server not found)

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
            return ApiFleetServerConnectionInfoResponse.create_from_dict(content), None
        if code == 401:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 403:
            return None, ResponseErrorResponse.create_from_dict(content)
        if code == 404:
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
        cls, namespace: str, server_id: str, **kwargs
    ) -> FleetServerConnectionInfo:
        instance = cls()
        instance.namespace = namespace
        instance.server_id = server_id
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> FleetServerConnectionInfo:
        instance = cls()
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        if "serverID" in dict_ and dict_["serverID"] is not None:
            instance.server_id = str(dict_["serverID"])
        elif include_empty:
            instance.server_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "namespace": "namespace",
            "serverID": "server_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "namespace": True,
            "serverID": True,
        }

    # endregion static methods
