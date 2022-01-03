# Analytics Game Telemetry (0.0.1)

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

from ...models import HTTPValidationError
from ...models import TelemetryBody


class ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost(Operation):
    """Protected Save Events (protected_save_events_game_telemetry_v1_protected_events_post)

    This endpoint require valid JWT token. This endpoint send events into
    designated streaming pipeline and each request can contain single or multiple
    events. <p> Format of the event: - **EventNamespace (required)**: namespace
    of the relevant game with domain name format. <p> Only accept input with valid
    characters. Allowed characters: <b>Aa-Zz0-9_.-</b> <p> <p> Example:
    io.accelbyte.justice.dev.samplegame </p> - **EventName (required)**: name of
    the event. <p> Only accept input with valid characters. Allowed characters:
    <b>Aa-Zz0-9_.-</b> <p> <p> Example: player_killed, mission_accomplished </p>
    - **Payload (required)**: an arbitrary json with the payload of the said
    event


    Properties:
        url: /game-telemetry/v1/protected/events

        method: POST

        tags: []

        consumes: ["application/json"]

        produces: ["application/json"]

        security_type: bearer

        body: (body) REQUIRED List[TelemetryBody] in body

    Responses:
        204: No Content - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
    """

    # region fields

    _url: str = "/game-telemetry/v1/protected/events"
    _method: str = "POST"
    _consumes: List[str] = ["application/json"]
    _produces: List[str] = ["application/json"]
    _security_type: Optional[str] = "bearer"
    _location_query: str = None

    body: List[TelemetryBody]                                                                      # REQUIRED in [body]

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

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        return self.create_full_url(
            url=self.url,
            base_url=base_url,
        )

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "body",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "body": self.get_body_params(),
        }

    def get_body_params(self) -> Any:
        return [i.to_dict() for i in self.body]

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "body") or self.body is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_body(self, value: List[TelemetryBody]) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        self.body = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "body") and self.body:
            result["body"] = [i0.to_dict(include_empty=include_empty) for i0 in self.body]
        elif include_empty:
            result["body"] = []
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HTTPValidationError]]:
        """Parse the given response.

        204: No Content - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
        """
        if code == 204:
            return HttpResponse.create(code, "No Content"), None
        if code == 422:
            return None, HTTPValidationError.create_from_dict(content)
        was_handled, undocumented_response = HttpResponse.try_create_undocumented_response(code, content)
        if was_handled:
            return None, undocumented_response
        return None, HttpResponse.create_unhandled_error()

    # endregion response methods

    # region static methods

    @classmethod
    def create(
        cls,
        body: List[TelemetryBody],
    ) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        instance = cls()
        instance.body = body
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost:
        instance = cls()
        if "body" in dict_ and dict_["body"] is not None:
            instance.body = [TelemetryBody.create_from_dict(i0, include_empty=include_empty) for i0 in dict_["body"]]
        elif include_empty:
            instance.body = []
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "body": "body",
        }

    # endregion static methods
