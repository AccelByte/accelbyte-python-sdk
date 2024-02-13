import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_delete_global_config
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseBody

result, error = admin_delete_global_config(
    x_additional_headers=x_additional_headers,
)
