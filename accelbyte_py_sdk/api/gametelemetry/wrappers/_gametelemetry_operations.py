# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

# template file: justice_py_sdk_codegen/__main__.py

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
from ....core import run_request_async
from ....core import same_doc_as

from ..models import HTTPValidationError
from ..models import TelemetryBody

from ..operations.gametelemetry_operations import AdminGetEventsGameTelemetryV1AdminEventsGet
from ..operations.gametelemetry_operations import AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet
from ..operations.gametelemetry_operations import ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet
from ..operations.gametelemetry_operations import ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost
from ..operations.gametelemetry_operations import ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut


@same_doc_as(AdminGetEventsGameTelemetryV1AdminEventsGet)
def admin_get_events_game_telemetry_v1_admin_events_get(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetEventsGameTelemetryV1AdminEventsGet.create(
        namespace=namespace,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetEventsGameTelemetryV1AdminEventsGet)
async def admin_get_events_game_telemetry_v1_admin_events_get_async(namespace: Optional[str] = None, x_additional_headers: Optional[Dict[str, str]] = None):
    if namespace is None:
        namespace, error = get_services_namespace()
        if error:
            return None, error
    request = AdminGetEventsGameTelemetryV1AdminEventsGet.create(
        namespace=namespace,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet)
def admin_get_namespace_game_telemetry_v1_admin_telemetrynamespace_get(x_additional_headers: Optional[Dict[str, str]] = None):
    request = AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet.create()
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet)
async def admin_get_namespace_game_telemetry_v1_admin_telemetrynamespace_get_async(x_additional_headers: Optional[Dict[str, str]] = None):
    request = AdminGetNamespaceGameTelemetryV1AdminTelemetrynamespaceGet.create()
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet)
def protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(steam_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet.create(
        steam_id=steam_id,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet)
async def protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_async(steam_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet.create(
        steam_id=steam_id,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost)
def protected_save_events_game_telemetry_v1_protected_events_post(body: List[TelemetryBody], x_additional_headers: Optional[Dict[str, str]] = None):
    request = ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost.create(
        body=body,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost)
async def protected_save_events_game_telemetry_v1_protected_events_post_async(body: List[TelemetryBody], x_additional_headers: Optional[Dict[str, str]] = None):
    request = ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost.create(
        body=body,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)


@same_doc_as(ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut)
def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(playtime: str, steam_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut.create(
        playtime=playtime,
        steam_id=steam_id,
    )
    return run_request(request, additional_headers=x_additional_headers)


@same_doc_as(ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut)
async def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_async(playtime: str, steam_id: str, x_additional_headers: Optional[Dict[str, str]] = None):
    request = ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut.create(
        playtime=playtime,
        steam_id=steam_id,
    )
    return await run_request_async(request, additional_headers=x_additional_headers)
