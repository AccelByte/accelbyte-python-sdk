import json
import yaml

from .._utils import to_dict
from accelbyte_py_sdk.api.lobby import admin_create_third_party_config
from accelbyte_py_sdk.api.lobby.models import ModelsCreateConfigRequest
from accelbyte_py_sdk.api.lobby.models import ModelsCreateConfigResponse
from accelbyte_py_sdk.api.lobby.models import RestapiErrorResponseV1

"""
body:
Definition: ModelsCreateConfigRequest
api_key: str

Example: '{"apiKey": "BUGuPBn8N7Dgd0eX"}'
"""

result, error = admin_create_third_party_config(
    body=body,
    namespace=namespace,
    x_additional_headers=x_additional_headers,
)
