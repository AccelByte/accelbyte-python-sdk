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


class ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet(Operation):
    """Protected Get Playtime (protected_get_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime_get)

    This endpoint requires valid JWT token.
    This endpoint does not require permission.

    This endpoint retrieves player's total playtime in Steam for a specific game (AppId) and store them in service's cache.

    Players' Steam account must be set into public to enable the service fetch their total playtime data.

    Properties:
        url: /game-telemetry/v1/protected/steamIds/{steamId}/playtime

        method: GET

        tags: ["Gametelemetry Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

        steam_id: (steamId) REQUIRED str in path

    Responses:
        200: OK - Dict[str, Any] (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
    """

    # region fields

    _url: str = "/game-telemetry/v1/protected/steamIds/{steamId}/playtime"
    _method: str = "GET"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _securities: List[List[str]] = [["COOKIE_AUTH"], ["BEARER_AUTH"]]
    _location_query: str = None

    cookie: Union[str, HeaderStr]  # OPTIONAL in [header]
    steam_id: str  # REQUIRED in [path]

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
            "path": self.get_path_params(),
        }

    def get_header_params(self) -> dict:
        result = {}
        if hasattr(self, "cookie"):
            result["Cookie"] = self.cookie
        return result

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "steam_id"):
            result["steamId"] = self.steam_id
        return result

    # endregion get_x_params methods

    # region is/has methods

    # endregion is/has methods

    # region with_x methods

    def with_cookie(
        self, value: Union[str, HeaderStr]
    ) -> ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet:
        self.cookie = value
        return self

    def with_cookie_access_token(
        self, value: str
    ) -> ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet:
        if not hasattr(self, "cookie"):
            self.cookie = HeaderStr()
        self.cookie["access_token"] = value
        return self

    def with_steam_id(
        self, value: str
    ) -> ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet:
        self.steam_id = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "cookie") and self.cookie:
            result["Cookie"] = str(self.cookie)
        elif include_empty:
            result["Cookie"] = ""
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
        Union[None, Dict[str, Any]], Union[None, HTTPValidationError, HttpResponse]
    ]:
        """Parse the given response.

        200: OK - Dict[str, Any] (Successful Response)

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

        if code == 200:
            return {str(k): v for k, v in content.items()}, None
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
        steam_id: str,
        cookie: Optional[Union[str, HeaderStr]] = None,
    ) -> ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet:
        instance = cls()
        instance.steam_id = steam_id
        if cookie is not None:
            instance.cookie = cookie
        return instance

    @classmethod
    def create_from_dict(
        cls, dict_: dict, include_empty: bool = False
    ) -> ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet:
        instance = cls()
        if "Cookie" in dict_ and dict_["Cookie"] is not None:
            instance.cookie = str(dict_["Cookie"])
        elif include_empty:
            instance.cookie = ""
        if "steamId" in dict_ and dict_["steamId"] is not None:
            instance.steam_id = str(dict_["steamId"])
        elif include_empty:
            instance.steam_id = ""
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "Cookie": "cookie",
            "steamId": "steam_id",
        }

    @staticmethod
    def get_required_map() -> Dict[str, bool]:
        return {
            "Cookie": False,
            "steamId": True,
        }

    # endregion static methods
