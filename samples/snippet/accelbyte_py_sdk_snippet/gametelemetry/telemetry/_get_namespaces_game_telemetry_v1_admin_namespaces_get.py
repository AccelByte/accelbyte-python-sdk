import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.gametelemetry import (
    get_namespaces_game_telemetry_v1_admin_namespaces_get,
)

result, error = get_namespaces_game_telemetry_v1_admin_namespaces_get(
    x_additional_headers=x_additional_headers,
)
