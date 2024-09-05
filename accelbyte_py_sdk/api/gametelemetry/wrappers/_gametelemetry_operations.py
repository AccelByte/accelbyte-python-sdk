# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.
#
# Code generated. DO NOT EDIT!

# template file: ags_py_codegen

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

from ....core import HeaderStr
from ....core import get_namespace as get_services_namespace
from ....core import run_request
from ....core import run_request_async
from ....core import same_doc_as

from ..models import BaseErrorResponse
from ..models import PlayTimeResponse
from ..models import TelemetryBody

from ..operations.gametelemetry_operations import (
    ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet,
)
from ..operations.gametelemetry_operations import (
    ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost,
)
from ..operations.gametelemetry_operations import (
    ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut,
)


@same_doc_as(ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet)
def protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(
    steam_id: str,
    cookie: Optional[Union[str, HeaderStr]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
        200: OK - PlayTimeResponse (Successful Response)

        404: Not Found - BaseErrorResponse (User not found)

        422: Unprocessable Entity - BaseErrorResponse (Unable to process request)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)
    """
    request = (
        ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet.create(
            steam_id=steam_id,
            cookie=cookie,
        )
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet)
async def protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get_async(
    steam_id: str,
    cookie: Optional[Union[str, HeaderStr]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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
        200: OK - PlayTimeResponse (Successful Response)

        404: Not Found - BaseErrorResponse (User not found)

        422: Unprocessable Entity - BaseErrorResponse (Unable to process request)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)
    """
    request = (
        ProtectedGetPlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimeGet.create(
            steam_id=steam_id,
            cookie=cookie,
        )
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost)
def protected_save_events_game_telemetry_v1_protected_events_post(
    body: List[TelemetryBody],
    cookie: Optional[Union[str, HeaderStr]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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



    - **ClientTimestamp (optional)**: Timestamp of the event captured by the client SDK.

    - **DeviceType (optional)**: The device type of the user.

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

        422: Unprocessable Entity - BaseErrorResponse (Unable to process request)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)

        507: Insufficient Storage - BaseErrorResponse (Insufficient space)
    """
    request = ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost.create(
        body=body,
        cookie=cookie,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost)
async def protected_save_events_game_telemetry_v1_protected_events_post_async(
    body: List[TelemetryBody],
    cookie: Optional[Union[str, HeaderStr]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
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



    - **ClientTimestamp (optional)**: Timestamp of the event captured by the client SDK.

    - **DeviceType (optional)**: The device type of the user.

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

        422: Unprocessable Entity - BaseErrorResponse (Unable to process request)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)

        507: Insufficient Storage - BaseErrorResponse (Insufficient space)
    """
    request = ProtectedSaveEventsGameTelemetryV1ProtectedEventsPost.create(
        body=body,
        cookie=cookie,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )


@same_doc_as(
    ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
)
def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(
    playtime: str,
    steam_id: str,
    cookie: Optional[Union[str, HeaderStr]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Protected Update Playtime (protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put)

    This endpoint requires valid JWT token.
    This endpoint does not require permission.

    This endpoint update player's total playtime in a specific game (AppId) from service's cache.

    Properties:
        url: /game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}

        method: PUT

        tags: ["Gametelemetry Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

        playtime: (playtime) REQUIRED str in path

        steam_id: (steamId) REQUIRED str in path

    Responses:
        200: OK - PlayTimeResponse (Successful Response)

        404: Not Found - BaseErrorResponse (User not found)

        422: Unprocessable Entity - BaseErrorResponse (Unable to process request)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)
    """
    request = ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut.create(
        playtime=playtime,
        steam_id=steam_id,
        cookie=cookie,
    )
    return run_request(request, additional_headers=x_additional_headers, **kwargs)


@same_doc_as(
    ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut
)
async def protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put_async(
    playtime: str,
    steam_id: str,
    cookie: Optional[Union[str, HeaderStr]] = None,
    x_additional_headers: Optional[Dict[str, str]] = None,
    **kwargs
):
    """Protected Update Playtime (protected_update_playtime_game_telemetry_v1_protected_steamIds__steamId__playtime__playtime__put)

    This endpoint requires valid JWT token.
    This endpoint does not require permission.

    This endpoint update player's total playtime in a specific game (AppId) from service's cache.

    Properties:
        url: /game-telemetry/v1/protected/steamIds/{steamId}/playtime/{playtime}

        method: PUT

        tags: ["Gametelemetry Operations"]

        consumes: []

        produces: ["application/json"]

        securities: [COOKIE_AUTH] or [BEARER_AUTH]

        cookie: (Cookie) OPTIONAL Union[str, HeaderStr] in header

        playtime: (playtime) REQUIRED str in path

        steam_id: (steamId) REQUIRED str in path

    Responses:
        200: OK - PlayTimeResponse (Successful Response)

        404: Not Found - BaseErrorResponse (User not found)

        422: Unprocessable Entity - BaseErrorResponse (Unable to process request)

        500: Internal Server Error - BaseErrorResponse (Internal Server Error)
    """
    request = ProtectedUpdatePlaytimeGameTelemetryV1ProtectedSteamIdsSteamIdPlaytimePlaytimePut.create(
        playtime=playtime,
        steam_id=steam_id,
        cookie=cookie,
    )
    return await run_request_async(
        request, additional_headers=x_additional_headers, **kwargs
    )
