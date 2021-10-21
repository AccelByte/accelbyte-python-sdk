# pylint: disable=duplicate-code
# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
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

from typing import Any, Dict, List, Optional, Tuple, Union

from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import same_doc_as

from ..models import HTTPValidationError
from ..models import TelemetryBody

from ..operations.operations import ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
from ..operations.operations import ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
from ..operations.operations import ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut


@same_doc_as(ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet)
def protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(steam_id: str):
    request = ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet.create(
        steam_id=steam_id,
    )
    return run_request(request)


@same_doc_as(ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost)
def protected_save_events_game_telemetry_v1_protected_events_post(body: List[TelemetryBody]):
    request = ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost.create(
        body=body,
    )
    return run_request(request)


@same_doc_as(ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut)
def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(steam_id: str, playtime: str):
    request = ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut.create(
        steam_id=steam_id,
        playtime=playtime,
    )
    return run_request(request)
