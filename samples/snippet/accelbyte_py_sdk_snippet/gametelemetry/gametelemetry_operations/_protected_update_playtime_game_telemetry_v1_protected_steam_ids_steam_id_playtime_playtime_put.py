import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gametelemetry import (
    protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put,
)
from accelbyte_py_sdk.api.gametelemetry.models import BaseErrorResponse
from accelbyte_py_sdk.api.gametelemetry.models import PlayTimeResponse

(
    result,
    error,
) = protected_update_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_playtime_put(
    playtime=playtime,
    steam_id=steam_id,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
