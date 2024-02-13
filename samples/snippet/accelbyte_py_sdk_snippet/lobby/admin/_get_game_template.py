import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import get_game_template
from accelbyte_py_sdk.api.lobby.models import ModelTemplateResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = get_game_template(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
