# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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

# Analytics Game Telemetry (0.0.1)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse


class AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet(Operation):
    """Admin Get Namespace (admin_get_namespace_game_telemetry_v1_admin_telemetrynamespace_get)

    This endpoint requires valid JWT token and permission **ADMIN:ANALYTICS:TELEMETRY:{EventNamespace}** **READ**.

    This endpoint retrieve namespace from kafka topic.

    Properties:
        url: /game-telemetry/v1/admin/telemetrynamespace

        method: GET

        tags: ["Gametelemetry Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [BEARER_AUTH] or [COOKIE_AUTH]

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

    Responses:
        200: OK - (Successful Response)
    """

    # region fields

    _url: str = "/game-telemetry/v1/admin/telemetrynamespace"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["BEARER_AUTH"], ["COOKIE_AUTH"]]
    _location_query: str = None

    cookie: Union[str, HeaderStr]                                                                  # OPTIONAL in [header]

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
            "header": self.get_header_params(),
        }

    def get_header_params(self) -> dict:
        result = {}
        if hasattr(self, "cookie"):
            result["Cookie"] = self.cookie
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_cookie(self, value: Union[str, HeaderStr]) -> AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet:
        self.cookie = value
        return self

    def with_cookie_access_token(self, value: str) -> AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet:
        if not hasattr(self, "cookie"):
            self.cookie = HeaderStr()
        self.cookie["access_token"] = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cookie") and self.cookie:
            result["Cookie"] = str(self.cookie)
        elif include_empty:
            result["Cookie"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HttpResponse]]:
        """Parse the given response.

        200: OK - (Successful Response)

        ---: HttpResponse (Undocumented Response)

        ---: HttpResponse (Unexpected Content-Type Error)

        ---: HttpResponse (Unhandled Error)
        """
        pre_processed_response, error = self.pre_process_response(code=code, content_type=content_type, content=content)
        if error is not None:
            return None, None if error.is_no_content() else error
        code, content_type, content = pre_processed_response

        if code == 200:
            return HttpResponse.create(code, "OK"), None

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        cookie: Optional[Union[str, HeaderStr]] = None,
    ) -> AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet:
        instance = cls()
        if cookie is not None:
            instance.cookie = cookie
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet:
        instance = cls()
        if "Cookie" in dict_ and dict_["Cookie"] is not None:
            instance.cookie = str(dict_["Cookie"])
        elif include_empty:
            instance.cookie = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Cookie": "cookie",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Cookie": False,
        }

    # endregion static methods
