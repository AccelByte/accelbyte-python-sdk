import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gametelemetry import (
    protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get,
)
from accelbyte_py_sdk.api.gametelemetry.models import HTTPValidationError

(
    result,
    error,
) = protected_get_playtime_game_telemetry_v1_protected_steam_ids_steam_id_playtime_get(
    steam_id=steam_id,
    cookie=cookie,
    x_additional_headers=x_additional_headers,
)
