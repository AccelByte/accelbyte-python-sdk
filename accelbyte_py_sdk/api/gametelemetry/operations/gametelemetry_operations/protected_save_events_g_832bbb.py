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

# Analytics Game Telemetry (1.12.0)

from __future__ import annotations
from typing import Any, Dict, List, Optional, Tuple, Union

from .....core import Operation
from .....core import HeaderStr
from .....core import HttpResponse

from ...models import HTTPValidationError
from ...models import TelemetryBody


class ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(Operation):
    """Protected Save Events (protected_save_events_game_telemetry_v1_protected_events_post)

    This endpoint requires valid JWT token.
    This endpoint does not require permission.

    This endpoint send events into designated streaming pipeline and each request can contain single or multiple events.


    Format of the event:

    - **EventNamespace (required)**: Namespace of the relevant game with domain name format.


    Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




    It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




    Example: accelbyte



    - **EventName (required)**: Name of the event.


    Only accept input with valid characters. Allowed characters: Aa-Zz0-9_.-




    It is encouraged to use alphanumeric only characters. _.- will be deprecated soon




    Example: player_killed, mission_accomplished



    - **Payload (required)**: An arbitrary json with the payload of the said event.


    Default maximum payload size is 1MB

    Properties:
        url: /game-telemetry/v1/protected/events

        method: POST

        tags: ["Gametelemetry Operations"]

        consumes: ["application/json"]

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

        body: (body) REQUIRED List[TelemetryBody] in body

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

    Responses:
        204: No Content - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
    """

    # region fields

    _url: str = "/game-telemetry/v1/protected/events"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["COOKIE_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    body: List[TelemetryBody]  # REQUIRED in [body]
    cookie: Union[str, HeaderStr]  # OPTIONAL in [header]

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
            "body": self.get_body_params(),
            "header": self.get_header_params(),
        }

    def get_body_params(self) -> Any:
        if not hasattr(self, "body") or self.body is None:
            return None
        return [i.to_dict() for i in self.body]

    def get_header_params(self) -> dict:
        result = {}
        if hasattr(self, "cookie"):
            result["Cookie"] = self.cookie
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_body(
        self, value: List[TelemetryBody]
    ) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        self.body = value
        return self

    def with_cookie(
        self, value: Union[str, HeaderStr]
    ) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        self.cookie = value
        return self

    def with_cookie_access_token(
        self, value: str
    ) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        if not hasattr(self, "cookie"):
            self.cookie = HeaderStr()
        self.cookie["access_token"] = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = [
                i0.to_dict(include_empty=include_empty) for i0 in self.body
            ]
        elif include_empty:
            result["body"] = []
        if hasattr(self, "cookie") and self.cookie:
            result["Cookie"] = str(self.cookie)
        elif include_empty:
            result["Cookie"] = ""
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(
        self, code: int, content_type: str, content: Any
    ) -> Tuple[None, Union[None, HTTPValidationError, HttpResponse]]:
        """Parse the given response.

        204: No Content - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)

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

        if code == 204:
            return None, None
        if code == 422:
            return None, HTTPValidationError.create_from_dict(content)

        return self.handle_undocumented_response(
            code=code, content_type=content_type, content=content
        )

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: List[TelemetryBody],
        cookie: Optional[Union[str, HeaderStr]] = None,
    ) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        instance = cls()
        instance.body = body
        if cookie is not None:
            instance.cookie = cookie
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = [
                TelemetryBody.create_from_dict(i0, include_empty=include_empty)
                for i0 in dict_["body"]
            ]
        elif include_empty:
            instance.body = []
        if "Cookie" in dict_ and dict_["Cookie"] is not None:
            instance.cookie = str(dict_["Cookie"])
        elif include_empty:
            instance.cookie = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
            "Cookie": "cookie",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "body": True,
            "Cookie": False,
        }

    # endregion static methods
