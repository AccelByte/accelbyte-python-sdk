import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_update_third_party_config
from accelbyte_py_sdk.api.lobby.models import ModelsUpdateConfigRequest
from accelbyte_py_sdk.api.lobby.models import ModelsUpdateConfigResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelsUpdateConfigRequest
api_key: str

Example: '{"apiKey": "ejLQYIkTgT5bKTCS"}'
"""

result, error = admin_update_third_party_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
