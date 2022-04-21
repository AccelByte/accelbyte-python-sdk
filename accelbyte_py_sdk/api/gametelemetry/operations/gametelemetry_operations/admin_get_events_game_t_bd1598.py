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

from ...models import HTTPValidationError


class AdminGetEventsGameTelemetryV1AdminEventsGet(Operation):
    """Admin Get Events (admin_get_events_game_telemetry_v1_admin_events_get)

    This endpoint requires valid JWT token and permission **ADMIN:ANALYTICS:TELEMETRY:{EventNamespace}** **READ**.

    This endpoint retrieve the latest event from each event name on specific namespace.



    Parameter:

    - **Namespace (required) (case-sensitive)**: telemetry namespace.


    Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




    Example: accelbyte or accelbyte.game2

    Properties:
        url: /game-telemetry/v1/admin/events

        method: GET

        tags: ["Gametelemetry Operations"]

        consumes: []

        produces: ["application/json"]

        securities: ["BEARER_AUTH", "COOKIE_AUTH"]

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

        namespace: (namespace) REQUIRED str in query

    Responses:
        200: OK - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
    """

    # region fields

    _url: str = "/game-telemetry/v1/admin/events"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[str] = ["BEARER_AUTH", "COOKIE_AUTH"]
    _location_query: str = None

    cookie: Union[str, HeaderStr]                                                                  # OPTIONAL in [header]
    namespace: str                                                                                 # REQUIRED in [query]

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
    def securities(self) -> List[str]:
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
            "query": self.get_query_params(),
        }

    def get_header_params(self) -> dict:
        result = {}
        if hasattr(self, "cookie"):
            result["Cookie"] = self.cookie
        return result

    def get_query_params(self) -> dict:
        result = {}
        if hasattr(self, "namespace"):
            result["namespace"] = self.namespace
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_cookie(self, value: Union[str, HeaderStr]) -> AdminGetEventsGameTelemetryV1AdminEventsGet:
        self.cookie = value
        return self

    def with_cookie_access_token(self, value: str) -> AdminGetEventsGameTelemetryV1AdminEventsGet:
        if not hasattr(self, "cookie"):
            self.cookie = HeaderStr()
        self.cookie["access_token"] = value
        return self

    def with_namespace(self, value: str) -> AdminGetEventsGameTelemetryV1AdminEventsGet:
        self.namespace = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cookie") and self.cookie:
            result["Cookie"] = str(self.cookie)
        elif include_empty:
            result["Cookie"] = ""
        if hasattr(self, "namespace") and self.namespace:
            result["namespace"] = str(self.namespace)
        elif include_empty:
            result["namespace"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HTTPValidationError, HttpResponse]]:
        """Parse the given response.

        200: OK - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)

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
        if code == 422:
            return None, HTTPValidationError.create_from_dict(content)

        return None, self.handle_undocumented_response(code=code, content_type=content_type, content=content)

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        namespace: str,
        cookie: Optional[Union[str, HeaderStr]] = None,
    ) -> AdminGetEventsGameTelemetryV1AdminEventsGet:
        instance = cls()
        instance.namespace = namespace
        if cookie is not None:
            instance.cookie = cookie
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> AdminGetEventsGameTelemetryV1AdminEventsGet:
        instance = cls()
        if "Cookie" in dict_ and dict_["Cookie"] is not None:
            instance.cookie = str(dict_["Cookie"])
        elif include_empty:
            instance.cookie = ""
        if "namespace" in dict_ and dict_["namespace"] is not None:
            instance.namespace = str(dict_["namespace"])
        elif include_empty:
            instance.namespace = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Cookie": "cookie",
            "namespace": "namespace",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Cookie": False,
            "namespace": True,
        }

    # endregion static methods
