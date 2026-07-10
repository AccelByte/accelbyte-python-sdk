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

# Custom Service Manager

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import ApimodelNoSQLAppListResponse
from ...models import ResponseErrorResponse


class GetNoSQLAppListV2(Operation):
    """Get List of Extend App using NoSQL (GetNoSQLAppListV2)

    Get List of Extend App using NoSQL database by given studio/publisher namespace and the NoSQL cluster resourceId.
    - `starting` : The cluster is transitioning from stopped to running, or is rebooting.
    - `unknown` : The cluster status is not recognized
    - `available` : The cluster is accessible.
    - `maintenance` : The cluster is undergoing maintenance operations and is not accessible.
    - `updating` : The cluster is being modified and is not yet accessible (e.g., updating min/max DCU).
    - `creating` : The cluster or instance is being created and is not yet accessible.
    - `deleting` : The cluster is in the process of being deleted and is not accessible.
    - `failed` : The cluster failed to provision or is in an error state and not accessible.
    - `stopping` : The cluster is in the process of stopping and will soon become inaccessible.
    - `stopped` : The cluster is stopped and not accessible.

    Properties:
        url: /csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps

        method: GET

        tags: ["Managed Resources"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [BEARER_AUTH]

        resource_id: (resourceId) REQUIRED str in path

        studio_name: (studioName) REQUIRED str in path

        app_name: (appName) OPTIONAL str in query

        game_namespace: (gameNamespace) OPTIONAL str in query

        limit: (limit) OPTIONAL int in query

        offset: (offset) OPTIONAL int in query

    Responses:
        200: OK - ApimodelNoSQLAppListResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)
    """

    # region fields

    _url: str = "/csm/v2/admin/namespaces/{studioName}/nosql/{resourceId}/apps"
    _method: str = "GET"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"]]
    _location_query: str = None

    resource_id: str  # REQUIRED in [path]
    studio_name: str  # REQUIRED in [path]
    app_name: str  # OPTIONAL in [query]
    game_namespace: str  # OPTIONAL in [query]
    limit: int  # OPTIONAL in [query]
    offset: int  # OPTIONAL in [query]

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
        if hasattr(self, "resource_id"):
            result["resourceId"] = self.resource_id
        if hasattr(self, "studio_name"):
            result["studioName"] = self.studio_name
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "app_name"):
            result["appName"] = self.app_name
        if hasattr(self, "game_namespace"):
            result["gameNamespace"] = self.game_namespace
        if hasattr(self, "limit"):
            result["limit"] = self.limit
        if hasattr(self, "offset"):
            result["offset"] = self.offset
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_resource_id(self, value: str) -> GetNoSQLAppListV2:
        self.resource_id = value
        return self

    def with_studio_name(self, value: str) -> GetNoSQLAppListV2:
        self.studio_name = value
        return self

    def with_app_name(self, value: str) -> GetNoSQLAppListV2:
        self.app_name = value
        return self

    def with_game_namespace(self, value: str) -> GetNoSQLAppListV2:
        self.game_namespace = value
        return self

    def with_limit(self, value: int) -> GetNoSQLAppListV2:
        self.limit = value
        return self

    def with_offset(self, value: int) -> GetNoSQLAppListV2:
        self.offset = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "resource_id") and self.resource_id:
            result["resourceId"] = str(self.resource_id)
        elif include_empty:
            result["resourceId"] = ""
        if hasattr(self, "studio_name") and self.studio_name:
            result["studioName"] = str(self.studio_name)
        elif include_empty:
            result["studioName"] = ""
        if hasattr(self, "app_name") and self.app_name:
            result["appName"] = str(self.app_name)
        elif include_empty:
            result["appName"] = ""
        if hasattr(self, "game_namespace") and self.game_namespace:
            result["gameNamespace"] = str(self.game_namespace)
        elif include_empty:
            result["gameNamespace"] = ""
        if hasattr(self, "limit") and self.limit:
            result["limit"] = int(self.limit)
        elif include_empty:
            result["limit"] = 0
        if hasattr(self, "offset") and self.offset:
            result["offset"] = int(self.offset)
        elif include_empty:
            result["offset"] = 0
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[
        Union[None, ApimodelNoSQLAppListResponse],
        Union[None, HttpResponse, ResponseErrorResponse],
    ]:
        """Parse the given response.

        200: OK - ApimodelNoSQLAppListResponse (OK)

        400: Bad Request - ResponseErrorResponse (Bad Request)

        401: Unauthorized - ResponseErrorResponse (Unauthorized)

        403: Forbidden - ResponseErrorResponse (Forbidden)

        500: Internal Server Error - ResponseErrorResponse (Internal Server Error)

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
            return ApimodelNoSQLAppListResponse.create_from_dict(content), None
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
        resource_id: str,
        studio_name: str,
        app_name: Optional[str] = None,
        game_namespace: Optional[str] = None,
        limit: Optional[int] = None,
        offset: Optional[int] = None,
        **kwargs,
    ) -> GetNoSQLAppListV2:
        instance = cls()
        instance.resource_id = resource_id
        instance.studio_name = studio_name
        if app_name is not None:
            instance.app_name = app_name
        if game_namespace is not None:
            instance.game_namespace = game_namespace
        if limit is not None:
            instance.limit = limit
        if offset is not None:
            instance.offset = offset
        if x_flight_id := kwargs.get("x_flight_id", None):
            instance.x_flight_id = x_flight_id
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> GetNoSQLAppListV2:
        instance = cls()
        if "resourceId" in dict_ and dict_["resourceId"] is not None:
            instance.resource_id = str(dict_["resourceId"])
        elif include_empty:
            instance.resource_id = ""
        if "studioName" in dict_ and dict_["studioName"] is not None:
            instance.studio_name = str(dict_["studioName"])
        elif include_empty:
            instance.studio_name = ""
        if "appName" in dict_ and dict_["appName"] is not None:
            instance.app_name = str(dict_["appName"])
        elif include_empty:
            instance.app_name = ""
        if "gameNamespace" in dict_ and dict_["gameNamespace"] is not None:
            instance.game_namespace = str(dict_["gameNamespace"])
        elif include_empty:
            instance.game_namespace = ""
        if "limit" in dict_ and dict_["limit"] is not None:
            instance.limit = int(dict_["limit"])
        elif include_empty:
            instance.limit = 0
        if "offset" in dict_ and dict_["offset"] is not None:
            instance.offset = int(dict_["offset"])
        elif include_empty:
            instance.offset = 0
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "resourceId": "resource_id",
            "studioName": "studio_name",
            "appName": "app_name",
            "gameNamespace": "game_namespace",
            "limit": "limit",
            "offset": "offset",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "resourceId": True,
            "studioName": True,
            "appName": False,
            "gameNamespace": False,
            "limit": False,
            "offset": False,
        }

    # endregion static methods
