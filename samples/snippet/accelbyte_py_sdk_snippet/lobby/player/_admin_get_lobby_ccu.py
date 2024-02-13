import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_get_lobby_ccu
from accelbyte_py_sdk.api.lobby.models import ModelsGetLobbyCcuResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = admin_get_lobby_ccu(
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
