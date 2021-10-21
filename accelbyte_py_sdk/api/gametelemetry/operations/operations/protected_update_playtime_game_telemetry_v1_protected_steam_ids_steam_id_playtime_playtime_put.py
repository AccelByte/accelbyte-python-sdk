# Auto-generated at 2021-10-21T08:52:33.146559+08:00
# from: Justice gametelemetry Service (0.0.1)

# Copyright (c) 2018 - 2021 AccelByte Inc. All Rights Reserved.
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


class ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut(Operation):
    """Protected Update Playtime (protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put)

    This endpoint update player's total playtime in a specific game (AppId) from
    service's cache.


    Properties:
        url: /game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}

        method: PUT

        tags: []

        consumes: []

        produces: ["application/json"]

        security: bearer

        steam_id: (steamId) REQUIRED str in path

        playtime: (playtime) REQUIRED str in path

    Responses:
        200: OK - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
    """

    # region fields

    _url: str = "/game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}"
    _method: str = "PUT"
    _consumes: List[str] = []
    _produces: List[str] = ["application/json"]
    _security: Optional[str] = "bearer"
    _location_query: str = None

    steam_id: str                                                                                  # REQUIRED in [path]
    playtime: str                                                                                  # REQUIRED in [path]

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
    def security(self) -> Optional[str]:
        return self._security

    @property
    def location_query(self) -> str:
        return self._location_query

    # endregion properties

    # region get methods

    def get_full_url(self, base_url: Union[None, str] = None) -> str:
        result = base_url if base_url is not None else ""

        # path params
        url = self.url
        for k, v in self.get_path_params().items():
            url = url.replace(f"{{{k}}}", v)
        result += url

        return result

    # noinspection PyMethodMayBeStatic
    def get_all_required_fields(self) -> List[str]:
        return [
            "steam_id",
            "playtime",
        ]

    # endregion get methods

    # region get_x_params methods

    def get_all_params(self) -> dict:
        return {
            "path": self.get_path_params(),
        }

    def get_path_params(self) -> dict:
        result = {}
        if hasattr(self, "steam_id"):
            result["steamId"] = self.steam_id
        if hasattr(self, "playtime"):
            result["playtime"] = self.playtime
        return result

    # endregion get_x_params methods

    # region is/has methods

    def is_valid(self) -> bool:
        if not hasattr(self, "steam_id") or self.steam_id is None:
            return False
        if not hasattr(self, "playtime") or self.playtime is None:
            return False
        return True

    # endregion is/has methods

    # region with_x methods

    def with_steam_id(self, value: str) -> ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut:
        self.steam_id = value
        return self

    def with_playtime(self, value: str) -> ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut:
        self.playtime = value
        return self

    # endregion with_x methods

    # region to methods

    def to_dict(self, include_empty: bool = False) -> dict:
        result: dict = {}
        if hasattr(self, "steam_id") and self.steam_id:
            result["steamId"] = str(self.steam_id)
        elif include_empty:
            result["steamId"] = str()
        if hasattr(self, "playtime") and self.playtime:
            result["playtime"] = str(self.playtime)
        elif include_empty:
            result["playtime"] = str()
        return result

    # endregion to methods

    # region response methods

    # noinspection PyMethodMayBeStatic
    def parse_response(self, code: int, content_type: str, content: Any) -> Tuple[Union[None, HttpResponse], Union[None, HTTPValidationError]]:
        """Parse the given response.

        200: OK - (Successful Response)

        422: Unprocessable Entity - HTTPValidationError (Validation Error)
        """
        if code == 200:
            return HttpResponse.create(code, "OK"), None
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
        steam_id: str,
        playtime: str,
    ) -> ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut:
        instance = cls()
        instance.steam_id = steam_id
        instance.playtime = playtime
        return instance

    @classmethod
    def create_from_dict(cls, dict_: dict, include_empty: bool = False) -> ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut:
        instance = cls()
        if "steamId" in dict_ and dict_["steamId"] is not None:
            instance.steam_id = str(dict_["steamId"])
        elif include_empty:
            instance.steam_id = str()
        if "playtime" in dict_ and dict_["playtime"] is not None:
            instance.playtime = str(dict_["playtime"])
        elif include_empty:
            instance.playtime = str()
        return instance

    @staticmethod
    def get_field_info() -> Dict[str, str]:
        return {
            "steamId": "steam_id",
            "playtime": "playtime",
        }

    # endregion static methods
